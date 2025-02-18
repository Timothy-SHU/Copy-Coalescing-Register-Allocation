; ModuleID = 'URISupport.cpp'
source_filename = "URISupport.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanAutoPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xalanc_1_1010URISupport19InvalidURIException7getTypeEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

@_ZN11xalanc_1_1010URISupport21s_fileProtocolString1E = dso_local constant [8 x i16] [i16 102, i16 105, i16 108, i16 101, i16 58, i16 47, i16 47, i16 0], align 16
@_ZN11xalanc_1_1010URISupport21s_fileProtocolString2E = dso_local constant [9 x i16] [i16 102, i16 105, i16 108, i16 101, i16 58, i16 47, i16 47, i16 47, i16 0], align 16
@_ZN11xalanc_1_1010URISupport19InvalidURIException6m_typeE = dso_local constant [20 x i16] [i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 85, i16 82, i16 73, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1010URISupport19InvalidURIExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010URISupport19InvalidURIExceptionE, ptr @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD2Ev, ptr @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD0Ev, ptr @_ZNK11xalanc_1_1010URISupport19InvalidURIException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010URISupport19InvalidURIExceptionE = dso_local constant [49 x i8] c"N11xalanc_1_1010URISupport19InvalidURIExceptionE\00", align 1
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1010URISupport19InvalidURIExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010URISupport19InvalidURIExceptionE, ptr @_ZTIN11xalanc_1_1012XSLExceptionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1010URISupport19InvalidURIExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef nonnull %2)
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef nonnull %2)
          to label %6 unwind label %31

6:                                                ; preds = %3
  store ptr %5, ptr %0, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %33

7:                                                ; preds = %6
  %8 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
          to label %9 unwind label %35

9:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %10 unwind label %35

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef %16)
          to label %17 unwind label %35

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %14, align 8, !tbaa !59
  %23 = load ptr, ptr %4, align 8, !tbaa !60
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %22)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #15
  unreachable

30:                                               ; preds = %17, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef nonnull %2) #14
  br label %55

33:                                               ; preds = %6
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %50

35:                                               ; preds = %9, %7, %10
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !58
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = load ptr, ptr %4, align 8, !tbaa !60
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #15
  unreachable

50:                                               ; preds = %40, %35, %33
  %51 = phi { ptr, i32 } [ %34, %33 ], [ %36, %35 ], [ %36, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  %52 = load ptr, ptr %5, align 8, !tbaa !61
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(81) %5) #14
  br label %55

55:                                               ; preds = %50, %31
  %56 = phi { ptr, i32 } [ %32, %31 ], [ %51, %50 ]
  resume { ptr, i32 } %56
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %102, label %7, !prof !64

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %11, %10 ], [ %0, %3 ]
  %9 = load i16, ptr %8, align 2, !tbaa !65
  switch i16 %9, label %10 [
    i16 58, label %12
    i16 0, label %12
  ], !prof !67

10:                                               ; preds = %7
  %11 = getelementptr inbounds i16, ptr %8, i64 1
  br label %7, !llvm.loop !68

12:                                               ; preds = %7, %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %0 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %62, label %19, !prof !71

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  %20 = load ptr, ptr %2, align 8, !tbaa !60
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %17)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !55
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %25
  %27 = invoke noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef %26)
          to label %28 unwind label %43

28:                                               ; preds = %19
  %29 = icmp eq i32 %27, 4
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !58
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %24, align 8, !tbaa !59
  %35 = load ptr, ptr %4, align 8, !tbaa !60
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %34)
          to label %42 unwind label %39

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #15
  unreachable

42:                                               ; preds = %28, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  br i1 %29, label %62, label %58

43:                                               ; preds = %19
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !58
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %24, align 8, !tbaa !59
  %50 = load ptr, ptr %4, align 8, !tbaa !60
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %43, %48
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  br label %100

58:                                               ; preds = %42
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
  %59 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0)
  %60 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %0, i32 noundef %59)
  %61 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %102

62:                                               ; preds = %12, %42
  %63 = load ptr, ptr %2, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %64 = call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef nonnull %63)
  store ptr %64, ptr %5, align 8, !tbaa !72
  %65 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %63, ptr %65, align 8, !tbaa !74
  %66 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %64)
          to label %67 unwind label %80, !prof !71

67:                                               ; preds = %62
  %68 = load i16, ptr %64, align 2, !tbaa !65
  %69 = icmp eq i16 %68, 47
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !58
  br i1 %69, label %72, label %84, !prof !71

