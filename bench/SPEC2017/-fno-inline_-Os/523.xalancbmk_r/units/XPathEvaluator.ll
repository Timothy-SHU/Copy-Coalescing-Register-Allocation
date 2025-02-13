; ModuleID = 'XPathEvaluator.cpp'
source_filename = "XPathEvaluator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathEvaluator" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanMemMgrAutoPtr.0", %"class.xalanc_1_10::XalanMemMgrAutoPtr.3", %"class.xalanc_1_10::XalanMemMgrAutoPtr.6", ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactory>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactory>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.0" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathFactoryDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathFactoryDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.1" }
%"struct.std::pair.1" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.3" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathConstructionContextDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.4" }
%"struct.std::pair.4" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.6" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathExecutionContextDefault>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathExecutionContextDefault>::MemMgrAutoPtrData" = type { %"struct.std::pair.7" }
%"struct.std::pair.7" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector.44", %"class.xalanc_1_10::XalanVector.45", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.44" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.45" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.46", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.46" = type { ptr, i64, i64, ptr }
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
%"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString" = type { ptr, ptr }
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

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEptEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1012XPathFactory12returnObjectEPKNS_5XPathE = comdat any

$_ZNK11xalanc_1_1019XPathFactoryDefault16getInstanceCountEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEptEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEptEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE3getEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE3getEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZNK11xalanc_1_108XalanSetIPKNS_5XPathEE4sizeEv = comdat any

$_ZNK11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XObjectFactoryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1019XPathFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XPathExecutionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

@_ZN11xalanc_1_10L12theXPathInitE = internal unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_10L15s_memoryManagerE = internal unnamed_addr global ptr null, align 8

@_ZN11xalanc_1_1014XPathEvaluatorC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014XPathEvaluatorC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014XPathEvaluatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XPathEvaluatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !44 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr %2, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !45
  store ptr %0, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_109XPathInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator9terminateEv() local_unnamed_addr #0 align 2 !prof !44 {
  %1 = load ptr, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !45
  tail call void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2) %1) #7
  %2 = load ptr, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !45
  %3 = load ptr, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !45
  %4 = load ptr, ptr %2, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #6
  store ptr null, ptr @_ZN11xalanc_1_10L12theXPathInitE, align 8, !tbaa !45
  store ptr null, ptr @_ZN11xalanc_1_10L15s_memoryManagerE, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_109XPathInitD1Ev(ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluatorC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5) #6
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %3) #6
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  %5 = invoke noundef ptr @_ZN11xalanc_1_1019XPathFactoryDefault25createXPathFactoryDefaultERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %6 unwind label %17

6:                                                ; preds = %2
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5) #6
          to label %7 unwind label %17

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  %9 = invoke noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %10 unwind label %19

10:                                               ; preds = %7
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %9) #6
          to label %11 unwind label %19

11:                                               ; preds = %10
  %12 = invoke noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null, ptr noundef null, ptr noundef null) #6
          to label %13 unwind label %21

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12) #6
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %16, align 8, !tbaa !45
  ret void

17:                                               ; preds = %6, %2
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %10, %7
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %13, %11
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  resume { ptr, i32 } %26
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XPathFactoryDefault25createXPathFactoryDefaultERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluatorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %3, ptr noundef null) #6
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef null) #6
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %5, ptr noundef null) #6
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #7
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6
  %7 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7) #6
          to label %12 unwind label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %17 unwind label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #6
          to label %24 unwind label %26

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %25

26:                                               ; preds = %19, %12, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %8 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #9
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %11 = load ptr, ptr %9, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %12 unwind label %14

12:                                               ; preds = %6
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %13 unwind label %16

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %2 = load ptr, ptr %0, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %7 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7) #6
          to label %12 unwind label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %17 unwind label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #6
          to label %24 unwind label %26

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %25

26:                                               ; preds = %19, %12, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #9
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %10 unwind label %11

10:                                               ; preds = %6
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  ret void

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef %4) #6
  %7 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7) #6
          to label %12 unwind label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %17 unwind label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #6
          to label %24 unwind label %26

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %25

26:                                               ; preds = %19, %12, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %8 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #9
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %11 = load ptr, ptr %9, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %12 unwind label %14

12:                                               ; preds = %6
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %13 unwind label %16

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator16selectSingleNodeERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  %7 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7) #6
          to label %12 unwind label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr %11, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %17 unwind label %26

17:                                               ; preds = %12
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #6
          to label %24 unwind label %26

24:                                               ; preds = %19, %17
  %25 = phi ptr [ null, %17 ], [ %23, %19 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr %25

26:                                               ; preds = %19, %12, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #9
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %10 unwind label %11

10:                                               ; preds = %6
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  ret void

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6
  %8 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret ptr %1

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %8 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret ptr %1

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathEPKNS_12XalanElementE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %5) #6
  %8 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret ptr %1

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014XPathEvaluator14selectNodeListERNS_11NodeRefListERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %8 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #6
          to label %13 unwind label %16

