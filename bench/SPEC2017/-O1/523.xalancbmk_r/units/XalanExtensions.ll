; ModuleID = 'XalanExtensions.cpp'
source_filename = "XalanExtensions.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FunctionDifference" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::FunctionDistinct" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionEvaluate" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionHasSameNodes" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionIntersection" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionNodeSet" = type <{ %"class.xalanc_1_10::Function", i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanMap.0" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.0" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.1", %"class.xalanc_1_10::XalanList.1", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L20s_differenceFunctionE = internal global %"class.xalanc_1_10::FunctionDifference" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_distinctFunctionE = internal global %"class.xalanc_1_10::FunctionDistinct" zeroinitializer, align 8
@_ZN11xalanc_1_10L18s_evaluateFunctionE = internal global %"class.xalanc_1_10::FunctionEvaluate" zeroinitializer, align 8
@_ZN11xalanc_1_10L22s_hasSameNodesFunctionE = internal global %"class.xalanc_1_10::FunctionHasSameNodes" zeroinitializer, align 8
@_ZN11xalanc_1_10L22s_intersectionFunctionE = internal global %"class.xalanc_1_10::FunctionIntersection" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_nodesetFunctionE = internal global %"class.xalanc_1_10::FunctionNodeSet" zeroinitializer, align 8
@_ZN11xalanc_1_10L21s_extensionsNamespaceE = internal constant [28 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 120, i16 109, i16 108, i16 46, i16 97, i16 112, i16 97, i16 99, i16 104, i16 101, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 97, i16 108, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [8 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L24s_differenceFunctionNameE, ptr @_ZN11xalanc_1_10L20s_differenceFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_distinctFunctionNameE, ptr @_ZN11xalanc_1_10L18s_distinctFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_evaluateFunctionNameE, ptr @_ZN11xalanc_1_10L18s_evaluateFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L26s_hasSameNodesFunctionNameE, ptr @_ZN11xalanc_1_10L22s_hasSameNodesFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L26s_intersectionFunctionNameE, ptr @_ZN11xalanc_1_10L22s_intersectionFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_nodeSetFunctionName1E, ptr @_ZN11xalanc_1_10L17s_nodesetFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_nodeSetFunctionName2E, ptr @_ZN11xalanc_1_10L17s_nodesetFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZN11xalanc_1_10L24s_differenceFunctionNameE = internal constant [11 x i16] [i16 100, i16 105, i16 102, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L22s_distinctFunctionNameE = internal constant [9 x i16] [i16 100, i16 105, i16 115, i16 116, i16 105, i16 110, i16 99, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L22s_evaluateFunctionNameE = internal constant [9 x i16] [i16 101, i16 118, i16 97, i16 108, i16 117, i16 97, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L26s_hasSameNodesFunctionNameE = internal constant [13 x i16] [i16 104, i16 97, i16 115, i16 83, i16 97, i16 109, i16 101, i16 78, i16 111, i16 100, i16 101, i16 115, i16 0], align 16
@_ZN11xalanc_1_10L26s_intersectionFunctionNameE = internal constant [13 x i16] [i16 105, i16 110, i16 116, i16 101, i16 114, i16 115, i16 101, i16 99, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L22s_nodeSetFunctionName1E = internal constant [8 x i16] [i16 110, i16 111, i16 100, i16 101, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L22s_nodeSetFunctionName2E = internal constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr null }]

declare void @_ZN11xalanc_1_1018FunctionDifferenceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018FunctionDifferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1016FunctionDistinctC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016FunctionDistinctD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1016FunctionEvaluateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016FunctionEvaluateD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020FunctionHasSameNodesC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020FunctionHasSameNodesD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020FunctionIntersectionC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020FunctionIntersectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1015FunctionNodeSetC1Eb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015FunctionNodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #3 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %2, i64 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %8 = load ptr, ptr %6, align 8, !tbaa !58
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %41

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %56, %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !71
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr %5, align 8, !tbaa !74
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #8
  unreachable

26:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !71
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = load ptr, ptr %4, align 8, !tbaa !74
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #8
  unreachable

40:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret void

41:                                               ; preds = %3
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %75

43:                                               ; preds = %9, %56
  %44 = phi ptr [ %58, %56 ], [ %10, %9 ]
  %45 = phi ptr [ %57, %56 ], [ %1, %9 ]
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %46 unwind label %60

46:                                               ; preds = %43
  %47 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %44)
          to label %48 unwind label %60

48:                                               ; preds = %46
  %49 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %44, i32 noundef %47)
          to label %50 unwind label %60

50:                                               ; preds = %48
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = load ptr, ptr %2, align 8, !tbaa !75
  %54 = getelementptr inbounds ptr, ptr %53, i64 11
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %56 unwind label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %45, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  %59 = icmp eq ptr %58, null
  br i1 %59, label %12, label %43, !llvm.loop !78

60:                                               ; preds = %48, %46, %43, %50
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !71
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  %68 = load ptr, ptr %5, align 8, !tbaa !74
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %67)
          to label %75 unwind label %72

72:                                               ; preds = %65
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #8
  unreachable

75:                                               ; preds = %65, %60, %41
  %76 = phi { ptr, i32 } [ %42, %41 ], [ %61, %60 ], [ %61, %65 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !71
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !73
  %83 = load ptr, ptr %4, align 8, !tbaa !74
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef %82)
          to label %90 unwind label %87

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #8
  unreachable

90:                                               ; preds = %75, %80
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %76
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !81 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %38, !prof !83

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %40, !prof !84

9:                                                ; preds = %50, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %23, label %13, !prof !85

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = load ptr, ptr %5, align 8, !tbaa !74
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %15)
          to label %23 unwind label %20, !prof !86

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #8
  unreachable

23:                                               ; preds = %9, %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !71
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27, !prof !85

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = load ptr, ptr %4, align 8, !tbaa !74
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34, !prof !86

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret void

38:                                               ; preds = %3
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %69

40:                                               ; preds = %6, %50
  %41 = phi ptr [ %52, %50 ], [ %7, %6 ]
  %42 = phi ptr [ %51, %50 ], [ %2, %6 ]
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %43 unwind label %54, !prof !87

43:                                               ; preds = %40
  %44 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %41)
          to label %45 unwind label %54, !prof !87

