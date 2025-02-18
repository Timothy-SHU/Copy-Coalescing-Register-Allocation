; ModuleID = 'FunctionNormalizeSpace.cpp'
source_filename = "FunctionNormalizeSpace.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

@_ZTVN11xalanc_1_1022FunctionNormalizeSpaceE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022FunctionNormalizeSpaceE, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD2Ev, ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"normalize-space()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022FunctionNormalizeSpaceE = dso_local constant [40 x i8] c"N11xalanc_1_1022FunctionNormalizeSpaceE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1022FunctionNormalizeSpaceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022FunctionNormalizeSpaceE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1

@_ZN11xalanc_1_1022FunctionNormalizeSpaceC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceC2Ev
@_ZN11xalanc_1_1022FunctionNormalizeSpaceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionNormalizeSpaceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNormalizeSpaceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionNormalizeSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionNormalizeSpace7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %6 = icmp eq ptr %3, null
  %7 = load ptr, ptr %2, align 8, !tbaa !45
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %6, label %11, label %35

11:                                               ; preds = %5
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 5, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %13 unwind label %26

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef null, ptr noundef %4)
          to label %17 unwind label %26

17:                                               ; preds = %13
  store ptr null, ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %18 unwind label %26

18:                                               ; preds = %17
  %19 = load ptr, ptr %2, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %54 unwind label %23

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #15
  unreachable

26:                                               ; preds = %17, %13, %11
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %2, align 8, !tbaa !45
  %29 = getelementptr inbounds ptr, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %55 unwind label %32

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #15
  unreachable

35:                                               ; preds = %5
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %36 unwind label %45

36:                                               ; preds = %35
  invoke void @_ZNK11xalanc_1_1022FunctionNormalizeSpace9normalizeERNS_21XPathExecutionContextERKNS_14XalanDOMStringE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %37 unwind label %45

37:                                               ; preds = %36
  %38 = load ptr, ptr %2, align 8, !tbaa !45
  %39 = getelementptr inbounds ptr, ptr %38, i64 24
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef zeroext i1 %40(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %54 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #15
  unreachable

45:                                               ; preds = %36, %35
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = load ptr, ptr %2, align 8, !tbaa !45
  %48 = getelementptr inbounds ptr, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %55 unwind label %51

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #15
  unreachable

54:                                               ; preds = %37, %18
  ret void

55:                                               ; preds = %26, %45
  %56 = phi { ptr, i32 } [ %46, %45 ], [ %27, %26 ]
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionNormalizeSpace9normalizeERNS_21XPathExecutionContextERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr %2, ptr %5, align 8, !tbaa !59
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %2, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %13, ptr %9, align 8, !tbaa !61
  %14 = add i32 %8, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !62
  %18 = icmp ult i64 %17, %15
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %15)
          to label %20 unwind label %32

20:                                               ; preds = %19, %4
  %21 = icmp eq i32 %8, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %25 = add i32 %8, -1
  %26 = zext i32 %25 to i64
  %27 = zext i32 %8 to i64
  br label %34

28:                                               ; preds = %58, %20
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %107

32:                                               ; preds = %19
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %135

34:                                               ; preds = %22, %58
  %35 = phi i64 [ 0, %22 ], [ %60, %58 ]
  %36 = phi i8 [ 0, %22 ], [ %59, %58 ]
  %37 = load ptr, ptr %23, align 8, !tbaa !63
  %38 = getelementptr inbounds i16, ptr %37, i64 %35
  %39 = load i16, ptr %38, align 2, !tbaa !64
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !66
  %43 = icmp eq i8 %42, 6
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = and i8 %36, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, ptr %24, align 8, !tbaa !54
  %49 = icmp ne i32 %48, 0
  %50 = icmp ult i64 %35, %26
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 1, i16 noundef zeroext 32)
          to label %58 unwind label %54

54:                                               ; preds = %56, %52
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %135

56:                                               ; preds = %34
  %57 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 1, i16 noundef zeroext %39)
          to label %58 unwind label %54

58:                                               ; preds = %52, %56, %47, %44
  %59 = phi i8 [ %36, %44 ], [ 1, %47 ], [ 0, %56 ], [ 1, %52 ]
  %60 = add nuw nsw i64 %35, 1
  %61 = icmp eq i64 %60, %27
  br i1 %61, label %28, label %34, !llvm.loop !67

62:                                               ; preds = %28
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  %65 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !73
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %67 unwind label %88

67:                                               ; preds = %62
  %68 = load ptr, ptr %64, align 8, !tbaa !45
  %69 = getelementptr inbounds ptr, ptr %68, i64 9
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %71 unwind label %90

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !62
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = load ptr, ptr %6, align 8, !tbaa !74
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %77)
          to label %85 unwind label %82

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #15
  unreachable

