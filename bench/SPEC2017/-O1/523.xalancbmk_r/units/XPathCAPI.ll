; ModuleID = 'XPathCAPI.cpp'
source_filename = "XPathCAPI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.10", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.9", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.10" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.11", %"class.xalanc_1_10::XalanList.11", %"class.xalanc_1_10::XalanVector.12", i64, i64 }
%"class.xalanc_1_10::XalanList.11" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.12" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::MemBufInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, i32, i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }

$__clang_call_terminate = comdat any

$_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

@_ZL12fInitialized = internal unnamed_addr global i1 false, align 1
@_ZL11fTerminated = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZL17theSourceTreeInit = internal unnamed_addr global ptr null, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [10 x i8] c"SourceXML\00", align 1
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanXPathAPIInitialize() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %1 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %1, label %42, label %2

2:                                                ; preds = %0
  %3 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
          to label %5 unwind label %14

5:                                                ; preds = %4
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %7 unwind label %16

7:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %8 unwind label %16

8:                                                ; preds = %7
  %9 = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #10
          to label %10 unwind label %18

10:                                               ; preds = %8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %12 unwind label %20

12:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %13 unwind label %20

13:                                               ; preds = %12
  store ptr %9, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !35
  store i1 true, ptr @_ZL12fInitialized, align 1
  br label %42

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          catch ptr null
  br label %38

16:                                               ; preds = %7, %5
  %17 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          catch ptr null
  br label %22

20:                                               ; preds = %12, %10
  %21 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPv(ptr noundef %9) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = tail call ptr @__cxa_begin_catch(ptr %24) #12
  invoke void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv()
          to label %26 unwind label %28

26:                                               ; preds = %22
  invoke void @__cxa_rethrow() #13
          to label %27 unwind label %28

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %26, %22
  %29 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %30 unwind label %44

30:                                               ; preds = %28, %16
  %31 = phi { ptr, i32 } [ %17, %16 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  %33 = tail call ptr @__cxa_begin_catch(ptr %32) #12
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv()
          to label %34 unwind label %36

34:                                               ; preds = %30
  invoke void @__cxa_rethrow() #13
          to label %35 unwind label %36

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %34, %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %38 unwind label %44

38:                                               ; preds = %36, %14
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %15, %14 ]
  %40 = extractvalue { ptr, i32 } %39, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #12
  store i1 true, ptr @_ZL11fTerminated, align 1
  tail call void @__cxa_end_catch()
  br label %42

42:                                               ; preds = %13, %38, %2, %0
  %43 = phi i32 [ 1, %0 ], [ 6, %2 ], [ 0, %13 ], [ 3, %38 ]
  ret i32 %43

44:                                               ; preds = %36, %28
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #14
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanXPathAPITerminate() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %1 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %1, label %2, label %15

2:                                                ; preds = %0
  %3 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %5) #12
  tail call void @_ZdlPv(ptr noundef %5) #11
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !35
  invoke void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv()
          to label %9 unwind label %11

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv()
          to label %10 unwind label %11

10:                                               ; preds = %9
  store i1 true, ptr @_ZL11fTerminated, align 1
  br label %15

11:                                               ; preds = %9, %8
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #12
  tail call void @__cxa_end_catch()
  br label %15

