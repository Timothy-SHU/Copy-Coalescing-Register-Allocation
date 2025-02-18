; ModuleID = 'FunctionDocument.cpp'
source_filename = "FunctionDocument.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_106doWarnERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE = comdat any

@_ZTVN11xalanc_1_1016FunctionDocumentE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016FunctionDocumentE, ptr @_ZN11xalanc_1_1016FunctionDocumentD2Ev, ptr @_ZN11xalanc_1_1016FunctionDocumentD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1016FunctionDocument7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1016FunctionDocument7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1016FunctionDocument5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1016FunctionDocument8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"document\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"document()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016FunctionDocumentE = dso_local constant [34 x i8] c"N11xalanc_1_1016FunctionDocumentE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1016FunctionDocumentE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016FunctionDocumentE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@.str.2 = private unnamed_addr constant [13 x i8] c" (Base URI: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1

@_ZN11xalanc_1_1016FunctionDocumentC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionDocumentC2Ev
@_ZN11xalanc_1_1016FunctionDocumentD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionDocumentD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1016FunctionDocument7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = load ptr, ptr %4, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @_ZNK11xalanc_1_1016FunctionDocument9doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_10XObjectPtrEPNS_14XalanDOMStringEiPKN11xercesc_2_77LocatorEb(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null, i32 noundef 1, ptr noundef %5, i1 noundef zeroext false)
  br label %65

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  %14 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = load ptr, ptr %2, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 29
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %20 unwind label %49

20:                                               ; preds = %13
  %21 = load ptr, ptr %19, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %25 unwind label %49

25:                                               ; preds = %20
  %26 = icmp eq ptr %24, %7
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %29 unwind label %49

29:                                               ; preds = %27
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %24, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !63
  br label %33

33:                                               ; preds = %29, %25
  invoke void @_ZNK11xalanc_1_1016FunctionDocument9doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_10XObjectPtrEPNS_14XalanDOMStringEiPKN11xercesc_2_77LocatorEb(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %5, i1 noundef zeroext false)
          to label %34 unwind label %49

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !67
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = load ptr, ptr %7, align 8, !tbaa !69
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #16
  unreachable

48:                                               ; preds = %34, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %65

49:                                               ; preds = %27, %33, %20, %13
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !67
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = load ptr, ptr %7, align 8, !tbaa !69
  %58 = load ptr, ptr %57, align 8, !tbaa !47
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #16
  unreachable

64:                                               ; preds = %49, %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  resume { ptr, i32 } %50

65:                                               ; preds = %48, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1016FunctionDocument9doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_10XObjectPtrEPNS_14XalanDOMStringEiPKN11xercesc_2_77LocatorEb(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  store ptr %2, ptr %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %2, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 21
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %17, ptr %13, align 8, !tbaa !72
  %18 = load ptr, ptr %4, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !56
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %32

22:                                               ; preds = %9
  %23 = load ptr, ptr %18, align 8, !tbaa !47
  %24 = getelementptr inbounds ptr, ptr %23, i64 13
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %27 unwind label %53

27:                                               ; preds = %22
  %28 = load ptr, ptr %26, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %32 unwind label %53

32:                                               ; preds = %9, %27
  %33 = phi i32 [ %31, %27 ], [ 1, %9 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, 1
  %37 = icmp eq i32 %6, 1
  %38 = icmp eq ptr %5, null
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %41 = icmp eq ptr %5, null
  %42 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  br label %55

45:                                               ; preds = %290, %32
  %46 = load ptr, ptr %13, align 8, !tbaa !72
  %47 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %46, i64 0, i32 1
  store i32 1, ptr %47, align 8, !tbaa !73
  %48 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %302 unwind label %53

53:                                               ; preds = %45, %27, %22
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %316

55:                                               ; preds = %35, %290
  %56 = phi i32 [ 0, %35 ], [ %291, %290 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !47
  %58 = getelementptr inbounds ptr, ptr %57, i64 23
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %61 unwind label %76

61:                                               ; preds = %55
  %62 = load ptr, ptr %4, align 8, !tbaa !52
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  br i1 %21, label %80, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds ptr, ptr %63, i64 8
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef nonnull align 8 dereferenceable(36) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %68 unwind label %78

68:                                               ; preds = %64
  %69 = icmp eq ptr %67, %60
  br i1 %69, label %90, label %70

70:                                               ; preds = %68
  %71 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %67)
          to label %72 unwind label %78

72:                                               ; preds = %70
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %67, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !63
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  store i32 %74, ptr %75, align 8, !tbaa !63
  br label %90

76:                                               ; preds = %55
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %316

78:                                               ; preds = %117, %70, %110, %105, %89, %84, %80, %64
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %293

80:                                               ; preds = %61
  %81 = getelementptr inbounds ptr, ptr %63, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %84 unwind label %78

84:                                               ; preds = %80
  %85 = load ptr, ptr %83, align 8, !tbaa !47
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %56)
          to label %89 unwind label %78

89:                                               ; preds = %84
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %90 unwind label %78

90:                                               ; preds = %72, %68, %89
  %91 = phi ptr [ %88, %89 ], [ null, %68 ], [ null, %72 ]
  br i1 %36, label %92, label %122

92:                                               ; preds = %90
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !63
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %37, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  br i1 %38, label %105, label %98

98:                                               ; preds = %97
  %99 = load i64, ptr %39, align 8, !tbaa !81
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i64, ptr %39, align 8, !tbaa !81
  %103 = sub i64 %102, %99
  store i64 %103, ptr %39, align 8, !tbaa !81
  br label %104

104:                                              ; preds = %101, %98
  store i32 0, ptr %40, align 8, !tbaa !63
  br label %105

105:                                              ; preds = %104, %97
  %106 = load ptr, ptr %2, align 8, !tbaa !47
  %107 = getelementptr inbounds ptr, ptr %106, i64 29
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %110 unwind label %78

110:                                              ; preds = %105
  %111 = load ptr, ptr %109, align 8, !tbaa !47
  %112 = getelementptr inbounds ptr, ptr %111, i64 3
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef nonnull align 8 dereferenceable(36) ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %109)
          to label %115 unwind label %78

115:                                              ; preds = %110
  %116 = icmp eq ptr %114, %60
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %114)
          to label %119 unwind label %78

