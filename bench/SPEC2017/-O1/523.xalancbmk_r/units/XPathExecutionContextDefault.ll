; ModuleID = 'XPathExecutionContextDefault.cpp'
source_filename = "XPathExecutionContextDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XObjectFactory" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor", %"class.xalanc_1_10::ClearCacheResetFunctor", %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::ClearCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XalanDecimalFormatSymbols" = type { %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, [2 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i16, i16, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i16, i16, i16, i16 }

$_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZNK11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEclERN11xercesc_2_713MemoryManagerE = comdat any

@_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE = dso_local global %"class.xalanc_1_10::NodeRefList" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1028XPathExecutionContextDefaultE = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XPathExecutionContextDefaultE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD0Ev, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault14getCurrentNodeEv, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15pushCurrentNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault14popCurrentNodeEv, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault11isNodeAfterERKNS_9XalanNodeES3_, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault19pushContextNodeListERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault18popContextNodeListEv, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault18getContextNodeListEv, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault24getContextNodeListLengthEv, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault26getContextNodeListPositionERKNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault16elementAvailableERKNS_10XalanQNameE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault16elementAvailableERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17functionAvailableERKNS_10XalanQNameE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17functionAvailableERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault11extFunctionERKNS_14XalanDOMStringES3_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS7_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24borrowMutableNodeRefListEv, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24returnMutableNodeRefListEPNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault24createMutableNodeRefListERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15getNodeSetByKeyEPNS_13XalanDocumentERKNS_10XalanQNameERKNS_14XalanDOMStringERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15getNodeSetByKeyEPNS_13XalanDocumentERKNS_14XalanDOMStringES5_PKN11xercesc_2_77LocatorERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault11getVariableERKNS_10XalanQNameEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17getPrefixResolverEv, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault17setPrefixResolverEPKNS_14PrefixResolverE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault14findURIFromDocEPKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault21shouldStripSourceNodeERKNS_9XalanTextE, ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17getSourceDocumentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault12formatNumberEdRKNS_14XalanDOMStringERS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault12formatNumberEdRKNS_14XalanDOMStringES3_RS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault14doFormatNumberEdRKNS_14XalanDOMStringEPKNS_25XalanDecimalFormatSymbolsERS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE] }, align 8
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@.str = private unnamed_addr constant [16 x i8] c"format-number()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE = dso_local constant [46 x i8] c"N11xalanc_1_1028XPathExecutionContextDefaultE\00", align 1
@_ZTIN11xalanc_1_1021XPathExecutionContextE = external constant ptr
@_ZTIN11xalanc_1_1028XPathExecutionContextDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE, ptr @_ZTIN11xalanc_1_1021XPathExecutionContextE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPathExecutionContextDefault.cpp, ptr null }]

@_ZN11xalanc_1_1028XPathExecutionContextDefaultC1ERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE
@_ZN11xalanc_1_1028XPathExecutionContextDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE
@_ZN11xalanc_1_1028XPathExecutionContextDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %4, ptr %8, align 8, !tbaa !87
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactory", ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  tail call void @_ZN11xalanc_1_1021XPathExecutionContextC2ERN11xercesc_2_713MemoryManagerEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %3)
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xalanc_1_1028XPathExecutionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !95
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  store ptr %2, ptr %13, align 8, !tbaa !121
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %10, align 8, !tbaa !91
  store ptr %15, ptr %14, align 8, !tbaa !122
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store ptr %15, ptr %17, align 8, !tbaa !123
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store ptr %6, ptr %19, align 8, !tbaa !124
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %21 unwind label %42

21:                                               ; preds = %7
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %10, align 8, !tbaa !91
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !87
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3
  store ptr %23, ptr %25, align 8, !tbaa !125
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 50)
          to label %29 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #23
  br label %58

29:                                               ; preds = %21
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %10, align 8, !tbaa !91
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %30, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 100)
          to label %32 unwind label %44

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  store ptr null, ptr %33, align 8, !tbaa !126
  %34 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9, i32 1
  store i32 0, ptr %34, align 8, !tbaa !127
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %10, align 8, !tbaa !91
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %37 unwind label %46

37:                                               ; preds = %32
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %38 unwind label %48

38:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %39 = icmp eq ptr %5, null
  %40 = select i1 %39, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE, ptr %5
  store ptr %40, ptr %9, align 8, !tbaa !87
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %41 unwind label %50

41:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  ret void

42:                                               ; preds = %7
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %60

44:                                               ; preds = %29
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %56

46:                                               ; preds = %32
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %54

48:                                               ; preds = %37
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %52

50:                                               ; preds = %38
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %35) #23
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %47, %46 ]
  call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %30) #23
  br label %56

56:                                               ; preds = %54, %44
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %45, %44 ]
  call void @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %22) #23
  br label %58

58:                                               ; preds = %56, %27
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %28, %27 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #23
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %43, %42 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #23
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #23
  call void @_ZN11xalanc_1_1021XPathExecutionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %61
}

declare void @_ZN11xalanc_1_1021XPathExecutionContextC2ERN11xercesc_2_713MemoryManagerEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanObjectCache", ptr %0, i64 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanObjectCache", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !130
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanObjectCache", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %23, label %10, !prof !131

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !132

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !93
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(44) %12) #23, !prof !133
  %17 = load ptr, ptr %8, align 8, !tbaa !93
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %12)
          to label %20 unwind label %25, !prof !134

20:                                               ; preds = %14, %10
  %21 = getelementptr inbounds ptr, ptr %11, i64 1
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %10, !prof !135, !llvm.loop !136

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanObjectCache", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #23
  ret void

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #24
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !139
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !140

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = load ptr, ptr %0, align 8, !tbaa !123
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !142

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !144
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !145

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = load ptr, ptr %0, align 8, !tbaa !122
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !147

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XPathExecutionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %2, ptr %6, align 8, !tbaa !87
  tail call void @_ZN11xalanc_1_1021XPathExecutionContextC2ERN11xercesc_2_713MemoryManagerEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xalanc_1_1028XPathExecutionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !122
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !123
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store ptr %4, ptr %13, align 8, !tbaa !124
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %15 unwind label %33, !prof !148

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !87
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3
  store ptr %1, ptr %18, align 8, !tbaa !125
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 50)
          to label %22 unwind label %20, !prof !148

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #23
  br label %49

22:                                               ; preds = %15
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %23, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 100)
          to label %24 unwind label %35, !prof !148

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  store ptr null, ptr %25, align 8, !tbaa !126
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9, i32 1
  store i32 0, ptr %26, align 8, !tbaa !127
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %37, !prof !148

28:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %29 unwind label %39, !prof !148

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %30 = icmp eq ptr %3, null
  %31 = select i1 %30, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE, ptr %3, !prof !148
  store ptr %31, ptr %7, align 8, !tbaa !87
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %32 unwind label %41, !prof !148

32:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  ret void

33:                                               ; preds = %5
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %51

35:                                               ; preds = %22
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %47

37:                                               ; preds = %24
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %45

39:                                               ; preds = %28
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %43

41:                                               ; preds = %29
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %27) #23
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %38, %37 ]
  call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %23) #23
  br label %47

47:                                               ; preds = %45, %35
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %36, %35 ]
  call void @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %16) #23
  br label %49

49:                                               ; preds = %47, %20
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %21, %20 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #23
  br label %51

