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

$_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L20s_differenceFunctionE) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018FunctionDifferenceD1Ev, ptr nonnull @_ZN11xalanc_1_10L20s_differenceFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018FunctionDifferenceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018FunctionDifferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1016FunctionDistinctC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_distinctFunctionE) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionDistinctD1Ev, ptr nonnull @_ZN11xalanc_1_10L18s_distinctFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016FunctionDistinctC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016FunctionDistinctD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_evaluateFunctionE) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionEvaluateD1Ev, ptr nonnull @_ZN11xalanc_1_10L18s_evaluateFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016FunctionEvaluateC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016FunctionEvaluateD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1020FunctionHasSameNodesC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_hasSameNodesFunctionE) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionHasSameNodesD1Ev, ptr nonnull @_ZN11xalanc_1_10L22s_hasSameNodesFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020FunctionHasSameNodesC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020FunctionHasSameNodesD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_intersectionFunctionE) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionIntersectionD1Ev, ptr nonnull @_ZN11xalanc_1_10L22s_intersectionFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020FunctionIntersectionC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020FunctionIntersectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetC1Eb(ptr noundef nonnull align 8 dereferenceable(9) @_ZN11xalanc_1_10L17s_nodesetFunctionE, i1 noundef zeroext true) #8
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1015FunctionNodeSetD1Ev, ptr nonnull @_ZN11xalanc_1_10L17s_nodesetFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015FunctionNodeSetC1Eb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015FunctionNodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(280) %2) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef -1) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(280) %2) #8
          to label %8 unwind label %13

8:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = load ptr, ptr %1, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %25, %9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void

13:                                               ; preds = %8, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %31

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %27, %25 ], [ %10, %9 ]
  %17 = phi ptr [ %26, %25 ], [ %1, %9 ]
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %16) #8
          to label %19 unwind label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = load ptr, ptr %2, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %21) #8
          to label %25 unwind label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %17, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = icmp eq ptr %27, null
  br i1 %28, label %12, label %15, !llvm.loop !75

29:                                               ; preds = %19, %15
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !79

9:                                                ; preds = %19, %6
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %25

12:                                               ; preds = %6, %19
  %13 = phi ptr [ %21, %19 ], [ %7, %6 ]
  %14 = phi ptr [ %20, %19 ], [ %2, %6 ]
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %13) #8
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %18) #8
          to label %19 unwind label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %14, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %12, !prof !80, !llvm.loop !81

23:                                               ; preds = %16, %12
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(280) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(280) %2) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef -1) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(280) %2) #8
          to label %8 unwind label %13

8:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = load ptr, ptr %1, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %23, %9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void

13:                                               ; preds = %8, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %29

15:                                               ; preds = %9, %23
  %16 = phi ptr [ %25, %23 ], [ %10, %9 ]
  %17 = phi ptr [ %24, %23 ], [ %1, %9 ]
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %16) #8
          to label %19 unwind label %27

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8, !tbaa !73
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #8
          to label %23 unwind label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %17, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %12, label %15, !llvm.loop !82

27:                                               ; preds = %19, %15
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L21s_extensionsNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !79

9:                                                ; preds = %17, %6
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %23

12:                                               ; preds = %6, %17
  %13 = phi ptr [ %19, %17 ], [ %7, %6 ]
  %14 = phi ptr [ %18, %17 ], [ %2, %6 ]
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %13) #8
          to label %16 unwind label %21

16:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #8
          to label %17 unwind label %21

17:                                               ; preds = %16
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry", ptr %14, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %9, label %12, !prof !80, !llvm.loop !83

21:                                               ; preds = %16, %12
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #10
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #9
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #4 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathEnvSupportDefault", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !84 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #8
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 !prof !85 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #6 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !94 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #8
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #8
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !96 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !100

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #8
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #8
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !102 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !103 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !104

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #8
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !105, !llvm.loop !106

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !107 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !108 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !103 {
  %3 = load ptr, ptr %0, align 8, !tbaa !109
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanExtensions.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!65}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!36 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 7}
!38 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 7}
!39 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 14}
!40 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, i64 36}
!41 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE, i64 36}
!42 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 7}
!44 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 7}
!45 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 14}
!46 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, i64 36}
!47 = !{ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, ptr @_ZN11xalanc_1_1022XPathEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_, i64 36}
!48 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!49 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!50 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!51 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!52 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!53 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1024XalanExtensionsInstaller18FunctionTableEntryE", !69, i64 0, !69, i64 8}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!68, !69, i64 8}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !71, i64 0}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"function_entry_count", i64 1}
!78 = !{!"function_entry_count", i64 7}
!79 = !{!"branch_weights", i32 1, i32 127}
!80 = !{!"branch_weights", i32 127, i32 529}
!81 = distinct !{!81, !76}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !76}
!84 = !{!"function_entry_count", i64 1084346}
!85 = !{!"function_entry_count", i64 43398227}
!86 = !{!87, !69, i64 8}
!87 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !88, i64 0, !89, i64 1, !69, i64 8, !90, i64 16, !91, i64 24, !91, i64 32, !92, i64 40, !92, i64 64, !93, i64 88, !91, i64 120, !91, i64 128}
!88 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!89 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!90 = !{!"float", !70, i64 0}
!91 = !{!"long", !70, i64 0}
!92 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !69, i64 0, !69, i64 8, !69, i64 16}
!93 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !69, i64 0, !91, i64 8, !91, i64 16, !69, i64 24}
!94 = !{!"function_entry_count", i64 1084505}
!95 = !{!"function_entry_count", i64 3070433826}
!96 = !{!"function_entry_count", i64 1179818}
!97 = !{!"function_entry_count", i64 128698679}
!98 = !{!99, !91, i64 16}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !69, i64 0, !91, i64 8, !91, i64 16, !69, i64 24}
!100 = !{!"branch_weights", i32 43398290, i32 85300391}
!101 = !{!99, !69, i64 24}
!102 = !{!"function_entry_count", i64 6521798503}
!103 = !{!"function_entry_count", i64 85300390}
!104 = !{!"branch_weights", i32 1, i32 12185770}
!105 = !{!"branch_weights", i32 12185770, i32 -193930395}
!106 = distinct !{!106, !76}
!107 = !{!"function_entry_count", i64 227375739}
!108 = !{!"function_entry_count", i64 568333389}
!109 = !{!99, !69, i64 0}
!110 = !{!"function_entry_count", i64 30137156670}
!111 = !{!"function_entry_count", i64 825654975}
!112 = !{!99, !91, i64 8}
