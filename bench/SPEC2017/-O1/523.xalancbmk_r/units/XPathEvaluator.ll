; ModuleID = 'XPathEvaluator.cpp'
source_filename = "XPathEvaluator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XPathEvaluator" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanMemMgrAutoPtr.0", %"class.xalanc_1_10::XalanMemMgrAutoPtr.3", %"class.xalanc_1_10::XalanMemMgrAutoPtr.6", ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactory>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactory>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.0" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathFactoryDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathFactoryDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.1" }
%"struct.std::pair.1" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.3" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.4" }
%"struct.std::pair.4" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.6" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathExecutionContextDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathExecutionContextDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.7" }
%"struct.std::pair.7" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanMap.59" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.57", %"class.xalanc_1_10::XalanList.57", %"class.xalanc_1_10::XalanVector.58", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.57" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.58" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.59" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.60", %"class.xalanc_1_10::XalanList.60", %"class.xalanc_1_10::XalanVector.61", i64, i64 }
%"class.xalanc_1_10::XalanList.60" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.61" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElementPrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.46", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.46" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector.44", %"class.xalanc_1_10::XalanVector.45", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XalanVector.44" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.45" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor", %"class.xalanc_1_10::ClearCacheResetFunctor", %"class.xalanc_1_10::XalanVector.47" }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::ClearCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.47" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.48", %"class.xalanc_1_10::XalanVector.48", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.48" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.49" }
%"class.xalanc_1_10::ReusableArenaAllocator.49" = type <{ %"class.xalanc_1_10::ArenaAllocator.50", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.50" = type { ptr, i16, %"class.xalanc_1_10::XalanList.51" }
%"class.xalanc_1_10::XalanList.51" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.53", i32, %"class.xalanc_1_10::XalanVector.54", i32, ptr, %"class.xalanc_1_10::XalanVector.55" }
%"class.xalanc_1_10::XalanVector.53" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.54" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.55" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathProcessorImpl" = type <{ %"class.xalanc_1_10::XPathProcessor", %"class.xalanc_1_10::XalanDOMString", i16, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, [6 x i8], ptr, %"class.xalanc_1_10::XalanVector.70", %"class.xalanc_1_10::XalanMap.71", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::XPathProcessor" = type { ptr }
%"class.xalanc_1_10::XalanVector.70" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.71" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.72", %"class.xalanc_1_10::XalanList.72", %"class.xalanc_1_10::XalanVector.73", i64, i64 }
%"class.xalanc_1_10::XalanList.72" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.73" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::DOMSupportDefault" = type { %"class.xalanc_1_10::DOMSupport", %"class.xalanc_1_10::XalanDOMStringPool" }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.62" }
%"class.xalanc_1_10::ArenaAllocator.62" = type { ptr, i64, %"class.xalanc_1_10::XalanList.63" }
%"class.xalanc_1_10::XalanList.63" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XPathFactoryDefault" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XalanSet" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XalanSet" = type { %"class.xalanc_1_10::XalanMap.64" }
%"class.xalanc_1_10::XalanMap.64" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to.66", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.68", %"class.xalanc_1_10::XalanList.68", %"class.xalanc_1_10::XalanVector.69", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to.66" = type { i8 }
%"class.xalanc_1_10::XalanList.68" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.69" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev = comdat any

@_ZN11xalanc_1_10L12theXPathInitE = internal unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_10L15s_memoryManagerE = internal unnamed_addr global ptr null, align 8

@_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014XPathEvaluatorC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XPathEvaluatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XPathEvaluatorD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %2, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !35
  store ptr %0, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !35
  ret void
}

declare noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() local_unnamed_addr #0 align 2 !prof !34 {
  %1 = load ptr, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !35
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %1) #7
  %2 = load ptr, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !35
  %3 = load ptr, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !35
  %4 = load ptr, ptr %2, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  store ptr null, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !35
  store ptr null, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluatorC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5)
  store ptr %1, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  %6 = invoke noundef ptr @_ZN11xalanc_1_1019XPathFactoryDefault25createXPathFactoryDefaultERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %18

7:                                                ; preds = %2
  store ptr %1, ptr %5, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  %10 = invoke noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %20

11:                                               ; preds = %7
  store ptr %1, ptr %9, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !49
  %13 = invoke noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %14 unwind label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  store ptr %13, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !35
  ret void

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %11
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #7
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  resume { ptr, i32 } %27
}