51:                                               ; preds = %49, %33
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %34, %33 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @_ZN11xalanc_1_1021XPathExecutionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = load ptr, ptr %0, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 432)
  invoke void @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %9 unwind label %10

9:                                                ; preds = %4
  ret ptr %8

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %8, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !93
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #24
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xalanc_1_1028XPathExecutionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !93
  invoke void @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(432) %0)
          to label %2 unwind label %9, !prof !148

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #23
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #23
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #23
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #23
  tail call void @_ZN11xalanc_1_1021XPathExecutionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #24
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !86 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #5 align 2 !prof !86 {
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(432) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #3 align 2 !prof !149 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !150

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !93
  %9 = getelementptr inbounds ptr, ptr %8, i64 10
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !151
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !150

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !93
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %13), !prof !152
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !150

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !93
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(16) %21), !prof !154
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !155
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32, !prof !156

32:                                               ; preds = %27
  store i64 0, ptr %29, align 8, !tbaa !155
  br label %33

33:                                               ; preds = %32, %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %34 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !157
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38, !prof !156

38:                                               ; preds = %33
  store i64 0, ptr %35, align 8, !tbaa !157
  br label %39

39:                                               ; preds = %38, %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE, ptr %3, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  %40 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  store ptr null, ptr %40, align 8, !tbaa !124
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  call void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %41)
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !126
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !158

45:                                               ; preds = %39
  store ptr null, ptr %42, align 8, !tbaa !126
  br label %46

46:                                               ; preds = %39, %45
  ret void
}

declare void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault14getCurrentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #9 align 2 !prof !159 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !155
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  ret ptr %8
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault15pushCurrentNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !160 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault14popCurrentNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #11 align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 3, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !155
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !155
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XPathExecutionContextDefault11isNodeAfterERKNS_9XalanNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault19pushContextNodeListERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 align 2 !prof !161 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !162

7:                                                ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !126
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr %1, ptr %3, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault18popContextNodeListEv(ptr nocapture noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #11 align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !163

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !126
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !157
  %9 = add i64 %8, -1
  store i64 %9, ptr %7, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault18getContextNodeListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #12 align 2 !prof !164 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1028XPathExecutionContextDefault24getContextNodeListLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #3 align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  %8 = load ptr, ptr %7, align 8, !tbaa !87
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  ret i32 %12
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1028XPathExecutionContextDefault26getContextNodeListPositionERKNS_9XalanNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 align 2 !prof !165 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %20, label %6, !prof !167

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !157
  %11 = getelementptr ptr, ptr %8, i64 %10
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %1), !prof !168
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !169
  store ptr %1, ptr %3, align 8, !tbaa !166
  br label %20

20:                                               ; preds = %2, %6
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 9, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !169
  ret i32 %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XPathExecutionContextDefault16elementAvailableERKNS_10XalanQNameE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %1, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = load ptr, ptr %1, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = load ptr, ptr %4, align 8, !tbaa !93
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %12)
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XPathExecutionContextDefault16elementAvailableERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue3setERKNS_14XalanDOMStringEPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %6, ptr noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !93
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret i1 %10
}

declare void @_ZN11xalanc_1_1017XalanQNameByValue3setERKNS_14XalanDOMStringEPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XPathExecutionContextDefault17functionAvailableERKNS_10XalanQNameE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %1, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = load ptr, ptr %1, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = load ptr, ptr %4, align 8, !tbaa !93
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %12)
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1028XPathExecutionContextDefault17functionAvailableERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue3setERKNS_14XalanDOMStringEPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %6, ptr noundef %2)
  %7 = load ptr, ptr %0, align 8, !tbaa !93
  %8 = getelementptr inbounds ptr, ptr %7, i64 17
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault11extFunctionERKNS_14XalanDOMStringES3_PNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS7_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef nonnull align 1 %5, ptr noundef %6) unnamed_addr #3 align 2 !prof !86 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef nonnull align 1 %5, ptr noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault8parseXMLERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #3 align 2 !prof !86 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  ret ptr %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24borrowMutableNodeRefListEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #10 align 2 !prof !170 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !130
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %10, !prof !171

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEclERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = getelementptr ptr, ptr %12, i64 %3
  %14 = getelementptr ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = add i64 %3, -1
  store i64 %16, ptr %2, align 8, !tbaa !130
  br label %17

17:                                               ; preds = %5, %10
  %18 = phi ptr [ %9, %5 ], [ %15, %10 ]
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1028XPathExecutionContextDefault24returnMutableNodeRefListEPNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %1) unnamed_addr #10 align 2 !prof !170 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %1, ptr %3, align 8, !tbaa !87
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 7, i32 3
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault24createMutableNodeRefListERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018MutableNodeRefList6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %3
}

declare noundef ptr @_ZN11xalanc_1_1018MutableNodeRefList6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15getCachedStringEv(ptr noundef nonnull align 8 dereferenceable(432) %0) unnamed_addr #13 align 2 !prof !172 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1028XPathExecutionContextDefault19releaseCachedStringERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #13 align 2 !prof !172 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 8
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault15getNodeSetByKeyEPNS_13XalanDocumentERKNS_10XalanQNameERKNS_14XalanDOMStringERNS_18MutableNodeRefListE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3, ptr nocapture nonnull readnone align 8 %4) unnamed_addr #14 align 2 !prof !86 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault15getNodeSetByKeyEPNS_13XalanDocumentERKNS_14XalanDOMStringES5_PKN11xercesc_2_77LocatorERNS_18MutableNodeRefListE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3, ptr nocapture readnone %4, ptr nocapture nonnull readnone align 8 %5) unnamed_addr #14 align 2 !prof !86 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault11getVariableERKNS_10XalanQNameEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture readnone %3) unnamed_addr #3 align 2 !prof !86 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = load ptr, ptr %2, align 8, !tbaa !93
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !93
  %12 = getelementptr inbounds ptr, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17getPrefixResolverEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0) unnamed_addr #15 align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setPrefixResolverEPKNS_14PrefixResolverE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(432) %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !174 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !124
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault14findURIFromDocEPKNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1028XPathExecutionContextDefault21shouldStripSourceNodeERKNS_9XalanTextE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #14 align 2 !prof !86 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1028XPathExecutionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #23
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = icmp eq ptr %3, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 8, !tbaa !93
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %29

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !93
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i64 %17(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %29

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !93
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %24 unwind label %31

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %27 unwind label %31

27:                                               ; preds = %26
  %28 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %23)
          to label %43 unwind label %31

29:                                               ; preds = %69, %47, %14, %9
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %86

31:                                               ; preds = %43, %41, %40, %27, %26, %33, %19
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %86

33:                                               ; preds = %24
  %34 = load ptr, ptr %3, align 8, !tbaa !93
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %41 unwind label %31

41:                                               ; preds = %40
  %42 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %37)
          to label %43 unwind label %31

43:                                               ; preds = %27, %41
  %44 = phi ptr [ %37, %41 ], [ %23, %27 ]
  %45 = phi i32 [ %42, %41 ], [ %28, %27 ]
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %44, i32 noundef %45)
          to label %47 unwind label %31

47:                                               ; preds = %43, %38, %4
  %48 = phi i64 [ -1, %4 ], [ %18, %38 ], [ %18, %43 ]
  %49 = phi i64 [ -1, %4 ], [ %13, %38 ], [ %13, %43 ]
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !176
  %56 = icmp eq i64 %55, 0
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = select i1 %56, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = trunc i64 %49 to i32
  %61 = trunc i64 %48 to i32
  %62 = load ptr, ptr %51, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 9
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 4, i32 noundef 2, ptr noundef %53, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %59, i32 noundef %60, i32 noundef %61)
          to label %66 unwind label %29

