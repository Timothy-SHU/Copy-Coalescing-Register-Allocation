; ModuleID = 'XPathCAPI.cpp'
source_filename = "XPathCAPI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanArrayAutoPtr" = type { ptr }
%"class.xalanc_1_10::XalanArrayAutoPtr.9" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.11", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.10", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.11" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.12", %"class.xalanc_1_10::XalanList.12", %"class.xalanc_1_10::XalanVector.13", i64, i64 }
%"class.xalanc_1_10::XalanList.12" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.13" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::MemBufInputSource" = type { %"class.xercesc_2_7::InputSource.base", i8, i32, i8, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }

$__clang_call_terminate = comdat any

$_Z12getEvaluatorPv = comdat any

$_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKc = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrIhEC2EPh = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrItEC2EPt = comdat any

$_Z15transcodeStringPN11xalanc_1_1021XalanOutputTranscoderEPKcPtPhjRNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1017XalanArrayAutoPtrItE3getEv = comdat any

$_ZNK11xalanc_1_1017XalanArrayAutoPtrIhE3getEv = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrItED2Ev = comdat any

$_ZN11xalanc_1_1017XalanArrayAutoPtrIhED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKc = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKc = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_Z8getXPathPv = comdat any

$_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE = comdat any

$_ZN11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZL12fInitialized = internal unnamed_addr global i1 false, align 1
@_ZL11fTerminated = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZL17theSourceTreeInit = internal unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [10 x i8] c"SourceXML\00", align 1
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanXPathAPIInitialize() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
  %1 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %1, label %40, label %2

2:                                                ; preds = %0
  %3 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #9
          to label %5 unwind label %14

5:                                                ; preds = %4
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
          to label %7 unwind label %16

7:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %8 unwind label %16

8:                                                ; preds = %7
  %9 = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #10
          to label %10 unwind label %18

10:                                               ; preds = %8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
          to label %12 unwind label %20

12:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %13 unwind label %20

13:                                               ; preds = %12
  store ptr %9, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !58
  store i1 true, ptr @_ZL12fInitialized, align 1
  br label %40

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

16:                                               ; preds = %7, %5
  %17 = landingpad { ptr, i32 }
          catch ptr null
  br label %29

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          catch ptr null
  br label %22

20:                                               ; preds = %12, %10
  %21 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPv(ptr noundef nonnull %9) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = tail call ptr @__cxa_begin_catch(ptr %24) #12
  invoke void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() #9
          to label %26 unwind label %27

26:                                               ; preds = %22
  invoke void @__cxa_rethrow() #13
          to label %45 unwind label %27

27:                                               ; preds = %26, %22
  %28 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %29 unwind label %42

29:                                               ; preds = %27, %16
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %17, %16 ]
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = tail call ptr @__cxa_begin_catch(ptr %31) #12
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() #9
          to label %33 unwind label %34

33:                                               ; preds = %29
  invoke void @__cxa_rethrow() #13
          to label %45 unwind label %34

34:                                               ; preds = %33, %29
  %35 = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %36 unwind label %42

36:                                               ; preds = %34, %14
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %15, %14 ]
  %38 = extractvalue { ptr, i32 } %37, 0
  %39 = tail call ptr @__cxa_begin_catch(ptr %38) #12
  store i1 true, ptr @_ZL11fTerminated, align 1
  tail call void @__cxa_end_catch()
  br label %40

40:                                               ; preds = %13, %36, %2, %0
  %41 = phi i32 [ 1, %0 ], [ 6, %2 ], [ 0, %13 ], [ 3, %36 ]
  ret i32 %41

42:                                               ; preds = %34, %27
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #14
  unreachable

45:                                               ; preds = %33, %26
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #3

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanXPathAPITerminate() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
  %1 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %1, label %2, label %15