72:                                               ; preds = %67
  %73 = add i32 %66, 8
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %77, !prof !71

76:                                               ; preds = %72
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %74)
          to label %77 unwind label %82, !prof !71

77:                                               ; preds = %76, %72
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
          to label %78 unwind label %82, !prof !71

78:                                               ; preds = %77
  %79 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_1010URISupport21s_fileProtocolString1E, i32 noundef 7)
          to label %94 unwind label %82, !prof !71

80:                                               ; preds = %94, %62
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %98

82:                                               ; preds = %78, %77, %76
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %98

84:                                               ; preds = %67
  %85 = add i32 %66, 9
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %71, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %86)
          to label %89 unwind label %92

89:                                               ; preds = %88, %84
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef -1)
          to label %90 unwind label %92

90:                                               ; preds = %89
  %91 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_1010URISupport21s_fileProtocolString2E, i32 noundef 8)
          to label %94 unwind label %92

92:                                               ; preds = %90, %89, %88
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %98

94:                                               ; preds = %90, %78
  %95 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %64, i32 noundef %66)
          to label %96 unwind label %80, !prof !71

96:                                               ; preds = %94
  %97 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2), !prof !75
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %102

98:                                               ; preds = %92, %82, %80
  %99 = phi { ptr, i32 } [ %81, %80 ], [ %83, %82 ], [ %93, %92 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %100

100:                                              ; preds = %98, %57
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %44, %57 ]
  resume { ptr, i32 } %101

102:                                              ; preds = %58, %96, %3
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE(ptr noundef nonnull readonly returned align 8 dereferenceable(36) %0) local_unnamed_addr #5 align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5, !prof !64

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !55
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10, !prof !64
  br label %12

12:                                               ; preds = %15, %5
  %13 = phi ptr [ %11, %5 ], [ %16, %15 ]
  %14 = load i16, ptr %13, align 2, !tbaa !65
  switch i16 %14, label %15 [
    i16 92, label %17
    i16 0, label %17
  ], !prof !79

15:                                               ; preds = %12
  %16 = getelementptr inbounds i16, ptr %13, i64 1
  br label %12, !llvm.loop !68

17:                                               ; preds = %12, %12
  %18 = ptrtoint ptr %13 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %1, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %1 ]
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %46, label %26, !prof !71

26:                                               ; preds = %23
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = zext i32 %24 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !55
  %33 = icmp eq i64 %32, 0
  %34 = getelementptr inbounds i16, ptr %28, i64 %32
  %35 = getelementptr inbounds i16, ptr %34, i64 -1
  %36 = select i1 %33, ptr %28, ptr %35
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %26, %43
  %39 = phi ptr [ %44, %43 ], [ %30, %26 ]
  %40 = load i16, ptr %39, align 2, !tbaa !65
  %41 = icmp eq i16 %40, 92
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i16 47, ptr %39, align 2, !tbaa !65
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds i16, ptr %39, i64 1
  %45 = icmp eq ptr %44, %36
  br i1 %45, label %46, label %38, !llvm.loop !80

46:                                               ; preds = %43, %26, %23
  ret ptr %0
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !82

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !83

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !61
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !84

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #16
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #14
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %3)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %1)
          to label %9 unwind label %62

9:                                                ; preds = %5
  %10 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %6)
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = select i1 %22, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !76
  %28 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanParsedURI7resolveEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %17, i32 noundef %19, ptr noundef %25, i32 noundef %27, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %29 unwind label %64

29:                                               ; preds = %9
  %30 = load i64, ptr %12, align 8, !tbaa !55
  %31 = icmp eq i64 %30, 0
  %32 = load ptr, ptr %15, align 8
  %33 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %32
  %34 = load i32, ptr %18, align 8, !tbaa !76
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %33, i32 noundef %34, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %35 unwind label %64

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !58
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %15, align 8, !tbaa !59
  %41 = load ptr, ptr %7, align 8, !tbaa !60
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #15
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !58
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %23, align 8, !tbaa !59
  %54 = load ptr, ptr %6, align 8, !tbaa !60
  %55 = load ptr, ptr %54, align 8, !tbaa !61
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53)
          to label %61 unwind label %58

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #15
  unreachable

61:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  ret void

62:                                               ; preds = %5
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %79

64:                                               ; preds = %29, %9
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !58
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = load ptr, ptr %7, align 8, !tbaa !60
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %71)
          to label %79 unwind label %76

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #15
  unreachable