66:                                               ; preds = %47
  br i1 %65, label %67, label %72

67:                                               ; preds = %66
  %68 = call ptr @__cxa_allocate_exception(i64 112) #23
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %68, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %60, i32 noundef %61, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %69 unwind label %70

69:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xalanc_1_1019XalanXPathExceptionE, ptr nonnull @_ZN11xalanc_1_1019XalanXPathExceptionD1Ev) #26
          to label %102 unwind label %29

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %68) #23
  br label %86

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !177
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %57, align 8, !tbaa !178
  %78 = load ptr, ptr %5, align 8, !tbaa !179
  %79 = load ptr, ptr %78, align 8, !tbaa !93
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %77)
          to label %85 unwind label %82

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #24
  unreachable

85:                                               ; preds = %72, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  ret void

86:                                               ; preds = %70, %31, %29
  %87 = phi { ptr, i32 } [ %30, %29 ], [ %71, %70 ], [ %32, %31 ]
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !177
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !178
  %94 = load ptr, ptr %5, align 8, !tbaa !179
  %95 = load ptr, ptr %94, align 8, !tbaa !93
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %93)
          to label %101 unwind label %98

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #24
  unreachable

101:                                              ; preds = %86, %91
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  resume { ptr, i32 } %87

102:                                              ; preds = %69
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1028XPathExecutionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #23
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = icmp eq ptr %3, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 8, !tbaa !93
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %29

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !93
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i64 %17(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %29

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !93
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %24 unwind label %31

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %27 unwind label %31

27:                                               ; preds = %26
  %28 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %23)
          to label %43 unwind label %31

29:                                               ; preds = %69, %47, %14, %9
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %86

31:                                               ; preds = %43, %41, %40, %27, %26, %33, %19
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %86

33:                                               ; preds = %24
  %34 = load ptr, ptr %3, align 8, !tbaa !93
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %41 unwind label %31

41:                                               ; preds = %40
  %42 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %37)
          to label %43 unwind label %31

43:                                               ; preds = %27, %41
  %44 = phi ptr [ %37, %41 ], [ %23, %27 ]
  %45 = phi i32 [ %42, %41 ], [ %28, %27 ]
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %44, i32 noundef %45)
          to label %47 unwind label %31

47:                                               ; preds = %43, %38, %4
  %48 = phi i64 [ -1, %4 ], [ %18, %38 ], [ %18, %43 ]
  %49 = phi i64 [ -1, %4 ], [ %13, %38 ], [ %13, %43 ]
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !176
  %56 = icmp eq i64 %55, 0
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = select i1 %56, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = trunc i64 %49 to i32
  %61 = trunc i64 %48 to i32
  %62 = load ptr, ptr %51, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 9
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 4, i32 noundef 1, ptr noundef %53, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %59, i32 noundef %60, i32 noundef %61)
          to label %66 unwind label %29

66:                                               ; preds = %47
  br i1 %65, label %67, label %72

67:                                               ; preds = %66
  %68 = call ptr @__cxa_allocate_exception(i64 112) #23
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %68, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %60, i32 noundef %61, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %69 unwind label %70

69:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xalanc_1_1019XalanXPathExceptionE, ptr nonnull @_ZN11xalanc_1_1019XalanXPathExceptionD1Ev) #26
          to label %102 unwind label %29

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %68) #23
  br label %86

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !177
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %57, align 8, !tbaa !178
  %78 = load ptr, ptr %5, align 8, !tbaa !179
  %79 = load ptr, ptr %78, align 8, !tbaa !93
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %77)
          to label %85 unwind label %82

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #24
  unreachable

85:                                               ; preds = %72, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  ret void

86:                                               ; preds = %70, %31, %29
  %87 = phi { ptr, i32 } [ %30, %29 ], [ %71, %70 ], [ %32, %31 ]
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !177
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !178
  %94 = load ptr, ptr %5, align 8, !tbaa !179
  %95 = load ptr, ptr %94, align 8, !tbaa !93
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %93)
          to label %101 unwind label %98

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #24
  unreachable

101:                                              ; preds = %86, %91
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  resume { ptr, i32 } %87

102:                                              ; preds = %69
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1028XPathExecutionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #23
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = icmp eq ptr %3, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 8, !tbaa !93
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %29

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !93
  %16 = getelementptr inbounds ptr, ptr %15, i64 5
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i64 %17(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %29

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !tbaa !93
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %24 unwind label %31

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %27 unwind label %31

27:                                               ; preds = %26
  %28 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %23)
          to label %43 unwind label %31

29:                                               ; preds = %69, %47, %14, %9
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %86

31:                                               ; preds = %43, %41, %40, %27, %26, %33, %19
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %86

33:                                               ; preds = %24
  %34 = load ptr, ptr %3, align 8, !tbaa !93
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %41 unwind label %31

41:                                               ; preds = %40
  %42 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %37)
          to label %43 unwind label %31

43:                                               ; preds = %27, %41
  %44 = phi ptr [ %37, %41 ], [ %23, %27 ]
  %45 = phi i32 [ %42, %41 ], [ %28, %27 ]
  %46 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %44, i32 noundef %45)
          to label %47 unwind label %31

47:                                               ; preds = %43, %38, %4
  %48 = phi i64 [ -1, %4 ], [ %18, %38 ], [ %18, %43 ]
  %49 = phi i64 [ -1, %4 ], [ %13, %38 ], [ %13, %43 ]
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !176
  %56 = icmp eq i64 %55, 0
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = select i1 %56, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = trunc i64 %49 to i32
  %61 = trunc i64 %48 to i32
  %62 = load ptr, ptr %51, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 9
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 4, i32 noundef 0, ptr noundef %53, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %59, i32 noundef %60, i32 noundef %61)
          to label %66 unwind label %29

66:                                               ; preds = %47
  br i1 %65, label %67, label %72

67:                                               ; preds = %66
  %68 = call ptr @__cxa_allocate_exception(i64 112) #23
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC1ERKNS_14XalanDOMStringES3_iiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %68, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %60, i32 noundef %61, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %69 unwind label %70

69:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xalanc_1_1019XalanXPathExceptionE, ptr nonnull @_ZN11xalanc_1_1019XalanXPathExceptionD1Ev) #26
          to label %102 unwind label %29

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %68) #23
  br label %86

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !177
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %57, align 8, !tbaa !178
  %78 = load ptr, ptr %5, align 8, !tbaa !179
  %79 = load ptr, ptr %78, align 8, !tbaa !93
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %77)
          to label %85 unwind label %82

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #24
  unreachable

85:                                               ; preds = %72, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  ret void

86:                                               ; preds = %70, %31, %29
  %87 = phi { ptr, i32 } [ %30, %29 ], [ %71, %70 ], [ %32, %31 ]
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !177
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !178
  %94 = load ptr, ptr %5, align 8, !tbaa !179
  %95 = load ptr, ptr %94, align 8, !tbaa !93
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %93)
          to label %101 unwind label %98

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #24
  unreachable

101:                                              ; preds = %86, %91
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #23
  resume { ptr, i32 } %87