2:                                                ; preds = %0
  %3 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4) %5) #15
  tail call void @_ZdlPv(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZL17theSourceTreeInit, align 8, !tbaa !58
  invoke void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() #9
          to label %9 unwind label %11

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() #9
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

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeInitD1Ev(ptr noundef nonnull align 1 dereferenceable(4)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanCreateXPathEvaluator(ptr noundef writeonly %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
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
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
          to label %12 unwind label %15

12:                                               ; preds = %11
  store ptr %8, ptr %0, align 8, !tbaa !58
  br label %21

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          catch ptr null
  br label %17

15:                                               ; preds = %11, %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPv(ptr noundef nonnull %8) #11
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

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @XalanDestroyXPathEvaluator(ptr noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = tail call noundef ptr @_Z12getEvaluatorPv(ptr noundef nonnull %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014XPathEvaluatorD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %8) #15
  tail call void @_ZdlPv(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %10, %7, %5, %3, %1
  %12 = phi i32 [ 5, %1 ], [ 2, %3 ], [ 7, %5 ], [ 0, %7 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z12getEvaluatorPv(ptr noundef %0) local_unnamed_addr #7 comdat !prof !57 {
  ret ptr %0
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014XPathEvaluatorD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanCreateXPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  %8 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %3, null
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %1, null
  %14 = or i1 %13, %12
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %1) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = tail call noundef ptr @_Z12getEvaluatorPv(ptr noundef nonnull %0) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
          to label %21 unwind label %31

21:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %20) #9
          to label %22 unwind label %31

22:                                               ; preds = %21
  %23 = invoke noundef i32 @_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %5) #9
          to label %24 unwind label %33

24:                                               ; preds = %22
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
          to label %28 unwind label %35

28:                                               ; preds = %26
  %29 = call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %27) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %37

31:                                               ; preds = %21, %18
  %32 = landingpad { ptr, i32 }
          catch ptr null
  br label %44

33:                                               ; preds = %22
  %34 = landingpad { ptr, i32 }
          catch ptr null
  br label %42

35:                                               ; preds = %37, %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %42

37:                                               ; preds = %28
  %38 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef %27) #9
          to label %39 unwind label %35

39:                                               ; preds = %37
  store ptr %38, ptr %3, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %39, %28, %24
  %41 = phi i32 [ %23, %24 ], [ 0, %39 ], [ 11, %28 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %48

42:                                               ; preds = %35, %33
  %43 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  br label %44

44:                                               ; preds = %42, %31
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %32, %31 ]
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  %47 = call ptr @__cxa_begin_catch(ptr %46) #12
  call void @__cxa_end_catch()
  br label %48

48:                                               ; preds = %40, %44, %9, %15, %7, %4
  %49 = phi i32 [ 5, %4 ], [ 2, %7 ], [ 7, %15 ], [ 7, %9 ], [ %41, %40 ], [ 12, %44 ]
  ret i32 %49
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z15transcodeStringPKcS0_RN11xalanc_1_1014XalanDOMStringE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanArrayAutoPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XalanArrayAutoPtr.9", align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca [100 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %0) #9
  br label %53

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !tbaa !62
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #12
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef -1) #9
  %19 = invoke noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 1024) #9
          to label %20 unwind label %22

20:                                               ; preds = %16
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  %21 = load i32, ptr %4, align 4, !tbaa !62
  switch i32 %21, label %24 [
    i32 1, label %49
    i32 0, label %25
  ]

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #12
  br label %51

24:                                               ; preds = %20
  br label %49

25:                                               ; preds = %20
  %26 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0) #9
  %27 = icmp ugt i32 %26, 99
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %29 = add i32 %26, 1
  %30 = zext i32 %29 to i64
  %31 = call noalias noundef nonnull ptr @_Znam(i64 noundef %30) #10
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIhEC2EPh(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %31) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %32 = shl nuw nsw i64 %30, 1
  %33 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %32) #10
          to label %34 unwind label %39

34:                                               ; preds = %28
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrItEC2EPt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %33) #9
  %35 = call noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrItE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #9
  %36 = call noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIhE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  %37 = invoke noundef i32 @_Z15transcodeStringPN11xalanc_1_1021XalanOutputTranscoderEPKcPtPhjRNS_14XalanDOMStringE(ptr noundef %19, ptr noundef %0, ptr noundef %35, ptr noundef %36, i32 noundef %26, ptr noundef nonnull align 8 dereferenceable(36) %2) #9
          to label %38 unwind label %41

38:                                               ; preds = %34
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIhED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %47

39:                                               ; preds = %28
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1017XalanArrayAutoPtrIhED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %51

45:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #12
  %46 = call noundef i32 @_Z15transcodeStringPN11xalanc_1_1021XalanOutputTranscoderEPKcPtPhjRNS_14XalanDOMStringE(ptr noundef %19, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef %26, ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #12
  br label %47

47:                                               ; preds = %45, %38
  %48 = phi i32 [ %37, %38 ], [ %46, %45 ]
  call void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %19) #9
  br label %49

