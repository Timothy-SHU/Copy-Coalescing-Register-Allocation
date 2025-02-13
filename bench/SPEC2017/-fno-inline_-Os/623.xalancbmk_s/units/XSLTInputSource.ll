; ModuleID = 'XSLTInputSource.cpp'
source_filename = "XSLTInputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZN11xalanc_1_1015XSLTInputSourceD0Ev = comdat any

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xercesc_2_711InputSource16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015XSLTInputSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !77

7:                                                ; preds = %1
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %3) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !70
  invoke void @_ZN11xalanc_1_1017StdBinInputStreamC1ERSi(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #8
          to label %28 unwind label %10

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %3) #7
  br label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28, !prof !77

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !79
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22, !prof !81

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #9
  call void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %3) #8
  invoke void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE(ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %23 unwind label %26

23:                                               ; preds = %22
  %24 = invoke noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81) %2) #8
          to label %25 unwind label %26

25:                                               ; preds = %23
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %2) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #9
  br label %28

26:                                               ; preds = %23, %22
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %2) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #9
  br label %30

28:                                               ; preds = %16, %25, %7, %12
  %29 = phi ptr [ null, %12 ], [ %8, %7 ], [ %24, %25 ], [ null, %16 ]
  ret ptr %29

30:                                               ; preds = %26, %10
  %31 = phi { ptr, i32 } [ %11, %10 ], [ %27, %26 ]
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !88, !range !89, !noundef !90
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !69 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !87 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %1) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 1
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !92
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !92
  %7 = load ptr, ptr %1, align 8, !tbaa !79
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
          to label %11 unwind label %26

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !79
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %10) #8
          to label %15 unwind label %26

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 8, !tbaa !79
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
          to label %20 unwind label %28

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !79
  %24 = getelementptr inbounds ptr, ptr %23, i64 9
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %19) #8
          to label %30 unwind label %28

26:                                               ; preds = %11, %3
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %53

28:                                               ; preds = %48, %41, %37, %30, %22, %15
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %53

30:                                               ; preds = %22, %20
  %31 = load ptr, ptr %1, align 8, !tbaa !79
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
          to label %35 unwind label %28

35:                                               ; preds = %30
  %36 = icmp eq ptr %34, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %0, align 8, !tbaa !79
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %34) #8
          to label %41 unwind label %28

41:                                               ; preds = %37, %35
  %42 = load ptr, ptr %1, align 8, !tbaa !79
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
          to label %46 unwind label %28

46:                                               ; preds = %41
  %47 = icmp eq ptr %45, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %0, align 8, !tbaa !79
  %50 = getelementptr inbounds ptr, ptr %49, i64 7
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %45) #8
          to label %52 unwind label %28

52:                                               ; preds = %48, %46
  ret void

53:                                               ; preds = %28, %26
  %54 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  tail call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  resume { ptr, i32 } %54
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN11xalanc_1_1015XSLTInputSourceaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 !prof !91 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  %7 = load <2 x ptr>, ptr %5, align 8, !tbaa !92
  store <2 x ptr> %7, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %1, align 8, !tbaa !79
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
  %12 = load ptr, ptr %0, align 8, !tbaa !79
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %11) #8
  %15 = load ptr, ptr %1, align 8, !tbaa !79
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %0, align 8, !tbaa !79
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %18) #8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load ptr, ptr %1, align 8, !tbaa !79
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 8, !tbaa !79
  %32 = getelementptr inbounds ptr, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %28) #8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load ptr, ptr %1, align 8, !tbaa !79
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(41) %1) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %0, align 8, !tbaa !79
  %42 = getelementptr inbounds ptr, ptr %41, i64 7
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %38) #8
  br label %44

44:                                               ; preds = %34, %40, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !91 {
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %4, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !93 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  br i1 %2, label %5, label %3, !prof !94

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #8
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !96 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !97
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !100 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !102 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKtS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 !prof !91 {
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #8
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #8
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !87 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XSLTInputSourceC2ERSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2) #8
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xalanc_1_1015XSLTInputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !70
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #1 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017StdBinInputStreamC1ERSi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %4) #8
          to label %5 unwind label %9

5:                                                ; preds = %3
  %6 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %4) #8
          to label %7 unwind label %9

7:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %6) #8
          to label %8 unwind label %9

8:                                                ; preds = %7
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void

9:                                                ; preds = %7, %5, %3
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat align 2 !prof !82 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #8
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !105 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !107
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !108

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #8
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #8
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !110

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #8
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !111, !llvm.loop !112

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !114 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #1 comdat align 2 !prof !117 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!68}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!36 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_711InputSource16getMemoryManagerEv, i64 2}
!37 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xalanc_1_1017StdBinInputStreamC1ERSi, i64 1}
!39 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, i64 1}
!42 = !{ptr @_ZNK11xalanc_1_1015XSLTInputSource10makeStreamEv, ptr @_ZN11xercesc_2_76XMLURLD1Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!45 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!46 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!47 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!48 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1015XSLTInputSourceC2EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!51 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, i64 2}
!52 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 2}
!53 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, i64 2}
!54 = !{ptr @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_76XMLURLERNS3_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 2}
!55 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 3}
!56 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 3}
!57 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 2}
!70 = !{!71, !73, i64 48}
!71 = !{!"_ZTSN11xalanc_1_1015XSLTInputSourceE", !72, i64 0, !73, i64 48, !73, i64 56}
!72 = !{!"_ZTSN11xercesc_2_711InputSourceE", !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !76, i64 40}
!73 = !{!"any pointer", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C++ TBAA"}
!76 = !{!"bool", !74, i64 0}
!77 = !{!"branch_weights", i32 3, i32 1}
!78 = !{!71, !73, i64 56}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !75, i64 0}
!81 = !{!"branch_weights", i32 1, i32 3}
!82 = !{!"function_entry_count", i64 3}
!83 = !{!72, !73, i64 16}
!84 = !{!72, !73, i64 24}
!85 = !{!"function_entry_count", i64 13}
!86 = !{!72, !73, i64 32}
!87 = !{!"function_entry_count", i64 1}
!88 = !{!72, !76, i64 40}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!73, !73, i64 0}
!93 = !{!"function_entry_count", i64 967143541}
!94 = !{!"branch_weights", i32 403628487, i32 563515056}
!95 = !{!"function_entry_count", i64 3070433826}
!96 = !{!"function_entry_count", i64 1083116306}
!97 = !{!98, !99, i64 8}
!98 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !73, i64 0, !99, i64 8, !99, i64 16, !73, i64 24}
!99 = !{!"long", !74, i64 0}
!100 = !{!"function_entry_count", i64 565220908}
!101 = !{!98, !73, i64 24}
!102 = !{!"function_entry_count", i64 6521798503}
!103 = !{!"function_entry_count", i64 4}
!104 = !{!72, !73, i64 8}
!105 = !{!"function_entry_count", i64 43398227}
!106 = !{!"function_entry_count", i64 128698679}
!107 = !{!98, !99, i64 16}
!108 = !{!"branch_weights", i32 43398290, i32 85300391}
!109 = !{!"function_entry_count", i64 85300390}
!110 = !{!"branch_weights", i32 1, i32 12185770}
!111 = !{!"branch_weights", i32 12185770, i32 -193930395}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"function_entry_count", i64 227375739}
!115 = !{!"function_entry_count", i64 568333389}
!116 = !{!98, !73, i64 0}
!117 = !{!"function_entry_count", i64 30137156670}
!118 = !{!"function_entry_count", i64 825654975}
