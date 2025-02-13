; ModuleID = 'URLInputSource.cpp'
source_filename = "URLInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::URLInputSource" = type { %"class.xercesc_2_7::InputSource.base", [7 x i8], %"class.xercesc_2_7::XMLURL" }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>

$_ZNK11xercesc_2_76XMLURL10getURLTextEv = comdat any

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

@_ZTVN11xercesc_2_714URLInputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714URLInputSourceE, ptr @_ZN11xercesc_2_714URLInputSourceD2Ev, ptr @_ZN11xercesc_2_714URLInputSourceD0Ev, ptr @_ZNK11xercesc_2_714URLInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714URLInputSourceE = dso_local constant [32 x i8] c"N11xercesc_2_714URLInputSourceE\00", align 1
@_ZTIN11xercesc_2_711InputSourceE = external constant ptr
@_ZTIN11xercesc_2_714URLInputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714URLInputSourceE, ptr @_ZTIN11xercesc_2_711InputSourceE }, align 8

@_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_714URLInputSourceC2ERKNS_6XMLURLEPNS_13MemoryManagerE
@_ZN11xercesc_2_714URLInputSourceC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714URLInputSourceC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_714URLInputSourceC1EPKtS2_S2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714URLInputSourceC2EPKtS2_S2_PNS_13MemoryManagerE
@_ZN11xercesc_2_714URLInputSourceC1EPKtPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714URLInputSourceC2EPKtPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_714URLInputSourceC1EPKtPKcS4_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_714URLInputSourceC2EPKtPKcS4_PNS_13MemoryManagerE
@_ZN11xercesc_2_714URLInputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714URLInputSourceD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceC2ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %2) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_76XMLURLC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef nonnull align 8 dereferenceable(81) %1) #4
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %4) #4
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %6) #4
          to label %11 unwind label %14

11:                                               ; preds = %7
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %7, %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #5
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #4
  %6 = load ptr, ptr %2, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_76XMLURLC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef %1, ptr noundef %2, ptr noundef %6) #4
          to label %7 unwind label %14

7:                                                ; preds = %4
  %8 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %5) #4
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %8) #4
          to label %13 unwind label %16

13:                                               ; preds = %9
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %5) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceC2EPKtS2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef null, ptr noundef %3, ptr noundef %4) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_76XMLURLC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %6, ptr noundef %1, ptr noundef %2, ptr noundef %7) #4
          to label %8 unwind label %15

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %6) #4
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9) #4
          to label %14 unwind label %17

14:                                               ; preds = %10
  ret void

15:                                               ; preds = %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %10, %8
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %6) #5
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceC2EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %3) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_76XMLURLC1EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef %1, ptr noundef %2, ptr noundef %6) #4
          to label %7 unwind label %14

7:                                                ; preds = %4
  %8 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %5) #4
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %8) #4
          to label %13 unwind label %16

13:                                               ; preds = %9
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %5) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceC2EPKtPKcS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef null, ptr noundef %3, ptr noundef %4) #4
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_76XMLURLC1EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %6, ptr noundef %1, ptr noundef %2, ptr noundef %7) #4
          to label %8 unwind label %15

8:                                                ; preds = %5
  %9 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %6) #4
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9) #4
          to label %14 unwind label %17

14:                                               ; preds = %10
  ret void

15:                                               ; preds = %5
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %10, %8
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %6) #5
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_714URLInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %2) #5
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714URLInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_714URLInputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714URLInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::URLInputSource", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81) %2) #4
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #3 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !54, !noundef !55
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 72}
!39 = !{!"_ZTSN11xercesc_2_76XMLURLE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !42, i64 48, !43, i64 52, !40, i64 56, !40, i64 64, !40, i64 72, !44, i64 80}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"int", !41, i64 0}
!43 = !{!"_ZTSN11xercesc_2_76XMLURL9ProtocolsE", !41, i64 0}
!44 = !{!"bool", !41, i64 0}
!45 = !{!40, !40, i64 0}
!46 = !{!"function_entry_count", i64 3}
!47 = !{!48, !40, i64 16}
!48 = !{!"_ZTSN11xercesc_2_711InputSourceE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !44, i64 40}
!49 = !{!48, !40, i64 24}
!50 = !{!"function_entry_count", i64 13}
!51 = !{!48, !40, i64 32}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!48, !44, i64 40}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!"function_entry_count", i64 2}