45:                                               ; preds = %43
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %41, i32 noundef %44)
          to label %47 unwind label %54, !prof !87

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %42, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %50 unwind label %54, !prof !87

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %42, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %9, label %40, !prof !88, !llvm.loop !89

54:                                               ; preds = %45, %43, %40, %47
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !71
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = load ptr, ptr %5, align 8, !tbaa !74
  %63 = load ptr, ptr %62, align 8, !tbaa !75
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %61)
          to label %69 unwind label %66

66:                                               ; preds = %59
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  call void @__clang_call_terminate(ptr %68) #8
  unreachable

69:                                               ; preds = %59, %54, %38
  %70 = phi { ptr, i32 } [ %39, %38 ], [ %55, %54 ], [ %55, %59 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = load ptr, ptr %4, align 8, !tbaa !74
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #8
  unreachable

84:                                               ; preds = %69, %74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %70
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #3 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %2, i64 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %8 = load ptr, ptr %6, align 8, !tbaa !58
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %41

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %54, %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !71
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load ptr, ptr %5, align 8, !tbaa !74
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #8
  unreachable

26:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !71
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = load ptr, ptr %4, align 8, !tbaa !74
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #8
  unreachable

40:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret void

41:                                               ; preds = %3
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %73

43:                                               ; preds = %9, %54
  %44 = phi ptr [ %56, %54 ], [ %10, %9 ]
  %45 = phi ptr [ %55, %54 ], [ %1, %9 ]
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %46 unwind label %58

46:                                               ; preds = %43
  %47 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %44)
          to label %48 unwind label %58

48:                                               ; preds = %46
  %49 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %44, i32 noundef %47)
          to label %50 unwind label %58

50:                                               ; preds = %48
  %51 = load ptr, ptr %2, align 8, !tbaa !75
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %54 unwind label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %45, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %12, label %43, !llvm.loop !90

58:                                               ; preds = %48, %46, %43, %50
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !71
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  %66 = load ptr, ptr %5, align 8, !tbaa !74
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %65)
          to label %73 unwind label %70

70:                                               ; preds = %63
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  call void @__clang_call_terminate(ptr %72) #8
  unreachable

73:                                               ; preds = %63, %58, %41
  %74 = phi { ptr, i32 } [ %42, %41 ], [ %59, %58 ], [ %59, %63 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !71
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  %81 = load ptr, ptr %4, align 8, !tbaa !74
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %78
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #8
  unreachable

88:                                               ; preds = %73, %78
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %74
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !81 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %38, !prof !83

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %40, !prof !84

9:                                                ; preds = %48, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %23, label %13, !prof !85

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = load ptr, ptr %5, align 8, !tbaa !74
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %15)
          to label %23 unwind label %20, !prof !86

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #8
  unreachable

23:                                               ; preds = %9, %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !71
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27, !prof !85

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = load ptr, ptr %4, align 8, !tbaa !74
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34, !prof !86

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret void

38:                                               ; preds = %3
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %67

40:                                               ; preds = %6, %48
  %41 = phi ptr [ %50, %48 ], [ %7, %6 ]
  %42 = phi ptr [ %49, %48 ], [ %2, %6 ]
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %43 unwind label %52, !prof !87

43:                                               ; preds = %40
  %44 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %41)
          to label %45 unwind label %52, !prof !87

45:                                               ; preds = %43
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %41, i32 noundef %44)
          to label %47 unwind label %52, !prof !87

47:                                               ; preds = %45
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %48 unwind label %52, !prof !87