102:                                              ; preds = %69
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1028XPathExecutionContextDefault17getSourceDocumentERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !86 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !86 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault12formatNumberEdRKNS_14XalanDOMStringERS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 !prof !86 {
  %7 = load ptr, ptr %0, align 8, !tbaa !93
  %8 = getelementptr inbounds ptr, ptr %7, i64 39
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(432) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault12formatNumberEdRKNS_14XalanDOMStringES3_RS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr nocapture nonnull readnone align 8 %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 align 2 !prof !86 {
  %8 = load ptr, ptr %0, align 8, !tbaa !93
  %9 = getelementptr inbounds ptr, ptr %8, i64 39
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(432) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault14doFormatNumberEdRKNS_14XalanDOMStringEPKNS_25XalanDecimalFormatSymbolsERS1_PKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(432) %0, double noundef %1, ptr nocapture nonnull readnone align 8 %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %8 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !180
  %9 = bitcast double %1 to i64
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %13 = lshr i64 %9, 32
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %12, %14
  %16 = select i1 %11, i1 %15, i1 false
  br i1 %16, label %17, label %29

17:                                               ; preds = %7
  %18 = icmp eq ptr %3, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 10
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %100, label %22

22:                                               ; preds = %19
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %20)
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 10, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !181
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !181
  br label %100

27:                                               ; preds = %17
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %100

29:                                               ; preds = %7
  %30 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !180
  %31 = icmp eq i32 %30, %10
  %32 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %33 = icmp eq i32 %32, %14
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = icmp eq ptr %3, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 7
  %39 = load i16, ptr %38, align 8, !tbaa !182
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 0, i32 noundef -1)
  %40 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 1, i16 noundef zeroext %39)
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 5, i32 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !176
  %43 = icmp eq i64 %42, 0
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 5, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = select i1 %43, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %45
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 5, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !181
  %49 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %46, i32 noundef %48)
  br label %100

50:                                               ; preds = %35
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %100

52:                                               ; preds = %29
  %53 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !180
  %54 = icmp eq i32 %53, %10
  %55 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %56 = icmp eq i32 %55, %14
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = icmp eq ptr %3, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 5
  %62 = icmp eq ptr %61, %4
  br i1 %62, label %100, label %63

63:                                               ; preds = %60
  %64 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %61)
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDecimalFormatSymbols", ptr %3, i64 0, i32 5, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !181
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  store i32 %66, ptr %67, align 8, !tbaa !181
  br label %100

68:                                               ; preds = %58
  %69 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %100

70:                                               ; preds = %52
  %71 = load ptr, ptr %0, align 8, !tbaa !93
  %72 = getelementptr inbounds ptr, ptr %71, i64 23
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef nonnull align 8 dereferenceable(36) ptr %73(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %74, i32 noundef 19, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %76 unwind label %90

76:                                               ; preds = %70
  %77 = load ptr, ptr %0, align 8, !tbaa !93
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(36) %75, ptr noundef %5, ptr noundef %6)
          to label %80 unwind label %90

80:                                               ; preds = %76
  %81 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %82 unwind label %90

82:                                               ; preds = %80
  %83 = load ptr, ptr %0, align 8, !tbaa !93
  %84 = getelementptr inbounds ptr, ptr %83, i64 24
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef zeroext i1 %85(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %74)
          to label %100 unwind label %87

87:                                               ; preds = %82
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  tail call void @__clang_call_terminate(ptr %89) #24
  unreachable

90:                                               ; preds = %80, %76, %70
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %0, align 8, !tbaa !93
  %93 = getelementptr inbounds ptr, ptr %92, i64 24
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef zeroext i1 %94(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %74)
          to label %99 unwind label %96

96:                                               ; preds = %90
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  tail call void @__clang_call_terminate(ptr %98) #24
  unreachable

99:                                               ; preds = %90
  resume { ptr, i32 } %91

