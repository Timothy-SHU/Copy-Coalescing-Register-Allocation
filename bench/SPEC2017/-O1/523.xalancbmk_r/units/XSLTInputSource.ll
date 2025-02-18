; ModuleID = 'XSLTInputSource.cpp'
source_filename = "XSLTInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE = comdat any

$_ZN11xalanc_1_1015XSLTInputSourceD0Ev = comdat any

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1015XSLTInputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XSLTInputSourceE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, ptr @_ZN11xalanc_1_1015XSLTInputSourceD0Ev, ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XSLTInputSourceE = dso_local constant [33 x i8] c"N11xalanc_1_1015XSLTInputSourceE\00", align 1
@_ZTIN11xercesc_2_711InputSourceE = external constant ptr
@_ZTIN11xalanc_1_1015XSLTInputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XSLTInputSourceE, ptr @_ZTIN11xercesc_2_711InputSourceE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPKtS2_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtS2_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPKcS2_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcS2_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPSiRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XSLTInputSourceC1ERSiRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERSiRN11xercesc_2_713MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %1)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  store ptr %6, ptr %4, align 8, !tbaa !55
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  store ptr %9, ptr %7, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !51
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %14 unwind label %29

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %13)
          to label %18 unwind label %29

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8, !tbaa !51
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %23 unwind label %31

23:                                               ; preds = %18
  %24 = icmp eq ptr %22, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !51
  %27 = getelementptr inbounds ptr, ptr %26, i64 9
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %22)
          to label %33 unwind label %31

29:                                               ; preds = %14, %3
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %56

31:                                               ; preds = %51, %44, %40, %33, %25, %18
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %56

33:                                               ; preds = %25, %23
  %34 = load ptr, ptr %1, align 8, !tbaa !51
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 8, !tbaa !51
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %37)
          to label %44 unwind label %31

44:                                               ; preds = %40, %38
  %45 = load ptr, ptr %1, align 8, !tbaa !51
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %49 unwind label %31

49:                                               ; preds = %44
  %50 = icmp eq ptr %48, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %0, align 8, !tbaa !51
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %48)
          to label %55 unwind label %31

55:                                               ; preds = %51, %49
  ret void

56:                                               ; preds = %31, %29
  %57 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  resume { ptr, i32 } %57
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1015XSLTInputSourceaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 !prof !54 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !61
  %11 = load ptr, ptr %1, align 8, !tbaa !51
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %14)
  %18 = load ptr, ptr %1, align 8, !tbaa !51
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load ptr, ptr %0, align 8, !tbaa !51
  %25 = getelementptr inbounds ptr, ptr %24, i64 9
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %21)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load ptr, ptr %1, align 8, !tbaa !51
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %0, align 8, !tbaa !51
  %35 = getelementptr inbounds ptr, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %31)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load ptr, ptr %1, align 8, !tbaa !51
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %0, align 8, !tbaa !51
  %45 = getelementptr inbounds ptr, ptr %44, i64 7
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %41)
  br label %47

47:                                               ; preds = %37, %43, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !54 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !62
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %9, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 !prof !54 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %10, ptr noundef %16, ptr noundef nonnull %3)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %17 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !67

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %4)
  %10 = load ptr, ptr %5, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1017StdBinInputStreamC1ERSi(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %29 unwind label %11

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %4) #7
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29, !prof !67

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !51
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(41) %0), !prof !68
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !69

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #7
  call void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %4)
  invoke void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE(ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %24 unwind label %27, !prof !67

24:                                               ; preds = %23
  %25 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81) %2)
          to label %26 unwind label %27, !prof !67

26:                                               ; preds = %24
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %2) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #7
  br label %29

27:                                               ; preds = %24, %23
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %2) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #7
  br label %31

29:                                               ; preds = %17, %26, %8, %13
  %30 = phi ptr [ null, %13 ], [ %9, %8 ], [ %25, %26 ], [ null, %17 ]
  ret ptr %30

31:                                               ; preds = %27, %11
  %32 = phi { ptr, i32 } [ %12, %11 ], [ %28, %27 ]
  resume { ptr, i32 } %32
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017StdBinInputStreamC1ERSi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0)
          to label %6 unwind label %28, !prof !67

6:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %7 unwind label %28, !prof !67

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12, !prof !69
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %13)
          to label %14 unwind label %28, !prof !67

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !70
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18, !prof !69

18:                                               ; preds = %14
  %19 = load ptr, ptr %11, align 8, !tbaa !71
  %20 = load ptr, ptr %4, align 8, !tbaa !72
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24, !prof !73

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable

27:                                               ; preds = %14, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret void

28:                                               ; preds = %6, %3, %7
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !70
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = load ptr, ptr %4, align 8, !tbaa !72
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #8
  unreachable

43:                                               ; preds = %28, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %29
}

declare noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015XSLTInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !79, !range !80, !noundef !81
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !65 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !79
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, i64 2}
!39 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE, i64 2}
!40 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, i64 2}
!41 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, i64 2}
!42 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xercesc_2_76XMLURLD1Ev, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceD0Ev, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !58, i64 48}
!56 = !{!"_ZTSN11xalanc_1_1015XSLTInputSourceE", !57, i64 0, !58, i64 48, !58, i64 56}
!57 = !{!"_ZTSN11xercesc_2_711InputSourceE", !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !60, i64 40}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !53, i64 0}
!60 = !{!"bool", !59, i64 0}
!61 = !{!56, !58, i64 56}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !64, i64 8, !64, i64 16, !58, i64 24}
!64 = !{!"long", !59, i64 0}
!65 = !{!"function_entry_count", i64 2}
!66 = !{!57, !58, i64 8}
!67 = !{!"branch_weights", i32 2, i32 0}
!68 = !{!"VP", i32 0, i64 2, i64 -3228203282622328352, i64 2}
!69 = !{!"branch_weights", i32 0, i32 2}
!70 = !{!63, !64, i64 16}
!71 = !{!63, !58, i64 24}
!72 = !{!63, !58, i64 0}
!73 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!74 = !{!"function_entry_count", i64 3}
!75 = !{!57, !58, i64 16}
!76 = !{!57, !58, i64 24}
!77 = !{!"function_entry_count", i64 13}
!78 = !{!57, !58, i64 32}
!79 = !{!57, !60, i64 40}
!80 = !{i8 0, i8 2}
!81 = !{}