48:                                               ; preds = %47
  %49 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %42, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = icmp eq ptr %50, null
  br i1 %51, label %9, label %40, !prof !88, !llvm.loop !91

52:                                               ; preds = %45, %43, %40, %47
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !71
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  %60 = load ptr, ptr %5, align 8, !tbaa !74
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #8
  unreachable

67:                                               ; preds = %57, %52, %38
  %68 = phi { ptr, i32 } [ %39, %38 ], [ %53, %52 ], [ %53, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 2
  %70 = load i64, ptr %69, align 8, !tbaa !71
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %4, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = load ptr, ptr %4, align 8, !tbaa !74
  %76 = load ptr, ptr %75, align 8, !tbaa !75
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef %74)
          to label %82 unwind label %79

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #8
  unreachable

82:                                               ; preds = %67, %72
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !57 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanExtensions.cpp() #6 section ".text.startup" !prof !81 !PGOFuncName !92 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L20s_differenceFunctionE)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018FunctionDifferenceD1Ev, ptr nonnull @_ZN11xalanc_1_10L20s_differenceFunctionE, ptr nonnull @__dso_handle) #7
  tail call void @_ZN11xalanc_1_1016FunctionDistinctC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_distinctFunctionE)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionDistinctD1Ev, ptr nonnull @_ZN11xalanc_1_10L18s_distinctFunctionE, ptr nonnull @__dso_handle) #7
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_evaluateFunctionE)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionEvaluateD1Ev, ptr nonnull @_ZN11xalanc_1_10L18s_evaluateFunctionE, ptr nonnull @__dso_handle) #7
  tail call void @_ZN11xalanc_1_1020FunctionHasSameNodesC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_hasSameNodesFunctionE)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionHasSameNodesD1Ev, ptr nonnull @_ZN11xalanc_1_10L22s_hasSameNodesFunctionE, ptr nonnull @__dso_handle) #7
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_intersectionFunctionE)
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionIntersectionD1Ev, ptr nonnull @_ZN11xalanc_1_10L22s_intersectionFunctionE, ptr nonnull @__dso_handle) #7
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetC1Eb(ptr noundef nonnull align 8 dereferenceable(9) @_ZN11xalanc_1_10L17s_nodesetFunctionE, i1 noundef zeroext true)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1015FunctionNodeSetD1Ev, ptr nonnull @_ZN11xalanc_1_10L17s_nodesetFunctionE, ptr nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 7}
!37 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 7}
!38 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 40}
!39 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 40}
!40 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 40}
!41 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE, i64 40}
!42 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 7}
!44 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 7}
!45 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 40}
!46 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 40}
!47 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 40}
!48 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_, i64 40}
!49 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1018FunctionDifferenceC1Ev, i64 1}
!50 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @__cxa_atexit, i64 6}
!51 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1016FunctionDistinctC1Ev, i64 1}
!52 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1016FunctionEvaluateC1Ev, i64 1}
!53 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1020FunctionHasSameNodesC1Ev, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1020FunctionIntersectionC1Ev, i64 1}
!55 = !{ptr @_GLOBAL__sub_I_XalanExtensions.cpp, ptr @_ZN11xalanc_1_1015FunctionNodeSetC1Eb, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !62, i64 8}
!59 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !60, i64 0, !61, i64 1, !62, i64 8, !65, i64 16, !66, i64 24, !66, i64 32, !67, i64 40, !67, i64 64, !68, i64 88, !66, i64 120, !66, i64 128}
!60 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!61 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C++ TBAA"}
!65 = !{!"float", !63, i64 0}
!66 = !{!"long", !63, i64 0}
!67 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !62, i64 0, !62, i64 8, !62, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !62, i64 0, !66, i64 8, !66, i64 16, !62, i64 24}
!69 = !{!70, !62, i64 0}
!70 = !{!"_ZTSN11xalanc_1_1024XalanExtensionsInstaller18FunctionTableEntryE", !62, i64 0, !62, i64 8}
!71 = !{!72, !66, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !62, i64 0, !66, i64 8, !66, i64 16, !62, i64 24}
!73 = !{!72, !62, i64 24}
!74 = !{!72, !62, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"vtable pointer", !64, i64 0}
!77 = !{!70, !62, i64 8}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!"function_entry_count", i64 7}
!83 = !{!"branch_weights", i32 7, i32 0}
!84 = !{!"branch_weights", i32 1, i32 223}
!85 = !{!"branch_weights", i32 0, i32 7}
!86 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!87 = !{!"branch_weights", i32 40, i32 0}
!88 = !{!"branch_weights", i32 223, i32 1057}
!89 = distinct !{!89, !79, !80}
!90 = distinct !{!90, !79, !80}
!91 = distinct !{!91, !79, !80}
!92 = !{!"XalanExtensions.cpp;_GLOBAL__sub_I_XalanExtensions.cpp"}