declare noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1019XPathFactoryDefault25createXPathFactoryDefaultERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(248) %5) #7
  %11 = load ptr, ptr %0, align 8, !tbaa !47
  %12 = load ptr, ptr %4, align 8, !tbaa !49
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #8
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.1", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(144) %5) #7
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = load ptr, ptr %4, align 8, !tbaa !46
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #8
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = load ptr, ptr %4, align 8, !tbaa !43
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #8
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluatorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #7
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !39
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(432) %5) #7
  %11 = load ptr, ptr %0, align 8, !tbaa !50
  %12 = load ptr, ptr %4, align 8, !tbaa !52
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #8
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %12 unwind label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %17 unwind label %31

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %24 unwind label %31

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %26)
          to label %30 unwind label %27

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #8
  unreachable

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret ptr %25

31:                                               ; preds = %19, %12, %5
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %8 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %11 = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %14

12:                                               ; preds = %6
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %13 unwind label %16

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  ret void

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %12 unwind label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %17 unwind label %31

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %24 unwind label %31

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %26)
          to label %30 unwind label %27

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #8
  unreachable

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret ptr %25

31:                                               ; preds = %19, %12, %5
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  resume { ptr, i32 } %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %10 unwind label %11

10:                                               ; preds = %6
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  ret void

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef %4)
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %12 unwind label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %17 unwind label %31

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %24 unwind label %31

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %26)
          to label %30 unwind label %27

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #8
  unreachable

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret ptr %25

31:                                               ; preds = %19, %12, %5
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  resume { ptr, i32 } %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %8 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  %11 = load ptr, ptr %9, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %33

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 3, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !52, !noalias !65
  %15 = load ptr, ptr %14, align 8, !tbaa !39, !noalias !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8, !noalias !65
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(432) %14)
          to label %18 unwind label %35

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43, !noalias !65
  %21 = load ptr, ptr %20, align 8, !tbaa !39, !noalias !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !65
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %24 unwind label %35

24:                                               ; preds = %18
  %25 = load ptr, ptr %13, align 8, !tbaa !52, !noalias !65
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %25, i64 0, i32 1
  store ptr %7, ptr %26, align 8, !tbaa !68, !noalias !65
  %27 = load ptr, ptr %19, align 8, !tbaa !43, !noalias !65
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %25, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !94, !noalias !65
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %25, i64 0, i32 2
  store ptr %2, ptr %29, align 8, !tbaa !95, !noalias !65
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %30 unwind label %35

30:                                               ; preds = %24
  %31 = load ptr, ptr %13, align 8, !tbaa !52, !noalias !65
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %31, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  ret void

33:                                               ; preds = %6
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %37

35:                                               ; preds = %24, %18, %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  resume { ptr, i32 } %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %12 unwind label %31

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %17 unwind label %31

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %24 unwind label %31

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %26)
          to label %30 unwind label %27

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @__clang_call_terminate(ptr %29) #8
  unreachable

30:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret ptr %25

31:                                               ; preds = %19, %12, %5
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %6, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #8
  unreachable

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  resume { ptr, i32 } %32
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 3, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52, !noalias !96
  %12 = load ptr, ptr %11, align 8, !tbaa !39, !noalias !96
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8, !noalias !96
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(432) %11)
          to label %15 unwind label %30

15:                                               ; preds = %6
  %16 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43, !noalias !96
  %18 = load ptr, ptr %17, align 8, !tbaa !39, !noalias !96
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !noalias !96
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %21 unwind label %30

21:                                               ; preds = %15
  %22 = load ptr, ptr %10, align 8, !tbaa !52, !noalias !96
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %22, i64 0, i32 1
  store ptr %7, ptr %23, align 8, !tbaa !68, !noalias !96
  %24 = load ptr, ptr %16, align 8, !tbaa !43, !noalias !96
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %22, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !94, !noalias !96
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %22, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !95, !noalias !96
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %27 unwind label %30

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !52, !noalias !96
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %28, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  ret void

30:                                               ; preds = %21, %15, %6
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #7
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %13 unwind label %21

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #8
  unreachable

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %1

21:                                               ; preds = %13, %6
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %23)
          to label %27 unwind label %24

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable

27:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  resume { ptr, i32 } %22
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %13 unwind label %21

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #8
  unreachable

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %1

21:                                               ; preds = %13, %6
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %23)
          to label %27 unwind label %24

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable

27:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %13 unwind label %21

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #8
  unreachable

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %1