119:                                              ; preds = %117
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %114, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !63
  store i32 %121, ptr %93, align 8, !tbaa !63
  br label %122

122:                                              ; preds = %119, %115, %92, %90
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !63
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %282, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !81
  %129 = icmp eq i64 %128, 0
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8
  %132 = select i1 %129, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %131
  br label %133

133:                                              ; preds = %136, %126
  %134 = phi ptr [ %132, %126 ], [ %137, %136 ]
  %135 = load i16, ptr %134, align 2, !tbaa !82
  switch i16 %135, label %136 [
    i16 58, label %138
    i16 0, label %138
  ]

136:                                              ; preds = %133
  %137 = getelementptr inbounds i16, ptr %134, i64 1
  br label %133, !llvm.loop !84

138:                                              ; preds = %133, %133
  %139 = ptrtoint ptr %134 to i64
  %140 = ptrtoint ptr %132 to i64
  %141 = sub i64 %139, %140
  %142 = lshr exact i64 %141, 1
  %143 = trunc i64 %142 to i32
  br label %144

144:                                              ; preds = %147, %138
  %145 = phi ptr [ %132, %138 ], [ %148, %147 ]
  %146 = load i16, ptr %145, align 2, !tbaa !82
  switch i16 %146, label %147 [
    i16 47, label %149
    i16 0, label %149
  ]

147:                                              ; preds = %144
  %148 = getelementptr inbounds i16, ptr %145, i64 1
  br label %144, !llvm.loop !84

149:                                              ; preds = %144, %144
  %150 = ptrtoint ptr %145 to i64
  %151 = sub i64 %150, %140
  %152 = lshr exact i64 %151, 1
  %153 = trunc i64 %152 to i32
  %154 = icmp ugt i32 %124, %143
  %155 = icmp ugt i32 %124, %153
  %156 = and i1 %154, %155
  %157 = icmp ugt i32 %153, %143
  %158 = and i1 %157, %156
  br i1 %158, label %159, label %193

159:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #14
  %160 = load ptr, ptr %42, align 8, !tbaa !61
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %160)
          to label %161 unwind label %191

161:                                              ; preds = %159
  invoke fastcc void @_ZN11xalanc_1_10L6getDocERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_RNS0_30BorrowReturnMutableNodeRefListEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %3, ptr noundef %7)
          to label %162 unwind label %174

162:                                              ; preds = %161
  %163 = load i64, ptr %43, align 8, !tbaa !67
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %44, align 8, !tbaa !68
  %167 = load ptr, ptr %11, align 8, !tbaa !69
  %168 = load ptr, ptr %167, align 8, !tbaa !47
  %169 = getelementptr inbounds ptr, ptr %168, i64 3
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef %166)
          to label %190 unwind label %171

171:                                              ; preds = %165
  %172 = landingpad { ptr, i32 }
          catch ptr null
  %173 = extractvalue { ptr, i32 } %172, 0
  call void @__clang_call_terminate(ptr %173) #16
  unreachable

174:                                              ; preds = %161
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !67
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !68
  %182 = load ptr, ptr %11, align 8, !tbaa !69
  %183 = load ptr, ptr %182, align 8, !tbaa !47
  %184 = getelementptr inbounds ptr, ptr %183, i64 3
  %185 = load ptr, ptr %184, align 8
  invoke void %185(ptr noundef nonnull align 8 dereferenceable(8) %182, ptr noundef %181)
          to label %189 unwind label %186