85:                                               ; preds = %71, %75
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %122

86:                                               ; preds = %116, %115
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %135

88:                                               ; preds = %62
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %105

90:                                               ; preds = %67
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !62
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !63
  %98 = load ptr, ptr %6, align 8, !tbaa !74
  %99 = load ptr, ptr %98, align 8, !tbaa !45
  %100 = getelementptr inbounds ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  invoke void %101(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef %97)
          to label %105 unwind label %102

102:                                              ; preds = %95
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #15
  unreachable

105:                                              ; preds = %95, %90, %88
  %106 = phi { ptr, i32 } [ %89, %88 ], [ %91, %90 ], [ %91, %95 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %135

107:                                              ; preds = %28
  %108 = add i32 %30, -1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = getelementptr inbounds i16, ptr %111, i64 %109
  %113 = load i16, ptr %112, align 2, !tbaa !64
  %114 = icmp eq i16 %113, 32
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef %108, i32 noundef 1)
          to label %116 unwind label %86

116:                                              ; preds = %115, %107
  %117 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !70
  %119 = load ptr, ptr %118, align 8, !tbaa !45
  %120 = getelementptr inbounds ptr, ptr %119, i64 15
  %121 = load ptr, ptr %120, align 8
  invoke void %121(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %118, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %122 unwind label %86

122:                                              ; preds = %116, %85
  %123 = load ptr, ptr %9, align 8, !tbaa !61
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %5, align 8, !tbaa !59
  %127 = load ptr, ptr %126, align 8, !tbaa !45
  %128 = getelementptr inbounds ptr, ptr %127, i64 24
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef zeroext i1 %129(ptr noundef nonnull align 8 dereferenceable(24) %126, ptr noundef nonnull align 8 dereferenceable(36) %123)
          to label %134 unwind label %131

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #15
  unreachable

134:                                              ; preds = %122, %125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void

135:                                              ; preds = %54, %105, %86, %32
  %136 = phi { ptr, i32 } [ %33, %32 ], [ %55, %54 ], [ %106, %105 ], [ %87, %86 ]
  %137 = load ptr, ptr %9, align 8, !tbaa !61
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %5, align 8, !tbaa !59
  %141 = load ptr, ptr %140, align 8, !tbaa !45
  %142 = getelementptr inbounds ptr, ptr %141, i64 24
  %143 = load ptr, ptr %142, align 8
  %144 = invoke noundef zeroext i1 %143(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull align 8 dereferenceable(36) %137)
          to label %148 unwind label %145

145:                                              ; preds = %139
  %146 = landingpad { ptr, i32 }
          catch ptr null
  %147 = extractvalue { ptr, i32 } %146, 0
  call void @__clang_call_terminate(ptr %147) #15
  unreachable

148:                                              ; preds = %135, %139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  resume { ptr, i32 } %136
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionNormalizeSpace7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef nonnull %4, ptr nocapture readnone %5) unnamed_addr #0 align 2 !prof !49 {
  tail call void @_ZNK11xalanc_1_1022FunctionNormalizeSpace9normalizeERNS_21XPathExecutionContextERKNS_10XObjectPtrE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionNormalizeSpace9normalizeERNS_21XPathExecutionContextERKNS_10XObjectPtrE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 !prof !49 {
  %5 = load ptr, ptr %3, align 8, !tbaa !50
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %10 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1022FunctionNormalizeSpace18needsNormalizationERKNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(36) %9)
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !75
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store ptr %12, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %12)
  br label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds ptr, ptr %20, i64 14
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %24

23:                                               ; preds = %4
  tail call void @_ZNK11xalanc_1_1022FunctionNormalizeSpace9normalizeERNS_21XPathExecutionContextERKNS_14XalanDOMStringE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %9)
  br label %24

24:                                               ; preds = %23, %17, %16
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022FunctionNormalizeSpace18needsNormalizationERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = add i32 %4, -1
  %10 = zext i32 %9 to i64
  %11 = zext i32 %4 to i64
  br label %16

12:                                               ; preds = %37
  %13 = icmp ne i8 %42, 0
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i1 [ false, %2 ], [ %13, %12 ]
  ret i1 %15

16:                                               ; preds = %6, %37
  %17 = phi i64 [ 0, %6 ], [ %40, %37 ]
  %18 = phi i8 [ 0, %6 ], [ %39, %37 ]
  %19 = phi i8 [ 0, %6 ], [ %38, %37 ]
  %20 = getelementptr inbounds i16, ptr %8, i64 %17
  %21 = load i16, ptr %20, align 2, !tbaa !64
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !66
  %25 = icmp eq i8 %24, 6
  br i1 %25, label %26, label %37