15:                                               ; preds = %10, %11, %2, %0
  %16 = phi i32 [ 5, %0 ], [ 2, %2 ], [ 0, %10 ], [ 4, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanCreateXPathEvaluator(ptr noundef writeonly %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #10
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %12 unwind label %15

12:                                               ; preds = %11
  store ptr %8, ptr %0, align 8, !tbaa !35
  br label %21

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          catch ptr null
  br label %17

15:                                               ; preds = %11, %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPv(ptr noundef %8) #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = tail call ptr @__cxa_begin_catch(ptr %19) #12
  tail call void @__cxa_end_catch()
  br label %21

21:                                               ; preds = %12, %17, %5, %3, %1
  %22 = phi i32 [ 5, %1 ], [ 2, %3 ], [ 7, %5 ], [ 0, %12 ], [ 13, %17 ]
  ret i32 %22
}

declare void @_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local noundef i32 @XalanDestroyXPathEvaluator(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @_ZN11xalanc_1_1014XPathEvaluatorD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %5, %3, %1
  %9 = phi i32 [ 5, %1 ], [ 2, %3 ], [ 7, %5 ], [ 0, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XPathEvaluatorD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanCreateXPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %6, label %7, label %87

7:                                                ; preds = %4
  %8 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %8, label %87, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %3, null
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %87, label %15

15:                                               ; preds = %9
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %20 unwind label %43

20:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %21 unwind label %43

21:                                               ; preds = %20
  %22 = invoke noundef i32 @_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %23 unwind label %45

23:                                               ; preds = %21
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = icmp eq i64 %27, 0
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = select i1 %28, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %30
  br label %32

32:                                               ; preds = %32, %25
  %33 = phi ptr [ %31, %25 ], [ %36, %32 ]
  %34 = load i16, ptr %33, align 2, !tbaa !42
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  br i1 %35, label %37, label %32, !llvm.loop !44

37:                                               ; preds = %32
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %31 to i64
  %40 = sub i64 %38, %39
  %41 = and i64 %40, 8589934590
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %52, label %49

43:                                               ; preds = %20, %18
  %44 = landingpad { ptr, i32 }
          catch ptr null
  br label %83

45:                                               ; preds = %21
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %68

47:                                               ; preds = %49
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %68

49:                                               ; preds = %37
  %50 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %31)
          to label %51 unwind label %47

51:                                               ; preds = %49
  store ptr %50, ptr %3, align 8, !tbaa !35
  br label %52

52:                                               ; preds = %51, %37, %23
  %53 = phi i32 [ %22, %23 ], [ 0, %51 ], [ 11, %37 ]
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !47
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = load ptr, ptr %5, align 8, !tbaa !49
  %61 = load ptr, ptr %60, align 8, !tbaa !50
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #14
  unreachable

67:                                               ; preds = %52, %57
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %87

68:                                               ; preds = %47, %45
  %69 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !47
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = load ptr, ptr %5, align 8, !tbaa !49
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %75)
          to label %83 unwind label %80

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #14
  unreachable

83:                                               ; preds = %73, %68, %43
  %84 = phi { ptr, i32 } [ %44, %43 ], [ %69, %68 ], [ %69, %73 ]
  %85 = extractvalue { ptr, i32 } %84, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  %86 = call ptr @__cxa_begin_catch(ptr %85) #12
  call void @__cxa_end_catch()
  br label %87

87:                                               ; preds = %67, %83, %9, %15, %7, %4
  %88 = phi i32 [ 5, %4 ], [ 2, %7 ], [ 7, %15 ], [ 7, %9 ], [ %53, %67 ], [ 12, %83 ]
  ret i32 %88
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca [100 x i16], align 16
  %12 = icmp eq ptr %1, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0)
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %0, i32 noundef %17)
  br label %101

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !52
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #12
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef -1)
  %22 = invoke noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 1024)
          to label %23 unwind label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !47
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = load ptr, ptr %9, align 8, !tbaa !49
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #14
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #12
  %38 = load i32, ptr %8, align 4, !tbaa !52
  switch i32 %38, label %55 [
    i32 1, label %97
    i32 0, label %56
  ]

39:                                               ; preds = %19
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !47
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = load ptr, ptr %9, align 8, !tbaa !49
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %46)
          to label %54 unwind label %51

51:                                               ; preds = %44
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #14
  unreachable

54:                                               ; preds = %39, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #12
  br label %99

55:                                               ; preds = %37
  br label %97

56:                                               ; preds = %37
  %57 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0)
  %58 = icmp ugt i32 %57, 99
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = add i32 %57, 1
  %61 = zext i32 %60 to i64
  %62 = call noalias noundef nonnull ptr @_Znam(i64 noundef %61) #10
  %63 = shl nuw nsw i64 %61, 1
  %64 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %63) #10
          to label %65 unwind label %78

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !54
  %66 = load ptr, ptr %22, align 8, !tbaa !50
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef i32 %68(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef %0, i32 noundef %57, ptr noundef nonnull %64, i32 noundef %57, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull %62)
          to label %70 unwind label %80

70:                                               ; preds = %65
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load i32, ptr %7, align 4, !tbaa !54
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
          to label %74 unwind label %80

74:                                               ; preds = %72
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %64, i32 noundef %73)
          to label %76 unwind label %80

76:                                               ; preds = %74, %70
  %77 = phi i32 [ 11, %70 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @_ZdaPv(ptr noundef %64) #11
  call void @_ZdaPv(ptr noundef %62) #11
  br label %95

78:                                               ; preds = %59
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %74, %72, %65
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef %64) #11
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @_ZdaPv(ptr noundef %62) #11
  br label %99

84:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !54
  %85 = load ptr, ptr %22, align 8, !tbaa !50
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef i32 %87(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef %0, i32 noundef %57, ptr noundef nonnull %11, i32 noundef %57, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull %10)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, ptr %5, align 4, !tbaa !54
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %92 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %11, i32 noundef %91)
  br label %93

93:                                               ; preds = %84, %90
  %94 = phi i32 [ 0, %90 ], [ 11, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #12
  br label %95

95:                                               ; preds = %93, %76
  %96 = phi i32 [ %77, %76 ], [ %94, %93 ]
  call void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %22)
  br label %97

