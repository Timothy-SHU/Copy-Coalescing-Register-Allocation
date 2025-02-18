; ModuleID = 'FunctionNodeSet.cpp'
source_filename = "FunctionNodeSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FunctionNodeSet" = type <{ %"class.xalanc_1_10::Function", i8, [7 x i8] }>
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy" = type { %"class.xalanc_1_10::XNodeSetBase", %"class.xalanc_1_10::XObjectPtr", %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy" }
%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy" = type { %"class.xalanc_1_10::NodeRefListBase", ptr }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv = comdat any

$_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

$_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

$_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

@_ZTVN11xalanc_1_1015FunctionNodeSetE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015FunctionNodeSetE, ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_1015FunctionNodeSetD0Ev, ptr @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet8getErrorERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"nodeset\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015FunctionNodeSetE = dso_local constant [33 x i8] c"N11xalanc_1_1015FunctionNodeSetE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1015FunctionNodeSetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015FunctionNodeSetE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv] }, comdat, align 8
@_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local constant [56 x i8] c"N11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE\00", comdat, align 1
@_ZTIN11xalanc_1_1012XNodeSetBaseE = external constant ptr
@_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, ptr @_ZTIN11xalanc_1_1012XNodeSetBaseE }, comdat, align 8

@_ZN11xalanc_1_1015FunctionNodeSetC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb
@_ZN11xalanc_1_1015FunctionNodeSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !42
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 align 2 !prof !47 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %7 = alloca ptr, align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !49
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %54, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = load ptr, ptr %1, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %19 unwind label %38

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !55
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = load ptr, ptr %8, align 8, !tbaa !58
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #9
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7
  br label %54

38:                                               ; preds = %19, %12
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !55
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = load ptr, ptr %8, align 8, !tbaa !58
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %53 unwind label %50

50:                                               ; preds = %43
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #9
  unreachable

53:                                               ; preds = %38, %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7
  br label %102

54:                                               ; preds = %37, %6
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !62
  switch i32 %59, label %68 [
    i32 6, label %64
    i32 4, label %60
  ]

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %1, i64 0, i32 1
  %62 = load i8, ptr %61, align 8, !tbaa !42, !range !67, !noundef !68
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %54, %60
  %65 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %67 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %56)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  store ptr %67, ptr %0, align 8, !tbaa !60
  call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %67)
  br label %101

68:                                               ; preds = %60, %54
  %69 = load ptr, ptr %2, align 8, !tbaa !39
  %70 = getelementptr inbounds ptr, ptr %69, i64 23
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef nonnull align 8 dereferenceable(36) ptr %71(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %73 = load ptr, ptr %1, align 8, !tbaa !39
  %74 = getelementptr inbounds ptr, ptr %73, i64 9
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef nonnull align 8 dereferenceable(36) ptr %75(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(36) %72)
          to label %77 unwind label %92

77:                                               ; preds = %68
  %78 = load ptr, ptr %2, align 8, !tbaa !39
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %76, ptr noundef %3, ptr noundef %5)
          to label %81 unwind label %92

81:                                               ; preds = %77
  %82 = load ptr, ptr %55, align 8, !tbaa !59
  %83 = load ptr, ptr %82, align 8, !tbaa !60
  store ptr %83, ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %83)
          to label %84 unwind label %92

84:                                               ; preds = %81
  %85 = load ptr, ptr %2, align 8, !tbaa !39
  %86 = getelementptr inbounds ptr, ptr %85, i64 24
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef zeroext i1 %87(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %72)
          to label %101 unwind label %89

89:                                               ; preds = %84
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #9
  unreachable

92:                                               ; preds = %81, %77, %68
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = load ptr, ptr %2, align 8, !tbaa !39
  %95 = getelementptr inbounds ptr, ptr %94, i64 24
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %72)
          to label %102 unwind label %98

98:                                               ; preds = %92
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #9
  unreachable

101:                                              ; preds = %84, %64
  ret void

102:                                              ; preds = %92, %53
  %103 = phi { ptr, i32 } [ %39, %53 ], [ %93, %92 ]
  resume { ptr, i32 } %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1015FunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 16), !prof !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !42, !range !67, !noundef !68
  store i8 %9, ptr %7, align 8, !tbaa !42
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015FunctionNodeSet8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !48 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015FunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !48 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 140, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !48 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 112)
  invoke void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %10

9:                                                ; preds = %4
  store ptr %8, ptr %1, align 8, !tbaa !70
  ret ptr %8

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %8, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #9
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %2, align 8, !tbaa !60
  store ptr %5, ptr %4, align 8, !tbaa !60
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
          to label %6 unwind label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !60
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %12 unwind label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKNS_21XalanDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %14 unwind label %17

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %23

17:                                               ; preds = %12, %6
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load ptr, ptr %4, align 8, !tbaa !60
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %19)
          to label %23 unwind label %20

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #9
  unreachable

23:                                               ; preds = %17, %15
  %24 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  resume { ptr, i32 } %24
}

declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKNS_21XalanDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %4)
          to label %8 unwind label %5

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #9
  unreachable

8:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %0, align 8, !tbaa !39
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(112) %0) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !71
  ret i32 %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase3numEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) unnamed_addr #1

declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  ret ptr %2
}

declare void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret i32 %3
}

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1015FunctionNodeSetE", !44, i64 0, !45, i64 8}
!44 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!45 = !{!"bool", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"function_entry_count", i64 3}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !52, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !51, i64 0, !52, i64 8, !52, i64 16, !51, i64 24}
!51 = !{!"any pointer", !46, i64 0}
!52 = !{!"long", !46, i64 0}
!53 = !{!54, !51, i64 8}
!54 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !51, i64 8}
!55 = !{!56, !52, i64 16}
!56 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !51, i64 0, !52, i64 8, !52, i64 16, !51, i64 24}
!57 = !{!56, !51, i64 24}
!58 = !{!56, !51, i64 0}
!59 = !{!50, !51, i64 24}
!60 = !{!61, !51, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !51, i64 0}
!62 = !{!63, !66, i64 12}
!63 = !{!"_ZTSN11xalanc_1_107XObjectE", !64, i64 0, !66, i64 12, !51, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !65, i64 8}
!65 = !{!"int", !46, i64 0}
!66 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !46, i64 0}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!70 = !{!51, !51, i64 0}
!71 = !{!64, !65, i64 8}