49:                                               ; preds = %20, %24, %47
  %50 = phi i32 [ 13, %24 ], [ %48, %47 ], [ 10, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %53

51:                                               ; preds = %43, %22
  %52 = phi { ptr, i32 } [ %44, %43 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  resume { ptr, i32 } %52

53:                                               ; preds = %49, %14
  %54 = phi i32 [ 0, %14 ], [ %50, %49 ]
  ret i32 %54
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !65

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #7 comdat !prof !66 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !69, !llvm.loop !70

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 !prof !72 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !57 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrIhEC2EPh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 !prof !57 {
  store ptr %1, ptr %0, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrItEC2EPt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 !prof !57 {
  store ptr %1, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z15transcodeStringPN11xalanc_1_1021XalanOutputTranscoderEPKcPtPhjRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #1 comdat !prof !57 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !77
  %9 = load ptr, ptr %0, align 8, !tbaa !79
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %4, ptr noundef %2, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef %3) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, ptr %8, align 4, !tbaa !77
  %16 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %2, i32 noundef %15) #9
  br label %17

17:                                               ; preds = %6, %14
  %18 = phi i32 [ 0, %14 ], [ 11, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i32 %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrItE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1017XalanArrayAutoPtrIhE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017XalanArrayAutoPtrIhED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !57 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #7 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !57 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !82 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !83 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !91
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !92

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #9
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #9
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !93 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !94

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #9
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !95, !llvm.loop !96

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !97 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !98 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !93 {
  %3 = load ptr, ptr %0, align 8, !tbaa !99
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #7 comdat align 2 !prof !100 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @XalanDestroyXPath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_Z12getEvaluatorPv(ptr noundef nonnull %0) #9
  %12 = tail call noundef ptr @_Z8getXPathPv(ptr noundef nonnull %1) #9
  %13 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef %12) #9
          to label %14 unwind label %16

14:                                               ; preds = %10
  %15 = select i1 %13, i32 0, i32 12
  br label %20

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = tail call ptr @__cxa_begin_catch(ptr %18) #12
  tail call void @__cxa_end_catch()
  br label %20

20:                                               ; preds = %14, %16, %6, %4, %2
  %21 = phi i32 [ 5, %2 ], [ 2, %4 ], [ 7, %6 ], [ %15, %14 ], [ 13, %16 ]
  ret i32 %21
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z8getXPathPv(ptr noundef %0) local_unnamed_addr #7 comdat !prof !57 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local i32 @XalanEvaluateXPathAsBoolean(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = alloca %"class.xalanc_1_10::XalanSourceTreeDOMSupport", align 8
  %6 = alloca %"class.xalanc_1_10::XalanSourceTreeParserLiaison", align 8
  %7 = alloca %"class.xercesc_2_7::MemBufInputSource", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = load i1, ptr @_ZL12fInitialized, align 1
  br i1 %10, label %11, label %75

11:                                               ; preds = %4
  %12 = load i1, ptr @_ZL11fTerminated, align 1
  br i1 %12, label %75, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %0, null
  %15 = icmp eq ptr %1, null
  %16 = or i1 %14, %15
  %17 = icmp eq ptr %2, null
  %18 = or i1 %16, %17
  br i1 %18, label %75, label %19

19:                                               ; preds = %13
  %20 = tail call noundef ptr @_Z12getEvaluatorPv(ptr noundef nonnull %0) #9
  %21 = tail call noundef ptr @_Z8getXPathPv(ptr noundef nonnull %1) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
          to label %22 unwind label %43

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %6) #12
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() #9
          to label %24 unwind label %45

24:                                               ; preds = %22
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %23) #9
          to label %25 unwind label %45

25:                                               ; preds = %24
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  %26 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %2) #9
          to label %27 unwind label %47

27:                                               ; preds = %25
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %2, i32 noundef %26, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef %28) #9
          to label %29 unwind label %47

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #9
          to label %31 unwind label %49

31:                                               ; preds = %29
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %30) #9
          to label %32 unwind label %49

32:                                               ; preds = %31
  %33 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %6, ptr noundef nonnull align 8 dereferenceable(41) %7, ptr noundef nonnull align 8 dereferenceable(36) %8) #9
          to label %34 unwind label %51

34:                                               ; preds = %32
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %33, ptr noundef nonnull align 8 dereferenceable(129) %21, ptr noundef null) #9
          to label %35 unwind label %55

35:                                               ; preds = %34
  %36 = call noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #9
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = getelementptr inbounds ptr, ptr %37, i64 7
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %36) #9
          to label %41 unwind label %57