97:                                               ; preds = %37, %55, %95
  %98 = phi i32 [ 13, %55 ], [ %96, %95 ], [ 10, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %101

99:                                               ; preds = %82, %54
  %100 = phi { ptr, i32 } [ %83, %82 ], [ %40, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  resume { ptr, i32 } %100

101:                                              ; preds = %97, %16
  %102 = phi i32 [ 0, %16 ], [ %98, %97 ]
  ret i32 %102
}

declare noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanDestroyXPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
          to label %12 unwind label %14

12:                                               ; preds = %10
  %13 = select i1 %11, i32 0, i32 12
  br label %18

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #12
  tail call void @__cxa_end_catch()
  br label %18

18:                                               ; preds = %12, %14, %6, %4, %2
  %19 = phi i32 [ 5, %2 ], [ 2, %4 ], [ 7, %6 ], [ %13, %12 ], [ 13, %14 ]
  ret i32 %19
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanEvaluateXPathAsBoolean(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XalanSourceTreeDOMSupport", align 8
  %6 = alloca %"class.xalanc_1_10::XalanSourceTreeParserLiaison", align 8
  %7 = alloca %"class.xercesc_2_7::MemBufInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %10, label %11, label %110

11:                                               ; preds = %4
  %12 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %12, label %110, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %0, null
  %15 = icmp eq ptr %1, null
  %16 = or i1 %14, %15
  %17 = icmp eq ptr %2, null
  %18 = or i1 %16, %17
  br i1 %18, label %110, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %20 unwind label %61

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %6) #12
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %22 unwind label %63

22:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %23 unwind label %63

23:                                               ; preds = %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %5, i64 0, i32 1
  store ptr %6, ptr %24, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %25 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %2)
          to label %26 unwind label %65

26:                                               ; preds = %23
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %2, i32 noundef %25, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %27)
          to label %28 unwind label %65

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
          to label %30 unwind label %67

30:                                               ; preds = %28
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %31 unwind label %67

31:                                               ; preds = %30
  %32 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(41) %7, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %33 unwind label %69

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = load ptr, ptr %8, align 8, !tbaa !49
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %39)
          to label %47 unwind label %44

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #14
  unreachable

47:                                               ; preds = %33, %37
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef null)
          to label %48 unwind label %86

48:                                               ; preds = %47
  %49 = load ptr, ptr %9, align 8, !tbaa !59
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = getelementptr inbounds ptr, ptr %50, i64 7
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(24) %49)
          to label %54 unwind label %88

54:                                               ; preds = %48
  %55 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %55)
          to label %59 unwind label %56

56:                                               ; preds = %54
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  %60 = zext i1 %53 to i32
  store i32 %60, ptr %3, align 4, !tbaa !54
  call void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #12
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %110

61:                                               ; preds = %19
  %62 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %102

63:                                               ; preds = %22, %20
  %64 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %100

65:                                               ; preds = %26, %23
  %66 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %98

67:                                               ; preds = %30, %28
  %68 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %84

69:                                               ; preds = %31
  %70 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !47
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = load ptr, ptr %8, align 8, !tbaa !49
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #14
  unreachable

84:                                               ; preds = %74, %69, %67
  %85 = phi { ptr, i32 } [ %68, %67 ], [ %70, %69 ], [ %70, %74 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  br label %96

86:                                               ; preds = %47
  %87 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %94

88:                                               ; preds = %48
  %89 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  %90 = load ptr, ptr %9, align 8, !tbaa !59
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %90)
          to label %94 unwind label %91

91:                                               ; preds = %88
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #14
  unreachable

94:                                               ; preds = %88, %86
  %95 = phi { ptr, i32 } [ %87, %86 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br label %96

96:                                               ; preds = %94, %84
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %85, %84 ]
  call void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  br label %98

98:                                               ; preds = %96, %65
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #12
  br label %100

100:                                              ; preds = %98, %63
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  br label %102

102:                                              ; preds = %100, %61
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %62, %61 ]
  %104 = extractvalue { ptr, i32 } %103, 0
  %105 = extractvalue { ptr, i32 } %103, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %106 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #12
  %107 = icmp eq i32 %105, %106
  %108 = call ptr @__cxa_begin_catch(ptr %104) #12
  call void @__cxa_end_catch()
  %109 = select i1 %107, i32 9, i32 13
  br label %110

110:                                              ; preds = %102, %59, %13, %11, %4
  %111 = phi i32 [ 5, %4 ], [ 2, %11 ], [ 7, %13 ], [ 0, %59 ], [ %109, %102 ]
  ret i32 %111
}

declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @XalanEvaluateXPathExpressionAsBoolean(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 !prof !34 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr null, ptr %6, align 8, !tbaa !35
  %7 = call i32 @XalanCreateXPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !35
  %11 = call i32 @XalanEvaluateXPathAsBoolean(ptr noundef %0, ptr noundef %10, ptr noundef %3, ptr noundef %4), !range !61
  %12 = load ptr, ptr %6, align 8, !tbaa !35
  %13 = call i32 @XalanDestroyXPath(ptr noundef %0, ptr noundef %12), !range !61
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 %11, i32 %13
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %15, %9 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %17
}

declare noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

declare void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #3

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !36, i64 0, !41, i64 8, !41, i64 16, !36, i64 24}
!41 = !{!"long", !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!40, !41, i64 16}
!48 = !{!40, !36, i64 24}
!49 = !{!40, !36, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !38, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices5eCodeE", !37, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !37, i64 0}
!56 = !{!57, !36, i64 8}
!57 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !58, i64 0, !36, i64 8}
!58 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!59 = !{!60, !36, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !36, i64 0}
!61 = !{i32 0, i32 14}