26:                                               ; preds = %16
  %27 = icmp eq i64 %17, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = icmp ne i64 %17, %10
  %30 = icmp eq i16 %21, 32
  %31 = and i1 %29, %30
  %32 = and i8 %19, 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  %35 = select i1 %34, i8 1, i8 %19
  %36 = select i1 %34, i8 %18, i8 1
  br label %37

37:                                               ; preds = %28, %26, %16
  %38 = phi i8 [ 0, %16 ], [ %19, %26 ], [ %35, %28 ]
  %39 = phi i8 [ %18, %16 ], [ 1, %26 ], [ %36, %28 ]
  %40 = add nuw nsw i64 %17, 1
  %41 = icmp ult i64 %40, %11
  %42 = and i8 %39, 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %16, label %12, !llvm.loop !79
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !80
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionNormalizeSpaceE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !45
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022FunctionNormalizeSpace8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !49 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 7, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !83

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !74
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !62
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !45
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !84
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = load i64, ptr %5, align 8, !tbaa !82
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !85

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !74
  %24 = load i64, ptr %10, align 8, !tbaa !82
  %25 = load i64, ptr %11, align 8, !tbaa !62
  %26 = load ptr, ptr %17, align 8, !tbaa !63
  store ptr %4, ptr %3, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !62
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !63
  %33 = load ptr, ptr %3, align 8, !tbaa !74
  %34 = load ptr, ptr %33, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !86

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !45
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !87
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !74
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !62
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  store ptr %53, ptr %0, align 8, !tbaa !74
  store i64 %52, ptr %5, align 8, !tbaa !82
  store i64 %51, ptr %55, align 8, !tbaa !62
  store ptr %50, ptr %57, align 8, !tbaa !63
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !88

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !45
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !89

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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !82
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !83

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !74
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !62
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !45
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !91
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !63
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = load i64, ptr %9, align 8, !tbaa !82
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !85

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !74
  %28 = load i64, ptr %6, align 8, !tbaa !82
  %29 = load i64, ptr %7, align 8, !tbaa !62
  %30 = load ptr, ptr %8, align 8, !tbaa !63
  %31 = load ptr, ptr %5, align 8, !tbaa !74
  store ptr %31, ptr %0, align 8, !tbaa !74
  %32 = load i64, ptr %14, align 8, !tbaa !82
  store i64 %32, ptr %6, align 8, !tbaa !82
  %33 = load i64, ptr %15, align 8, !tbaa !62
  store i64 %33, ptr %7, align 8, !tbaa !62
  %34 = load ptr, ptr %21, align 8, !tbaa !63
  store ptr %34, ptr %8, align 8, !tbaa !63
  store ptr %27, ptr %5, align 8, !tbaa !74
  store i64 %28, ptr %14, align 8, !tbaa !82
  store i64 %29, ptr %15, align 8, !tbaa !62
  store ptr %30, ptr %21, align 8, !tbaa !63
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !85

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !62
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !63
  %50 = load ptr, ptr %5, align 8, !tbaa !74
  %51 = load ptr, ptr %50, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !86

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !45
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !92
  store ptr %65, ptr %8, align 8, !tbaa !63
  store i64 %3, ptr %7, align 8, !tbaa !62
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !94

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !82
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !62
  br i1 %18, label %21, label %39, !prof !95

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !96

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !97

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !63
  %28 = load i64, ptr %12, align 8, !tbaa !82
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !64
  store i16 %34, ptr %32, align 2, !tbaa !64
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !98, !llvm.loop !99

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !100

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !74
  store ptr %42, ptr %5, align 8, !tbaa !74
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !62
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !45
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !101
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !63
  %51 = load i64, ptr %43, align 8, !tbaa !82
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !102

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !63
  %56 = load i64, ptr %43, align 8, !tbaa !82
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !102

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !63
  %60 = load i64, ptr %43, align 8, !tbaa !82
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !63
  %63 = load i64, ptr %12, align 8, !tbaa !82
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !102

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !74
  %67 = load i64, ptr %12, align 8, !tbaa !82
  %68 = load i64, ptr %19, align 8, !tbaa !62
  %69 = load ptr, ptr %15, align 8, !tbaa !63
  %70 = load ptr, ptr %5, align 8, !tbaa !74
  store ptr %70, ptr %0, align 8, !tbaa !74
  %71 = load i64, ptr %43, align 8, !tbaa !82
  store i64 %71, ptr %12, align 8, !tbaa !82
  %72 = load i64, ptr %44, align 8, !tbaa !62
  store i64 %72, ptr %19, align 8, !tbaa !62
  %73 = load ptr, ptr %50, align 8, !tbaa !63
  store ptr %73, ptr %15, align 8, !tbaa !63
  store ptr %66, ptr %5, align 8, !tbaa !74
  store i64 %67, ptr %43, align 8, !tbaa !82
  store i64 %68, ptr %44, align 8, !tbaa !62
  store ptr %69, ptr %50, align 8, !tbaa !63
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !103

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !45
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !104

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !62
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !63
  %89 = load ptr, ptr %5, align 8, !tbaa !74
  %90 = load ptr, ptr %89, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !105

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !106

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !106

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !107, !llvm.loop !108

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !109, !llvm.loop !110

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !111
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
  br i1 %123, label %124, label %120, !llvm.loop !112

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
  store i64 %36, ptr %12, align 8, !tbaa !82
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !62
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !114

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !64
  store i16 %13, ptr %12, align 2, !tbaa !64
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !82
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !74
  %24 = load i64, ptr %4, align 8, !tbaa !82
  %25 = load i64, ptr %6, align 8, !tbaa !62
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = load ptr, ptr %3, align 8, !tbaa !74
  store ptr %28, ptr %0, align 8, !tbaa !74
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !82
  store i64 %30, ptr %4, align 8, !tbaa !82
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !62
  store i64 %32, ptr %6, align 8, !tbaa !62
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  store ptr %34, ptr %26, align 8, !tbaa !63
  store ptr %23, ptr %3, align 8, !tbaa !74
  store i64 %24, ptr %29, align 8, !tbaa !82
  store i64 %25, ptr %31, align 8, !tbaa !62
  store ptr %27, ptr %33, align 8, !tbaa !63
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !62
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = load ptr, ptr %3, align 8, !tbaa !74
  %53 = load ptr, ptr %52, align 8, !tbaa !45
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022FunctionNormalizeSpaceD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"function_entry_count", i64 2}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !47, i64 0}
!54 = !{!55, !58, i64 32}
!55 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !56, i64 0, !58, i64 32}
!56 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !57, i64 8, !57, i64 16, !52, i64 24}
!57 = !{!"long", !53, i64 0}
!58 = !{!"int", !53, i64 0}
!59 = !{!60, !52, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !52, i64 0, !52, i64 8}
!61 = !{!60, !52, i64 8}
!62 = !{!56, !57, i64 16}
!63 = !{!56, !52, i64 24}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !53, i64 0}
!66 = !{!53, !53, i64 0}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!71, !52, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !72, i64 0, !52, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !52, i64 8}
!73 = !{!72, !52, i64 8}
!74 = !{!56, !52, i64 0}
!75 = !{!76, !78, i64 12}
!76 = !{!"_ZTSN11xalanc_1_107XObjectE", !77, i64 0, !78, i64 12, !52, i64 16}
!77 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !58, i64 8}
!78 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !53, i64 0}
!79 = distinct !{!79, !68, !69}
!80 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!81 = !{!"function_entry_count", i64 64551586}
!82 = !{!56, !57, i64 8}
!83 = !{!"branch_weights", i32 64551590, i32 18}
!84 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!85 = !{!"branch_weights", i32 18, i32 0}
!86 = !{!"branch_weights", i32 4, i32 64551586}
!87 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!88 = !{!"branch_weights", i32 42418193, i32 22133393}
!89 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!90 = !{!"function_entry_count", i64 22}
!91 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!92 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!93 = !{!"function_entry_count", i64 155828046}
!94 = !{!"branch_weights", i32 0, i32 155828046}
!95 = !{!"branch_weights", i32 133170777, i32 22657269}
!96 = !{!"branch_weights", i32 20, i32 133170757}
!97 = !{!"branch_weights", i32 1, i32 19024395}
!98 = !{!"branch_weights", i32 19024395, i32 -26420601}
!99 = distinct !{!99, !68, !69}
!100 = !{!"branch_weights", i32 20748786, i32 1908483}
!101 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!102 = !{!"branch_weights", i32 20748786, i32 0}
!103 = !{!"branch_weights", i32 0, i32 20748786}
!104 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!105 = !{!"branch_weights", i32 0, i32 1908483}
!106 = !{!"branch_weights", i32 1, i32 1908482}
!107 = !{!"branch_weights", i32 1908482, i32 49797853}
!108 = distinct !{!108, !68, !69}
!109 = !{!"branch_weights", i32 1908482, i32 1}
!110 = distinct !{!110, !68, !69}
!111 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!112 = distinct !{!112, !68, !69}
!113 = !{!"function_entry_count", i64 124150652}
!114 = !{!"branch_weights", i32 124150652, i32 0}