21:                                               ; preds = %13, %6
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %23)
          to label %27 unwind label %24

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable

27:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %13 unwind label %21

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #8
  unreachable

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret ptr %1

21:                                               ; preds = %13, %6
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %7, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %23)
          to label %27 unwind label %24

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #8
  unreachable

27:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  resume { ptr, i32 } %22
}

declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca %"class.xalanc_1_10::XPath", align 8
  %9 = alloca %"class.xalanc_1_10::XPathProcessorImpl", align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  call void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %9) #7
  %12 = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %9, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %56

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %20 unwind label %58

20:                                               ; preds = %13
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 0, i32 noundef -1)
          to label %21 unwind label %60

21:                                               ; preds = %20
  %22 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %4)
          to label %23 unwind label %60

23:                                               ; preds = %21
  %24 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %4, i32 noundef %22)
          to label %25 unwind label %60

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %9, ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %27 unwind label %60

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 3, i32 0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !52, !noalias !99
  %30 = load ptr, ptr %29, align 8, !tbaa !39, !noalias !99
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8, !noalias !99
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(432) %29)
          to label %33 unwind label %60

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !43, !noalias !99
  %36 = load ptr, ptr %35, align 8, !tbaa !39, !noalias !99
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !99
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %39 unwind label %60

39:                                               ; preds = %33
  %40 = load ptr, ptr %28, align 8, !tbaa !52, !noalias !99
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %40, i64 0, i32 1
  store ptr %6, ptr %41, align 8, !tbaa !68, !noalias !99
  %42 = load ptr, ptr %34, align 8, !tbaa !43, !noalias !99
  %43 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %40, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !94, !noalias !99
  %44 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %40, i64 0, i32 2
  store ptr %2, ptr %44, align 8, !tbaa !95, !noalias !99
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %45 unwind label %60

45:                                               ; preds = %39
  %46 = load ptr, ptr %28, align 8, !tbaa !52, !noalias !99
  %47 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %46, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %48 = load ptr, ptr %15, align 8, !tbaa !39
  %49 = getelementptr inbounds ptr, ptr %48, i64 6
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %55 unwind label %52

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #8
  unreachable

55:                                               ; preds = %45
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %9) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %9) #7
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %8) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #7
  ret void

56:                                               ; preds = %7
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %13
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %69

60:                                               ; preds = %39, %33, %27, %23, %21, %20, %25
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = load ptr, ptr %15, align 8, !tbaa !39
  %63 = getelementptr inbounds ptr, ptr %62, i64 6
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %69 unwind label %66

66:                                               ; preds = %60
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  call void @__clang_call_terminate(ptr %68) #8
  unreachable

69:                                               ; preds = %60, %58
  %70 = phi { ptr, i32 } [ %59, %58 ], [ %61, %60 ]
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %9) #7
  br label %71

71:                                               ; preds = %69, %56
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %9) #7
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %8) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #7
  resume { ptr, i32 } %72
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 3, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(432) %9)
  %13 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %14)
  %18 = load ptr, ptr %8, align 8, !tbaa !52
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %18, i64 0, i32 1
  store ptr %6, ptr %19, align 8, !tbaa !68
  %20 = load ptr, ptr %13, align 8, !tbaa !43
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %18, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !94
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %18, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !95
  tail call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %18)
  %23 = load ptr, ptr %8, align 8, !tbaa !52
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %23, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::DOMSupportDefault", align 8
  %4 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %5 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #7
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #7
  %8 = load ptr, ptr %6, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %14

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  %10 = load ptr, ptr %6, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %16

11:                                               ; preds = %9
  %12 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %13 unwind label %18

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #7
  call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #7
  ret ptr %12

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %22

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %11
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #7
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %4) #7
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #7
  call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #7
  resume { ptr, i32 } %23
}

declare void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xalanc_1_10::XPathProcessorImpl", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(144) %6)
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %19 unwind label %35

19:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 0, i32 noundef -1)
          to label %20 unwind label %37

20:                                               ; preds = %19
  %21 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
          to label %22 unwind label %37

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %1, i32 noundef %21)
          to label %24 unwind label %37

24:                                               ; preds = %22
  %25 = load ptr, ptr %13, align 8, !tbaa !49
  invoke void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %4, ptr noundef nonnull align 8 dereferenceable(129) %10, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %26 unwind label %37

26:                                               ; preds = %24
  %27 = load ptr, ptr %14, align 8, !tbaa !39
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %34 unwind label %31

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #8
  unreachable