186:                                              ; preds = %179
  %187 = landingpad { ptr, i32 }
          catch ptr null
  %188 = extractvalue { ptr, i32 } %187, 0
  call void @__clang_call_terminate(ptr %188) #16
  unreachable

189:                                              ; preds = %179, %174
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #14
  br label %293

190:                                              ; preds = %162, %165
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #14
  br label %282

191:                                              ; preds = %281, %275, %270, %263, %228, %159, %225
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %293

193:                                              ; preds = %149
  br i1 %8, label %194, label %224

194:                                              ; preds = %193
  %195 = load ptr, ptr %2, align 8, !tbaa !47
  %196 = getelementptr inbounds ptr, ptr %195, i64 23
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef nonnull align 8 dereferenceable(36) ptr %197(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %199 unwind label %213

199:                                              ; preds = %194
  %200 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %198, i32 noundef 51)
          to label %201 unwind label %215

201:                                              ; preds = %199
  %202 = load ptr, ptr %2, align 8, !tbaa !47
  %203 = getelementptr inbounds ptr, ptr %202, i64 3
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %200, ptr noundef %3, ptr noundef %7)
          to label %205 unwind label %215

205:                                              ; preds = %201
  %206 = load ptr, ptr %2, align 8, !tbaa !47
  %207 = getelementptr inbounds ptr, ptr %206, i64 24
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef zeroext i1 %208(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %198)
          to label %282 unwind label %210

210:                                              ; preds = %205
  %211 = landingpad { ptr, i32 }
          catch ptr null
  %212 = extractvalue { ptr, i32 } %211, 0
  call void @__clang_call_terminate(ptr %212) #16
  unreachable

213:                                              ; preds = %194
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %293

215:                                              ; preds = %201, %199
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = load ptr, ptr %2, align 8, !tbaa !47
  %218 = getelementptr inbounds ptr, ptr %217, i64 24
  %219 = load ptr, ptr %218, align 8
  %220 = invoke noundef zeroext i1 %219(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %198)
          to label %293 unwind label %221

221:                                              ; preds = %215
  %222 = landingpad { ptr, i32 }
          catch ptr null
  %223 = extractvalue { ptr, i32 } %222, 0
  call void @__clang_call_terminate(ptr %223) #16
  unreachable

224:                                              ; preds = %193
  br i1 %41, label %226, label %225

225:                                              ; preds = %224
  invoke fastcc void @_ZN11xalanc_1_10L6getDocERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_RNS0_30BorrowReturnMutableNodeRefListEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %3, ptr noundef %7)
          to label %282 unwind label %191

226:                                              ; preds = %224
  %227 = icmp eq ptr %91, null
  br i1 %227, label %228, label %263

228:                                              ; preds = %226
  %229 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #14
  %230 = load ptr, ptr %229, align 8, !tbaa !61
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %230)
          to label %231 unwind label %191

231:                                              ; preds = %228
  invoke fastcc void @_ZN11xalanc_1_10L6getDocERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_RNS0_30BorrowReturnMutableNodeRefListEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %3, ptr noundef %7)
          to label %232 unwind label %246

232:                                              ; preds = %231
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %234 = load i64, ptr %233, align 8, !tbaa !67
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %262, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !68
  %239 = load ptr, ptr %10, align 8, !tbaa !69
  %240 = load ptr, ptr %239, align 8, !tbaa !47
  %241 = getelementptr inbounds ptr, ptr %240, i64 3
  %242 = load ptr, ptr %241, align 8
  invoke void %242(ptr noundef nonnull align 8 dereferenceable(8) %239, ptr noundef %238)
          to label %262 unwind label %243

243:                                              ; preds = %236
  %244 = landingpad { ptr, i32 }
          catch ptr null
  %245 = extractvalue { ptr, i32 } %244, 0
  call void @__clang_call_terminate(ptr %245) #16
  unreachable

246:                                              ; preds = %231
  %247 = landingpad { ptr, i32 }
          cleanup
  %248 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %249 = load i64, ptr %248, align 8, !tbaa !67
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !68
  %254 = load ptr, ptr %10, align 8, !tbaa !69
  %255 = load ptr, ptr %254, align 8, !tbaa !47
  %256 = getelementptr inbounds ptr, ptr %255, i64 3
  %257 = load ptr, ptr %256, align 8
  invoke void %257(ptr noundef nonnull align 8 dereferenceable(8) %254, ptr noundef %253)
          to label %261 unwind label %258

258:                                              ; preds = %251
  %259 = landingpad { ptr, i32 }
          catch ptr null
  %260 = extractvalue { ptr, i32 } %259, 0
  call void @__clang_call_terminate(ptr %260) #16
  unreachable

261:                                              ; preds = %251, %246
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  br label %293

262:                                              ; preds = %232, %236
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  br label %282

