; ModuleID = 'XalanToXercesTranscoderWrapper.cpp'
source_filename = "XalanToXercesTranscoderWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanToXercesTranscoderWrapper" = type { %"class.xalanc_1_10::XalanOutputTranscoder", ptr }
%"class.xalanc_1_10::XalanOutputTranscoder" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanToXercesTranscoderWrapper, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanToXercesTranscoderWrapper, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanToXercesTranscoderWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

@_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanToXercesTranscoderWrapperE, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD0Ev, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKtjPhjRjS4_, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKhjPtjRjS4_Ph, ptr @_ZNK11xalanc_1_1030XalanToXercesTranscoderWrapper14canTranscodeToEj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanToXercesTranscoderWrapperE\00", align 1
@_ZTIN11xalanc_1_1021XalanOutputTranscoderE = external constant ptr
@_ZTIN11xalanc_1_1030XalanToXercesTranscoderWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE, ptr @_ZTIN11xalanc_1_1021XalanOutputTranscoderE }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr

@_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC1ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE
@_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKtjPhjRjS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 1) #10
          to label %14 unwind label %15

14:                                               ; preds = %7
  store i32 %13, ptr %6, align 4, !tbaa !61
  br label %23

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %17 = extractvalue { ptr, i32 } %16, 1
  %18 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = extractvalue { ptr, i32 } %16, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #11
  store i32 0, ptr %5, align 4, !tbaa !61
  store i32 0, ptr %6, align 4, !tbaa !61
  tail call void @__cxa_end_catch()
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ 0, %14 ], [ 2, %20 ]
  ret i32 %24

25:                                               ; preds = %15
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper9transcodeEPKhjPtjRjS4_Ph(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %6, ptr noundef %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %7) #10
          to label %15 unwind label %16

15:                                               ; preds = %8
  store i32 %14, ptr %6, align 4, !tbaa !61
  br label %24

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %18 = extractvalue { ptr, i32 } %17, 1
  %19 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = extractvalue { ptr, i32 } %17, 0
  %23 = tail call ptr @__cxa_begin_catch(ptr %22) #11
  store i32 0, ptr %5, align 4, !tbaa !61
  store i32 0, ptr %6, align 4, !tbaa !61
  tail call void @__cxa_end_catch()
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ 0, %15 ], [ 2, %21 ]
  ret i32 %25

26:                                               ; preds = %16
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1030XalanToXercesTranscoderWrapper14canTranscodeToEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %1) #10
  ret i1 %8
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 !prof !64 {
  tail call void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !59
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 24) #10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #10
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  invoke void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !64 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #10
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !64 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !67
  store ptr %2, ptr %5, align 8, !tbaa !67
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanToXercesTranscoderWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanToXercesTranscoderWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %4, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %6, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !69 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !64 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !65
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  br i1 %2, label %3, label %10, !prof !70

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = load ptr, ptr %4, align 8, !tbaa !59
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #10
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanToXercesTranscoderWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanToXercesTranscoderWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !59
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_end_catch() local_unnamed_addr

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!36 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE3getEv, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperC2ERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE7releaseEv, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanToXercesTranscoderWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 4}
!48 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_30XalanToXercesTranscoderWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 2}
!50 = !{ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapperD2Ev, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev, i64 2}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 122390}
!53 = !{!54, !56, i64 16}
!54 = !{!"_ZTSN11xalanc_1_1030XalanToXercesTranscoderWrapperE", !55, i64 0, !56, i64 16}
!55 = !{!"_ZTSN11xalanc_1_1021XalanOutputTranscoderE", !56, i64 8}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!60, !60, i64 0}
!60 = !{!"vtable pointer", !58, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"int", !57, i64 0}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!"function_entry_count", i64 2}
!65 = !{!66, !56, i64 8}
!66 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1030XalanToXercesTranscoderWrapperEE", !56, i64 0, !56, i64 8}
!67 = !{!56, !56, i64 0}
!68 = !{!66, !56, i64 0}
!69 = !{!"function_entry_count", i64 8}
!70 = !{!"branch_weights", i32 1, i32 3}