34:                                               ; preds = %26
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #7
  ret ptr %10

35:                                               ; preds = %3
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %46

37:                                               ; preds = %22, %20, %19, %24
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %14, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %46 unwind label %43

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #8
  unreachable

46:                                               ; preds = %37, %35
  %47 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #7
  resume { ptr, i32 } %47
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRNS_10DOMSupportEPKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %6 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #7
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  %9 = load ptr, ptr %7, align 8, !tbaa !55
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %10 unwind label %13

10:                                               ; preds = %4
  %11 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %12 unwind label %15

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %5) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #7
  ret ptr %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #7
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %5) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #7
  resume { ptr, i32 } %18
}

declare void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i1 noundef zeroext false)
  %9 = load ptr, ptr %3, align 8, !tbaa !46
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryDefault", ptr %9, i64 0, i32 1, i32 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !102
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(248) %15)
  br label %19

19:                                               ; preds = %13, %2
  ret i1 %8
}

declare void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #2

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !38, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XObjectFactoryEE", !36, i64 0, !36, i64 8}
!43 = !{!42, !36, i64 8}
!44 = !{!45, !36, i64 0}
!45 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1019XPathFactoryDefaultEE", !36, i64 0, !36, i64 8}
!46 = !{!45, !36, i64 8}
!47 = !{!48, !36, i64 0}
!48 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEE", !36, i64 0, !36, i64 8}
!49 = !{!48, !36, i64 8}
!50 = !{!51, !36, i64 0}
!51 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XPathExecutionContextDefaultEE", !36, i64 0, !36, i64 8}
!52 = !{!51, !36, i64 8}
!53 = !{!54, !36, i64 0}
!54 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !36, i64 0}
!55 = !{!56, !36, i64 64}
!56 = !{!"_ZTSN11xalanc_1_1014XPathEvaluatorE", !57, i64 0, !59, i64 16, !61, i64 32, !63, i64 48, !36, i64 64}
!57 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEE", !58, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrDataE", !42, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEE", !60, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrDataE", !45, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEE", !62, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrDataE", !48, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEE", !64, i64 0}
!64 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrDataE", !51, i64 0}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE: argument 0"}
!67 = distinct !{!67, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE"}
!68 = !{!69, !36, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE", !70, i64 0, !36, i64 24, !36, i64 32, !72, i64 40, !74, i64 72, !36, i64 104, !75, i64 112, !78, i64 152, !83, i64 208, !91, i64 328, !92, i64 344}
!70 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !71, i64 0, !36, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !36, i64 8}
!72 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
!73 = !{!"long", !37, i64 0}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
!75 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !76, i64 0, !77, i64 32}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
!77 = !{!"int", !37, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEEE", !79, i64 0, !80, i64 8, !81, i64 16, !82, i64 24}
!79 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEE"}
!80 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18MutableNodeRefListEEE", !36, i64 0}
!81 = !{!"_ZTSN11xalanc_1_1022ClearCacheResetFunctorINS_18MutableNodeRefListEEE"}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
!83 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !84, i64 0, !84, i64 32, !77, i64 64, !85, i64 72}
!84 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
!85 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !86, i64 0}
!86 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !87, i64 0, !90, i64 40}
!87 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !88, i64 8, !89, i64 16}
!88 = !{!"short", !37, i64 0}
!89 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !36, i64 0, !36, i64 8, !36, i64 16}
!90 = !{!"bool", !37, i64 0}
!91 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefault28ContextNodeListPositionCacheE", !36, i64 0, !77, i64 8}
!92 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !93, i64 0, !75, i64 8, !75, i64 48}
!93 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!94 = !{!70, !36, i64 16}
!95 = !{!69, !36, i64 32}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE: argument 0"}
!98 = distinct !{!98, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE: argument 0"}
!101 = distinct !{!101, !"_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE"}
!102 = !{!103, !73, i64 32}
!103 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEEE", !104, i64 0, !105, i64 1, !36, i64 8, !106, i64 16, !73, i64 24, !73, i64 32, !107, i64 40, !107, i64 64, !108, i64 88, !73, i64 120, !73, i64 128}
!104 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_5XPathEEE"}
!105 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_105XPathEE"}
!106 = !{!"float", !37, i64 0}
!107 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !36, i64 0, !36, i64 8, !36, i64 16}
!108 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !36, i64 0, !73, i64 8, !73, i64 16, !36, i64 24}