263:                                              ; preds = %226
  %264 = load ptr, ptr %91, align 8, !tbaa !47
  %265 = getelementptr inbounds ptr, ptr %264, i64 4
  %266 = load ptr, ptr %265, align 8
  %267 = invoke noundef i32 %266(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %268 unwind label %191

268:                                              ; preds = %263
  %269 = icmp eq i32 %267, 9
  br i1 %269, label %275, label %270

270:                                              ; preds = %268
  %271 = load ptr, ptr %91, align 8, !tbaa !47
  %272 = getelementptr inbounds ptr, ptr %271, i64 12
  %273 = load ptr, ptr %272, align 8
  %274 = invoke noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(8) %91)
          to label %275 unwind label %191

275:                                              ; preds = %270, %268
  %276 = phi ptr [ %91, %268 ], [ %274, %270 ]
  %277 = load ptr, ptr %2, align 8, !tbaa !47
  %278 = getelementptr inbounds ptr, ptr %277, i64 32
  %279 = load ptr, ptr %278, align 8
  %280 = invoke noundef nonnull align 8 dereferenceable(36) ptr %279(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %276)
          to label %281 unwind label %191

281:                                              ; preds = %275
  invoke fastcc void @_ZN11xalanc_1_10L6getDocERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_RNS0_30BorrowReturnMutableNodeRefListEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(36) %280, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %91, ptr noundef %7)
          to label %282 unwind label %191

282:                                              ; preds = %281, %122, %225, %190, %262, %205
  %283 = load ptr, ptr %2, align 8, !tbaa !47
  %284 = getelementptr inbounds ptr, ptr %283, i64 24
  %285 = load ptr, ptr %284, align 8
  %286 = invoke noundef zeroext i1 %285(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %290 unwind label %287

287:                                              ; preds = %282
  %288 = landingpad { ptr, i32 }
          catch ptr null
  %289 = extractvalue { ptr, i32 } %288, 0
  call void @__clang_call_terminate(ptr %289) #16
  unreachable

290:                                              ; preds = %282
  %291 = add nuw i32 %56, 1
  %292 = icmp eq i32 %291, %33
  br i1 %292, label %45, label %55, !llvm.loop !87

293:                                              ; preds = %78, %191, %261, %189, %215, %213
  %294 = phi { ptr, i32 } [ %79, %78 ], [ %175, %189 ], [ %192, %191 ], [ %247, %261 ], [ %214, %213 ], [ %216, %215 ]
  %295 = load ptr, ptr %2, align 8, !tbaa !47
  %296 = getelementptr inbounds ptr, ptr %295, i64 24
  %297 = load ptr, ptr %296, align 8
  %298 = invoke noundef zeroext i1 %297(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %316 unwind label %299

299:                                              ; preds = %293
  %300 = landingpad { ptr, i32 }
          catch ptr null
  %301 = extractvalue { ptr, i32 } %300, 0
  call void @__clang_call_terminate(ptr %301) #16
  unreachable

302:                                              ; preds = %45
  %303 = load ptr, ptr %13, align 8, !tbaa !72
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %12, align 8, !tbaa !70
  %307 = load ptr, ptr %306, align 8, !tbaa !47
  %308 = getelementptr inbounds ptr, ptr %307, i64 22
  %309 = load ptr, ptr %308, align 8
  %310 = invoke noundef zeroext i1 %309(ptr noundef nonnull align 8 dereferenceable(24) %306, ptr noundef nonnull %303)
          to label %311 unwind label %312

311:                                              ; preds = %305
  store ptr null, ptr %13, align 8, !tbaa !72
  br label %315

312:                                              ; preds = %305
  %313 = landingpad { ptr, i32 }
          catch ptr null
  %314 = extractvalue { ptr, i32 } %313, 0
  call void @__clang_call_terminate(ptr %314) #16
  unreachable

315:                                              ; preds = %302, %311
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  ret void

316:                                              ; preds = %76, %293, %53
  %317 = phi { ptr, i32 } [ %54, %53 ], [ %77, %76 ], [ %294, %293 ]
  %318 = load ptr, ptr %13, align 8, !tbaa !72
  %319 = icmp eq ptr %318, null
  br i1 %319, label %330, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr %12, align 8, !tbaa !70
  %322 = load ptr, ptr %321, align 8, !tbaa !47
  %323 = getelementptr inbounds ptr, ptr %322, i64 22
  %324 = load ptr, ptr %323, align 8
  %325 = invoke noundef zeroext i1 %324(ptr noundef nonnull align 8 dereferenceable(24) %321, ptr noundef nonnull %318)
          to label %326 unwind label %327

326:                                              ; preds = %320
  store ptr null, ptr %13, align 8, !tbaa !72
  br label %330

327:                                              ; preds = %320
  %328 = landingpad { ptr, i32 }
          catch ptr null
  %329 = extractvalue { ptr, i32 } %328, 0
  call void @__clang_call_terminate(ptr %329) #16
  unreachable

330:                                              ; preds = %316, %326
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  resume { ptr, i32 } %317
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1016FunctionDocument7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %8 = load ptr, ptr %2, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 23
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 23
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %18 unwind label %33

18:                                               ; preds = %13
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %17, i32 noundef 5, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %20 unwind label %35

20:                                               ; preds = %18
  %21 = load ptr, ptr %2, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef null, ptr noundef %6)
          to label %24 unwind label %35

24:                                               ; preds = %20
  store ptr null, ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %25 unwind label %35

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %132 unwind label %30

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #16
  unreachable

33:                                               ; preds = %13
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %141

35:                                               ; preds = %24, %20, %18
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load ptr, ptr %2, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %141 unwind label %41

41:                                               ; preds = %35
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #16
  unreachable

44:                                               ; preds = %7
  %45 = load ptr, ptr %5, align 8, !tbaa !52
  %46 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !56
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %81, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %2, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 23
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %54 unwind label %70

54:                                               ; preds = %49
  %55 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %53, i32 noundef 78, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %56 unwind label %72

56:                                               ; preds = %54
  %57 = load ptr, ptr %2, align 8, !tbaa !47
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef nonnull %3, ptr noundef %6)
          to label %60 unwind label %72