79:                                               ; preds = %69, %64, %62
  %80 = phi { ptr, i32 } [ %63, %62 ], [ %65, %64 ], [ %65, %69 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !58
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !59
  %87 = load ptr, ptr %6, align 8, !tbaa !60
  %88 = load ptr, ptr %87, align 8, !tbaa !61
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %84
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #15
  unreachable

94:                                               ; preds = %79, %84
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #14
  resume { ptr, i32 } %80
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1010URISupport19InvalidURIExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  ret void
}

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010URISupport19InvalidURIExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010URISupport19InvalidURIException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat align 2 !prof !49 {
  ret ptr @_ZN11xalanc_1_1010URISupport19InvalidURIException6m_typeE
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !86

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !58
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !87
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !59
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = load i64, ptr %5, align 8, !tbaa !55
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !88

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !60
  %24 = load i64, ptr %10, align 8, !tbaa !55
  %25 = load i64, ptr %11, align 8, !tbaa !58
  %26 = load ptr, ptr %17, align 8, !tbaa !59
  store ptr %4, ptr %3, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !58
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !59
  %33 = load ptr, ptr %3, align 8, !tbaa !60
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #15
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !89

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !61
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !90
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !60
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  store ptr %53, ptr %0, align 8, !tbaa !60
  store i64 %52, ptr %5, align 8, !tbaa !55
  store i64 %51, ptr %55, align 8, !tbaa !58
  store ptr %50, ptr %57, align 8, !tbaa !59
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !91

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !61
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !92

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #15
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !86

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !58
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !94
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = load i64, ptr %9, align 8, !tbaa !55
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !88

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !60
  %28 = load i64, ptr %6, align 8, !tbaa !55
  %29 = load i64, ptr %7, align 8, !tbaa !58
  %30 = load ptr, ptr %8, align 8, !tbaa !59
  %31 = load ptr, ptr %5, align 8, !tbaa !60
  store ptr %31, ptr %0, align 8, !tbaa !60
  %32 = load i64, ptr %14, align 8, !tbaa !55
  store i64 %32, ptr %6, align 8, !tbaa !55
  %33 = load i64, ptr %15, align 8, !tbaa !58
  store i64 %33, ptr %7, align 8, !tbaa !58
  %34 = load ptr, ptr %21, align 8, !tbaa !59
  store ptr %34, ptr %8, align 8, !tbaa !59
  store ptr %27, ptr %5, align 8, !tbaa !60
  store i64 %28, ptr %14, align 8, !tbaa !55
  store i64 %29, ptr %15, align 8, !tbaa !58
  store ptr %30, ptr %21, align 8, !tbaa !59
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !88

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !58
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !59
  %50 = load ptr, ptr %5, align 8, !tbaa !60
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !89

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !61
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !95
  store ptr %65, ptr %8, align 8, !tbaa !59
  store i64 %3, ptr %7, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !97

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !58
  br i1 %18, label %21, label %39, !prof !98

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !99

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !100

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !59
  %28 = load i64, ptr %12, align 8, !tbaa !55
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !65
  store i16 %34, ptr %32, align 2, !tbaa !65
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !101, !llvm.loop !102

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !103

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !60
  store ptr %42, ptr %5, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !58
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !61
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !104
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !59
  %51 = load i64, ptr %43, align 8, !tbaa !55
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !59
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !105

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !59
  %56 = load i64, ptr %43, align 8, !tbaa !55
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !105

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !59
  %60 = load i64, ptr %43, align 8, !tbaa !55
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !59
  %63 = load i64, ptr %12, align 8, !tbaa !55
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !105

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !60
  %67 = load i64, ptr %12, align 8, !tbaa !55
  %68 = load i64, ptr %19, align 8, !tbaa !58
  %69 = load ptr, ptr %15, align 8, !tbaa !59
  %70 = load ptr, ptr %5, align 8, !tbaa !60
  store ptr %70, ptr %0, align 8, !tbaa !60
  %71 = load i64, ptr %43, align 8, !tbaa !55
  store i64 %71, ptr %12, align 8, !tbaa !55
  %72 = load i64, ptr %44, align 8, !tbaa !58
  store i64 %72, ptr %19, align 8, !tbaa !58
  %73 = load ptr, ptr %50, align 8, !tbaa !59
  store ptr %73, ptr %15, align 8, !tbaa !59
  store ptr %66, ptr %5, align 8, !tbaa !60
  store i64 %67, ptr %43, align 8, !tbaa !55
  store i64 %68, ptr %44, align 8, !tbaa !58
  store ptr %69, ptr %50, align 8, !tbaa !59
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !106

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !61
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !107

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !58
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !59
  %89 = load ptr, ptr %5, align 8, !tbaa !60
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #15
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !108

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !109

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !109

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !110, !llvm.loop !111

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !112, !llvm.loop !113

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !114
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !115

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !55
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !58
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !117

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !65
  store i16 %13, ptr %12, align 2, !tbaa !65
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !55
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !60
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !60
  %24 = load i64, ptr %4, align 8, !tbaa !55
  %25 = load i64, ptr %6, align 8, !tbaa !58
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = load ptr, ptr %3, align 8, !tbaa !60
  store ptr %28, ptr %0, align 8, !tbaa !60
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !55
  store i64 %30, ptr %4, align 8, !tbaa !55
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !58
  store i64 %32, ptr %6, align 8, !tbaa !58
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  store ptr %34, ptr %26, align 8, !tbaa !59
  store ptr %23, ptr %3, align 8, !tbaa !60
  store i64 %24, ptr %29, align 8, !tbaa !55
  store i64 %25, ptr %31, align 8, !tbaa !58
  store ptr %27, ptr %33, align 8, !tbaa !59
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !58
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = load ptr, ptr %3, align 8, !tbaa !60
  %53 = load ptr, ptr %52, align 8, !tbaa !61
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #15
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanParsedURI7resolveEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, i64 4}
!36 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 4}
!37 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 4}
!38 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 4}
!39 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 8}
!40 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010URISupport16NormalizeURITextERNS_14XalanDOMStringE, i64 4}
!41 = !{ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 4}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1012XalanAutoPtrIN11xercesc_2_76XMLURLEEE", !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !57, i64 8}
!56 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !57, i64 8, !57, i64 16, !52, i64 24}
!57 = !{!"long", !53, i64 0}
!58 = !{!56, !57, i64 16}
!59 = !{!56, !52, i64 24}
!60 = !{!56, !52, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !54, i64 0}
!63 = !{!"function_entry_count", i64 4}
!64 = !{!"branch_weights", i32 0, i32 4}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !53, i64 0}
!67 = !{!"branch_weights", i32 32, i32 0, i32 4}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"branch_weights", i32 4, i32 0}
!72 = !{!73, !52, i64 0}
!73 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !52, i64 0, !52, i64 8}
!74 = !{!73, !52, i64 8}
!75 = !{!"branch_weights", i32 4}
!76 = !{!77, !78, i64 32}
!77 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !56, i64 0, !78, i64 32}
!78 = !{!"int", !53, i64 0}
!79 = !{!"branch_weights", i32 568, i32 0, i32 4}
!80 = distinct !{!80, !69, !70}
!81 = !{!"function_entry_count", i64 243874}
!82 = !{!"branch_weights", i32 191815, i32 52059}
!83 = !{!"branch_weights", i32 0, i32 52059}
!84 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!85 = !{!"function_entry_count", i64 64551586}
!86 = !{!"branch_weights", i32 64551590, i32 18}
!87 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!88 = !{!"branch_weights", i32 18, i32 0}
!89 = !{!"branch_weights", i32 4, i32 64551586}
!90 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!91 = !{!"branch_weights", i32 42418193, i32 22133393}
!92 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!93 = !{!"function_entry_count", i64 22}
!94 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!95 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!96 = !{!"function_entry_count", i64 155828046}
!97 = !{!"branch_weights", i32 0, i32 155828046}
!98 = !{!"branch_weights", i32 133170777, i32 22657269}
!99 = !{!"branch_weights", i32 20, i32 133170757}
!100 = !{!"branch_weights", i32 1, i32 19024395}
!101 = !{!"branch_weights", i32 19024395, i32 -26420601}
!102 = distinct !{!102, !69, !70}
!103 = !{!"branch_weights", i32 20748786, i32 1908483}
!104 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!105 = !{!"branch_weights", i32 20748786, i32 0}
!106 = !{!"branch_weights", i32 0, i32 20748786}
!107 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!108 = !{!"branch_weights", i32 0, i32 1908483}
!109 = !{!"branch_weights", i32 1, i32 1908482}
!110 = !{!"branch_weights", i32 1908482, i32 49797853}
!111 = distinct !{!111, !69, !70}
!112 = !{!"branch_weights", i32 1908482, i32 1}
!113 = distinct !{!113, !69, !70}
!114 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!115 = distinct !{!115, !69, !70}
!116 = !{!"function_entry_count", i64 124150652}
!117 = !{!"branch_weights", i32 124150652, i32 0}