100:                                              ; preds = %82, %63, %60, %22, %19, %50, %37, %68, %27
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !177
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !185

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !178
  %8 = load ptr, ptr %0, align 8, !tbaa !179
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !186

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !188

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !177
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !176
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !189

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !179
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !176
  %16 = load i64, ptr %6, align 8, !tbaa !177
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %19, ptr %0, align 8, !tbaa !179
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !176
  store i64 %21, ptr %14, align 8, !tbaa !176
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !177
  store i64 %23, ptr %6, align 8, !tbaa !177
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  store ptr %25, ptr %17, align 8, !tbaa !178
  store ptr %13, ptr %3, align 8, !tbaa !179
  store i64 %15, ptr %20, align 8, !tbaa !176
  store i64 %16, ptr %22, align 8, !tbaa !177
  store ptr %18, ptr %24, align 8, !tbaa !178
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !190

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !93
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !191

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #24
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !178
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !176
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !192

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !193

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !178
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !176
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !176
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !178
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !194

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !178
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !195
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !179
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !176
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !197

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !179
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !177
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !93
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !198
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !178
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !178
  %24 = load i64, ptr %9, align 8, !tbaa !176
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !199

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !179
  %28 = load i64, ptr %6, align 8, !tbaa !176
  %29 = load i64, ptr %7, align 8, !tbaa !177
  %30 = load ptr, ptr %8, align 8, !tbaa !178
  %31 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %31, ptr %0, align 8, !tbaa !179
  %32 = load i64, ptr %14, align 8, !tbaa !176
  store i64 %32, ptr %6, align 8, !tbaa !176
  %33 = load i64, ptr %15, align 8, !tbaa !177
  store i64 %33, ptr %7, align 8, !tbaa !177
  %34 = load ptr, ptr %21, align 8, !tbaa !178
  store ptr %34, ptr %8, align 8, !tbaa !178
  store ptr %27, ptr %5, align 8, !tbaa !179
  store i64 %28, ptr %14, align 8, !tbaa !176
  store i64 %29, ptr %15, align 8, !tbaa !177
  store ptr %30, ptr %21, align 8, !tbaa !178
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !199

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !177
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !178
  %50 = load ptr, ptr %5, align 8, !tbaa !179
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !200

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !201
  store ptr %65, ptr %8, align 8, !tbaa !178
  store i64 %3, ptr %7, align 8, !tbaa !177
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !203

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !176
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !177
  br i1 %18, label %21, label %39, !prof !204

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !205

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !206

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !178
  %28 = load i64, ptr %12, align 8, !tbaa !176
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !207
  store i16 %34, ptr %32, align 2, !tbaa !207
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !208, !llvm.loop !209

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !210

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !179
  store ptr %42, ptr %5, align 8, !tbaa !179
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !176
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !177
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !93
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !211
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !178
  %51 = load i64, ptr %43, align 8, !tbaa !176
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !178
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !212

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !178
  %56 = load i64, ptr %43, align 8, !tbaa !176
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !212

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !178
  %60 = load i64, ptr %43, align 8, !tbaa !176
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !178
  %63 = load i64, ptr %12, align 8, !tbaa !176
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !212

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !179
  %67 = load i64, ptr %12, align 8, !tbaa !176
  %68 = load i64, ptr %19, align 8, !tbaa !177
  %69 = load ptr, ptr %15, align 8, !tbaa !178
  %70 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %70, ptr %0, align 8, !tbaa !179
  %71 = load i64, ptr %43, align 8, !tbaa !176
  store i64 %71, ptr %12, align 8, !tbaa !176
  %72 = load i64, ptr %44, align 8, !tbaa !177
  store i64 %72, ptr %19, align 8, !tbaa !177
  %73 = load ptr, ptr %50, align 8, !tbaa !178
  store ptr %73, ptr %15, align 8, !tbaa !178
  store ptr %66, ptr %5, align 8, !tbaa !179
  store i64 %67, ptr %43, align 8, !tbaa !176
  store i64 %68, ptr %44, align 8, !tbaa !177
  store ptr %69, ptr %50, align 8, !tbaa !178
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !213

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !93
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !214

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !177
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !178
  %89 = load ptr, ptr %5, align 8, !tbaa !179
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !215

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !216

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !216

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !217, !llvm.loop !218

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !219, !llvm.loop !220

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !221
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
  br i1 %123, label %124, label %120, !llvm.loop !222

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
  store i64 %36, ptr %12, align 8, !tbaa !176
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !177
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !224

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !207
  store i16 %13, ptr %12, align 2, !tbaa !207
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !176
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !179
  %24 = load i64, ptr %4, align 8, !tbaa !176
  %25 = load i64, ptr %6, align 8, !tbaa !177
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %28, ptr %0, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !176
  store i64 %30, ptr %4, align 8, !tbaa !176
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !177
  store i64 %32, ptr %6, align 8, !tbaa !177
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  store ptr %34, ptr %26, align 8, !tbaa !178
  store ptr %23, ptr %3, align 8, !tbaa !179
  store i64 %24, ptr %29, align 8, !tbaa !176
  store i64 %25, ptr %31, align 8, !tbaa !177
  store ptr %27, ptr %33, align 8, !tbaa !178
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !177
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !178
  %52 = load ptr, ptr %3, align 8, !tbaa !179
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !179
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !176
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !197

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !179
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !176
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !177
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !93
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !226
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !178
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = load i64, ptr %5, align 8, !tbaa !176
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !199

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !179
  %24 = load i64, ptr %10, align 8, !tbaa !176
  %25 = load i64, ptr %11, align 8, !tbaa !177
  %26 = load ptr, ptr %17, align 8, !tbaa !178
  store ptr %4, ptr %3, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !177
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !178
  %33 = load ptr, ptr %3, align 8, !tbaa !179
  %34 = load ptr, ptr %33, align 8, !tbaa !93
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #24
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !200

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !93
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !227
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !179
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !177
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !178
  store ptr %53, ptr %0, align 8, !tbaa !179
  store i64 %52, ptr %5, align 8, !tbaa !176
  store i64 %51, ptr %55, align 8, !tbaa !177
  store ptr %50, ptr %57, align 8, !tbaa !178
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !228

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !93
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !229

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #24
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !230 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !231
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !232

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = load ptr, ptr %0, align 8, !tbaa !125
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !233

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !231
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = load ptr, ptr %3, align 8, !tbaa !125
  store ptr %12, ptr %0, align 8, !tbaa !125
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !130
  store i64 %14, ptr %6, align 8, !tbaa !130
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !231
  store i64 %16, ptr %8, align 8, !tbaa !231
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  store ptr %18, ptr %10, align 8, !tbaa !129
  store ptr %5, ptr %3, align 8, !tbaa !125
  store i64 %7, ptr %13, align 8, !tbaa !130
  store i64 %9, ptr %15, align 8, !tbaa !231
  store ptr %11, ptr %17, align 8, !tbaa !129
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !148

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !93
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !125
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !130
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !235

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !125
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !130
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !231
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !93
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !236
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !129
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = load i64, ptr %9, align 8, !tbaa !130
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !237

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !125
  %28 = load i64, ptr %6, align 8, !tbaa !130
  %29 = load i64, ptr %7, align 8, !tbaa !231
  %30 = load ptr, ptr %8, align 8, !tbaa !129
  %31 = load ptr, ptr %5, align 8, !tbaa !125
  store ptr %31, ptr %0, align 8, !tbaa !125
  %32 = load i64, ptr %14, align 8, !tbaa !130
  store i64 %32, ptr %6, align 8, !tbaa !130
  %33 = load i64, ptr %15, align 8, !tbaa !231
  store i64 %33, ptr %7, align 8, !tbaa !231
  %34 = load ptr, ptr %21, align 8, !tbaa !129
  store ptr %34, ptr %8, align 8, !tbaa !129
  store ptr %27, ptr %5, align 8, !tbaa !125
  store i64 %28, ptr %14, align 8, !tbaa !130
  store i64 %29, ptr %15, align 8, !tbaa !231
  store ptr %30, ptr %21, align 8, !tbaa !129
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !237

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !231
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !129
  %50 = load ptr, ptr %5, align 8, !tbaa !125
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !232

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !238
  store ptr %65, ptr %8, align 8, !tbaa !129
  store i64 %3, ptr %7, align 8, !tbaa !231
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !240

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !130
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !231
  br i1 %18, label %21, label %39, !prof !237

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !240

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !241

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !129
  %28 = load i64, ptr %12, align 8, !tbaa !130
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !87
  store ptr %34, ptr %32, align 8, !tbaa !87
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !242, !llvm.loop !243

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !125
  store ptr %42, ptr %5, align 8, !tbaa !125
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !130
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !231
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !93
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !129
  %51 = load i64, ptr %43, align 8, !tbaa !130
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !129
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !129
  %56 = load i64, ptr %43, align 8, !tbaa !130
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !129
  %60 = load i64, ptr %43, align 8, !tbaa !130
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !129
  %63 = load i64, ptr %12, align 8, !tbaa !130
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !125
  %67 = load i64, ptr %12, align 8, !tbaa !130
  %68 = load i64, ptr %19, align 8, !tbaa !231
  %69 = load ptr, ptr %15, align 8, !tbaa !129
  %70 = load ptr, ptr %5, align 8, !tbaa !125
  store ptr %70, ptr %0, align 8, !tbaa !125
  %71 = load i64, ptr %43, align 8, !tbaa !130
  store i64 %71, ptr %12, align 8, !tbaa !130
  %72 = load i64, ptr %44, align 8, !tbaa !231
  store i64 %72, ptr %19, align 8, !tbaa !231
  %73 = load ptr, ptr %50, align 8, !tbaa !129
  store ptr %73, ptr %15, align 8, !tbaa !129
  store ptr %66, ptr %5, align 8, !tbaa !125
  store i64 %67, ptr %43, align 8, !tbaa !130
  store i64 %68, ptr %44, align 8, !tbaa !231
  store ptr %69, ptr %50, align 8, !tbaa !129
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !93
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !231
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !129
  %89 = load ptr, ptr %5, align 8, !tbaa !125
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !244

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !245

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !246

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !130
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !130
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !231
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !248

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %13, ptr %12, align 8, !tbaa !87
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !130
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !250

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !125
  %24 = load i64, ptr %4, align 8, !tbaa !130
  %25 = load i64, ptr %6, align 8, !tbaa !231
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  %28 = load ptr, ptr %3, align 8, !tbaa !125
  store ptr %28, ptr %0, align 8, !tbaa !125
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !130
  store i64 %30, ptr %4, align 8, !tbaa !130
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !231
  store i64 %32, ptr %6, align 8, !tbaa !231
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %34, ptr %26, align 8, !tbaa !129
  store ptr %23, ptr %3, align 8, !tbaa !125
  store i64 %24, ptr %29, align 8, !tbaa !130
  store i64 %25, ptr %31, align 8, !tbaa !231
  store ptr %27, ptr %33, align 8, !tbaa !129
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !249

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !251

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !231
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !129
  %52 = load ptr, ptr %3, align 8, !tbaa !125
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !252 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !144
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !253

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %13, ptr %12, align 8, !tbaa !87
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !155
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !254
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !255

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !122
  %24 = load i64, ptr %4, align 8, !tbaa !155
  %25 = load i64, ptr %6, align 8, !tbaa !144
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !146
  %28 = load ptr, ptr %3, align 8, !tbaa !122
  store ptr %28, ptr %0, align 8, !tbaa !122
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !155
  store i64 %30, ptr %4, align 8, !tbaa !155
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !144
  store i64 %32, ptr %6, align 8, !tbaa !144
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !146
  store ptr %34, ptr %26, align 8, !tbaa !146
  store ptr %23, ptr %3, align 8, !tbaa !122
  store i64 %24, ptr %29, align 8, !tbaa !155
  store i64 %25, ptr %31, align 8, !tbaa !144
  store ptr %27, ptr %33, align 8, !tbaa !146
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !254

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !256

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !144
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !146
  %52 = load ptr, ptr %3, align 8, !tbaa !122
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !257 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !155
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !258

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !122
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !144
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !93
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !259
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !146
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = load i64, ptr %9, align 8, !tbaa !155
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !260

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !122
  %28 = load i64, ptr %6, align 8, !tbaa !155
  %29 = load i64, ptr %7, align 8, !tbaa !144
  %30 = load ptr, ptr %8, align 8, !tbaa !146
  %31 = load ptr, ptr %5, align 8, !tbaa !122
  store ptr %31, ptr %0, align 8, !tbaa !122
  %32 = load i64, ptr %14, align 8, !tbaa !155
  store i64 %32, ptr %6, align 8, !tbaa !155
  %33 = load i64, ptr %15, align 8, !tbaa !144
  store i64 %33, ptr %7, align 8, !tbaa !144
  %34 = load ptr, ptr %21, align 8, !tbaa !146
  store ptr %34, ptr %8, align 8, !tbaa !146
  store ptr %27, ptr %5, align 8, !tbaa !122
  store i64 %28, ptr %14, align 8, !tbaa !155
  store i64 %29, ptr %15, align 8, !tbaa !144
  store ptr %30, ptr %21, align 8, !tbaa !146
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !260

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !144
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !146
  %50 = load ptr, ptr %5, align 8, !tbaa !122
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !261

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !262
  store ptr %65, ptr %8, align 8, !tbaa !146
  store i64 %3, ptr %7, align 8, !tbaa !144
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !263 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !264

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !155
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !144
  br i1 %18, label %21, label %39, !prof !260

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !264

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !265

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !146
  %28 = load i64, ptr %12, align 8, !tbaa !155
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !87
  store ptr %34, ptr %32, align 8, !tbaa !87
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !266, !llvm.loop !267

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !122
  store ptr %42, ptr %5, align 8, !tbaa !122
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !155
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !144
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !93
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !146
  %51 = load i64, ptr %43, align 8, !tbaa !155
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !146
  %56 = load i64, ptr %43, align 8, !tbaa !155
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !146
  %60 = load i64, ptr %43, align 8, !tbaa !155
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !146
  %63 = load i64, ptr %12, align 8, !tbaa !155
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !122
  %67 = load i64, ptr %12, align 8, !tbaa !155
  %68 = load i64, ptr %19, align 8, !tbaa !144
  %69 = load ptr, ptr %15, align 8, !tbaa !146
  %70 = load ptr, ptr %5, align 8, !tbaa !122
  store ptr %70, ptr %0, align 8, !tbaa !122
  %71 = load i64, ptr %43, align 8, !tbaa !155
  store i64 %71, ptr %12, align 8, !tbaa !155
  %72 = load i64, ptr %44, align 8, !tbaa !144
  store i64 %72, ptr %19, align 8, !tbaa !144
  %73 = load ptr, ptr %50, align 8, !tbaa !146
  store ptr %73, ptr %15, align 8, !tbaa !146
  store ptr %66, ptr %5, align 8, !tbaa !122
  store i64 %67, ptr %43, align 8, !tbaa !155
  store i64 %68, ptr %44, align 8, !tbaa !144
  store ptr %69, ptr %50, align 8, !tbaa !146
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !93
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !144
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !146
  %89 = load ptr, ptr %5, align 8, !tbaa !122
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !268

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !269

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !270

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !155
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !271 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !144
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = load ptr, ptr %3, align 8, !tbaa !122
  store ptr %12, ptr %0, align 8, !tbaa !122
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !155
  store i64 %14, ptr %6, align 8, !tbaa !155
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !144
  store i64 %16, ptr %8, align 8, !tbaa !144
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  store ptr %18, ptr %10, align 8, !tbaa !146
  store ptr %5, ptr %3, align 8, !tbaa !122
  store i64 %7, ptr %13, align 8, !tbaa !155
  store i64 %9, ptr %15, align 8, !tbaa !144
  store ptr %11, ptr %17, align 8, !tbaa !146
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !272

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !93
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !273

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !139
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !275

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !87
  store ptr %13, ptr %12, align 8, !tbaa !87
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !157
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !123
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !250

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !123
  %24 = load i64, ptr %4, align 8, !tbaa !157
  %25 = load i64, ptr %6, align 8, !tbaa !139
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !141
  %28 = load ptr, ptr %3, align 8, !tbaa !123
  store ptr %28, ptr %0, align 8, !tbaa !123
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !157
  store i64 %30, ptr %4, align 8, !tbaa !157
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !139
  store i64 %32, ptr %6, align 8, !tbaa !139
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !141
  store ptr %34, ptr %26, align 8, !tbaa !141
  store ptr %23, ptr %3, align 8, !tbaa !123
  store i64 %24, ptr %29, align 8, !tbaa !157
  store i64 %25, ptr %31, align 8, !tbaa !139
  store ptr %27, ptr %33, align 8, !tbaa !141
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !249

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !251

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !139
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !141
  %52 = load ptr, ptr %3, align 8, !tbaa !123
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #24
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !157
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !249

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !123
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !157
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !139
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !93
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !236
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !141
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = load i64, ptr %9, align 8, !tbaa !157
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !237

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !123
  %28 = load i64, ptr %6, align 8, !tbaa !157
  %29 = load i64, ptr %7, align 8, !tbaa !139
  %30 = load ptr, ptr %8, align 8, !tbaa !141
  %31 = load ptr, ptr %5, align 8, !tbaa !123
  store ptr %31, ptr %0, align 8, !tbaa !123
  %32 = load i64, ptr %14, align 8, !tbaa !157
  store i64 %32, ptr %6, align 8, !tbaa !157
  %33 = load i64, ptr %15, align 8, !tbaa !139
  store i64 %33, ptr %7, align 8, !tbaa !139
  %34 = load ptr, ptr %21, align 8, !tbaa !141
  store ptr %34, ptr %8, align 8, !tbaa !141
  store ptr %27, ptr %5, align 8, !tbaa !123
  store i64 %28, ptr %14, align 8, !tbaa !157
  store i64 %29, ptr %15, align 8, !tbaa !139
  store ptr %30, ptr %21, align 8, !tbaa !141
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !237

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !93
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #24
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !139
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !141
  %50 = load ptr, ptr %5, align 8, !tbaa !123
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #24
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !140

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !93
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !277
  store ptr %65, ptr %8, align 8, !tbaa !141
  store i64 %3, ptr %7, align 8, !tbaa !139
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !240

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !157
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !139
  br i1 %18, label %21, label %39, !prof !237

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !240

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !241

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !141
  %28 = load i64, ptr %12, align 8, !tbaa !157
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !87
  store ptr %34, ptr %32, align 8, !tbaa !87
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !242, !llvm.loop !278

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !123
  store ptr %42, ptr %5, align 8, !tbaa !123
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !157
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !139
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !93
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !141
  %51 = load i64, ptr %43, align 8, !tbaa !157
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !141
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !141
  %56 = load i64, ptr %43, align 8, !tbaa !157
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !141
  %60 = load i64, ptr %43, align 8, !tbaa !157
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !141
  %63 = load i64, ptr %12, align 8, !tbaa !157
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !123
  %67 = load i64, ptr %12, align 8, !tbaa !157
  %68 = load i64, ptr %19, align 8, !tbaa !139
  %69 = load ptr, ptr %15, align 8, !tbaa !141
  %70 = load ptr, ptr %5, align 8, !tbaa !123
  store ptr %70, ptr %0, align 8, !tbaa !123
  %71 = load i64, ptr %43, align 8, !tbaa !157
  store i64 %71, ptr %12, align 8, !tbaa !157
  %72 = load i64, ptr %44, align 8, !tbaa !139
  store i64 %72, ptr %19, align 8, !tbaa !139
  %73 = load ptr, ptr %50, align 8, !tbaa !141
  store ptr %73, ptr %15, align 8, !tbaa !141
  store ptr %66, ptr %5, align 8, !tbaa !123
  store i64 %67, ptr %43, align 8, !tbaa !157
  store i64 %68, ptr %44, align 8, !tbaa !139
  store ptr %69, ptr %50, align 8, !tbaa !141
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !93
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #24
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !139
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !141
  %89 = load ptr, ptr %5, align 8, !tbaa !123
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #24
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !279

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !280

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !281

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !157
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !123
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !157
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !139
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = load ptr, ptr %3, align 8, !tbaa !123
  store ptr %12, ptr %0, align 8, !tbaa !123
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !157
  store i64 %14, ptr %6, align 8, !tbaa !157
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !139
  store i64 %16, ptr %8, align 8, !tbaa !139
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  store ptr %18, ptr %10, align 8, !tbaa !141
  store ptr %5, ptr %3, align 8, !tbaa !123
  store i64 %7, ptr %13, align 8, !tbaa !157
  store i64 %9, ptr %15, align 8, !tbaa !139
  store ptr %11, ptr %17, align 8, !tbaa !141
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !93
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #24
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEclERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  %3 = load ptr, ptr %1, align 8, !tbaa !93
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 48), !prof !226
  invoke void @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %8, !prof !283

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !93
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #24
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