60:                                               ; preds = %56
  %61 = load ptr, ptr %2, align 8, !tbaa !47
  %62 = getelementptr inbounds ptr, ptr %61, i64 24
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %53)
          to label %130 unwind label %65

65:                                               ; preds = %60
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  tail call void @__clang_call_terminate(ptr %67) #16
  unreachable

68:                                               ; preds = %130
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %141

70:                                               ; preds = %49
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %141

72:                                               ; preds = %56, %54
  %73 = landingpad { ptr, i32 }
          cleanup
  %74 = load ptr, ptr %2, align 8, !tbaa !47
  %75 = getelementptr inbounds ptr, ptr %74, i64 24
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef zeroext i1 %76(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %53)
          to label %141 unwind label %78

78:                                               ; preds = %72
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  tail call void @__clang_call_terminate(ptr %80) #16
  unreachable

81:                                               ; preds = %44
  %82 = load ptr, ptr %45, align 8, !tbaa !47
  %83 = getelementptr inbounds ptr, ptr %82, i64 13
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef nonnull align 8 dereferenceable(8) ptr %84(ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %86 unwind label %93

86:                                               ; preds = %81
  %87 = load ptr, ptr %85, align 8, !tbaa !47
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef i32 %89(ptr noundef nonnull align 8 dereferenceable(8) %85)
          to label %91 unwind label %93

91:                                               ; preds = %86
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %130, label %95

93:                                               ; preds = %86, %81
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %141

95:                                               ; preds = %91
  %96 = load ptr, ptr %85, align 8, !tbaa !47
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 0)
          to label %100 unwind label %126

100:                                              ; preds = %95
  %101 = load ptr, ptr %99, align 8, !tbaa !47
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef i32 %103(ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %105 unwind label %128

105:                                              ; preds = %100
  %106 = icmp eq i32 %104, 9
  br i1 %106, label %112, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %99, align 8, !tbaa !47
  %109 = getelementptr inbounds ptr, ptr %108, i64 12
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %112 unwind label %128

112:                                              ; preds = %107, %105
  %113 = phi ptr [ %99, %105 ], [ %111, %107 ]
  %114 = load ptr, ptr %2, align 8, !tbaa !47
  %115 = getelementptr inbounds ptr, ptr %114, i64 32
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef nonnull align 8 dereferenceable(36) ptr %116(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %113)
          to label %118 unwind label %128

118:                                              ; preds = %112
  %119 = icmp eq ptr %117, %11
  br i1 %119, label %130, label %120

120:                                              ; preds = %118
  %121 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %117)
          to label %122 unwind label %128

122:                                              ; preds = %120
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %117, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !63
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  store i32 %124, ptr %125, align 8, !tbaa !63
  br label %130

126:                                              ; preds = %95
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %141

128:                                              ; preds = %120, %112, %107, %100
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %141

130:                                              ; preds = %122, %118, %60, %91
  %131 = phi i1 [ %92, %91 ], [ false, %60 ], [ false, %118 ], [ false, %122 ]
  invoke void @_ZNK11xalanc_1_1016FunctionDocument9doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_10XObjectPtrEPNS_14XalanDOMStringEiPKN11xercesc_2_77LocatorEb(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %11, i32 noundef 2, ptr noundef %6, i1 noundef zeroext %131)
          to label %132 unwind label %68