41:                                               ; preds = %35
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  %42 = zext i1 %40 to i32
  store i32 %42, ptr %3, align 4, !tbaa !77
  call void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #15
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %75

43:                                               ; preds = %19
  %44 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %67

45:                                               ; preds = %24, %22
  %46 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %65

47:                                               ; preds = %27, %25
  %48 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %63

49:                                               ; preds = %31, %29
  %50 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %53

51:                                               ; preds = %32
  %52 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #15
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  br label %61

55:                                               ; preds = %34
  %56 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  br label %59

57:                                               ; preds = %35
  %58 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr null
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %54, %53 ]
  call void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #15
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %6) #15
  br label %65

65:                                               ; preds = %63, %45
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %67

67:                                               ; preds = %65, %43
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %44, %43 ]
  %69 = extractvalue { ptr, i32 } %68, 1
  %70 = extractvalue { ptr, i32 } %68, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %71 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #12
  %72 = icmp eq i32 %69, %71
  %73 = call ptr @__cxa_begin_catch(ptr %70) #12
  call void @__cxa_end_catch()
  %74 = select i1 %72, i32 9, i32 13
  br label %75

75:                                               ; preds = %67, %41, %13, %11, %4
  %76 = phi i32 [ 5, %4 ], [ 2, %11 ], [ 7, %13 ], [ 0, %41 ], [ %74, %67 ]
  ret i32 %76
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717MemBufInputSourceC1EPKhjPKcbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #14
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717MemBufInputSourceD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local i32 @XalanEvaluateXPathExpressionAsBoolean(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 !prof !57 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store ptr null, ptr %6, align 8, !tbaa !58
  %7 = call i32 @XalanCreateXPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !58
  %11 = call i32 @XalanEvaluateXPathAsBoolean(ptr noundef %0, ptr noundef %10, ptr noundef %3, ptr noundef %4) #9, !range !109
  %12 = load ptr, ptr %6, align 8, !tbaa !58
  %13 = call i32 @XalanDestroyXPath(ptr noundef %0, ptr noundef %12) #9, !range !109
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 %11, i32 %13
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %15, %9 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %17
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { optsize }
attributes #10 = { builtin optsize allocsize(0) }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!56}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!36 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!39 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!40 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!41 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!43 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!54 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!55 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!63, !63, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices5eCodeE", !60, i64 0}
!64 = !{!"function_entry_count", i64 967143541}
!65 = !{!"branch_weights", i32 403628487, i32 563515056}
!66 = !{!"function_entry_count", i64 21552397}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !60, i64 0}
!69 = !{!"branch_weights", i32 21552398, i32 128560690}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"function_entry_count", i64 43398227}
!73 = !{!74, !59, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1017XalanArrayAutoPtrIhEE", !59, i64 0}
!75 = !{!76, !59, i64 0}
!76 = !{!"_ZTSN11xalanc_1_1017XalanArrayAutoPtrItEE", !59, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !60, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !61, i64 0}
!81 = !{!"function_entry_count", i64 3070433826}
!82 = !{!"function_entry_count", i64 44966986}
!83 = !{!"function_entry_count", i64 1083116306}
!84 = !{!85, !86, i64 8}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !59, i64 0, !86, i64 8, !86, i64 16, !59, i64 24}
!86 = !{!"long", !60, i64 0}
!87 = !{!"function_entry_count", i64 565220908}
!88 = !{!85, !59, i64 24}
!89 = !{!"function_entry_count", i64 6521798503}
!90 = !{!"function_entry_count", i64 128698679}
!91 = !{!85, !86, i64 16}
!92 = !{!"branch_weights", i32 43398290, i32 85300391}
!93 = !{!"function_entry_count", i64 85300390}
!94 = !{!"branch_weights", i32 1, i32 12185770}
!95 = !{!"branch_weights", i32 12185770, i32 -193930395}
!96 = distinct !{!96, !71}
!97 = !{!"function_entry_count", i64 227375739}
!98 = !{!"function_entry_count", i64 568333389}
!99 = !{!85, !59, i64 0}
!100 = !{!"function_entry_count", i64 30137156670}
!101 = !{!"function_entry_count", i64 825654975}
!102 = !{!"function_entry_count", i64 1}
!103 = !{!104, !59, i64 8}
!104 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !105, i64 0, !59, i64 8}
!105 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!106 = !{!107, !59, i64 0}
!107 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !59, i64 0}
!108 = !{!"function_entry_count", i64 1009440147}
!109 = !{i32 0, i32 14}