13:                                               ; preds = %6
  %14 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret ptr %1

16:                                               ; preds = %13, %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeEPKtRKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %8 = alloca %"class.xalanc_1_10::XPath", align 8
  %9 = alloca %"class.xalanc_1_10::XPathProcessorImpl", align 8
  %10 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  call void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null) #6
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %9) #9
  %13 = load ptr, ptr %11, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %9, ptr noundef nonnull align 8 dereferenceable(8) %13) #6
          to label %14 unwind label %24

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 2
  %16 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #6
  invoke void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %16) #6
          to label %17 unwind label %26

17:                                               ; preds = %14
  %18 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #6
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %4) #6
          to label %20 unwind label %28

20:                                               ; preds = %17
  %21 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #6
  invoke void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %9, ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #6
          to label %22 unwind label %28

22:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %8, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %23 unwind label %28

23:                                               ; preds = %22
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %9) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %9) #9
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %8) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #9
  ret void

24:                                               ; preds = %7
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %32

26:                                               ; preds = %14
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %22, %20, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #7
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %9) #7
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %9) #9
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %8) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #9
  resume { ptr, i32 } %33
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014XPathEvaluator8evaluateERNS_10DOMSupportEPNS_9XalanNodeERKNS_5XPathERKNS_14PrefixResolverERNS_15XPathEnvSupportE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %1, i64 0, i32 3
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(432) %9) #6
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #6
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %13) #6
  %17 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %17, ptr noundef nonnull %6) #6
  %18 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  %19 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %18, ptr noundef %19) #6
  %20 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %20, ptr noundef nonnull %2) #6
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %21) #6
  %22 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %22, ptr noundef null) #6
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %23, ptr noundef null) #6
  %24 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #6
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %24, ptr noundef null) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = alloca %"class.xalanc_1_10::DOMSupportDefault", align 8
  %4 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %5 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #9
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #6
          to label %9 unwind label %14

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %10 = load ptr, ptr %6, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
          to label %11 unwind label %16

11:                                               ; preds = %9
  %12 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %13 unwind label %18

13:                                               ; preds = %11
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #9
  call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #9
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %4) #7
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #9
  call void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #9
  resume { ptr, i32 } %23
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017DOMSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %4 = alloca %"class.xalanc_1_10::XPathProcessorImpl", align 8
  %5 = alloca %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(144) %7) #6
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  %15 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #6
  invoke void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %15) #6
          to label %16 unwind label %22

16:                                               ; preds = %3
  %17 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #6
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %1) #6
          to label %19 unwind label %24

19:                                               ; preds = %16
  %20 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #6
  invoke void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %4, ptr noundef nonnull align 8 dereferenceable(129) %11, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #6
          to label %21 unwind label %24

21:                                               ; preds = %19
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #9
  ret ptr %11

22:                                               ; preds = %3
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %19, %16
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %4) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #9
  resume { ptr, i32 } %27
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017DOMSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRNS_10DOMSupportEPKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %5 = alloca %"class.xalanc_1_10::XPathEnvSupportDefault", align 8
  %6 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #9
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(280) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %9 = load ptr, ptr %7, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %9) #6
          to label %10 unwind label %13

10:                                               ; preds = %4
  %11 = invoke noundef ptr @_ZN11xalanc_1_1014XPathEvaluator11createXPathEPKtRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %12 unwind label %15

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %5) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #9
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @_ZN11xalanc_1_1022XPathEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(280) %5) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #9
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair.1", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 !prof !101 {
  store ptr %1, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(16) %1) #6
  store ptr %7, ptr %3, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !105 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #6
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !106

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !102
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #6
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #8
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XPathEvaluator12destroyXPathEPNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #6
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1012XPathFactory12returnObjectEPKNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #6
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #6
  %7 = tail call noundef i64 @_ZNK11xalanc_1_1019XPathFactoryDefault16getInstanceCountEv(ptr noundef nonnull align 8 dereferenceable(144) %6) #6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathEvaluator", ptr %0, i64 0, i32 2
  %11 = tail call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #6
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(248) %11) #6
  br label %15