132:                                              ; preds = %130, %25
  %133 = load ptr, ptr %2, align 8, !tbaa !47
  %134 = getelementptr inbounds ptr, ptr %133, i64 24
  %135 = load ptr, ptr %134, align 8
  %136 = invoke noundef zeroext i1 %135(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %140 unwind label %137

137:                                              ; preds = %132
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  tail call void @__clang_call_terminate(ptr %139) #16
  unreachable

140:                                              ; preds = %132
  ret void

141:                                              ; preds = %72, %68, %126, %128, %93, %35, %33, %70
  %142 = phi { ptr, i32 } [ %69, %68 ], [ %94, %93 ], [ %129, %128 ], [ %127, %126 ], [ %34, %33 ], [ %36, %35 ], [ %71, %70 ], [ %73, %72 ]
  %143 = load ptr, ptr %2, align 8, !tbaa !47
  %144 = getelementptr inbounds ptr, ptr %143, i64 24
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef zeroext i1 %145(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %150 unwind label %147

147:                                              ; preds = %141
  %148 = landingpad { ptr, i32 }
          catch ptr null
  %149 = extractvalue { ptr, i32 } %148, 0
  tail call void @__clang_call_terminate(ptr %149) #16
  unreachable

150:                                              ; preds = %141
  resume { ptr, i32 } %142
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L6getDocERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_RNS0_30BorrowReturnMutableNodeRefListEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !51 {
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds ptr, ptr %7, i64 35
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = load ptr, ptr %0, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %59 unwind label %23

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = tail call ptr @__cxa_begin_catch(ptr %25) #14
  invoke void @_ZN11xalanc_1_106doWarnERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %4, ptr noundef %5)
          to label %58 unwind label %27

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %31

29:                                               ; preds = %53, %27
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %54, %53 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %12
  %35 = load ptr, ptr %0, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 29
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %39 = load ptr, ptr %38, align 8, !tbaa !47
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38)
  %43 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = load ptr, ptr %0, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 20
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %59 unwind label %49

49:                                               ; preds = %34
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  %52 = tail call ptr @__cxa_begin_catch(ptr %51) #14
  invoke void @_ZN11xalanc_1_106doWarnERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %4, ptr noundef %5)
          to label %58 unwind label %53

53:                                               ; preds = %49
  %54 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #16
  unreachable

58:                                               ; preds = %49, %23
  tail call void @__cxa_end_catch()
  br label %59