declare void @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XPathExecutionContextDefault.cpp() #20 section ".text.startup" !prof !128 !PGOFuncName !284 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1011NodeRefListD1Ev, ptr nonnull @_ZN11xalanc_1_1028XPathExecutionContextDefault11s_dummyListE, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1021XPathExecutionContextC2ERN11xercesc_2_713MemoryManagerEPNS_14XObjectFactoryE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEED2Ev, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContextD2Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 4}
!52 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 4}
!53 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault5resetEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, i64 4}
!54 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15pushCurrentNodeEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 746008}
!55 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault19pushContextNodeListERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 1839815}
!56 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24borrowMutableNodeRefListEv, ptr @_ZNK11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEclERN11xercesc_2_713MemoryManagerE, i64 6}
!57 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24returnMutableNodeRefListEPNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, i64 2647209}
!58 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault24returnMutableNodeRefListEPNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 2647209}
!59 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, i64 67594463}
!60 = !{ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, i64 67594463}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 5}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 6}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 6}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 6}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 6}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_, i64 5}
!81 = !{ptr @_ZNK11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEclERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE, i64 17}
!82 = !{ptr @_GLOBAL__sub_I_XPathExecutionContextDefault.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!83 = !{ptr @_GLOBAL__sub_I_XPathExecutionContextDefault.cpp, ptr @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!84 = !{ptr @_GLOBAL__sub_I_XPathExecutionContextDefault.cpp, ptr @__cxa_atexit, i64 1}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C++ TBAA"}
!91 = !{!92, !88, i64 8}
!92 = !{!"_ZTSN11xalanc_1_1014XObjectFactoryE", !88, i64 8}
!93 = !{!94, !94, i64 0}
!94 = !{!"vtable pointer", !90, i64 0}
!95 = !{!96, !88, i64 24}
!96 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE", !97, i64 0, !88, i64 24, !88, i64 32, !99, i64 40, !101, i64 72, !88, i64 104, !102, i64 112, !105, i64 152, !110, i64 208, !118, i64 328, !119, i64 344}
!97 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !98, i64 0, !88, i64 16}
!98 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !88, i64 8}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !88, i64 0, !100, i64 8, !100, i64 16, !88, i64 24}
!100 = !{!"long", !89, i64 0}
!101 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEE", !88, i64 0, !100, i64 8, !100, i64 16, !88, i64 24}
!102 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !103, i64 0, !104, i64 32}
!103 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !88, i64 0, !100, i64 8, !100, i64 16, !88, i64 24}
!104 = !{!"int", !89, i64 0}
!105 = !{!"_ZTSN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEEE", !106, i64 0, !107, i64 8, !108, i64 16, !109, i64 24}
!106 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEE"}
!107 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18MutableNodeRefListEEE", !88, i64 0}
!108 = !{!"_ZTSN11xalanc_1_1022ClearCacheResetFunctorINS_18MutableNodeRefListEEE"}
!109 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEE", !88, i64 0, !100, i64 8, !100, i64 16, !88, i64 24}
!110 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !111, i64 0, !111, i64 32, !104, i64 64, !112, i64 72}
!111 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !88, i64 0, !100, i64 8, !100, i64 16, !88, i64 24}
!112 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !113, i64 0}
!113 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !114, i64 0, !117, i64 40}
!114 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !115, i64 8, !116, i64 16}
!115 = !{!"short", !89, i64 0}
!116 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !88, i64 0, !88, i64 8, !88, i64 16}
!117 = !{!"bool", !89, i64 0}
!118 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefault28ContextNodeListPositionCacheE", !88, i64 0, !104, i64 8}
!119 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !120, i64 0, !102, i64 8, !102, i64 48}
!120 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!121 = !{!96, !88, i64 32}
!122 = !{!99, !88, i64 0}
!123 = !{!101, !88, i64 0}
!124 = !{!96, !88, i64 104}
!125 = !{!109, !88, i64 0}
!126 = !{!118, !88, i64 0}
!127 = !{!118, !104, i64 8}
!128 = !{!"function_entry_count", i64 1}
!129 = !{!109, !88, i64 24}
!130 = !{!109, !100, i64 8}
!131 = !{!"branch_weights", i32 1, i32 127}
!132 = !{!"branch_weights", i32 0, i32 6}
!133 = !{!"VP", i32 0, i64 6, i64 -833817974607418497, i64 6}
!134 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!135 = !{!"branch_weights", i32 127, i32 641}
!136 = distinct !{!136, !137, !138}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = !{!101, !100, i64 16}
!140 = !{!"branch_weights", i32 0, i32 1}
!141 = !{!101, !88, i64 24}
!142 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!143 = !{!"function_entry_count", i64 21}
!144 = !{!99, !100, i64 16}
!145 = !{!"branch_weights", i32 1, i32 20}
!146 = !{!99, !88, i64 24}
!147 = !{!"VP", i32 0, i64 20, i64 -7405368087501025645, i64 20}
!148 = !{!"branch_weights", i32 1, i32 0}
!149 = !{!"function_entry_count", i64 4}
!150 = !{!"branch_weights", i32 3, i32 1}
!151 = !{!"VP", i32 0, i64 1, i64 -1841793374126264663, i64 1}
!152 = !{!"VP", i32 0, i64 1, i64 5567527564561545259, i64 1}
!153 = !{!97, !88, i64 16}
!154 = !{!"VP", i32 0, i64 1, i64 4132604291904909140, i64 1}
!155 = !{!99, !100, i64 8}
!156 = !{!"branch_weights", i32 0, i32 4}
!157 = !{!101, !100, i64 8}
!158 = !{!"branch_weights", i32 4, i32 0}
!159 = !{!"function_entry_count", i64 91379809}
!160 = !{!"function_entry_count", i64 746008}
!161 = !{!"function_entry_count", i64 1839815}
!162 = !{!"branch_weights", i32 1746656, i32 93159}
!163 = !{!"branch_weights", i32 1839815, i32 0}
!164 = !{!"function_entry_count", i64 29851}
!165 = !{!"function_entry_count", i64 186318}
!166 = !{!96, !88, i64 328}
!167 = !{!"branch_weights", i32 93159, i32 93159}
!168 = !{!"VP", i32 0, i64 93159, i64 -3978148724574122222, i64 93159}
!169 = !{!96, !104, i64 336}
!170 = !{!"function_entry_count", i64 2647209}
!171 = !{!"branch_weights", i32 6, i32 2647203}
!172 = !{!"function_entry_count", i64 67594463}
!173 = !{!"function_entry_count", i64 68609096}
!174 = !{!"function_entry_count", i64 137218192}
!175 = !{!98, !88, i64 8}
!176 = !{!103, !100, i64 8}
!177 = !{!103, !100, i64 16}
!178 = !{!103, !88, i64 24}
!179 = !{!103, !88, i64 0}
!180 = !{!89, !89, i64 0}
!181 = !{!102, !104, i64 32}
!182 = !{!183, !115, i64 128}
!183 = !{!"_ZTSN11xalanc_1_1025XalanDecimalFormatSymbolsE", !102, i64 0, !115, i64 40, !115, i64 42, !115, i64 44, !102, i64 48, !102, i64 88, !115, i64 128, !115, i64 130, !102, i64 136, !115, i64 176, !115, i64 178, !115, i64 180, !115, i64 182}
!184 = !{!"function_entry_count", i64 42470003}
!185 = !{!"branch_weights", i32 52000, i32 42418003}
!186 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!187 = !{!"function_entry_count", i64 41614}
!188 = !{!"branch_weights", i32 0, i32 41614}
!189 = !{!"branch_weights", i32 12, i32 41602}
!190 = !{!"branch_weights", i32 5, i32 7}
!191 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!192 = !{!"branch_weights", i32 354, i32 41248}
!193 = !{!"branch_weights", i32 40889, i32 359}
!194 = !{!"branch_weights", i32 40581, i32 1021}
!195 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!196 = !{!"function_entry_count", i64 22}
!197 = !{!"branch_weights", i32 64551590, i32 18}
!198 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!199 = !{!"branch_weights", i32 18, i32 0}
!200 = !{!"branch_weights", i32 4, i32 64551586}
!201 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!202 = !{!"function_entry_count", i64 155828046}
!203 = !{!"branch_weights", i32 0, i32 155828046}
!204 = !{!"branch_weights", i32 133170777, i32 22657269}
!205 = !{!"branch_weights", i32 20, i32 133170757}
!206 = !{!"branch_weights", i32 1, i32 19024395}
!207 = !{!115, !115, i64 0}
!208 = !{!"branch_weights", i32 19024395, i32 -26420601}
!209 = distinct !{!209, !137, !138}
!210 = !{!"branch_weights", i32 20748786, i32 1908483}
!211 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!212 = !{!"branch_weights", i32 20748786, i32 0}
!213 = !{!"branch_weights", i32 0, i32 20748786}
!214 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!215 = !{!"branch_weights", i32 0, i32 1908483}
!216 = !{!"branch_weights", i32 1, i32 1908482}
!217 = !{!"branch_weights", i32 1908482, i32 49797853}
!218 = distinct !{!218, !137, !138}
!219 = !{!"branch_weights", i32 1908482, i32 1}
!220 = distinct !{!220, !137, !138}
!221 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!222 = distinct !{!222, !137, !138}
!223 = !{!"function_entry_count", i64 124150652}
!224 = !{!"branch_weights", i32 124150652, i32 0}
!225 = !{!"function_entry_count", i64 64551586}
!226 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!227 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!228 = !{!"branch_weights", i32 42418193, i32 22133393}
!229 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!230 = !{!"function_entry_count", i64 2}
!231 = !{!109, !100, i64 16}
!232 = !{!"branch_weights", i32 0, i32 2}
!233 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!234 = !{!"function_entry_count", i64 7}
!235 = !{!"branch_weights", i32 2, i32 5}
!236 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!237 = !{!"branch_weights", i32 5, i32 0}
!238 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!239 = !{!"function_entry_count", i64 5}
!240 = !{!"branch_weights", i32 0, i32 5}
!241 = !{!"branch_weights", i32 1, i32 159}
!242 = !{!"branch_weights", i32 159, i32 449}
!243 = distinct !{!243, !137, !138}
!244 = distinct !{!244, !137, !138}
!245 = distinct !{!245, !137, !138}
!246 = distinct !{!246, !137, !138}
!247 = !{!"function_entry_count", i64 2647226}
!248 = !{!"branch_weights", i32 2647220, i32 6}
!249 = !{!"branch_weights", i32 1, i32 5}
!250 = !{!"branch_weights", i32 6, i32 0}
!251 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!252 = !{!"function_entry_count", i64 3517488}
!253 = !{!"branch_weights", i32 3517309, i32 179}
!254 = !{!"branch_weights", i32 16, i32 163}
!255 = !{!"branch_weights", i32 179, i32 0}
!256 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
!257 = !{!"function_entry_count", i64 52673}
!258 = !{!"branch_weights", i32 30, i32 52643}
!259 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!260 = !{!"branch_weights", i32 52643, i32 0}
!261 = !{!"branch_weights", i32 0, i32 30}
!262 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!263 = !{!"function_entry_count", i64 52643}
!264 = !{!"branch_weights", i32 0, i32 52643}
!265 = !{!"branch_weights", i32 1, i32 52642}
!266 = !{!"branch_weights", i32 52642, i32 298062848}
!267 = distinct !{!267, !137, !138}
!268 = distinct !{!268, !137, !138}
!269 = distinct !{!269, !137, !138}
!270 = distinct !{!270, !137, !138}
!271 = !{!"function_entry_count", i64 52494}
!272 = !{!"branch_weights", i32 4, i32 52490}
!273 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!274 = !{!"function_entry_count", i64 1839826}
!275 = !{!"branch_weights", i32 1839820, i32 6}
!276 = !{!"function_entry_count", i64 6}
!277 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!278 = distinct !{!278, !137, !138}
!279 = distinct !{!279, !137, !138}
!280 = distinct !{!280, !137, !138}
!281 = distinct !{!281, !137, !138}
!282 = !{!"function_entry_count", i64 17}
!283 = !{!"branch_weights", i32 17, i32 0}
!284 = !{!"XPathExecutionContextDefault.cpp;_GLOBAL__sub_I_XPathExecutionContextDefault.cpp"}