15:                                               ; preds = %9, %2
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1012XPathFactory12returnObjectEPKNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext false) #6
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1019XPathFactoryDefault16getInstanceCountEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryDefault", ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNK11xalanc_1_108XalanSetIPKNS_5XPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(136) %2) #6
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !108 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #6
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #6
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #6
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #6
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_108XalanSetIPKNS_5XPathEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #6
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.64", ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !111
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !45
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XObjectFactoryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XObjectFactoryEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 !prof !44 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !118
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %6, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !45
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1019XPathFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1019XPathFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 !prof !44 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !119
  %5 = getelementptr inbounds %"struct.std::pair.1", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %6, ptr %5, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !45
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 !prof !44 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %6, ptr %5, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !44 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !45
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XPathExecutionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XPathExecutionContextDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 !prof !44 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !121
  %5 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %6, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %8 = load ptr, ptr %0, align 8, !tbaa !118
  %9 = load ptr, ptr %4, align 8, !tbaa !107
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #6
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.1", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(144) %5) #7
  %8 = load ptr, ptr %0, align 8, !tbaa !119
  %9 = load ptr, ptr %4, align 8, !tbaa !99
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #6
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !119
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.1", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(248) %5) #7
  %8 = load ptr, ptr %0, align 8, !tbaa !120
  %9 = load ptr, ptr %4, align 8, !tbaa !100
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #6
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !44 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(432) %5) #7
  %8 = load ptr, ptr %0, align 8, !tbaa !121
  %9 = load ptr, ptr %4, align 8, !tbaa !51
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #6
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !121
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.7", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!43}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!36 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 1084346}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!39 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!40 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!41 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!42 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !48, i64 0}
!51 = !{!52, !46, i64 8}
!52 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XPathExecutionContextDefaultEE", !46, i64 0, !46, i64 8}
!53 = !{!"function_entry_count", i64 2}
!54 = !{!55, !46, i64 24}
!55 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE", !56, i64 0, !46, i64 24, !46, i64 32, !58, i64 40, !60, i64 72, !46, i64 104, !61, i64 112, !64, i64 152, !69, i64 208, !77, i64 328, !78, i64 344}
!56 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !57, i64 0, !46, i64 16}
!57 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !46, i64 8}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!59 = !{!"long", !47, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !62, i64 0, !63, i64 32}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!63 = !{!"int", !47, i64 0}
!64 = !{!"_ZTSN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEEE", !65, i64 0, !66, i64 8, !67, i64 16, !68, i64 24}
!65 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEE"}
!66 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18MutableNodeRefListEEE", !46, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1022ClearCacheResetFunctorINS_18MutableNodeRefListEEE"}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!69 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !70, i64 0, !70, i64 32, !63, i64 64, !71, i64 72}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!71 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !72, i64 0}
!72 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !73, i64 0, !76, i64 40}
!73 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !74, i64 8, !75, i64 16}
!74 = !{!"short", !47, i64 0}
!75 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !46, i64 0, !46, i64 8, !46, i64 16}
!76 = !{!"bool", !47, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefault28ContextNodeListPositionCacheE", !46, i64 0, !63, i64 8}
!78 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !79, i64 0, !61, i64 8, !61, i64 48}
!79 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!80 = !{!56, !46, i64 16}
!81 = !{!55, !46, i64 32}
!82 = !{!83, !46, i64 64}
!83 = !{!"_ZTSN11xalanc_1_1014XPathEvaluatorE", !84, i64 0, !87, i64 16, !90, i64 32, !93, i64 48, !46, i64 64}
!84 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EEE", !85, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XObjectFactoryELb1EE17MemMgrAutoPtrDataE", !86, i64 0}
!86 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XObjectFactoryEE", !46, i64 0, !46, i64 8}
!87 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EEE", !88, i64 0}
!88 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_19XPathFactoryDefaultELb1EE17MemMgrAutoPtrDataE", !89, i64 0}
!89 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1019XPathFactoryDefaultEE", !46, i64 0, !46, i64 8}
!90 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EEE", !91, i64 0}
!91 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_31XPathConstructionContextDefaultELb1EE17MemMgrAutoPtrDataE", !92, i64 0}
!92 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1031XPathConstructionContextDefaultEE", !46, i64 0, !46, i64 8}
!93 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EEE", !94, i64 0}
!94 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XPathExecutionContextDefaultELb1EE17MemMgrAutoPtrDataE", !52, i64 0}
!95 = !{!"function_entry_count", i64 246321862}
!96 = !{!97, !46, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!98 = !{!"function_entry_count", i64 1009440147}
!99 = !{!89, !46, i64 8}
!100 = !{!92, !46, i64 8}
!101 = !{!"function_entry_count", i64 1769}
!102 = !{!103, !46, i64 0}
!103 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContext25GetAndReleaseCachedStringE", !46, i64 0, !46, i64 8}
!104 = !{!103, !46, i64 8}
!105 = !{!"function_entry_count", i64 1084346}
!106 = !{!"branch_weights", i32 1, i32 1770}
!107 = !{!86, !46, i64 8}
!108 = !{!"function_entry_count", i64 1084505}
!109 = !{!"function_entry_count", i64 3070433834}
!110 = !{!"function_entry_count", i64 1179818}
!111 = !{!112, !59, i64 32}
!112 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS3_EEEE", !113, i64 0, !114, i64 1, !46, i64 8, !115, i64 16, !59, i64 24, !59, i64 32, !116, i64 40, !116, i64 64, !117, i64 88, !59, i64 120, !59, i64 128}
!113 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_5XPathEEE"}
!114 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_105XPathEE"}
!115 = !{!"float", !47, i64 0}
!116 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !46, i64 0, !46, i64 8, !46, i64 16}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_5XPathEbNS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!118 = !{!86, !46, i64 0}
!119 = !{!89, !46, i64 0}
!120 = !{!92, !46, i64 0}
!121 = !{!52, !46, i64 0}