59:                                               ; preds = %58, %34, %16, %6
  %60 = phi ptr [ %10, %6 ], [ %22, %16 ], [ %48, %34 ], [ null, %58 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %3, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %64, ptr noundef nonnull %60, ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016FunctionDocument5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !88
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionDocumentE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !47
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016FunctionDocument8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 79, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !90

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !81
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !91

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !69
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !69
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !81
  %16 = load i64, ptr %6, align 8, !tbaa !67
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %19, ptr %0, align 8, !tbaa !69
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !81
  store i64 %21, ptr %14, align 8, !tbaa !81
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !67
  store i64 %23, ptr %6, align 8, !tbaa !67
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  store ptr %25, ptr %17, align 8, !tbaa !68
  store ptr %13, ptr %3, align 8, !tbaa !69
  store i64 %15, ptr %20, align 8, !tbaa !81
  store i64 %16, ptr %22, align 8, !tbaa !67
  store ptr %18, ptr %24, align 8, !tbaa !68
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !92

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !93

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !81
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !94

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !95

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !81
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !81
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !68
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !96

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !97
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !81
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !99

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !69
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !81
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !67
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !100
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !68
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = load i64, ptr %9, align 8, !tbaa !81
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !101

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !69
  %28 = load i64, ptr %6, align 8, !tbaa !81
  %29 = load i64, ptr %7, align 8, !tbaa !67
  %30 = load ptr, ptr %8, align 8, !tbaa !68
  %31 = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %31, ptr %0, align 8, !tbaa !69
  %32 = load i64, ptr %14, align 8, !tbaa !81
  store i64 %32, ptr %6, align 8, !tbaa !81
  %33 = load i64, ptr %15, align 8, !tbaa !67
  store i64 %33, ptr %7, align 8, !tbaa !67
  %34 = load ptr, ptr %21, align 8, !tbaa !68
  store ptr %34, ptr %8, align 8, !tbaa !68
  store ptr %27, ptr %5, align 8, !tbaa !69
  store i64 %28, ptr %14, align 8, !tbaa !81
  store i64 %29, ptr %15, align 8, !tbaa !67
  store ptr %30, ptr %21, align 8, !tbaa !68
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !101

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !67
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !68
  %50 = load ptr, ptr %5, align 8, !tbaa !69
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !102

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !47
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !103
  store ptr %65, ptr %8, align 8, !tbaa !68
  store i64 %3, ptr %7, align 8, !tbaa !67
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !105

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !81
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !67
  br i1 %18, label %21, label %39, !prof !106

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !107

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !108

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !68
  %28 = load i64, ptr %12, align 8, !tbaa !81
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !82
  store i16 %34, ptr %32, align 2, !tbaa !82
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !109, !llvm.loop !110

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !111

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %42, ptr %5, align 8, !tbaa !69
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !81
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !67
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !112
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !68
  %51 = load i64, ptr %43, align 8, !tbaa !81
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !113

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !68
  %56 = load i64, ptr %43, align 8, !tbaa !81
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !113

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !68
  %60 = load i64, ptr %43, align 8, !tbaa !81
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !68
  %63 = load i64, ptr %12, align 8, !tbaa !81
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !113

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !69
  %67 = load i64, ptr %12, align 8, !tbaa !81
  %68 = load i64, ptr %19, align 8, !tbaa !67
  %69 = load ptr, ptr %15, align 8, !tbaa !68
  %70 = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %70, ptr %0, align 8, !tbaa !69
  %71 = load i64, ptr %43, align 8, !tbaa !81
  store i64 %71, ptr %12, align 8, !tbaa !81
  %72 = load i64, ptr %44, align 8, !tbaa !67
  store i64 %72, ptr %19, align 8, !tbaa !67
  %73 = load ptr, ptr %50, align 8, !tbaa !68
  store ptr %73, ptr %15, align 8, !tbaa !68
  store ptr %66, ptr %5, align 8, !tbaa !69
  store i64 %67, ptr %43, align 8, !tbaa !81
  store i64 %68, ptr %44, align 8, !tbaa !67
  store ptr %69, ptr %50, align 8, !tbaa !68
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !114

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !115

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #16
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !67
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !68
  %89 = load ptr, ptr %5, align 8, !tbaa !69
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #16
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !116

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !117

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !117

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !118, !llvm.loop !119

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !120, !llvm.loop !121

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !122
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
  br i1 %123, label %124, label %120, !llvm.loop !123

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
  store i64 %36, ptr %12, align 8, !tbaa !81
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !51 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !67
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !125

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !82
  store i16 %13, ptr %12, align 2, !tbaa !82
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !81
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !69
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !69
  %24 = load i64, ptr %4, align 8, !tbaa !81
  %25 = load i64, ptr %6, align 8, !tbaa !67
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %28, ptr %0, align 8, !tbaa !69
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !81
  store i64 %30, ptr %4, align 8, !tbaa !81
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !67
  store i64 %32, ptr %6, align 8, !tbaa !67
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %34, ptr %26, align 8, !tbaa !68
  store ptr %23, ptr %3, align 8, !tbaa !69
  store i64 %24, ptr %29, align 8, !tbaa !81
  store i64 %25, ptr %31, align 8, !tbaa !67
  store ptr %27, ptr %33, align 8, !tbaa !68
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #16
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !67
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  %52 = load ptr, ptr %3, align 8, !tbaa !69
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #16
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !81
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !99

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !81
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !67
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !127
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = load i64, ptr %5, align 8, !tbaa !81
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !101

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !69
  %24 = load i64, ptr %10, align 8, !tbaa !81
  %25 = load i64, ptr %11, align 8, !tbaa !67
  %26 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr %4, ptr %3, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !67
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !68
  %33 = load ptr, ptr %3, align 8, !tbaa !69
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !102

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !128
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !69
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !67
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  store ptr %53, ptr %0, align 8, !tbaa !69
  store i64 %52, ptr %5, align 8, !tbaa !81
  store i64 %51, ptr %55, align 8, !tbaa !67
  store ptr %50, ptr %57, align 8, !tbaa !68
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !129

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !47
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !130

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #16
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_106doWarnERNS_21XPathExecutionContextERKNS_14XalanDOMStringES4_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 133, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %11 unwind label %60

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %20 unwind label %62

20:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 0, i32 noundef -1)
          to label %21 unwind label %64

21:                                               ; preds = %20
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull @.str.2, i32 noundef -1)
          to label %23 unwind label %64

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !81
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %28
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %19, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %29, i32 noundef %31)
          to label %33 unwind label %64

33:                                               ; preds = %23
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !81
  %36 = icmp eq i64 %35, 0
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = select i1 %36, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %38
  %40 = load i32, ptr %12, align 8, !tbaa !63
  %41 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %39, i32 noundef %40)
          to label %42 unwind label %64

42:                                               ; preds = %33
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 0, i32 noundef -1)
          to label %43 unwind label %64

43:                                               ; preds = %42
  %44 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull @.str.3, i32 noundef -1)
          to label %45 unwind label %64

45:                                               ; preds = %43
  %46 = load i64, ptr %24, align 8, !tbaa !81
  %47 = icmp eq i64 %46, 0
  %48 = load ptr, ptr %27, align 8
  %49 = select i1 %47, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %48
  %50 = load i32, ptr %30, align 8, !tbaa !63
  %51 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %49, i32 noundef %50)
          to label %52 unwind label %64

