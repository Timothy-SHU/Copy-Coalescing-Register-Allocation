; ModuleID = 'XPathConstructionContextDefault.cpp'
source_filename = "XPathConstructionContextDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.0", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.0" = type { ptr, i16, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

@_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XPathConstructionContextDefaultE, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD0Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringEPKtj, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1031XPathConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1031XPathConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE] }, align 8
@_ZTIN11xalanc_1_1020XPathParserExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local constant [49 x i8] c"N11xalanc_1_1031XPathConstructionContextDefaultE\00", align 1
@_ZTIN11xalanc_1_1024XPathConstructionContextE = external constant ptr
@_ZTIN11xalanc_1_1031XPathConstructionContextDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE, ptr @_ZTIN11xalanc_1_1024XPathConstructionContextE }, align 8

@_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15) #9
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 100) #9
          to label %6 unwind label %9

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %11

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #10
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi { ptr, i32 } [ %10, %9 ], [ %8, %7 ]
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 248) #9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #9
  %7 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  invoke void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
          to label %10 unwind label %11

10:                                               ; preds = %8
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret ptr %7

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #9
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1031XPathConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #9
          to label %2 unwind label %5

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #10
  tail call void @_ZN11xalanc_1_1024XPathConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #10
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !48 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 1
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %1, i32 noundef %2) #9
  ret ptr %5
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault15getCachedStringEv(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %2) #9
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1031XPathConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContextDefault", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #9
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZNK11xalanc_1_1031XPathConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture readnone %2, ptr noundef %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  %6 = icmp eq ptr %3, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  %9 = tail call ptr @__cxa_allocate_exception(i64 112) #11
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #9
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #14
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %18

13:                                               ; preds = %4
  %14 = tail call ptr @__cxa_allocate_exception(i64 112) #11
  invoke void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %14, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xalanc_1_1020XPathParserExceptionE, ptr nonnull @_ZN11xalanc_1_1020XPathParserExceptionD1Ev) #14
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %14, %16 ], [ %9, %11 ]
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %19) #11
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1024XPathConstructionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020XPathParserExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020XPathParserExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZNK11xalanc_1_1031XPathConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) unnamed_addr #8 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !48 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !57
  store ptr %2, ptr %5, align 8, !tbaa !57
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !48 {
  %4 = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %4, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %6, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !48 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %4, align 8, !tbaa !45
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !48 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !49
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XPathConstructionContextC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1024XPathConstructionContextD2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, i64 3}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEE", !51, i64 0, !51, i64 8}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !47, i64 0}
!53 = !{!"function_entry_count", i64 3}
!54 = !{!"function_entry_count", i64 2273}
!55 = !{!56, !51, i64 8}
!56 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !51, i64 8}
!57 = !{!51, !51, i64 0}
!58 = !{!50, !51, i64 0}