52:                                               ; preds = %45
  %53 = load ptr, ptr %0, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 24
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef zeroext i1 %55(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %73 unwind label %57

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #16
  unreachable

60:                                               ; preds = %73, %5
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %86

62:                                               ; preds = %15
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %86

64:                                               ; preds = %45, %43, %42, %33, %23, %21, %20
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = load ptr, ptr %0, align 8, !tbaa !47
  %67 = getelementptr inbounds ptr, ptr %66, i64 24
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef zeroext i1 %68(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %86 unwind label %70

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  tail call void @__clang_call_terminate(ptr %72) #16
  unreachable

73:                                               ; preds = %52, %11
  %74 = load ptr, ptr %0, align 8, !tbaa !47
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef %4)
          to label %77 unwind label %60

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 8, !tbaa !47
  %79 = getelementptr inbounds ptr, ptr %78, i64 24
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef zeroext i1 %80(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %85 unwind label %82

82:                                               ; preds = %77
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  tail call void @__clang_call_terminate(ptr %84) #16
  unreachable

85:                                               ; preds = %77
  ret void

86:                                               ; preds = %60, %64, %62
  %87 = phi { ptr, i32 } [ %61, %60 ], [ %63, %62 ], [ %65, %64 ]
  %88 = load ptr, ptr %0, align 8, !tbaa !47
  %89 = getelementptr inbounds ptr, ptr %88, i64 24
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #16
  unreachable

95:                                               ; preds = %86
  resume { ptr, i32 } %87
}

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xalanc_1_1016FunctionDocumentC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1016FunctionDocumentD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 2}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !49, i64 0}
!56 = !{!57, !60, i64 12}
!57 = !{!"_ZTSN11xalanc_1_107XObjectE", !58, i64 0, !60, i64 12, !54, i64 16}
!58 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !59, i64 8}
!59 = !{!"int", !55, i64 0}
!60 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !55, i64 0}
!61 = !{!62, !54, i64 8}
!62 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !54, i64 8}
!63 = !{!64, !59, i64 32}
!64 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !65, i64 0, !59, i64 32}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !66, i64 8, !66, i64 16, !54, i64 24}
!66 = !{!"long", !55, i64 0}
!67 = !{!65, !66, i64 16}
!68 = !{!65, !54, i64 24}
!69 = !{!65, !54, i64 0}
!70 = !{!71, !54, i64 0}
!71 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !54, i64 0, !54, i64 8}
!72 = !{!71, !54, i64 8}
!73 = !{!74, !78, i64 40}
!74 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !75, i64 0, !78, i64 40}
!75 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !76, i64 0, !77, i64 8}
!76 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !54, i64 0, !66, i64 8, !66, i64 16, !54, i64 24}
!78 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !55, i64 0}
!79 = !{!80, !54, i64 16}
!80 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !62, i64 0, !54, i64 16}
!81 = !{!65, !66, i64 8}
!82 = !{!83, !83, i64 0}
!83 = !{!"short", !55, i64 0}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !85, !86}
!88 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!89 = !{!"function_entry_count", i64 41614}
!90 = !{!"branch_weights", i32 0, i32 41614}
!91 = !{!"branch_weights", i32 12, i32 41602}
!92 = !{!"branch_weights", i32 5, i32 7}
!93 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!94 = !{!"branch_weights", i32 354, i32 41248}
!95 = !{!"branch_weights", i32 40889, i32 359}
!96 = !{!"branch_weights", i32 40581, i32 1021}
!97 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!98 = !{!"function_entry_count", i64 22}
!99 = !{!"branch_weights", i32 64551590, i32 18}
!100 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!101 = !{!"branch_weights", i32 18, i32 0}
!102 = !{!"branch_weights", i32 4, i32 64551586}
!103 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!104 = !{!"function_entry_count", i64 155828046}
!105 = !{!"branch_weights", i32 0, i32 155828046}
!106 = !{!"branch_weights", i32 133170777, i32 22657269}
!107 = !{!"branch_weights", i32 20, i32 133170757}
!108 = !{!"branch_weights", i32 1, i32 19024395}
!109 = !{!"branch_weights", i32 19024395, i32 -26420601}
!110 = distinct !{!110, !85, !86}
!111 = !{!"branch_weights", i32 20748786, i32 1908483}
!112 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!113 = !{!"branch_weights", i32 20748786, i32 0}
!114 = !{!"branch_weights", i32 0, i32 20748786}
!115 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!116 = !{!"branch_weights", i32 0, i32 1908483}
!117 = !{!"branch_weights", i32 1, i32 1908482}
!118 = !{!"branch_weights", i32 1908482, i32 49797853}
!119 = distinct !{!119, !85, !86}
!120 = !{!"branch_weights", i32 1908482, i32 1}
!121 = distinct !{!121, !85, !86}
!122 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!123 = distinct !{!123, !85, !86}
!124 = !{!"function_entry_count", i64 124150652}
!125 = !{!"branch_weights", i32 124150652, i32 0}
!126 = !{!"function_entry_count", i64 64551586}
!127 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!128 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!129 = !{!"branch_weights", i32 42418193, i32 22133393}
!130 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
