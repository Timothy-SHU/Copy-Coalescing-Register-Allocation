; ModuleID = 'XPath.cpp'
source_filename = "XPath.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathFunctionTable" = type { ptr, [36 x ptr], ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.0", i32, %"class.xalanc_1_10::XalanVector.1", i32, ptr, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::FormatterStringLengthCounter" = type { %"class.xalanc_1_10::FormatterListener", i64 }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XToken" = type <{ %"class.xalanc_1_10::XObject", ptr, double, i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%struct.anon = type { i32, i32 }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.3" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPath::TargetData" = type { ptr, i32, i32 }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPath::NodeTester" = type { ptr, ptr, ptr, { i64, i64 }, { i64, i64 } }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_ = comdat any

@_ZN11xalanc_1_105XPath13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_105XPath11s_functionsE = dso_local global %"class.xalanc_1_10::XPathFunctionTable" zeroinitializer, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@.str = private unnamed_addr constant [25 x i8] c"processing-instruction()\00", align 1
@_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE = dso_local constant [2 x i16] [i16 42, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE = dso_local constant [2 x i16] [i16 47, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_TEXTE = dso_local constant [6 x i16] [i16 35, i16 116, i16 101, i16 120, i16 116, i16 0], align 2
@_ZN11xalanc_1_105XPath18PSEUDONAME_COMMENTE = dso_local constant [9 x i16] [i16 35, i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_105XPath13PSEUDONAME_PIE = dso_local constant [4 x i16] [i16 35, i16 112, i16 105, i16 0], align 2
@_ZN11xalanc_1_105XPath16PSEUDONAME_OTHERE = dso_local local_unnamed_addr constant [2 x i16] [i16 42, i16 0], align 2
@_ZN11xalanc_1_105XPath15PSEUDONAME_NODEE = dso_local constant [6 x i16] [i16 35, i16 110, i16 111, i16 100, i16 101, i16 0], align 2
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_107XObject12s_trueStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XPath.cpp, ptr null }]

@_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE
@_ZN11xalanc_1_105XPathD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_105XPathD2Ev
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKS0_RNS_21XPathExecutionContextEPKiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii
@_ZN11xalanc_1_105XPath10NodeTesterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2Ev
@_ZN11xalanc_1_105XPath10NodeTesterC1ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE
@_ZN11xalanc_1_105XPath10NodeTesterC1ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !152 {
  tail call void @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 8, !tbaa !165
  ret void
}

declare void @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_105XPath6createERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 136)
  invoke void @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %7 unwind label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %6, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !153
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %6, i64 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !165
  ret ptr %6

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = icmp eq ptr %6, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %6)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #20
  unreachable

20:                                               ; preds = %10, %13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_105XPathD2Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !152 {
  tail call void @_ZN11xalanc_1_1015XPathExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015XPathExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = load ptr, ptr %2, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %9 = load i32, ptr %3, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %12 unwind label %42

12:                                               ; preds = %4
  %13 = load ptr, ptr %2, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %17 unwind label %44

17:                                               ; preds = %12
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %16, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %19 unwind label %46

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !153
  %22 = load ptr, ptr %2, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %1, ptr noundef %21)
          to label %25 unwind label %46

25:                                               ; preds = %19
  %26 = load ptr, ptr %2, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %33 unwind label %30

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #20
  unreachable

33:                                               ; preds = %25
  %34 = load ptr, ptr %2, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %41 unwind label %38

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %33
  ret void

42:                                               ; preds = %4
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %55

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %55

46:                                               ; preds = %19, %17
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %2, align 8, !tbaa !166
  %49 = getelementptr inbounds ptr, ptr %48, i64 24
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %55 unwind label %52

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #20
  unreachable

55:                                               ; preds = %42, %46, %44
  %56 = phi { ptr, i32 } [ %43, %42 ], [ %45, %44 ], [ %47, %46 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !166
  %58 = getelementptr inbounds ptr, ptr %57, i64 24
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %64 unwind label %61

61:                                               ; preds = %55
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #20
  unreachable

64:                                               ; preds = %55
  resume { ptr, i32 } %56
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %4 = load ptr, ptr %2, align 8, !tbaa !166
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 11)
          to label %9 unwind label %24

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %1, ptr noundef %11)
          to label %15 unwind label %24

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 24
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %23 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #20
  unreachable

23:                                               ; preds = %15
  ret void

24:                                               ; preds = %9, %3
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = load ptr, ptr %2, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %33 unwind label %30

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #20
  unreachable

33:                                               ; preds = %24
  resume { ptr, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %4, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 29
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %10 = load ptr, ptr %4, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3)
  %13 = load ptr, ptr %4, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2)
          to label %16 unwind label %35

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %20 unwind label %37

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 30
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %9)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %27
  ret void

35:                                               ; preds = %5
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %45

37:                                               ; preds = %16
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %4, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %45 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #20
  unreachable

45:                                               ; preds = %37, %35
  %46 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %47 = load ptr, ptr %4, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 30
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %9)
          to label %53 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #20
  unreachable

53:                                               ; preds = %45
  resume { ptr, i32 } %46
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %6 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i8, align 1
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8, align 1
  br label %18

18:                                               ; preds = %221, %5
  %19 = phi ptr [ %3, %5 ], [ %222, %221 ]
  %20 = load i32, ptr %19, align 4, !tbaa !168
  switch i32 %20, label %407 [
    i32 2, label %21
    i32 3, label %28
    i32 4, label %35
    i32 5, label %42
    i32 6, label %49
    i32 7, label %56
    i32 8, label %63
    i32 9, label %70
    i32 10, label %77
    i32 11, label %84
    i32 12, label %124
    i32 13, label %131
    i32 14, label %138
    i32 15, label %145
    i32 17, label %167
    i32 18, label %168
    i32 19, label %192
    i32 20, label %221
    i32 21, label %223
    i32 23, label %247
    i32 24, label %248
    i32 25, label %249
    i32 56, label %250
    i32 57, label %261
    i32 58, label %272
    i32 59, label %279
    i32 60, label %288
    i32 61, label %294
    i32 62, label %300
    i32 63, label %309
    i32 64, label %316
    i32 65, label %323
    i32 66, label %330
    i32 67, label %337
    i32 68, label %346
    i32 69, label %355
    i32 70, label %364
    i32 71, label %371
    i32 74, label %379
    i32 75, label %386
    i32 78, label %400
  ], !prof !171

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !172
  %24 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %25 = load ptr, ptr %23, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext %24)
  br label %408

28:                                               ; preds = %18
  %29 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !172
  %31 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %32 = load ptr, ptr %30, align 8, !tbaa !166
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %30, i1 noundef zeroext %31)
  br label %408

35:                                               ; preds = %18
  %36 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !172
  %38 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %39 = load ptr, ptr %37, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %37, i1 noundef zeroext %38)
  br label %408

42:                                               ; preds = %18
  %43 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !172
  %45 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %46 = load ptr, ptr %44, align 8, !tbaa !166
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %44, i1 noundef zeroext %45), !prof !175
  br label %408

49:                                               ; preds = %18
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !172
  %52 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %53 = load ptr, ptr %51, align 8, !tbaa !166
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %51, i1 noundef zeroext %52)
  br label %408

56:                                               ; preds = %18
  %57 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !172
  %59 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %60 = load ptr, ptr %58, align 8, !tbaa !166
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %58, i1 noundef zeroext %59)
  br label %408

63:                                               ; preds = %18
  %64 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !172
  %66 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %67 = load ptr, ptr %65, align 8, !tbaa !166
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  tail call void %69(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %65, i1 noundef zeroext %66)
  br label %408

70:                                               ; preds = %18
  %71 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !172
  %73 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %74 = load ptr, ptr %72, align 8, !tbaa !166
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %72, i1 noundef zeroext %73)
  br label %408

77:                                               ; preds = %18
  %78 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  %80 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %81 = load ptr, ptr %79, align 8, !tbaa !166
  %82 = getelementptr inbounds ptr, ptr %81, i64 7
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %79, double noundef %80)
  br label %408

84:                                               ; preds = %18
  %85 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !172
  %87 = getelementptr inbounds i32, ptr %19, i64 2
  %88 = load i32, ptr %87, align 4, !tbaa !168
  %89 = icmp eq i32 %88, 21
  br i1 %89, label %90, label %98, !prof !176

90:                                               ; preds = %84
  %91 = getelementptr inbounds i32, ptr %19, i64 4
  %92 = load i32, ptr %91, align 4, !tbaa !168
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 5, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !177
  %96 = getelementptr inbounds double, ptr %95, i64 %93
  %97 = load double, ptr %96, align 8, !tbaa !178
  br label %100

98:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %87, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %99 = load double, ptr %10, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %100

100:                                              ; preds = %98, %90
  %101 = phi double [ %97, %90 ], [ %99, %98 ]
  %102 = getelementptr inbounds i32, ptr %19, i64 3
  %103 = load i32, ptr %102, align 4, !tbaa !168
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %87, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !168
  %107 = icmp eq i32 %106, 21
  br i1 %107, label %108, label %116, !prof !180

108:                                              ; preds = %100
  %109 = getelementptr inbounds i32, ptr %105, i64 2
  %110 = load i32, ptr %109, align 4, !tbaa !168
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 5, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !177
  %114 = getelementptr inbounds double, ptr %113, i64 %111
  %115 = load double, ptr %114, align 8, !tbaa !178
  br label %118

116:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %105, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %117 = load double, ptr %9, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %118

118:                                              ; preds = %108, %116
  %119 = phi double [ %115, %108 ], [ %117, %116 ]
  %120 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %101, double noundef %119)
  %121 = load ptr, ptr %86, align 8, !tbaa !166
  %122 = getelementptr inbounds ptr, ptr %121, i64 7
  %123 = load ptr, ptr %122, align 8
  tail call void %123(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %86, double noundef %120), !prof !181
  br label %408

124:                                              ; preds = %18
  %125 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !172
  %127 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %128 = load ptr, ptr %126, align 8, !tbaa !166
  %129 = getelementptr inbounds ptr, ptr %128, i64 7
  %130 = load ptr, ptr %129, align 8
  tail call void %130(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %126, double noundef %127)
  br label %408

131:                                              ; preds = %18
  %132 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !172
  %134 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %135 = load ptr, ptr %133, align 8, !tbaa !166
  %136 = getelementptr inbounds ptr, ptr %135, i64 7
  %137 = load ptr, ptr %136, align 8
  tail call void %137(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %133, double noundef %134)
  br label %408

138:                                              ; preds = %18
  %139 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !172
  %141 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %142 = load ptr, ptr %140, align 8, !tbaa !166
  %143 = getelementptr inbounds ptr, ptr %142, i64 7
  %144 = load ptr, ptr %143, align 8
  tail call void %144(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %140, double noundef %141)
  br label %408

145:                                              ; preds = %18
  %146 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !172
  %148 = getelementptr inbounds i32, ptr %19, i64 2
  %149 = load i32, ptr %148, align 4, !tbaa !168
  %150 = icmp eq i32 %149, 21
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = getelementptr inbounds i32, ptr %19, i64 4
  %153 = load i32, ptr %152, align 4, !tbaa !168
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 5, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !177
  %157 = getelementptr inbounds double, ptr %156, i64 %154
  %158 = load double, ptr %157, align 8, !tbaa !178
  br label %161

159:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %148, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %160 = load double, ptr %15, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br label %161

161:                                              ; preds = %151, %159
  %162 = phi double [ %158, %151 ], [ %160, %159 ]
  %163 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %162)
  %164 = load ptr, ptr %147, align 8, !tbaa !166
  %165 = getelementptr inbounds ptr, ptr %164, i64 7
  %166 = load ptr, ptr %165, align 8
  tail call void %166(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %147, double noundef %163)
  br label %408

167:                                              ; preds = %18
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %408

168:                                              ; preds = %18
  %169 = getelementptr inbounds i32, ptr %19, i64 2
  %170 = load i32, ptr %169, align 4, !tbaa !168, !noalias !182
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !185, !noalias !182
  %174 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %173, i64 %171
  %175 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %176 = load i8, ptr %175, align 8, !tbaa !165, !range !186, !noalias !182, !noundef !187
  %177 = icmp eq i8 %176, 0
  %178 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !172, !noalias !182
  br i1 %177, label %184, label %180, !prof !188

180:                                              ; preds = %168
  %181 = load ptr, ptr %179, align 8, !tbaa !166, !noalias !182
  %182 = getelementptr inbounds ptr, ptr %181, i64 12
  %183 = load ptr, ptr %182, align 8, !noalias !182
  tail call void %183(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %179, ptr noundef nonnull align 8 dereferenceable(41) %174), !prof !189
  br label %408

184:                                              ; preds = %168
  %185 = load ptr, ptr %174, align 8, !tbaa !166, !noalias !182
  %186 = getelementptr inbounds ptr, ptr %185, i64 8
  %187 = load ptr, ptr %186, align 8, !noalias !182
  %188 = tail call noundef nonnull align 8 dereferenceable(36) ptr %187(ptr noundef nonnull align 8 dereferenceable(41) %174), !noalias !182
  %189 = load ptr, ptr %179, align 8, !tbaa !166, !noalias !182
  %190 = getelementptr inbounds ptr, ptr %189, i64 9
  %191 = load ptr, ptr %190, align 8, !noalias !182
  tail call void %191(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %179, ptr noundef nonnull align 8 dereferenceable(36) %188)
  br label %408

192:                                              ; preds = %18
  %193 = getelementptr inbounds i32, ptr %19, i64 2
  %194 = load i32, ptr %193, align 4, !tbaa !168, !noalias !190
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !185, !noalias !190
  %198 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %197, i64 %195
  %199 = getelementptr inbounds i32, ptr %19, i64 3
  %200 = load i32, ptr %199, align 4, !tbaa !168, !noalias !190
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %197, i64 %201
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !noalias !190
  %203 = load ptr, ptr %198, align 8, !tbaa !166, !noalias !190
  %204 = getelementptr inbounds ptr, ptr %203, i64 8
  %205 = load ptr, ptr %204, align 8, !noalias !190
  %206 = tail call noundef nonnull align 8 dereferenceable(36) ptr %205(ptr noundef nonnull align 8 dereferenceable(41) %198), !prof !193, !noalias !190
  %207 = load ptr, ptr %202, align 8, !tbaa !166, !noalias !190
  %208 = getelementptr inbounds ptr, ptr %207, i64 8
  %209 = load ptr, ptr %208, align 8, !noalias !190
  %210 = tail call noundef nonnull align 8 dereferenceable(36) ptr %209(ptr noundef nonnull align 8 dereferenceable(41) %202), !prof !193, !noalias !190
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(36) %206, ptr noundef nonnull align 8 dereferenceable(36) %210), !noalias !190
  %211 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !153, !noalias !190
  %213 = load ptr, ptr %4, align 8, !tbaa !166, !noalias !190
  %214 = getelementptr inbounds ptr, ptr %213, i64 28
  %215 = load ptr, ptr %214, align 8, !noalias !190
  invoke void %215(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %212)
          to label %220 unwind label %218, !prof !194

216:                                              ; preds = %391, %218
  %217 = phi { ptr, i32 } [ %219, %218 ], [ %392, %391 ]
  resume { ptr, i32 } %217

218:                                              ; preds = %192
  %219 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !190
  br label %216

220:                                              ; preds = %192
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !190
  br label %408

221:                                              ; preds = %18
  %222 = getelementptr inbounds i32, ptr %19, i64 2
  br label %18

223:                                              ; preds = %18
  %224 = getelementptr inbounds i32, ptr %19, i64 3
  %225 = load i32, ptr %224, align 4, !tbaa !168, !noalias !195
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !185, !noalias !195
  %229 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %228, i64 %226
  %230 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %231 = load i8, ptr %230, align 8, !tbaa !165, !range !186, !noalias !195, !noundef !187
  %232 = icmp eq i8 %231, 0
  %233 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !172, !noalias !195
  br i1 %232, label %239, label %235, !prof !198

235:                                              ; preds = %223
  %236 = load ptr, ptr %234, align 8, !tbaa !166, !noalias !195
  %237 = getelementptr inbounds ptr, ptr %236, i64 8
  %238 = load ptr, ptr %237, align 8, !noalias !195
  tail call void %238(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull align 8 dereferenceable(41) %229), !prof !199
  br label %408

239:                                              ; preds = %223
  %240 = load ptr, ptr %229, align 8, !tbaa !166, !noalias !195
  %241 = getelementptr inbounds ptr, ptr %240, i64 6
  %242 = load ptr, ptr %241, align 8, !noalias !195
  %243 = tail call noundef double %242(ptr noundef nonnull align 8 dereferenceable(41) %229), !noalias !195
  %244 = load ptr, ptr %234, align 8, !tbaa !166, !noalias !195
  %245 = getelementptr inbounds ptr, ptr %244, i64 7
  %246 = load ptr, ptr %245, align 8, !noalias !195
  tail call void %246(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %234, double noundef %243)
  br label %408

247:                                              ; preds = %18
  tail call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %408

248:                                              ; preds = %18
  tail call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %408

249:                                              ; preds = %18
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %408

250:                                              ; preds = %18
  %251 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !172
  %253 = load ptr, ptr %4, align 8, !tbaa !166
  %254 = getelementptr inbounds ptr, ptr %253, i64 14
  %255 = load ptr, ptr %254, align 8
  %256 = tail call noundef i32 %255(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %257 = uitofp i32 %256 to double
  %258 = load ptr, ptr %252, align 8, !tbaa !166
  %259 = getelementptr inbounds ptr, ptr %258, i64 7
  %260 = load ptr, ptr %259, align 8
  tail call void %260(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %252, double noundef %257)
  br label %408

261:                                              ; preds = %18
  %262 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !172
  %264 = load ptr, ptr %4, align 8, !tbaa !166
  %265 = getelementptr inbounds ptr, ptr %264, i64 13
  %266 = load ptr, ptr %265, align 8
  %267 = tail call noundef i32 %266(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %268 = uitofp i32 %267 to double
  %269 = load ptr, ptr %263, align 8, !tbaa !166
  %270 = getelementptr inbounds ptr, ptr %269, i64 7
  %271 = load ptr, ptr %270, align 8
  tail call void %271(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %263, double noundef %268)
  br label %408

272:                                              ; preds = %18
  %273 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !172
  %275 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %276 = load ptr, ptr %274, align 8, !tbaa !166
  %277 = getelementptr inbounds ptr, ptr %276, i64 7
  %278 = load ptr, ptr %277, align 8
  tail call void %278(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %274, double noundef %275)
  br label %408

279:                                              ; preds = %18
  %280 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #19
  %282 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %282, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %283 = load i8, ptr %14, align 1, !tbaa !200, !range !186, !noundef !187
  %284 = icmp eq i8 %283, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  %285 = load ptr, ptr %281, align 8, !tbaa !166
  %286 = getelementptr inbounds ptr, ptr %285, i64 3
  %287 = load ptr, ptr %286, align 8
  tail call void %287(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %281, i1 noundef zeroext %284)
  br label %408

288:                                              ; preds = %18
  %289 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !172
  %291 = load ptr, ptr %290, align 8, !tbaa !166
  %292 = getelementptr inbounds ptr, ptr %291, i64 3
  %293 = load ptr, ptr %292, align 8
  tail call void %293(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %290, i1 noundef zeroext true)
  br label %408

294:                                              ; preds = %18
  %295 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !172
  %297 = load ptr, ptr %296, align 8, !tbaa !166
  %298 = getelementptr inbounds ptr, ptr %297, i64 3
  %299 = load ptr, ptr %298, align 8
  tail call void %299(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %296, i1 noundef zeroext false)
  br label %408

300:                                              ; preds = %18
  %301 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #19
  %303 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %303, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %17)
  %304 = load i8, ptr %17, align 1, !tbaa !200, !range !186, !noundef !187
  %305 = icmp ne i8 %304, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #19
  %306 = load ptr, ptr %302, align 8, !tbaa !166
  %307 = getelementptr inbounds ptr, ptr %306, i64 3
  %308 = load ptr, ptr %307, align 8
  tail call void %308(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %302, i1 noundef zeroext %305)
  br label %408

309:                                              ; preds = %18
  %310 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !172
  %312 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %313 = load ptr, ptr %311, align 8, !tbaa !166
  %314 = getelementptr inbounds ptr, ptr %313, i64 13
  %315 = load ptr, ptr %314, align 8
  tail call void %315(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %311, ptr noundef nonnull align 8 dereferenceable(36) %312)
  br label %408

316:                                              ; preds = %18
  %317 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !172
  %319 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %320 = load ptr, ptr %318, align 8, !tbaa !166
  %321 = getelementptr inbounds ptr, ptr %320, i64 13
  %322 = load ptr, ptr %321, align 8
  tail call void %322(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %318, ptr noundef nonnull align 8 dereferenceable(36) %319)
  br label %408

323:                                              ; preds = %18
  %324 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !172
  %326 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %2)
  %327 = load ptr, ptr %325, align 8, !tbaa !166
  %328 = getelementptr inbounds ptr, ptr %327, i64 13
  %329 = load ptr, ptr %328, align 8
  tail call void %329(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %325, ptr noundef nonnull align 8 dereferenceable(36) %326)
  br label %408

330:                                              ; preds = %18
  %331 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !172
  %333 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %334 = load ptr, ptr %332, align 8, !tbaa !166
  %335 = getelementptr inbounds ptr, ptr %334, i64 13
  %336 = load ptr, ptr %335, align 8
  tail call void %336(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %332, ptr noundef nonnull align 8 dereferenceable(36) %333)
  br label %408

337:                                              ; preds = %18
  %338 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  %340 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %340, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %341 = load double, ptr %13, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %342 = tail call noundef double @llvm.floor.f64(double %341)
  %343 = load ptr, ptr %339, align 8, !tbaa !166
  %344 = getelementptr inbounds ptr, ptr %343, i64 7
  %345 = load ptr, ptr %344, align 8
  tail call void %345(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %339, double noundef %342)
  br label %408

346:                                              ; preds = %18
  %347 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  %349 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %349, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %350 = load double, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  %351 = tail call noundef double @llvm.ceil.f64(double %350)
  %352 = load ptr, ptr %348, align 8, !tbaa !166
  %353 = getelementptr inbounds ptr, ptr %352, i64 7
  %354 = load ptr, ptr %353, align 8
  tail call void %354(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %348, double noundef %351)
  br label %408

355:                                              ; preds = %18
  %356 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %358 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %358, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %359 = load double, ptr %11, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %360 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %359)
  %361 = load ptr, ptr %357, align 8, !tbaa !166
  %362 = getelementptr inbounds ptr, ptr %361, i64 7
  %363 = load ptr, ptr %362, align 8
  tail call void %363(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %357, double noundef %360)
  br label %408

364:                                              ; preds = %18
  %365 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !172
  %367 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %368 = load ptr, ptr %366, align 8, !tbaa !166
  %369 = getelementptr inbounds ptr, ptr %368, i64 7
  %370 = load ptr, ptr %369, align 8
  tail call void %370(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %366, double noundef %367)
  br label %408

371:                                              ; preds = %18
  %372 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  %374 = getelementptr inbounds i32, ptr %19, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %374, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %375 = load double, ptr %16, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  %376 = load ptr, ptr %373, align 8, !tbaa !166
  %377 = getelementptr inbounds ptr, ptr %376, i64 7
  %378 = load ptr, ptr %377, align 8
  tail call void %378(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %373, double noundef %375)
  br label %408

379:                                              ; preds = %18
  %380 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !172
  %382 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %2)
  %383 = load ptr, ptr %381, align 8, !tbaa !166
  %384 = getelementptr inbounds ptr, ptr %383, i64 7
  %385 = load ptr, ptr %384, align 8
  tail call void %385(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %381, double noundef %382)
  br label %408

386:                                              ; preds = %18
  %387 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %389 = getelementptr inbounds i32, ptr %19, i64 2
  store i64 17, ptr %7, align 8, !tbaa !201
  %390 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 0, ptr %390, align 8, !tbaa !201
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %389, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval({ i64, i64 }) align 8 %7)
          to label %393 unwind label %391, !prof !202

391:                                              ; preds = %386
  %392 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %216

393:                                              ; preds = %386
  %394 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %6, i64 0, i32 1
  %395 = load i64, ptr %394, align 8, !tbaa !203
  %396 = uitofp i64 %395 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %397 = load ptr, ptr %388, align 8, !tbaa !166
  %398 = getelementptr inbounds ptr, ptr %397, i64 7
  %399 = load ptr, ptr %398, align 8
  call void %399(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %388, double noundef %396), !prof !209
  br label %408

400:                                              ; preds = %18
  %401 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !172
  %403 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %404 = load ptr, ptr %402, align 8, !tbaa !166
  %405 = getelementptr inbounds ptr, ptr %404, i64 7
  %406 = load ptr, ptr %405, align 8
  tail call void %406(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %402, double noundef %403)
  br label %408

407:                                              ; preds = %18
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %19)
  store ptr null, ptr %0, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  br label %408

408:                                              ; preds = %239, %235, %184, %180, %407, %400, %393, %379, %371, %364, %355, %346, %337, %330, %323, %316, %309, %300, %294, %288, %279, %272, %261, %250, %249, %248, %247, %220, %167, %161, %138, %131, %124, %118, %77, %70, %63, %56, %49, %42, %35, %28, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 29
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %10 = load ptr, ptr %3, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2)
  %13 = load ptr, ptr %3, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %16 unwind label %35

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %20 unwind label %37

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %20
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 30
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %27
  ret void

35:                                               ; preds = %5
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %45

37:                                               ; preds = %16
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %3, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #20
  unreachable

45:                                               ; preds = %37, %35
  %46 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %47 = load ptr, ptr %3, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 30
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %53 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #20
  unreachable

53:                                               ; preds = %45
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8, align 1
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %15 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  br label %16

16:                                               ; preds = %193, %5
  %17 = phi ptr [ %2, %5 ], [ %194, %193 ]
  %18 = load i32, ptr %17, align 4, !tbaa !168
  switch i32 %18, label %516 [
    i32 2, label %19
    i32 3, label %22
    i32 4, label %25
    i32 5, label %28
    i32 6, label %31
    i32 7, label %34
    i32 8, label %37
    i32 9, label %40
    i32 10, label %43
    i32 11, label %60
    i32 12, label %77
    i32 13, label %94
    i32 14, label %111
    i32 15, label %128
    i32 17, label %160
    i32 18, label %161
    i32 19, label %173
    i32 20, label %193
    i32 21, label %195
    i32 23, label %207
    i32 24, label %227
    i32 25, label %247
    i32 56, label %281
    i32 57, label %302
    i32 58, label %323
    i32 59, label %340
    i32 60, label %344
    i32 61, label %345
    i32 62, label %346
    i32 63, label %349
    i32 64, label %355
    i32 65, label %361
    i32 66, label %367
    i32 67, label %373
    i32 68, label %392
    i32 69, label %411
    i32 70, label %430
    i32 71, label %447
    i32 74, label %465
    i32 75, label %482
    i32 78, label %499
  ], !prof !213

19:                                               ; preds = %16
  %20 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %21 = zext i1 %20 to i8
  store i8 %21, ptr %4, align 1, !tbaa !200
  br label %517

22:                                               ; preds = %16
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %24 = zext i1 %23 to i8
  store i8 %24, ptr %4, align 1, !tbaa !200
  br label %517

25:                                               ; preds = %16
  %26 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %4, align 1, !tbaa !200
  br label %517

28:                                               ; preds = %16
  %29 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %4, align 1, !tbaa !200
  br label %517

31:                                               ; preds = %16
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %4, align 1, !tbaa !200
  br label %517

34:                                               ; preds = %16
  %35 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %4, align 1, !tbaa !200
  br label %517

37:                                               ; preds = %16
  %38 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %39 = zext i1 %38 to i8
  store i8 %39, ptr %4, align 1, !tbaa !200
  br label %517

40:                                               ; preds = %16
  %41 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %42 = zext i1 %41 to i8
  store i8 %42, ptr %4, align 1, !tbaa !200
  br label %517

43:                                               ; preds = %16
  %44 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %45 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %46 = bitcast double %44 to i64
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %45, %47
  %49 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %50 = lshr i64 %46, 32
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %49, %51
  %53 = select i1 %48, i1 %52, i1 false
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %44, double noundef 0.000000e+00)
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %43, %54
  %59 = phi i8 [ 0, %43 ], [ %57, %54 ]
  store i8 %59, ptr %4, align 1, !tbaa !200
  br label %517

60:                                               ; preds = %16
  %61 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %62 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %63 = bitcast double %61 to i64
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %62, %64
  %66 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %67 = lshr i64 %63, 32
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %66, %68
  %70 = select i1 %65, i1 %69, i1 false
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %61, double noundef 0.000000e+00)
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %60, %71
  %76 = phi i8 [ 0, %60 ], [ %74, %71 ]
  store i8 %76, ptr %4, align 1, !tbaa !200
  br label %517

77:                                               ; preds = %16
  %78 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %79 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %80 = bitcast double %78 to i64
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %79, %81
  %83 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %84 = lshr i64 %80, 32
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %83, %85
  %87 = select i1 %82, i1 %86, i1 false
  br i1 %87, label %92, label %88

88:                                               ; preds = %77
  %89 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %78, double noundef 0.000000e+00)
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %77, %88
  %93 = phi i8 [ 0, %77 ], [ %91, %88 ]
  store i8 %93, ptr %4, align 1, !tbaa !200
  br label %517

94:                                               ; preds = %16
  %95 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %96 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %97 = bitcast double %95 to i64
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %96, %98
  %100 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %101 = lshr i64 %97, 32
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %100, %102
  %104 = select i1 %99, i1 %103, i1 false
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %95, double noundef 0.000000e+00)
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i8
  br label %109

109:                                              ; preds = %94, %105
  %110 = phi i8 [ 0, %94 ], [ %108, %105 ]
  store i8 %110, ptr %4, align 1, !tbaa !200
  br label %517

111:                                              ; preds = %16
  %112 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %113 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %114 = bitcast double %112 to i64
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %113, %115
  %117 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %118 = lshr i64 %114, 32
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %117, %119
  %121 = select i1 %116, i1 %120, i1 false
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %112, double noundef 0.000000e+00)
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i8
  br label %126

126:                                              ; preds = %111, %122
  %127 = phi i8 [ 0, %111 ], [ %125, %122 ]
  store i8 %127, ptr %4, align 1, !tbaa !200
  br label %517

128:                                              ; preds = %16
  %129 = getelementptr inbounds i32, ptr %17, i64 2
  %130 = load i32, ptr %129, align 4, !tbaa !168
  %131 = icmp eq i32 %130, 21
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = getelementptr inbounds i32, ptr %17, i64 4
  %134 = load i32, ptr %133, align 4, !tbaa !168
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !177
  %138 = getelementptr inbounds double, ptr %137, i64 %135
  %139 = load double, ptr %138, align 8, !tbaa !178
  br label %142

140:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %129, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %141 = load double, ptr %10, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %142

142:                                              ; preds = %132, %140
  %143 = phi double [ %139, %132 ], [ %141, %140 ]
  %144 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %143)
  %145 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %146 = bitcast double %144 to i64
  %147 = trunc i64 %146 to i32
  %148 = icmp eq i32 %145, %147
  %149 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %150 = lshr i64 %146, 32
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %149, %151
  %153 = select i1 %148, i1 %152, i1 false
  br i1 %153, label %158, label %154

154:                                              ; preds = %142
  %155 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %144, double noundef 0.000000e+00)
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i8
  br label %158

158:                                              ; preds = %142, %154
  %159 = phi i8 [ 0, %142 ], [ %157, %154 ]
  store i8 %159, ptr %4, align 1, !tbaa !200
  br label %517

160:                                              ; preds = %16
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  br label %517

161:                                              ; preds = %16
  %162 = getelementptr inbounds i32, ptr %17, i64 2
  %163 = load i32, ptr %162, align 4, !tbaa !168
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !185
  %167 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %166, i64 %164
  %168 = load ptr, ptr %167, align 8, !tbaa !166
  %169 = getelementptr inbounds ptr, ptr %168, i64 7
  %170 = load ptr, ptr %169, align 8
  %171 = tail call noundef zeroext i1 %170(ptr noundef nonnull align 8 dereferenceable(41) %167)
  %172 = zext i1 %171 to i8
  store i8 %172, ptr %4, align 1, !tbaa !200
  br label %517

173:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %174 = load ptr, ptr %13, align 8, !tbaa !210
  %175 = load ptr, ptr %174, align 8, !tbaa !166
  %176 = getelementptr inbounds ptr, ptr %175, i64 7
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef zeroext i1 %177(ptr noundef nonnull align 8 dereferenceable(24) %174)
          to label %179 unwind label %186

179:                                              ; preds = %173
  %180 = zext i1 %178 to i8
  store i8 %180, ptr %4, align 1, !tbaa !200
  %181 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %181)
          to label %185 unwind label %182

182:                                              ; preds = %179
  %183 = landingpad { ptr, i32 }
          catch ptr null
  %184 = extractvalue { ptr, i32 } %183, 0
  call void @__clang_call_terminate(ptr %184) #20
  unreachable

185:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %517

186:                                              ; preds = %173
  %187 = landingpad { ptr, i32 }
          cleanup
  %188 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %188)
          to label %192 unwind label %189

189:                                              ; preds = %186
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #20
  unreachable

192:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %279

193:                                              ; preds = %16
  %194 = getelementptr inbounds i32, ptr %17, i64 2
  br label %16

195:                                              ; preds = %16
  %196 = getelementptr inbounds i32, ptr %17, i64 3
  %197 = load i32, ptr %196, align 4, !tbaa !168
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !185
  %201 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %200, i64 %198
  %202 = load ptr, ptr %201, align 8, !tbaa !166
  %203 = getelementptr inbounds ptr, ptr %202, i64 7
  %204 = load ptr, ptr %203, align 8
  %205 = tail call noundef zeroext i1 %204(ptr noundef nonnull align 8 dereferenceable(41) %201)
  %206 = zext i1 %205 to i8
  store i8 %206, ptr %4, align 1, !tbaa !200
  br label %517

207:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %208 = load ptr, ptr %14, align 8, !tbaa !210
  %209 = load ptr, ptr %208, align 8, !tbaa !166
  %210 = getelementptr inbounds ptr, ptr %209, i64 7
  %211 = load ptr, ptr %210, align 8
  %212 = invoke noundef zeroext i1 %211(ptr noundef nonnull align 8 dereferenceable(24) %208)
          to label %213 unwind label %220

213:                                              ; preds = %207
  %214 = zext i1 %212 to i8
  store i8 %214, ptr %4, align 1, !tbaa !200
  %215 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %215)
          to label %219 unwind label %216

216:                                              ; preds = %213
  %217 = landingpad { ptr, i32 }
          catch ptr null
  %218 = extractvalue { ptr, i32 } %217, 0
  call void @__clang_call_terminate(ptr %218) #20
  unreachable

219:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %517

220:                                              ; preds = %207
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %222)
          to label %226 unwind label %223

223:                                              ; preds = %220
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  call void @__clang_call_terminate(ptr %225) #20
  unreachable

226:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %279

227:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %228 = load ptr, ptr %15, align 8, !tbaa !210
  %229 = load ptr, ptr %228, align 8, !tbaa !166
  %230 = getelementptr inbounds ptr, ptr %229, i64 7
  %231 = load ptr, ptr %230, align 8
  %232 = invoke noundef zeroext i1 %231(ptr noundef nonnull align 8 dereferenceable(24) %228)
          to label %233 unwind label %240

233:                                              ; preds = %227
  %234 = zext i1 %232 to i8
  store i8 %234, ptr %4, align 1, !tbaa !200
  %235 = load ptr, ptr %15, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %235)
          to label %239 unwind label %236

236:                                              ; preds = %233
  %237 = landingpad { ptr, i32 }
          catch ptr null
  %238 = extractvalue { ptr, i32 } %237, 0
  call void @__clang_call_terminate(ptr %238) #20
  unreachable

239:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br label %517

240:                                              ; preds = %227
  %241 = landingpad { ptr, i32 }
          cleanup
  %242 = load ptr, ptr %15, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %242)
          to label %246 unwind label %243

243:                                              ; preds = %240
  %244 = landingpad { ptr, i32 }
          catch ptr null
  %245 = extractvalue { ptr, i32 } %244, 0
  call void @__clang_call_terminate(ptr %245) #20
  unreachable

246:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br label %279

247:                                              ; preds = %16
  %248 = load ptr, ptr %3, align 8, !tbaa !166
  %249 = getelementptr inbounds ptr, ptr %248, i64 21
  %250 = load ptr, ptr %249, align 8
  %251 = tail call noundef ptr %250(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !214
  %252 = getelementptr inbounds i32, ptr %17, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %252, ptr noundef nonnull align 8 dereferenceable(44) %251)
          to label %253 unwind label %268, !prof !215

253:                                              ; preds = %247
  %254 = load ptr, ptr %251, align 8, !tbaa !166
  %255 = getelementptr inbounds ptr, ptr %254, i64 3
  %256 = load ptr, ptr %255, align 8
  %257 = invoke noundef i32 %256(ptr noundef nonnull align 8 dereferenceable(8) %251)
          to label %258 unwind label %268, !prof !216

258:                                              ; preds = %253
  %259 = icmp ne i32 %257, 0
  %260 = zext i1 %259 to i8
  store i8 %260, ptr %4, align 1, !tbaa !200
  %261 = load ptr, ptr %3, align 8, !tbaa !166
  %262 = getelementptr inbounds ptr, ptr %261, i64 22
  %263 = load ptr, ptr %262, align 8
  %264 = invoke noundef zeroext i1 %263(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %251)
          to label %517 unwind label %265, !prof !217

265:                                              ; preds = %258
  %266 = landingpad { ptr, i32 }
          catch ptr null
  %267 = extractvalue { ptr, i32 } %266, 0
  tail call void @__clang_call_terminate(ptr %267) #20
  unreachable

268:                                              ; preds = %253, %247
  %269 = landingpad { ptr, i32 }
          cleanup
  %270 = icmp eq ptr %251, null
  br i1 %270, label %279, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %3, align 8, !tbaa !166
  %273 = getelementptr inbounds ptr, ptr %272, i64 22
  %274 = load ptr, ptr %273, align 8
  %275 = invoke noundef zeroext i1 %274(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %251)
          to label %279 unwind label %276

276:                                              ; preds = %271
  %277 = landingpad { ptr, i32 }
          catch ptr null
  %278 = extractvalue { ptr, i32 } %277, 0
  tail call void @__clang_call_terminate(ptr %278) #20
  unreachable

279:                                              ; preds = %192, %226, %246, %268, %271
  %280 = phi { ptr, i32 } [ %269, %271 ], [ %269, %268 ], [ %241, %246 ], [ %221, %226 ], [ %187, %192 ]
  resume { ptr, i32 } %280

281:                                              ; preds = %16
  %282 = load ptr, ptr %3, align 8, !tbaa !166
  %283 = getelementptr inbounds ptr, ptr %282, i64 14
  %284 = load ptr, ptr %283, align 8
  %285 = tail call noundef i32 %284(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %286 = uitofp i32 %285 to double
  %287 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %288 = bitcast double %286 to i64
  %289 = trunc i64 %288 to i32
  %290 = icmp eq i32 %287, %289
  %291 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %292 = lshr i64 %288, 32
  %293 = trunc i64 %292 to i32
  %294 = icmp eq i32 %291, %293
  %295 = select i1 %290, i1 %294, i1 false
  br i1 %295, label %300, label %296

296:                                              ; preds = %281
  %297 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %286, double noundef 0.000000e+00)
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i8
  br label %300

300:                                              ; preds = %281, %296
  %301 = phi i8 [ 0, %281 ], [ %299, %296 ]
  store i8 %301, ptr %4, align 1, !tbaa !200
  br label %517

302:                                              ; preds = %16
  %303 = load ptr, ptr %3, align 8, !tbaa !166
  %304 = getelementptr inbounds ptr, ptr %303, i64 13
  %305 = load ptr, ptr %304, align 8
  %306 = tail call noundef i32 %305(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %307 = uitofp i32 %306 to double
  %308 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %309 = bitcast double %307 to i64
  %310 = trunc i64 %309 to i32
  %311 = icmp eq i32 %308, %310
  %312 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %313 = lshr i64 %309, 32
  %314 = trunc i64 %313 to i32
  %315 = icmp eq i32 %312, %314
  %316 = select i1 %311, i1 %315, i1 false
  br i1 %316, label %321, label %317

317:                                              ; preds = %302
  %318 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %307, double noundef 0.000000e+00)
  %319 = xor i1 %318, true
  %320 = zext i1 %319 to i8
  br label %321

321:                                              ; preds = %302, %317
  %322 = phi i8 [ 0, %302 ], [ %320, %317 ]
  store i8 %322, ptr %4, align 1, !tbaa !200
  br label %517

323:                                              ; preds = %16
  %324 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %325 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %326 = bitcast double %324 to i64
  %327 = trunc i64 %326 to i32
  %328 = icmp eq i32 %325, %327
  %329 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %330 = lshr i64 %326, 32
  %331 = trunc i64 %330 to i32
  %332 = icmp eq i32 %329, %331
  %333 = select i1 %328, i1 %332, i1 false
  br i1 %333, label %338, label %334

334:                                              ; preds = %323
  %335 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %324, double noundef 0.000000e+00)
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i8
  br label %338

338:                                              ; preds = %323, %334
  %339 = phi i8 [ 0, %323 ], [ %337, %334 ]
  store i8 %339, ptr %4, align 1, !tbaa !200
  br label %517

340:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  %341 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %341, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %342 = load i8, ptr %9, align 1, !tbaa !200, !range !186, !noundef !187
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  %343 = xor i8 %342, 1
  store i8 %343, ptr %4, align 1, !tbaa !200
  br label %517

344:                                              ; preds = %16
  store i8 1, ptr %4, align 1, !tbaa !200
  br label %517

345:                                              ; preds = %16
  store i8 0, ptr %4, align 1, !tbaa !200
  br label %517

346:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  %347 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %347, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  %348 = load i8, ptr %12, align 1, !tbaa !200, !range !186, !noundef !187
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  store i8 %348, ptr %4, align 1, !tbaa !200
  br label %517

349:                                              ; preds = %16
  %350 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %351 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %350, i64 0, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !218
  %353 = icmp ne i32 %352, 0
  %354 = zext i1 %353 to i8
  store i8 %354, ptr %4, align 1, !tbaa !200
  br label %517

355:                                              ; preds = %16
  %356 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %357 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %356, i64 0, i32 1
  %358 = load i32, ptr %357, align 8, !tbaa !218
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i8
  store i8 %360, ptr %4, align 1, !tbaa !200
  br label %517

361:                                              ; preds = %16
  %362 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %363 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %362, i64 0, i32 1
  %364 = load i32, ptr %363, align 8, !tbaa !218
  %365 = icmp ne i32 %364, 0
  %366 = zext i1 %365 to i8
  store i8 %366, ptr %4, align 1, !tbaa !200
  br label %517

367:                                              ; preds = %16
  %368 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %369 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %368, i64 0, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !218
  %371 = icmp ne i32 %370, 0
  %372 = zext i1 %371 to i8
  store i8 %372, ptr %4, align 1, !tbaa !200
  br label %517

373:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %374 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %374, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %375 = load double, ptr %8, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  %376 = tail call noundef double @llvm.floor.f64(double %375)
  %377 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %378 = bitcast double %376 to i64
  %379 = trunc i64 %378 to i32
  %380 = icmp eq i32 %377, %379
  %381 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %382 = lshr i64 %378, 32
  %383 = trunc i64 %382 to i32
  %384 = icmp eq i32 %381, %383
  %385 = select i1 %380, i1 %384, i1 false
  br i1 %385, label %390, label %386

386:                                              ; preds = %373
  %387 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %376, double noundef 0.000000e+00)
  %388 = xor i1 %387, true
  %389 = zext i1 %388 to i8
  br label %390

390:                                              ; preds = %373, %386
  %391 = phi i8 [ 0, %373 ], [ %389, %386 ]
  store i8 %391, ptr %4, align 1, !tbaa !200
  br label %517

392:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %393 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %393, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %394 = load double, ptr %7, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %395 = tail call noundef double @llvm.ceil.f64(double %394)
  %396 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %397 = bitcast double %395 to i64
  %398 = trunc i64 %397 to i32
  %399 = icmp eq i32 %396, %398
  %400 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %401 = lshr i64 %397, 32
  %402 = trunc i64 %401 to i32
  %403 = icmp eq i32 %400, %402
  %404 = select i1 %399, i1 %403, i1 false
  br i1 %404, label %409, label %405

405:                                              ; preds = %392
  %406 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %395, double noundef 0.000000e+00)
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i8
  br label %409

409:                                              ; preds = %392, %405
  %410 = phi i8 [ 0, %392 ], [ %408, %405 ]
  store i8 %410, ptr %4, align 1, !tbaa !200
  br label %517

411:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %412 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %412, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %413 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %414 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %413)
  %415 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %416 = bitcast double %414 to i64
  %417 = trunc i64 %416 to i32
  %418 = icmp eq i32 %415, %417
  %419 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %420 = lshr i64 %416, 32
  %421 = trunc i64 %420 to i32
  %422 = icmp eq i32 %419, %421
  %423 = select i1 %418, i1 %422, i1 false
  br i1 %423, label %428, label %424

424:                                              ; preds = %411
  %425 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %414, double noundef 0.000000e+00)
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i8
  br label %428

428:                                              ; preds = %411, %424
  %429 = phi i8 [ 0, %411 ], [ %427, %424 ]
  store i8 %429, ptr %4, align 1, !tbaa !200
  br label %517

430:                                              ; preds = %16
  %431 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %432 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %433 = bitcast double %431 to i64
  %434 = trunc i64 %433 to i32
  %435 = icmp eq i32 %432, %434
  %436 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %437 = lshr i64 %433, 32
  %438 = trunc i64 %437 to i32
  %439 = icmp eq i32 %436, %438
  %440 = select i1 %435, i1 %439, i1 false
  br i1 %440, label %445, label %441

441:                                              ; preds = %430
  %442 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %431, double noundef 0.000000e+00)
  %443 = xor i1 %442, true
  %444 = zext i1 %443 to i8
  br label %445

445:                                              ; preds = %430, %441
  %446 = phi i8 [ 0, %430 ], [ %444, %441 ]
  store i8 %446, ptr %4, align 1, !tbaa !200
  br label %517

447:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %448 = getelementptr inbounds i32, ptr %17, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %448, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %449 = load double, ptr %11, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %450 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %451 = bitcast double %449 to i64
  %452 = trunc i64 %451 to i32
  %453 = icmp eq i32 %450, %452
  %454 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %455 = lshr i64 %451, 32
  %456 = trunc i64 %455 to i32
  %457 = icmp eq i32 %454, %456
  %458 = select i1 %453, i1 %457, i1 false
  br i1 %458, label %463, label %459

459:                                              ; preds = %447
  %460 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %449, double noundef 0.000000e+00)
  %461 = xor i1 %460, true
  %462 = zext i1 %461 to i8
  br label %463

463:                                              ; preds = %447, %459
  %464 = phi i8 [ 0, %447 ], [ %462, %459 ]
  store i8 %464, ptr %4, align 1, !tbaa !200
  br label %517

465:                                              ; preds = %16
  %466 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %467 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %468 = bitcast double %466 to i64
  %469 = trunc i64 %468 to i32
  %470 = icmp eq i32 %467, %469
  %471 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %472 = lshr i64 %468, 32
  %473 = trunc i64 %472 to i32
  %474 = icmp eq i32 %471, %473
  %475 = select i1 %470, i1 %474, i1 false
  br i1 %475, label %480, label %476

476:                                              ; preds = %465
  %477 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %466, double noundef 0.000000e+00)
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i8
  br label %480

480:                                              ; preds = %465, %476
  %481 = phi i8 [ 0, %465 ], [ %479, %476 ]
  store i8 %481, ptr %4, align 1, !tbaa !200
  br label %517

482:                                              ; preds = %16
  %483 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %484 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %485 = bitcast double %483 to i64
  %486 = trunc i64 %485 to i32
  %487 = icmp eq i32 %484, %486
  %488 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %489 = lshr i64 %485, 32
  %490 = trunc i64 %489 to i32
  %491 = icmp eq i32 %488, %490
  %492 = select i1 %487, i1 %491, i1 false
  br i1 %492, label %497, label %493

493:                                              ; preds = %482
  %494 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %483, double noundef 0.000000e+00)
  %495 = xor i1 %494, true
  %496 = zext i1 %495 to i8
  br label %497

497:                                              ; preds = %482, %493
  %498 = phi i8 [ 0, %482 ], [ %496, %493 ]
  store i8 %498, ptr %4, align 1, !tbaa !200
  br label %517

499:                                              ; preds = %16
  %500 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %501 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !201
  %502 = bitcast double %500 to i64
  %503 = trunc i64 %502 to i32
  %504 = icmp eq i32 %501, %503
  %505 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %506 = lshr i64 %502, 32
  %507 = trunc i64 %506 to i32
  %508 = icmp eq i32 %505, %507
  %509 = select i1 %504, i1 %508, i1 false
  br i1 %509, label %514, label %510

510:                                              ; preds = %499
  %511 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %500, double noundef 0.000000e+00)
  %512 = xor i1 %511, true
  %513 = zext i1 %512 to i8
  br label %514

514:                                              ; preds = %499, %510
  %515 = phi i8 [ 0, %499 ], [ %513, %510 ]
  store i8 %515, ptr %4, align 1, !tbaa !200
  br label %517

516:                                              ; preds = %16
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %17)
  br label %517

517:                                              ; preds = %258, %516, %514, %497, %480, %463, %445, %428, %409, %390, %367, %361, %355, %349, %346, %345, %344, %340, %338, %321, %300, %239, %219, %195, %185, %161, %160, %158, %126, %109, %92, %75, %58, %40, %37, %34, %31, %28, %25, %22, %19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 29
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !222
  %10 = load ptr, ptr %3, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2), !prof !223
  %13 = load ptr, ptr %3, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %16 unwind label %35, !prof !224

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %20 unwind label %37, !prof !225

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %27 unwind label %24, !prof !226

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %20
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 30
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %34 unwind label %31, !prof !223

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %27
  ret void

35:                                               ; preds = %5
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %45

37:                                               ; preds = %16
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %3, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #20
  unreachable

45:                                               ; preds = %37, %35
  %46 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %47 = load ptr, ptr %3, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 30
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %53 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #20
  unreachable

53:                                               ; preds = %45
  resume { ptr, i32 } %46
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !227 {
  %6 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i8, align 1
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i8, align 1
  %25 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %26 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %27 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  br label %28

28:                                               ; preds = %278, %5
  %29 = phi ptr [ %2, %5 ], [ %279, %278 ]
  %30 = load i32, ptr %29, align 4, !tbaa !168
  switch i32 %30, label %434 [
    i32 2, label %31
    i32 3, label %34
    i32 4, label %37
    i32 5, label %40
    i32 6, label %43
    i32 7, label %46
    i32 8, label %49
    i32 9, label %52
    i32 10, label %55
    i32 11, label %90
    i32 12, label %125
    i32 13, label %160
    i32 14, label %195
    i32 15, label %230
    i32 17, label %247
    i32 18, label %248
    i32 19, label %259
    i32 20, label %278
    i32 21, label %280
    i32 23, label %291
    i32 24, label %310
    i32 25, label %329
    i32 56, label %358
    i32 57, label %364
    i32 58, label %370
    i32 59, label %372
    i32 60, label %377
    i32 61, label %378
    i32 62, label %379
    i32 63, label %384
    i32 64, label %389
    i32 65, label %394
    i32 66, label %399
    i32 67, label %404
    i32 68, label %408
    i32 69, label %412
    i32 70, label %416
    i32 71, label %418
    i32 74, label %421
    i32 75, label %423
    i32 78, label %432
  ], !prof !228

31:                                               ; preds = %28
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %33 = select i1 %32, double 1.000000e+00, double 0.000000e+00
  store double %33, ptr %4, align 8, !tbaa !178
  br label %435

34:                                               ; preds = %28
  %35 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %36 = select i1 %35, double 1.000000e+00, double 0.000000e+00
  store double %36, ptr %4, align 8, !tbaa !178
  br label %435

37:                                               ; preds = %28
  %38 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %39 = select i1 %38, double 1.000000e+00, double 0.000000e+00
  store double %39, ptr %4, align 8, !tbaa !178
  br label %435

40:                                               ; preds = %28
  %41 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %42 = select i1 %41, double 1.000000e+00, double 0.000000e+00
  store double %42, ptr %4, align 8, !tbaa !178
  br label %435

43:                                               ; preds = %28
  %44 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %45 = select i1 %44, double 1.000000e+00, double 0.000000e+00
  store double %45, ptr %4, align 8, !tbaa !178
  br label %435

46:                                               ; preds = %28
  %47 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %48 = select i1 %47, double 1.000000e+00, double 0.000000e+00
  store double %48, ptr %4, align 8, !tbaa !178
  br label %435

49:                                               ; preds = %28
  %50 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %51 = select i1 %50, double 1.000000e+00, double 0.000000e+00
  store double %51, ptr %4, align 8, !tbaa !178
  br label %435

52:                                               ; preds = %28
  %53 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %54 = select i1 %53, double 1.000000e+00, double 0.000000e+00
  store double %54, ptr %4, align 8, !tbaa !178
  br label %435

55:                                               ; preds = %28
  %56 = getelementptr inbounds i32, ptr %29, i64 2
  %57 = load i32, ptr %56, align 4, !tbaa !168
  %58 = icmp eq i32 %57, 21
  br i1 %58, label %59, label %67, !prof !229

59:                                               ; preds = %55
  %60 = getelementptr inbounds i32, ptr %29, i64 4
  %61 = load i32, ptr %60, align 4, !tbaa !168
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !177
  %65 = getelementptr inbounds double, ptr %64, i64 %62
  %66 = load double, ptr %65, align 8, !tbaa !178
  br label %69

67:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %56, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %68 = load double, ptr %21, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #19
  br label %69

69:                                               ; preds = %59, %67
  %70 = phi double [ %66, %59 ], [ %68, %67 ]
  %71 = getelementptr inbounds i32, ptr %29, i64 3
  %72 = load i32, ptr %71, align 4, !tbaa !168
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %56, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !168
  %76 = icmp eq i32 %75, 21
  br i1 %76, label %77, label %85, !prof !229

77:                                               ; preds = %69
  %78 = getelementptr inbounds i32, ptr %74, i64 2
  %79 = load i32, ptr %78, align 4, !tbaa !168
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !177
  %83 = getelementptr inbounds double, ptr %82, i64 %80
  %84 = load double, ptr %83, align 8, !tbaa !178
  br label %87

85:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %74, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %22)
  %86 = load double, ptr %22, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #19
  br label %87

87:                                               ; preds = %77, %85
  %88 = phi double [ %84, %77 ], [ %86, %85 ]
  %89 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %70, double noundef %88)
  store double %89, ptr %4, align 8, !tbaa !178
  br label %435

90:                                               ; preds = %28
  %91 = getelementptr inbounds i32, ptr %29, i64 2
  %92 = load i32, ptr %91, align 4, !tbaa !168
  %93 = icmp eq i32 %92, 21
  br i1 %93, label %94, label %102, !prof !176

94:                                               ; preds = %90
  %95 = getelementptr inbounds i32, ptr %29, i64 4
  %96 = load i32, ptr %95, align 4, !tbaa !168
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !177
  %100 = getelementptr inbounds double, ptr %99, i64 %97
  %101 = load double, ptr %100, align 8, !tbaa !178
  br label %104

102:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %91, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %103 = load double, ptr %15, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi double [ %101, %94 ], [ %103, %102 ]
  %106 = getelementptr inbounds i32, ptr %29, i64 3
  %107 = load i32, ptr %106, align 4, !tbaa !168
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %91, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !168
  %111 = icmp eq i32 %110, 21
  br i1 %111, label %112, label %120, !prof !180

112:                                              ; preds = %104
  %113 = getelementptr inbounds i32, ptr %109, i64 2
  %114 = load i32, ptr %113, align 4, !tbaa !168
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !177
  %118 = getelementptr inbounds double, ptr %117, i64 %115
  %119 = load double, ptr %118, align 8, !tbaa !178
  br label %122

120:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %109, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %121 = load double, ptr %14, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %122

122:                                              ; preds = %112, %120
  %123 = phi double [ %119, %112 ], [ %121, %120 ]
  %124 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %105, double noundef %123)
  store double %124, ptr %4, align 8, !tbaa !178
  br label %435

125:                                              ; preds = %28
  %126 = getelementptr inbounds i32, ptr %29, i64 2
  %127 = load i32, ptr %126, align 4, !tbaa !168
  %128 = icmp eq i32 %127, 21
  br i1 %128, label %129, label %137, !prof !229

129:                                              ; preds = %125
  %130 = getelementptr inbounds i32, ptr %29, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !168
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !177
  %135 = getelementptr inbounds double, ptr %134, i64 %132
  %136 = load double, ptr %135, align 8, !tbaa !178
  br label %139

137:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %126, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %138 = load double, ptr %13, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %139

139:                                              ; preds = %137, %129
  %140 = phi double [ %136, %129 ], [ %138, %137 ]
  %141 = getelementptr inbounds i32, ptr %29, i64 3
  %142 = load i32, ptr %141, align 4, !tbaa !168
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %126, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !168
  %146 = icmp eq i32 %145, 21
  br i1 %146, label %147, label %155, !prof !230

147:                                              ; preds = %139
  %148 = getelementptr inbounds i32, ptr %144, i64 2
  %149 = load i32, ptr %148, align 4, !tbaa !168
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !177
  %153 = getelementptr inbounds double, ptr %152, i64 %150
  %154 = load double, ptr %153, align 8, !tbaa !178
  br label %157

155:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %144, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %156 = load double, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  br label %157

157:                                              ; preds = %147, %155
  %158 = phi double [ %154, %147 ], [ %156, %155 ]
  %159 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef %140, double noundef %158)
  store double %159, ptr %4, align 8, !tbaa !178
  br label %435

160:                                              ; preds = %28
  %161 = getelementptr inbounds i32, ptr %29, i64 2
  %162 = load i32, ptr %161, align 4, !tbaa !168
  %163 = icmp eq i32 %162, 21
  br i1 %163, label %164, label %172, !prof !231

164:                                              ; preds = %160
  %165 = getelementptr inbounds i32, ptr %29, i64 4
  %166 = load i32, ptr %165, align 4, !tbaa !168
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !177
  %170 = getelementptr inbounds double, ptr %169, i64 %167
  %171 = load double, ptr %170, align 8, !tbaa !178
  br label %174

172:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %161, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %173 = load double, ptr %11, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %174

174:                                              ; preds = %172, %164
  %175 = phi double [ %171, %164 ], [ %173, %172 ]
  %176 = getelementptr inbounds i32, ptr %29, i64 3
  %177 = load i32, ptr %176, align 4, !tbaa !168
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %161, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !168
  %181 = icmp eq i32 %180, 21
  br i1 %181, label %182, label %190, !prof !232

182:                                              ; preds = %174
  %183 = getelementptr inbounds i32, ptr %179, i64 2
  %184 = load i32, ptr %183, align 4, !tbaa !168
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !177
  %188 = getelementptr inbounds double, ptr %187, i64 %185
  %189 = load double, ptr %188, align 8, !tbaa !178
  br label %192

190:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %179, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %191 = load double, ptr %10, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %192

192:                                              ; preds = %182, %190
  %193 = phi double [ %189, %182 ], [ %191, %190 ]
  %194 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %175, double noundef %193)
  store double %194, ptr %4, align 8, !tbaa !178
  br label %435

195:                                              ; preds = %28
  %196 = getelementptr inbounds i32, ptr %29, i64 2
  %197 = load i32, ptr %196, align 4, !tbaa !168
  %198 = icmp eq i32 %197, 21
  br i1 %198, label %199, label %207, !prof !229

199:                                              ; preds = %195
  %200 = getelementptr inbounds i32, ptr %29, i64 4
  %201 = load i32, ptr %200, align 4, !tbaa !168
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !177
  %205 = getelementptr inbounds double, ptr %204, i64 %202
  %206 = load double, ptr %205, align 8, !tbaa !178
  br label %209

207:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %196, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %208 = load double, ptr %9, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %209

209:                                              ; preds = %207, %199
  %210 = phi double [ %206, %199 ], [ %208, %207 ]
  %211 = getelementptr inbounds i32, ptr %29, i64 3
  %212 = load i32, ptr %211, align 4, !tbaa !168
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, ptr %196, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !168
  %216 = icmp eq i32 %215, 21
  br i1 %216, label %217, label %225, !prof !230

217:                                              ; preds = %209
  %218 = getelementptr inbounds i32, ptr %214, i64 2
  %219 = load i32, ptr %218, align 4, !tbaa !168
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !177
  %223 = getelementptr inbounds double, ptr %222, i64 %220
  %224 = load double, ptr %223, align 8, !tbaa !178
  br label %227

225:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %214, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %226 = load double, ptr %8, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %227

227:                                              ; preds = %217, %225
  %228 = phi double [ %224, %217 ], [ %226, %225 ]
  %229 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef %210, double noundef %228)
  store double %229, ptr %4, align 8, !tbaa !178
  br label %435

230:                                              ; preds = %28
  %231 = getelementptr inbounds i32, ptr %29, i64 2
  %232 = load i32, ptr %231, align 4, !tbaa !168
  %233 = icmp eq i32 %232, 21
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = getelementptr inbounds i32, ptr %29, i64 4
  %236 = load i32, ptr %235, align 4, !tbaa !168
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !177
  %240 = getelementptr inbounds double, ptr %239, i64 %237
  %241 = load double, ptr %240, align 8, !tbaa !178
  br label %244

242:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %231, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %243 = load double, ptr %20, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #19
  br label %244

244:                                              ; preds = %234, %242
  %245 = phi double [ %241, %234 ], [ %243, %242 ]
  %246 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %245)
  store double %246, ptr %4, align 8, !tbaa !178
  br label %435

247:                                              ; preds = %28
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %435

248:                                              ; preds = %28
  %249 = getelementptr inbounds i32, ptr %29, i64 2
  %250 = load i32, ptr %249, align 4, !tbaa !168
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !185
  %254 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %253, i64 %251
  %255 = load ptr, ptr %254, align 8, !tbaa !166
  %256 = getelementptr inbounds ptr, ptr %255, i64 6
  %257 = load ptr, ptr %256, align 8
  %258 = tail call noundef double %257(ptr noundef nonnull align 8 dereferenceable(41) %254)
  store double %258, ptr %4, align 8, !tbaa !178
  br label %435

259:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #19
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %25, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %260 = load ptr, ptr %25, align 8, !tbaa !210
  %261 = load ptr, ptr %260, align 8, !tbaa !166
  %262 = getelementptr inbounds ptr, ptr %261, i64 6
  %263 = load ptr, ptr %262, align 8
  %264 = invoke noundef double %263(ptr noundef nonnull align 8 dereferenceable(24) %260)
          to label %265 unwind label %271

265:                                              ; preds = %259
  store double %264, ptr %4, align 8, !tbaa !178
  %266 = load ptr, ptr %25, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %266)
          to label %270 unwind label %267

267:                                              ; preds = %265
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #20
  unreachable

270:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #19
  br label %435

271:                                              ; preds = %259
  %272 = landingpad { ptr, i32 }
          cleanup
  %273 = load ptr, ptr %25, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %273)
          to label %277 unwind label %274

274:                                              ; preds = %271
  %275 = landingpad { ptr, i32 }
          catch ptr null
  %276 = extractvalue { ptr, i32 } %275, 0
  call void @__clang_call_terminate(ptr %276) #20
  unreachable

277:                                              ; preds = %271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #19
  br label %356

278:                                              ; preds = %28
  %279 = getelementptr inbounds i32, ptr %29, i64 2
  br label %28

280:                                              ; preds = %28
  %281 = getelementptr inbounds i32, ptr %29, i64 3
  %282 = load i32, ptr %281, align 4, !tbaa !168
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !185
  %286 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %285, i64 %283
  %287 = load ptr, ptr %286, align 8, !tbaa !166
  %288 = getelementptr inbounds ptr, ptr %287, i64 6
  %289 = load ptr, ptr %288, align 8
  %290 = tail call noundef double %289(ptr noundef nonnull align 8 dereferenceable(41) %286)
  store double %290, ptr %4, align 8, !tbaa !178
  br label %435

291:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #19
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %26, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %292 = load ptr, ptr %26, align 8, !tbaa !210
  %293 = load ptr, ptr %292, align 8, !tbaa !166
  %294 = getelementptr inbounds ptr, ptr %293, i64 6
  %295 = load ptr, ptr %294, align 8
  %296 = invoke noundef double %295(ptr noundef nonnull align 8 dereferenceable(24) %292)
          to label %297 unwind label %303

297:                                              ; preds = %291
  store double %296, ptr %4, align 8, !tbaa !178
  %298 = load ptr, ptr %26, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %298)
          to label %302 unwind label %299

299:                                              ; preds = %297
  %300 = landingpad { ptr, i32 }
          catch ptr null
  %301 = extractvalue { ptr, i32 } %300, 0
  call void @__clang_call_terminate(ptr %301) #20
  unreachable

302:                                              ; preds = %297
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #19
  br label %435

303:                                              ; preds = %291
  %304 = landingpad { ptr, i32 }
          cleanup
  %305 = load ptr, ptr %26, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %305)
          to label %309 unwind label %306

306:                                              ; preds = %303
  %307 = landingpad { ptr, i32 }
          catch ptr null
  %308 = extractvalue { ptr, i32 } %307, 0
  call void @__clang_call_terminate(ptr %308) #20
  unreachable

309:                                              ; preds = %303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #19
  br label %356

310:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #19
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %311 = load ptr, ptr %27, align 8, !tbaa !210
  %312 = load ptr, ptr %311, align 8, !tbaa !166
  %313 = getelementptr inbounds ptr, ptr %312, i64 6
  %314 = load ptr, ptr %313, align 8
  %315 = invoke noundef double %314(ptr noundef nonnull align 8 dereferenceable(24) %311)
          to label %316 unwind label %322

316:                                              ; preds = %310
  store double %315, ptr %4, align 8, !tbaa !178
  %317 = load ptr, ptr %27, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %317)
          to label %321 unwind label %318

318:                                              ; preds = %316
  %319 = landingpad { ptr, i32 }
          catch ptr null
  %320 = extractvalue { ptr, i32 } %319, 0
  call void @__clang_call_terminate(ptr %320) #20
  unreachable

321:                                              ; preds = %316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #19
  br label %435

322:                                              ; preds = %310
  %323 = landingpad { ptr, i32 }
          cleanup
  %324 = load ptr, ptr %27, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %324)
          to label %328 unwind label %325

325:                                              ; preds = %322
  %326 = landingpad { ptr, i32 }
          catch ptr null
  %327 = extractvalue { ptr, i32 } %326, 0
  call void @__clang_call_terminate(ptr %327) #20
  unreachable

328:                                              ; preds = %322
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #19
  br label %356

329:                                              ; preds = %28
  %330 = load ptr, ptr %3, align 8, !tbaa !166
  %331 = getelementptr inbounds ptr, ptr %330, i64 21
  %332 = load ptr, ptr %331, align 8
  %333 = tail call noundef ptr %332(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !233
  %334 = getelementptr inbounds i32, ptr %29, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %334, ptr noundef nonnull align 8 dereferenceable(44) %333)
          to label %335 unwind label %345, !prof !225

335:                                              ; preds = %329
  %336 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %333)
          to label %337 unwind label %345, !prof !225

337:                                              ; preds = %335
  store double %336, ptr %4, align 8, !tbaa !178
  %338 = load ptr, ptr %3, align 8, !tbaa !166
  %339 = getelementptr inbounds ptr, ptr %338, i64 22
  %340 = load ptr, ptr %339, align 8
  %341 = invoke noundef zeroext i1 %340(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %333)
          to label %435 unwind label %342, !prof !234

342:                                              ; preds = %337
  %343 = landingpad { ptr, i32 }
          catch ptr null
  %344 = extractvalue { ptr, i32 } %343, 0
  tail call void @__clang_call_terminate(ptr %344) #20
  unreachable

345:                                              ; preds = %335, %329
  %346 = landingpad { ptr, i32 }
          cleanup
  %347 = icmp eq ptr %333, null
  br i1 %347, label %356, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %3, align 8, !tbaa !166
  %350 = getelementptr inbounds ptr, ptr %349, i64 22
  %351 = load ptr, ptr %350, align 8
  %352 = invoke noundef zeroext i1 %351(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %333)
          to label %356 unwind label %353

353:                                              ; preds = %348
  %354 = landingpad { ptr, i32 }
          catch ptr null
  %355 = extractvalue { ptr, i32 } %354, 0
  tail call void @__clang_call_terminate(ptr %355) #20
  unreachable

356:                                              ; preds = %277, %309, %328, %345, %348, %426
  %357 = phi { ptr, i32 } [ %427, %426 ], [ %346, %348 ], [ %346, %345 ], [ %323, %328 ], [ %304, %309 ], [ %272, %277 ]
  resume { ptr, i32 } %357

358:                                              ; preds = %28
  %359 = load ptr, ptr %3, align 8, !tbaa !166
  %360 = getelementptr inbounds ptr, ptr %359, i64 14
  %361 = load ptr, ptr %360, align 8
  %362 = tail call noundef i32 %361(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !235
  %363 = uitofp i32 %362 to double
  store double %363, ptr %4, align 8, !tbaa !178
  br label %435

364:                                              ; preds = %28
  %365 = load ptr, ptr %3, align 8, !tbaa !166
  %366 = getelementptr inbounds ptr, ptr %365, i64 13
  %367 = load ptr, ptr %366, align 8
  %368 = tail call noundef i32 %367(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %369 = uitofp i32 %368 to double
  store double %369, ptr %4, align 8, !tbaa !178
  br label %435

370:                                              ; preds = %28
  %371 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  store double %371, ptr %4, align 8, !tbaa !178
  br label %435

372:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #19
  %373 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %373, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %19)
  %374 = load i8, ptr %19, align 1, !tbaa !200, !range !186, !noundef !187
  %375 = icmp eq i8 %374, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #19
  %376 = select i1 %375, double 1.000000e+00, double 0.000000e+00
  store double %376, ptr %4, align 8, !tbaa !178
  br label %435

377:                                              ; preds = %28
  store double 1.000000e+00, ptr %4, align 8, !tbaa !178
  br label %435

378:                                              ; preds = %28
  store double 0.000000e+00, ptr %4, align 8, !tbaa !178
  br label %435

379:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #19
  %380 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %380, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %24)
  %381 = load i8, ptr %24, align 1, !tbaa !200, !range !186, !noundef !187
  %382 = icmp eq i8 %381, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #19
  %383 = select i1 %382, double 0.000000e+00, double 1.000000e+00
  store double %383, ptr %4, align 8, !tbaa !178
  br label %435

384:                                              ; preds = %28
  %385 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %386 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %3, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !236
  %388 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %385, ptr noundef nonnull align 8 dereferenceable(8) %387)
  store double %388, ptr %4, align 8, !tbaa !178
  br label %435

389:                                              ; preds = %28
  %390 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %391 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %3, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !236
  %393 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %390, ptr noundef nonnull align 8 dereferenceable(8) %392)
  store double %393, ptr %4, align 8, !tbaa !178
  br label %435

394:                                              ; preds = %28
  %395 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %396 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %3, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !236
  %398 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %395, ptr noundef nonnull align 8 dereferenceable(8) %397)
  store double %398, ptr %4, align 8, !tbaa !178
  br label %435

399:                                              ; preds = %28
  %400 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %401 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %3, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !236
  %403 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %400, ptr noundef nonnull align 8 dereferenceable(8) %402)
  store double %403, ptr %4, align 8, !tbaa !178
  br label %435

404:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #19
  %405 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %405, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %406 = load double, ptr %18, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #19
  %407 = tail call noundef double @llvm.floor.f64(double %406)
  store double %407, ptr %4, align 8, !tbaa !178
  br label %435

408:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #19
  %409 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %409, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %410 = load double, ptr %17, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #19
  %411 = tail call noundef double @llvm.ceil.f64(double %410)
  store double %411, ptr %4, align 8, !tbaa !178
  br label %435

412:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  %413 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %413, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %414 = load double, ptr %16, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  %415 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %414)
  store double %415, ptr %4, align 8, !tbaa !178
  br label %435

416:                                              ; preds = %28
  %417 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store double %417, ptr %4, align 8, !tbaa !178
  br label %435

418:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #19
  %419 = getelementptr inbounds i32, ptr %29, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %419, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %420 = load double, ptr %23, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #19
  store double %420, ptr %4, align 8, !tbaa !178
  br label %435

421:                                              ; preds = %28
  %422 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  store double %422, ptr %4, align 8, !tbaa !178
  br label %435

423:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %424 = getelementptr inbounds i32, ptr %29, i64 2
  store i64 17, ptr %7, align 8, !tbaa !201
  %425 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 0, ptr %425, align 8, !tbaa !201
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %424, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval({ i64, i64 }) align 8 %7)
          to label %428 unwind label %426, !prof !202

426:                                              ; preds = %423
  %427 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %356

428:                                              ; preds = %423
  %429 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %6, i64 0, i32 1
  %430 = load i64, ptr %429, align 8, !tbaa !203
  %431 = uitofp i64 %430 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  store double %431, ptr %4, align 8, !tbaa !178
  br label %435

432:                                              ; preds = %28
  %433 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull align 8 dereferenceable(24) %3)
  store double %433, ptr %4, align 8, !tbaa !178
  br label %435

434:                                              ; preds = %28
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %29)
  br label %435

435:                                              ; preds = %337, %434, %432, %428, %421, %418, %416, %412, %408, %404, %399, %394, %389, %384, %379, %378, %377, %372, %370, %364, %358, %321, %302, %280, %270, %248, %247, %244, %227, %192, %157, %122, %87, %52, %49, %46, %43, %40, %37, %34, %31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 29
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !238
  %10 = load ptr, ptr %3, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2), !prof !239
  %13 = load ptr, ptr %3, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %16 unwind label %35, !prof !240

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = getelementptr inbounds i32, ptr %18, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %20 unwind label %37, !prof !241

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %27 unwind label %24, !prof !242

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %20
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 30
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %34 unwind label %31, !prof !239

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %27
  ret void

35:                                               ; preds = %5
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %45

37:                                               ; preds = %16
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %3, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %42

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #20
  unreachable

45:                                               ; preds = %37, %35
  %46 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  %47 = load ptr, ptr %3, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 30
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %9)
          to label %53 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #20
  unreachable

53:                                               ; preds = %45
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  br label %15

15:                                               ; preds = %97, %5
  %16 = phi ptr [ %2, %5 ], [ %98, %97 ]
  %17 = load i32, ptr %16, align 4, !tbaa !168
  switch i32 %17, label %254 [
    i32 2, label %18
    i32 3, label %22
    i32 4, label %26
    i32 5, label %30
    i32 6, label %34
    i32 7, label %38
    i32 8, label %42
    i32 9, label %46
    i32 10, label %50
    i32 11, label %53
    i32 12, label %56
    i32 13, label %59
    i32 14, label %62
    i32 15, label %65
    i32 17, label %68
    i32 18, label %69
    i32 19, label %79
    i32 20, label %97
    i32 21, label %99
    i32 23, label %109
    i32 24, label %127
    i32 25, label %145
    i32 56, label %146
    i32 57, label %153
    i32 58, label %160
    i32 59, label %163
    i32 60, label %169
    i32 61, label %171
    i32 62, label %173
    i32 63, label %179
    i32 64, label %190
    i32 65, label %201
    i32 66, label %212
    i32 67, label %223
    i32 68, label %228
    i32 69, label %233
    i32 70, label %238
    i32 71, label %241
    i32 74, label %245
    i32 75, label %248
    i32 78, label %251
  ], !prof !243

18:                                               ; preds = %15
  %19 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %20 = uitofp i1 %19 to double
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

22:                                               ; preds = %15
  %23 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %24 = uitofp i1 %23 to double
  %25 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %24, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

26:                                               ; preds = %15
  %27 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %28 = uitofp i1 %27 to double
  %29 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %28, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

30:                                               ; preds = %15
  %31 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %32 = uitofp i1 %31 to double
  %33 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %32, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

34:                                               ; preds = %15
  %35 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %36 = uitofp i1 %35 to double
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %36, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

38:                                               ; preds = %15
  %39 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %40 = uitofp i1 %39 to double
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %40, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

42:                                               ; preds = %15
  %43 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %44 = uitofp i1 %43 to double
  %45 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %44, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

46:                                               ; preds = %15
  %47 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %48 = uitofp i1 %47 to double
  %49 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %48, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

50:                                               ; preds = %15
  %51 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %51, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

53:                                               ; preds = %15
  %54 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %55 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %54, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

56:                                               ; preds = %15
  %57 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %58 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %57, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

59:                                               ; preds = %15
  %60 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %61 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %60, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

62:                                               ; preds = %15
  %63 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %64 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %63, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

65:                                               ; preds = %15
  %66 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %67 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %66, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

68:                                               ; preds = %15
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

69:                                               ; preds = %15
  %70 = getelementptr inbounds i32, ptr %16, i64 2
  %71 = load i32, ptr %70, align 4, !tbaa !168
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !185
  %75 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %74, i64 %72
  %76 = load ptr, ptr %75, align 8, !tbaa !166
  %77 = getelementptr inbounds ptr, ptr %76, i64 11
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(41) %75, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

79:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  call void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %80 = load ptr, ptr %12, align 8, !tbaa !210
  %81 = load ptr, ptr %80, align 8, !tbaa !166
  %82 = getelementptr inbounds ptr, ptr %81, i64 11
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %84 unwind label %90

84:                                               ; preds = %79
  %85 = load ptr, ptr %12, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %85)
          to label %89 unwind label %86

86:                                               ; preds = %84
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #20
  unreachable

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  br label %255

90:                                               ; preds = %79
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %12, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %92)
          to label %96 unwind label %93

93:                                               ; preds = %90
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  br label %256

97:                                               ; preds = %15
  %98 = getelementptr inbounds i32, ptr %16, i64 2
  br label %15

99:                                               ; preds = %15
  %100 = getelementptr inbounds i32, ptr %16, i64 3
  %101 = load i32, ptr %100, align 4, !tbaa !168
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !185
  %105 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %104, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !166
  %107 = getelementptr inbounds ptr, ptr %106, i64 11
  %108 = load ptr, ptr %107, align 8
  tail call void %108(ptr noundef nonnull align 8 dereferenceable(41) %105, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

109:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %110 = load ptr, ptr %13, align 8, !tbaa !210
  %111 = load ptr, ptr %110, align 8, !tbaa !166
  %112 = getelementptr inbounds ptr, ptr %111, i64 11
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(24) %110, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %114 unwind label %120

114:                                              ; preds = %109
  %115 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %115)
          to label %119 unwind label %116

116:                                              ; preds = %114
  %117 = landingpad { ptr, i32 }
          catch ptr null
  %118 = extractvalue { ptr, i32 } %117, 0
  call void @__clang_call_terminate(ptr %118) #20
  unreachable

119:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %255

120:                                              ; preds = %109
  %121 = landingpad { ptr, i32 }
          cleanup
  %122 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %122)
          to label %126 unwind label %123

123:                                              ; preds = %120
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  call void @__clang_call_terminate(ptr %125) #20
  unreachable

126:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %256

127:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %128 = load ptr, ptr %14, align 8, !tbaa !210
  %129 = load ptr, ptr %128, align 8, !tbaa !166
  %130 = getelementptr inbounds ptr, ptr %129, i64 11
  %131 = load ptr, ptr %130, align 8
  invoke void %131(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %132 unwind label %138, !prof !244

132:                                              ; preds = %127
  %133 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %133)
          to label %137 unwind label %134, !prof !245

134:                                              ; preds = %132
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #20
  unreachable

137:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %255

138:                                              ; preds = %127
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %140)
          to label %144 unwind label %141

141:                                              ; preds = %138
  %142 = landingpad { ptr, i32 }
          catch ptr null
  %143 = extractvalue { ptr, i32 } %142, 0
  call void @__clang_call_terminate(ptr %143) #20
  unreachable

144:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %256

145:                                              ; preds = %15
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

146:                                              ; preds = %15
  %147 = load ptr, ptr %3, align 8, !tbaa !166
  %148 = getelementptr inbounds ptr, ptr %147, i64 14
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef i32 %149(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %151 = uitofp i32 %150 to double
  %152 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %151, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

153:                                              ; preds = %15
  %154 = load ptr, ptr %3, align 8, !tbaa !166
  %155 = getelementptr inbounds ptr, ptr %154, i64 13
  %156 = load ptr, ptr %155, align 8
  %157 = tail call noundef i32 %156(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %158 = uitofp i32 %157 to double
  %159 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %158, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

160:                                              ; preds = %15
  %161 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %162 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %161, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

163:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  %164 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %164, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %11)
  %165 = load i8, ptr %11, align 1, !tbaa !200, !range !186, !noundef !187
  %166 = icmp eq i8 %165, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  %167 = uitofp i1 %166 to double
  %168 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %167, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

169:                                              ; preds = %15
  %170 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

171:                                              ; preds = %15
  %172 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

173:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  %174 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %174, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %175 = load i8, ptr %10, align 1, !tbaa !200, !range !186, !noundef !187
  %176 = icmp ne i8 %175, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  %177 = uitofp i1 %176 to double
  %178 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %177, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

179:                                              ; preds = %15
  %180 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %180, i64 0, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !246
  %183 = icmp eq i64 %182, 0
  %184 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %180, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8
  %186 = select i1 %183, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %185
  %187 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %180, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !218
  %189 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %186, i32 noundef %188)
  br label %255

190:                                              ; preds = %15
  %191 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %192 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %191, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !246
  %194 = icmp eq i64 %193, 0
  %195 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %191, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8
  %197 = select i1 %194, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %196
  %198 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %191, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !218
  %200 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %197, i32 noundef %199)
  br label %255

201:                                              ; preds = %15
  %202 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %203 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %202, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !246
  %205 = icmp eq i64 %204, 0
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %202, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8
  %208 = select i1 %205, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %207
  %209 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %202, i64 0, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !218
  %211 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %208, i32 noundef %210)
  br label %255

212:                                              ; preds = %15
  %213 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %214 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %213, i64 0, i32 1
  %215 = load i64, ptr %214, align 8, !tbaa !246
  %216 = icmp eq i64 %215, 0
  %217 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %213, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8
  %219 = select i1 %216, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %218
  %220 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %213, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !218
  %222 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %219, i32 noundef %221)
  br label %255

223:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %224 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %224, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %225 = load double, ptr %9, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %226 = tail call noundef double @llvm.floor.f64(double %225)
  %227 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %226, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

228:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %229 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %229, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %230 = load double, ptr %8, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  %231 = tail call noundef double @llvm.ceil.f64(double %230)
  %232 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %231, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

233:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %234 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %234, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %235 = load double, ptr %7, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %236 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %235)
  %237 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %236, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

238:                                              ; preds = %15
  %239 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %240 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %239, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

241:                                              ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %242 = getelementptr inbounds i32, ptr %16, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %242, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %243 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %244 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %243, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

245:                                              ; preds = %15
  %246 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %247 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %246, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

248:                                              ; preds = %15
  %249 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %250 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %249, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

251:                                              ; preds = %15
  %252 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %253 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef %252, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %255

254:                                              ; preds = %15
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %16)
  br label %255

255:                                              ; preds = %254, %251, %248, %245, %241, %238, %233, %228, %223, %212, %201, %190, %179, %173, %171, %169, %163, %160, %153, %146, %145, %137, %119, %99, %89, %69, %68, %65, %62, %59, %56, %53, %50, %46, %42, %38, %34, %30, %26, %22, %18
  ret void

256:                                              ; preds = %144, %126, %96
  %257 = phi { ptr, i32 } [ %139, %144 ], [ %121, %126 ], [ %91, %96 ]
  resume { ptr, i32 } %257
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_17FormatterListenerEMS8_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %7 = alloca { i64, i64 }, align 8
  %8 = load i64, ptr %5, align 8, !tbaa !201
  %9 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !201
  %11 = load ptr, ptr %3, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 29
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %15 = load ptr, ptr %3, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 30
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2)
  %18 = load ptr, ptr %3, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1)
          to label %21 unwind label %41

21:                                               ; preds = %6
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = getelementptr inbounds i32, ptr %23, i64 2
  store i64 %8, ptr %7, align 8, !tbaa !201
  %25 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  store i64 %10, ptr %25, align 8, !tbaa !201
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %7)
          to label %26 unwind label %43

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 8, !tbaa !166
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %33 unwind label %30

30:                                               ; preds = %26
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #20
  unreachable

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 30
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %14)
          to label %40 unwind label %37

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #20
  unreachable

40:                                               ; preds = %33
  ret void

41:                                               ; preds = %6
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %51

43:                                               ; preds = %21
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load ptr, ptr %3, align 8, !tbaa !166
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %51 unwind label %48

48:                                               ; preds = %43
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #20
  unreachable

51:                                               ; preds = %43, %41
  %52 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !166
  %54 = getelementptr inbounds ptr, ptr %53, i64 30
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %14)
          to label %59 unwind label %56

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %51
  resume { ptr, i32 } %52
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef byval({ i64, i64 }) align 8 %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %7 = alloca { i64, i64 }, align 8
  %8 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i8, align 1
  %15 = alloca double, align 8
  %16 = alloca i8, align 1
  %17 = alloca { i64, i64 }, align 8
  %18 = alloca { i64, i64 }, align 8
  %19 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %20 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %21 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %22 = alloca { i64, i64 }, align 8
  br label %23

23:                                               ; preds = %148, %6
  %24 = phi ptr [ %2, %6 ], [ %149, %148 ]
  %25 = load i64, ptr %5, align 8, !tbaa !201
  %26 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !201
  %28 = load i32, ptr %24, align 4, !tbaa !168
  switch i32 %28, label %384 [
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
    i32 5, label %35
    i32 6, label %37
    i32 7, label %39
    i32 8, label %41
    i32 9, label %43
    i32 10, label %45
    i32 11, label %80
    i32 12, label %82
    i32 13, label %84
    i32 14, label %86
    i32 15, label %88
    i32 17, label %90
    i32 18, label %92
    i32 19, label %102
    i32 20, label %148
    i32 21, label %151
    i32 23, label %161
    i32 24, label %179
    i32 25, label %197
    i32 56, label %199
    i32 57, label %205
    i32 58, label %211
    i32 59, label %213
    i32 60, label %217
    i32 61, label %239
    i32 62, label %261
    i32 63, label %265
    i32 64, label %289
    i32 65, label %313
    i32 66, label %337
    i32 67, label %361
    i32 68, label %365
    i32 69, label %369
    i32 70, label %373
    i32 71, label %375
    i32 74, label %378
    i32 75, label %380
    i32 78, label %382
  ], !prof !248

29:                                               ; preds = %23
  %30 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %30, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

31:                                               ; preds = %23
  %32 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %32, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

33:                                               ; preds = %23
  %34 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %34, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

35:                                               ; preds = %23
  %36 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %36, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

37:                                               ; preds = %23
  %38 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %38, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

39:                                               ; preds = %23
  %40 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %40, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

41:                                               ; preds = %23
  %42 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %42, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

43:                                               ; preds = %23
  %44 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %44, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

45:                                               ; preds = %23
  %46 = getelementptr inbounds i32, ptr %24, i64 2
  %47 = load i32, ptr %46, align 4, !tbaa !168
  %48 = icmp eq i32 %47, 21
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr inbounds i32, ptr %24, i64 4
  %51 = load i32, ptr %50, align 4, !tbaa !168
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !177
  %55 = getelementptr inbounds double, ptr %54, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !178
  br label %59

57:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %46, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %58 = load double, ptr %9, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %59

59:                                               ; preds = %49, %57
  %60 = phi double [ %56, %49 ], [ %58, %57 ]
  %61 = getelementptr inbounds i32, ptr %24, i64 3
  %62 = load i32, ptr %61, align 4, !tbaa !168
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %46, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !168
  %66 = icmp eq i32 %65, 21
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = getelementptr inbounds i32, ptr %64, i64 2
  %69 = load i32, ptr %68, align 4, !tbaa !168
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !177
  %73 = getelementptr inbounds double, ptr %72, i64 %70
  %74 = load double, ptr %73, align 8, !tbaa !178
  br label %77

75:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %64, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %76 = load double, ptr %10, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %77

77:                                               ; preds = %67, %75
  %78 = phi double [ %74, %67 ], [ %76, %75 ]
  %79 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %60, double noundef %78)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %79, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

80:                                               ; preds = %23
  %81 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %81, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

82:                                               ; preds = %23
  %83 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %83, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

84:                                               ; preds = %23
  %85 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %85, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

86:                                               ; preds = %23
  %87 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %87, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

88:                                               ; preds = %23
  %89 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %89, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

90:                                               ; preds = %23
  store i64 %25, ptr %18, align 8, !tbaa !201
  %91 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  store i64 %27, ptr %91, align 8, !tbaa !201
  tail call void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %18)
  br label %385

92:                                               ; preds = %23
  %93 = getelementptr inbounds i32, ptr %24, i64 2
  %94 = load i32, ptr %93, align 4, !tbaa !168
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !185
  %98 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %97, i64 %95
  %99 = load ptr, ptr %98, align 8, !tbaa !166
  %100 = getelementptr inbounds ptr, ptr %99, i64 9
  %101 = load ptr, ptr %100, align 8
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(41) %98, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

102:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #19
  %103 = getelementptr inbounds i32, ptr %24, i64 2
  %104 = load i32, ptr %103, align 4, !tbaa !168, !noalias !249
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !185, !noalias !249
  %108 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %107, i64 %105
  %109 = getelementptr inbounds i32, ptr %24, i64 3
  %110 = load i32, ptr %109, align 4, !tbaa !168, !noalias !249
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %107, i64 %111
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !noalias !249
  %113 = load ptr, ptr %108, align 8, !tbaa !166, !noalias !249
  %114 = getelementptr inbounds ptr, ptr %113, i64 8
  %115 = load ptr, ptr %114, align 8, !noalias !249
  %116 = tail call noundef nonnull align 8 dereferenceable(36) ptr %115(ptr noundef nonnull align 8 dereferenceable(41) %108), !prof !252, !noalias !249
  %117 = load ptr, ptr %112, align 8, !tbaa !166, !noalias !249
  %118 = getelementptr inbounds ptr, ptr %117, i64 8
  %119 = load ptr, ptr %118, align 8, !noalias !249
  %120 = tail call noundef nonnull align 8 dereferenceable(36) ptr %119(ptr noundef nonnull align 8 dereferenceable(41) %112), !prof !252, !noalias !249
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(36) %116, ptr noundef nonnull align 8 dereferenceable(36) %120), !noalias !249
  %121 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !153, !noalias !249
  %123 = load ptr, ptr %3, align 8, !tbaa !166, !noalias !249
  %124 = getelementptr inbounds ptr, ptr %123, i64 28
  %125 = load ptr, ptr %124, align 8, !noalias !249
  invoke void %125(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %122)
          to label %130 unwind label %128, !prof !194

126:                                              ; preds = %147, %178, %196, %128
  %127 = phi { ptr, i32 } [ %129, %128 ], [ %191, %196 ], [ %173, %178 ], [ %142, %147 ]
  resume { ptr, i32 } %127

128:                                              ; preds = %102
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !249
  br label %126

130:                                              ; preds = %102
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !249
  %131 = load ptr, ptr %19, align 8, !tbaa !210
  %132 = load ptr, ptr %131, align 8, !tbaa !166
  %133 = getelementptr inbounds ptr, ptr %132, i64 9
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(24) %131, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
          to label %135 unwind label %141, !prof !253

135:                                              ; preds = %130
  %136 = load ptr, ptr %19, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %136)
          to label %140 unwind label %137, !prof !254

137:                                              ; preds = %135
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #20
  unreachable

140:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  br label %385

141:                                              ; preds = %130
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = load ptr, ptr %19, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %143)
          to label %147 unwind label %144

144:                                              ; preds = %141
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @__clang_call_terminate(ptr %146) #20
  unreachable

147:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #19
  br label %126

148:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17)
  %149 = getelementptr inbounds i32, ptr %24, i64 2
  store i64 %25, ptr %17, align 8, !tbaa !201
  %150 = getelementptr inbounds { i64, i64 }, ptr %17, i64 0, i32 1
  store i64 %27, ptr %150, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %17, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17)
  br label %23

151:                                              ; preds = %23
  %152 = getelementptr inbounds i32, ptr %24, i64 3
  %153 = load i32, ptr %152, align 4, !tbaa !168
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !185
  %157 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %156, i64 %154
  %158 = load ptr, ptr %157, align 8, !tbaa !166
  %159 = getelementptr inbounds ptr, ptr %158, i64 9
  %160 = load ptr, ptr %159, align 8
  tail call void %160(ptr noundef nonnull align 8 dereferenceable(41) %157, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

161:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #19
  call void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %162 = load ptr, ptr %20, align 8, !tbaa !210
  %163 = load ptr, ptr %162, align 8, !tbaa !166
  %164 = getelementptr inbounds ptr, ptr %163, i64 9
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
          to label %166 unwind label %172

166:                                              ; preds = %161
  %167 = load ptr, ptr %20, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %167)
          to label %171 unwind label %168

168:                                              ; preds = %166
  %169 = landingpad { ptr, i32 }
          catch ptr null
  %170 = extractvalue { ptr, i32 } %169, 0
  call void @__clang_call_terminate(ptr %170) #20
  unreachable

171:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #19
  br label %385

172:                                              ; preds = %161
  %173 = landingpad { ptr, i32 }
          cleanup
  %174 = load ptr, ptr %20, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %174)
          to label %178 unwind label %175

175:                                              ; preds = %172
  %176 = landingpad { ptr, i32 }
          catch ptr null
  %177 = extractvalue { ptr, i32 } %176, 0
  call void @__clang_call_terminate(ptr %177) #20
  unreachable

178:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #19
  br label %126

179:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #19
  call void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %180 = load ptr, ptr %21, align 8, !tbaa !210
  %181 = load ptr, ptr %180, align 8, !tbaa !166
  %182 = getelementptr inbounds ptr, ptr %181, i64 9
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(24) %180, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
          to label %184 unwind label %190, !prof !255

184:                                              ; preds = %179
  %185 = load ptr, ptr %21, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %185)
          to label %189 unwind label %186, !prof !256

186:                                              ; preds = %184
  %187 = landingpad { ptr, i32 }
          catch ptr null
  %188 = extractvalue { ptr, i32 } %187, 0
  call void @__clang_call_terminate(ptr %188) #20
  unreachable

189:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #19
  br label %385

190:                                              ; preds = %179
  %191 = landingpad { ptr, i32 }
          cleanup
  %192 = load ptr, ptr %21, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %192)
          to label %196 unwind label %193

193:                                              ; preds = %190
  %194 = landingpad { ptr, i32 }
          catch ptr null
  %195 = extractvalue { ptr, i32 } %194, 0
  call void @__clang_call_terminate(ptr %195) #20
  unreachable

196:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #19
  br label %126

197:                                              ; preds = %23
  store i64 %25, ptr %22, align 8, !tbaa !201
  %198 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  store i64 %27, ptr %198, align 8, !tbaa !201
  tail call void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval({ i64, i64 }) align 8 %22)
  br label %385

199:                                              ; preds = %23
  %200 = load ptr, ptr %3, align 8, !tbaa !166
  %201 = getelementptr inbounds ptr, ptr %200, i64 14
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef i32 %202(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %204 = uitofp i32 %203 to double
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %204, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

205:                                              ; preds = %23
  %206 = load ptr, ptr %3, align 8, !tbaa !166
  %207 = getelementptr inbounds ptr, ptr %206, i64 13
  %208 = load ptr, ptr %207, align 8
  %209 = tail call noundef i32 %208(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %210 = uitofp i32 %209 to double
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %210, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

211:                                              ; preds = %23
  %212 = tail call noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %212, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

213:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #19
  %214 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %214, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %215 = load i8, ptr %14, align 1, !tbaa !200, !range !186, !noundef !187
  %216 = icmp eq i8 %215, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %216, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

217:                                              ; preds = %23
  %218 = getelementptr inbounds i8, ptr %4, i64 %27
  %219 = and i64 %25, 1
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %217
  %222 = load ptr, ptr %218, align 8, !tbaa !166
  %223 = getelementptr i8, ptr %222, i64 %25
  %224 = getelementptr i8, ptr %223, i64 -1
  %225 = load ptr, ptr %224, align 8, !nosanitize !187
  br label %228

226:                                              ; preds = %217
  %227 = inttoptr i64 %25 to ptr
  br label %228

228:                                              ; preds = %221, %226
  %229 = phi ptr [ %225, %221 ], [ %227, %226 ]
  %230 = load ptr, ptr @_ZN11xalanc_1_107XObject12s_trueStringE, align 8, !tbaa !257
  %231 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %230, i64 0, i32 1
  %232 = load i64, ptr %231, align 8, !tbaa !246
  %233 = icmp eq i64 %232, 0
  %234 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %230, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8
  %236 = select i1 %233, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %235
  %237 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %230, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !218
  tail call void %229(ptr noundef nonnull align 8 dereferenceable(24) %218, ptr noundef %236, i32 noundef %238)
  br label %385

239:                                              ; preds = %23
  %240 = getelementptr inbounds i8, ptr %4, i64 %27
  %241 = and i64 %25, 1
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = load ptr, ptr %240, align 8, !tbaa !166
  %245 = getelementptr i8, ptr %244, i64 %25
  %246 = getelementptr i8, ptr %245, i64 -1
  %247 = load ptr, ptr %246, align 8, !nosanitize !187
  br label %250

248:                                              ; preds = %239
  %249 = inttoptr i64 %25 to ptr
  br label %250

250:                                              ; preds = %243, %248
  %251 = phi ptr [ %247, %243 ], [ %249, %248 ]
  %252 = load ptr, ptr @_ZN11xalanc_1_107XObject13s_falseStringE, align 8, !tbaa !257
  %253 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %252, i64 0, i32 1
  %254 = load i64, ptr %253, align 8, !tbaa !246
  %255 = icmp eq i64 %254, 0
  %256 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %252, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8
  %258 = select i1 %255, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %257
  %259 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %252, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !218
  tail call void %251(ptr noundef nonnull align 8 dereferenceable(24) %240, ptr noundef %258, i32 noundef %260)
  br label %385

261:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #19
  %262 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %262, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  %263 = load i8, ptr %16, align 1, !tbaa !200, !range !186, !noundef !187
  %264 = icmp ne i8 %263, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #19
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %264, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

265:                                              ; preds = %23
  %266 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %267 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %266, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !218
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %385, label %270, !prof !258

270:                                              ; preds = %265
  %271 = getelementptr inbounds i8, ptr %4, i64 %27
  %272 = and i64 %25, 1
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %279, label %274, !prof !258

274:                                              ; preds = %270
  %275 = load ptr, ptr %271, align 8, !tbaa !166
  %276 = getelementptr i8, ptr %275, i64 %25
  %277 = getelementptr i8, ptr %276, i64 -1
  %278 = load ptr, ptr %277, align 8, !nosanitize !187
  br label %281

279:                                              ; preds = %270
  %280 = inttoptr i64 %25 to ptr
  br label %281

281:                                              ; preds = %279, %274
  %282 = phi ptr [ %278, %274 ], [ %280, %279 ]
  %283 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %266, i64 0, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !246
  %285 = icmp eq i64 %284, 0
  %286 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %266, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8
  %288 = select i1 %285, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %287, !prof !258
  tail call void %282(ptr noundef nonnull align 8 dereferenceable(24) %271, ptr noundef %288, i32 noundef %268), !prof !259
  br label %385

289:                                              ; preds = %23
  %290 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %291 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %290, i64 0, i32 1
  %292 = load i32, ptr %291, align 8, !tbaa !218
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %385, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds i8, ptr %4, i64 %27
  %296 = and i64 %25, 1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %295, align 8, !tbaa !166
  %300 = getelementptr i8, ptr %299, i64 %25
  %301 = getelementptr i8, ptr %300, i64 -1
  %302 = load ptr, ptr %301, align 8, !nosanitize !187
  br label %305

303:                                              ; preds = %294
  %304 = inttoptr i64 %25 to ptr
  br label %305

305:                                              ; preds = %303, %298
  %306 = phi ptr [ %302, %298 ], [ %304, %303 ]
  %307 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %290, i64 0, i32 1
  %308 = load i64, ptr %307, align 8, !tbaa !246
  %309 = icmp eq i64 %308, 0
  %310 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %290, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8
  %312 = select i1 %309, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %311
  tail call void %306(ptr noundef nonnull align 8 dereferenceable(24) %295, ptr noundef %312, i32 noundef %292)
  br label %385

313:                                              ; preds = %23
  %314 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  %315 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %314, i64 0, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !218
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %385, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds i8, ptr %4, i64 %27
  %320 = and i64 %25, 1
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %319, align 8, !tbaa !166
  %324 = getelementptr i8, ptr %323, i64 %25
  %325 = getelementptr i8, ptr %324, i64 -1
  %326 = load ptr, ptr %325, align 8, !nosanitize !187
  br label %329

327:                                              ; preds = %318
  %328 = inttoptr i64 %25 to ptr
  br label %329

329:                                              ; preds = %327, %322
  %330 = phi ptr [ %326, %322 ], [ %328, %327 ]
  %331 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %314, i64 0, i32 1
  %332 = load i64, ptr %331, align 8, !tbaa !246
  %333 = icmp eq i64 %332, 0
  %334 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %314, i64 0, i32 3
  %335 = load ptr, ptr %334, align 8
  %336 = select i1 %333, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %335
  tail call void %330(ptr noundef nonnull align 8 dereferenceable(24) %319, ptr noundef %336, i32 noundef %316)
  br label %385

337:                                              ; preds = %23
  %338 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %339 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %338, i64 0, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !218
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %385, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds i8, ptr %4, i64 %27
  %344 = and i64 %25, 1
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %343, align 8, !tbaa !166
  %348 = getelementptr i8, ptr %347, i64 %25
  %349 = getelementptr i8, ptr %348, i64 -1
  %350 = load ptr, ptr %349, align 8, !nosanitize !187
  br label %353

351:                                              ; preds = %342
  %352 = inttoptr i64 %25 to ptr
  br label %353

353:                                              ; preds = %351, %346
  %354 = phi ptr [ %350, %346 ], [ %352, %351 ]
  %355 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %338, i64 0, i32 1
  %356 = load i64, ptr %355, align 8, !tbaa !246
  %357 = icmp eq i64 %356, 0
  %358 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %338, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8
  %360 = select i1 %357, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %359
  tail call void %354(ptr noundef nonnull align 8 dereferenceable(24) %343, ptr noundef %360, i32 noundef %340)
  br label %385

361:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  %362 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %362, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %363 = load double, ptr %13, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  %364 = tail call noundef double @llvm.floor.f64(double %363)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %364, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

365:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  %366 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %366, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %367 = load double, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  %368 = tail call noundef double @llvm.ceil.f64(double %367)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %368, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

369:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %370 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %370, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %371 = load double, ptr %11, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %372 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %371)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %372, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

373:                                              ; preds = %23
  %374 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %374, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

375:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %376 = getelementptr inbounds i32, ptr %24, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %376, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %377 = load double, ptr %15, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %377, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

378:                                              ; preds = %23
  %379 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %1)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %379, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

380:                                              ; preds = %23
  %381 = tail call noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %381, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

382:                                              ; preds = %23
  %383 = tail call noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %383, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %25, i64 %27)
  br label %385

384:                                              ; preds = %23
  tail call void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %24)
  br label %385

385:                                              ; preds = %353, %337, %329, %313, %305, %289, %281, %265, %384, %382, %380, %378, %375, %373, %369, %365, %361, %261, %250, %228, %213, %211, %205, %199, %197, %189, %171, %151, %140, %92, %90, %88, %86, %84, %82, %80, %77, %43, %41, %39, %37, %35, %33, %31, %29
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias nocapture writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %7 = load ptr, ptr %4, align 8, !tbaa !166
  %8 = getelementptr inbounds ptr, ptr %7, i64 29
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %11 = load ptr, ptr %4, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 30
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3)
  %14 = load ptr, ptr %4, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2)
          to label %17 unwind label %36

17:                                               ; preds = %6
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  %20 = getelementptr inbounds i32, ptr %19, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %21 unwind label %38

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %28 unwind label %25

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #20
  unreachable

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 30
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %10)
          to label %35 unwind label %32

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %28
  ret void

36:                                               ; preds = %6
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %46

38:                                               ; preds = %17
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load ptr, ptr %4, align 8, !tbaa !166
  %41 = getelementptr inbounds ptr, ptr %40, i64 8
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %46 unwind label %43

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %38, %36
  %47 = phi { ptr, i32 } [ %37, %36 ], [ %39, %38 ]
  %48 = load ptr, ptr %4, align 8, !tbaa !166
  %49 = getelementptr inbounds ptr, ptr %48, i64 30
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %10)
          to label %54 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %46
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind noalias nocapture writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !260 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  store ptr null, ptr %0, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %12 = load i32, ptr %3, align 4, !tbaa !168
  switch i32 %12, label %117 [
    i32 1, label %15
    i32 2, label %36
    i32 3, label %36
    i32 4, label %36
    i32 5, label %36
    i32 6, label %36
    i32 7, label %36
    i32 8, label %36
    i32 9, label %36
    i32 10, label %36
    i32 11, label %36
    i32 12, label %36
    i32 13, label %36
    i32 14, label %36
    i32 15, label %36
    i32 18, label %36
    i32 21, label %36
    i32 56, label %36
    i32 57, label %36
    i32 58, label %36
    i32 59, label %36
    i32 60, label %36
    i32 61, label %36
    i32 62, label %36
    i32 63, label %36
    i32 64, label %36
    i32 65, label %36
    i32 66, label %36
    i32 67, label %36
    i32 68, label %36
    i32 69, label %36
    i32 70, label %36
    i32 71, label %36
    i32 72, label %36
    i32 73, label %36
    i32 74, label %36
    i32 75, label %36
    i32 76, label %36
    i32 77, label %36
    i32 78, label %36
    i32 17, label %37
    i32 19, label %38
    i32 20, label %61
    i32 23, label %69
    i32 24, label %92
    i32 25, label %115
  ], !prof !261

13:                                               ; preds = %115, %61, %125, %117, %37, %36
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %127

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %16 = getelementptr inbounds i32, ptr %3, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %17 unwind label %27

17:                                               ; preds = %15
  %18 = load ptr, ptr %8, align 8, !tbaa !210
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %21 unwind label %29

21:                                               ; preds = %20
  store ptr %18, ptr %0, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %18)
          to label %22 unwind label %29

22:                                               ; preds = %17, %21
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %22
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %118

27:                                               ; preds = %15
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %21, %20
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef nonnull %18)
          to label %34 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %29, %27
  %35 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %127

36:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  invoke void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %118 unwind label %13

37:                                               ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %118 unwind label %13

38:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  invoke void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %39 unwind label %51

39:                                               ; preds = %38
  %40 = load ptr, ptr %9, align 8, !tbaa !210
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %43 unwind label %53

43:                                               ; preds = %42
  %44 = load ptr, ptr %9, align 8, !tbaa !210
  store ptr %44, ptr %0, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %44)
          to label %45 unwind label %53

45:                                               ; preds = %39, %43
  %46 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %46)
          to label %50 unwind label %47

47:                                               ; preds = %45
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #20
  unreachable

50:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %118

51:                                               ; preds = %38
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %59

53:                                               ; preds = %43, %42
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %55)
          to label %59 unwind label %56

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %53, %51
  %60 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %127

61:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  %62 = getelementptr inbounds i32, ptr %3, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %62, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %63 unwind label %13

63:                                               ; preds = %61
  %64 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %64)
          to label %68 unwind label %65

65:                                               ; preds = %63
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  tail call void @__clang_call_terminate(ptr %67) #20
  unreachable

68:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %118

69:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  invoke void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %70 unwind label %82

70:                                               ; preds = %69
  %71 = load ptr, ptr %10, align 8, !tbaa !210
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %74 unwind label %84

74:                                               ; preds = %73
  %75 = load ptr, ptr %10, align 8, !tbaa !210
  store ptr %75, ptr %0, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %75)
          to label %76 unwind label %84

76:                                               ; preds = %70, %74
  %77 = load ptr, ptr %10, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %77)
          to label %81 unwind label %78

78:                                               ; preds = %76
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #20
  unreachable

81:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %118

82:                                               ; preds = %69
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %90

84:                                               ; preds = %74, %73
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = load ptr, ptr %10, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %86)
          to label %90 unwind label %87

87:                                               ; preds = %84
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #20
  unreachable

90:                                               ; preds = %84, %82
  %91 = phi { ptr, i32 } [ %83, %82 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %127

92:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  invoke void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %93 unwind label %105

93:                                               ; preds = %92
  %94 = load ptr, ptr %11, align 8, !tbaa !210
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %97 unwind label %107

97:                                               ; preds = %96
  %98 = load ptr, ptr %11, align 8, !tbaa !210
  store ptr %98, ptr %0, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %98)
          to label %99 unwind label %107

99:                                               ; preds = %93, %97
  %100 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %100)
          to label %104 unwind label %101

101:                                              ; preds = %99
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #20
  unreachable

104:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %118

105:                                              ; preds = %92
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %113

107:                                              ; preds = %97, %96
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %109)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #20
  unreachable

113:                                              ; preds = %107, %105
  %114 = phi { ptr, i32 } [ %106, %105 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %127

115:                                              ; preds = %6
  %116 = getelementptr inbounds i32, ptr %3, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %116, ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %118 unwind label %13, !prof !262

117:                                              ; preds = %6
  invoke void @_ZNK11xalanc_1_105XPath18unknownOpCodeErrorEPNS_9XalanNodeERNS_21XPathExecutionContextEPKi(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %3)
          to label %118 unwind label %13

118:                                              ; preds = %117, %115, %37, %68, %36, %104, %81, %50, %26
  %119 = load ptr, ptr %0, align 8, !tbaa !210
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121, !prof !262

121:                                              ; preds = %118
  %122 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %119, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !263
  %124 = icmp eq i32 %123, 5
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  invoke void @_ZNK11xalanc_1_105XPath15notNodeSetErrorEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %126 unwind label %13

126:                                              ; preds = %125, %118, %121
  ret void

127:                                              ; preds = %113, %90, %59, %34, %13
  %128 = phi { ptr, i32 } [ %14, %13 ], [ %114, %113 ], [ %91, %90 ], [ %60, %59 ], [ %35, %34 ]
  %129 = load ptr, ptr %0, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %129)
          to label %133 unwind label %130

130:                                              ; preds = %127
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #20
  unreachable

133:                                              ; preds = %127
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2OrEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = load i8, ptr %5, align 1, !tbaa !200, !range !186, !noundef !187
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds i32, ptr %2, i64 3
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %6, i64 %12
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %9, %4
  %15 = load i8, ptr %5, align 1, !tbaa !200, !range !186, !noundef !187
  %16 = icmp ne i8 %15, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3AndEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = load i8, ptr %5, align 1, !tbaa !200, !range !186, !noundef !187
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i32, ptr %2, i64 3
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %6, i64 %12
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %14

14:                                               ; preds = %9, %4
  %15 = load i8, ptr %5, align 1, !tbaa !200, !range !186, !noundef !187
  %16 = icmp ne i8 %15, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret i1 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath9notequalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !267 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27, !prof !268

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29, !prof !268

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18, !prof !268

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23, !prof !268

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3lteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2ltEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath3gteEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath2gtEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %8 = getelementptr inbounds i32, ptr %2, i64 3
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %13 unwind label %27

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !210
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %16 unwind label %29

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %22 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %22)
          to label %26 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i1 %15

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %13
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %31)
          to label %35 unwind label %32

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %29, %27
  %36 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %37 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %37)
          to label %41 unwind label %38

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = icmp eq i32 %8, 21
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = getelementptr inbounds double, ptr %15, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !178
  br label %20

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %19 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %7, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, ptr %25, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds double, ptr %33, i64 %31
  %35 = load double, ptr %34, align 8, !tbaa !178
  br label %38

36:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %37 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi double [ %35, %28 ], [ %37, %36 ]
  %40 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %21, double noundef %39)
  ret double %40
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = icmp eq i32 %8, 21
  br i1 %9, label %10, label %18, !prof !176

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = getelementptr inbounds double, ptr %15, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !178
  br label %20

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %19 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %7, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %36, !prof !180

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, ptr %25, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds double, ptr %33, i64 %31
  %35 = load double, ptr %34, align 8, !tbaa !178
  br label %38

36:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %37 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi double [ %35, %28 ], [ %37, %36 ]
  %40 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef %21, double noundef %39)
  ret double %40
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = icmp eq i32 %8, 21
  br i1 %9, label %10, label %18, !prof !229

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = getelementptr inbounds double, ptr %15, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !178
  br label %20

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %19 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %7, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %36, !prof !230

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, ptr %25, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds double, ptr %33, i64 %31
  %35 = load double, ptr %34, align 8, !tbaa !178
  br label %38

36:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %37 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi double [ %35, %28 ], [ %37, %36 ]
  %40 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef %21, double noundef %39)
  ret double %40
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 !prof !269 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = icmp eq i32 %8, 21
  br i1 %9, label %10, label %18, !prof !231

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = getelementptr inbounds double, ptr %15, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !178
  br label %20

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %19 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %7, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %36, !prof !232

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, ptr %25, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds double, ptr %33, i64 %31
  %35 = load double, ptr %34, align 8, !tbaa !178
  br label %38

36:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %37 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi double [ %35, %28 ], [ %37, %36 ]
  %40 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef %21, double noundef %39)
  ret double %40
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = icmp eq i32 %8, 21
  br i1 %9, label %10, label %18, !prof !229

10:                                               ; preds = %4
  %11 = getelementptr inbounds i32, ptr %2, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !177
  %16 = getelementptr inbounds double, ptr %15, i64 %13
  %17 = load double, ptr %16, align 8, !tbaa !178
  br label %20

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %19 = load double, ptr %6, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %20

20:                                               ; preds = %10, %18
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  %22 = getelementptr inbounds i32, ptr %2, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %7, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = icmp eq i32 %26, 21
  br i1 %27, label %28, label %36, !prof !230

28:                                               ; preds = %20
  %29 = getelementptr inbounds i32, ptr %25, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = getelementptr inbounds double, ptr %33, i64 %31
  %35 = load double, ptr %34, align 8, !tbaa !178
  br label %38

36:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %37 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi double [ %35, %28 ], [ %37, %36 ]
  %40 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef %21, double noundef %39)
  ret double %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = icmp eq i32 %7, 21
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds i32, ptr %2, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !168
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = getelementptr inbounds double, ptr %14, i64 %12
  %16 = load double, ptr %15, align 8, !tbaa !178
  br label %19

17:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %18 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %19

19:                                               ; preds = %9, %17
  %20 = phi double [ %16, %9 ], [ %18, %17 ]
  %21 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef %20)
  ret double %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store ptr %4, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %4, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %4)
  store ptr %11, ptr %7, align 8, !tbaa !272
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(44) %11)
          to label %12 unwind label %32

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %18 unwind label %32

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !tbaa !272
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !tbaa !270
  %23 = load ptr, ptr %22, align 8, !tbaa !166
  %24 = getelementptr inbounds ptr, ptr %23, i64 22
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull %19)
          to label %27 unwind label %28

27:                                               ; preds = %21
  store ptr null, ptr %7, align 8, !tbaa !272
  br label %31

28:                                               ; preds = %21
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #20
  unreachable

31:                                               ; preds = %18, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void

32:                                               ; preds = %12, %5
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %7, align 8, !tbaa !272
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8, !tbaa !270
  %38 = load ptr, ptr %37, align 8, !tbaa !166
  %39 = getelementptr inbounds ptr, ptr %38, i64 22
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef zeroext i1 %40(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull %34)
          to label %42 unwind label %43

42:                                               ; preds = %36
  store ptr null, ptr %7, align 8, !tbaa !272
  br label %46

43:                                               ; preds = %36
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %32, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  resume { ptr, i32 } %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %1, ptr nocapture noundef readonly %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = getelementptr inbounds i32, ptr %2, i64 2
  %6 = load i32, ptr %5, align 4, !tbaa !168
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %9, i64 %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !165, !range !186, !noundef !187
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  br i1 %13, label %20, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %15, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(41) %10)
  br label %28

20:                                               ; preds = %4
  %21 = load ptr, ptr %10, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(41) %10)
  %25 = load ptr, ptr %15, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(36) %24)
  br label %28

28:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %1, ptr nocapture noundef readonly %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !273 {
  %5 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %6 = getelementptr inbounds i32, ptr %2, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %8
  %12 = getelementptr inbounds i32, ptr %2, i64 3
  %13 = load i32, ptr %12, align 4, !tbaa !168
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %16 = load ptr, ptr %11, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(41) %11), !prof !274
  %20 = load ptr, ptr %15, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 8
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(41) %15), !prof !274
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(36) %23)
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !153
  %26 = load ptr, ptr %3, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 28
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %25)
          to label %29 unwind label %30, !prof !194

29:                                               ; preds = %4
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %1, ptr nocapture noundef readonly %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = getelementptr inbounds i32, ptr %2, i64 3
  %6 = load i32, ptr %5, align 4, !tbaa !168
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %9, i64 %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !165, !range !186, !noundef !187
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  br i1 %13, label %20, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %15, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(41) %10)
  br label %28

20:                                               ; preds = %4
  %21 = load ptr, ptr %10, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef double %23(ptr noundef nonnull align 8 dereferenceable(41) %10)
  %25 = load ptr, ptr %15, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %15, double noundef %24)
  br label %28

28:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath14runExtFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = getelementptr i8, ptr %3, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -4
  %14 = getelementptr inbounds i32, ptr %3, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !168
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %18, i64 %16
  %20 = getelementptr inbounds i32, ptr %3, i64 3
  %21 = load i32, ptr %20, align 4, !tbaa !168
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %18, i64 %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %4, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !236
  store ptr %25, ptr %6, align 8, !tbaa !275
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 1
  %27 = icmp sgt i32 %9, 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  br i1 %27, label %28, label %54

28:                                               ; preds = %5
  %29 = getelementptr inbounds i32, ptr %3, i64 4
  br label %30

30:                                               ; preds = %28, %42
  %31 = phi ptr [ %35, %42 ], [ %29, %28 ]
  %32 = getelementptr inbounds i32, ptr %31, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !168
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %36 unwind label %44

36:                                               ; preds = %30
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %37 unwind label %46

37:                                               ; preds = %36
  %38 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %38)
          to label %42 unwind label %39

39:                                               ; preds = %37
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #20
  unreachable

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %43 = icmp ult ptr %35, %13
  br i1 %43, label %30, label %54, !llvm.loop !277

44:                                               ; preds = %30
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %52

46:                                               ; preds = %36
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %48)
          to label %52 unwind label %49

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #20
  unreachable

52:                                               ; preds = %46, %44
  %53 = phi { ptr, i32 } [ %45, %44 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %73

54:                                               ; preds = %42, %5
  %55 = load ptr, ptr %19, align 8, !tbaa !166
  %56 = getelementptr inbounds ptr, ptr %55, i64 8
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef nonnull align 8 dereferenceable(36) ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %19)
          to label %59 unwind label %71

59:                                               ; preds = %54
  %60 = load ptr, ptr %23, align 8, !tbaa !166
  %61 = getelementptr inbounds ptr, ptr %60, i64 8
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef nonnull align 8 dereferenceable(36) ptr %62(ptr noundef nonnull align 8 dereferenceable(41) %23)
          to label %64 unwind label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !153, !noalias !280
  %67 = load ptr, ptr %4, align 8, !tbaa !166, !noalias !280
  %68 = getelementptr inbounds ptr, ptr %67, i64 19
  %69 = load ptr, ptr %68, align 8, !noalias !280
  invoke void %69(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %58, ptr noundef nonnull align 8 dereferenceable(36) %63, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %66)
          to label %70 unwind label %71

70:                                               ; preds = %64
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  ret void

71:                                               ; preds = %64, %59, %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %73

73:                                               ; preds = %71, %52
  %74 = phi { ptr, i32 } [ %53, %52 ], [ %72, %71 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  resume { ptr, i32 } %74
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !283 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %15 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %16 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %17 = getelementptr inbounds i32, ptr %3, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !168
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = getelementptr i8, ptr %3, i64 %20
  %22 = getelementptr i8, ptr %21, i64 -4
  %23 = getelementptr inbounds i32, ptr %3, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !168
  %25 = getelementptr inbounds i32, ptr %3, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !168
  %27 = getelementptr inbounds i32, ptr %3, i64 4
  switch i32 %26, label %200 [
    i32 0, label %28
    i32 1, label %37
    i32 2, label %57
    i32 3, label %112
  ], !prof !284

28:                                               ; preds = %5
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr @_ZN11xalanc_1_105XPath11s_functionsE, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !257
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = load ptr, ptr %31, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef %33)
  br label %245

37:                                               ; preds = %5
  %38 = sext i32 %24 to i64
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr @_ZN11xalanc_1_105XPath11s_functionsE, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !257
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = load ptr, ptr %40, align 8, !tbaa !166
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %37
  %47 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %47)
          to label %245 unwind label %48

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #20
  unreachable

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          cleanup
  %53 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %53)
          to label %246 unwind label %54

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %58 = getelementptr inbounds i32, ptr %3, i64 5
  %59 = load i32, ptr %58, align 4, !tbaa !168
  %60 = sext i32 %24 to i64
  %61 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr @_ZN11xalanc_1_105XPath11s_functionsE, i64 0, i32 1, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !257
  %63 = load ptr, ptr %7, align 8, !tbaa !210
  store ptr %63, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %63)
          to label %64 unwind label %89, !prof !285

64:                                               ; preds = %57
  %65 = sext i32 %59 to i64
  %66 = getelementptr inbounds i32, ptr %27, i64 %65
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %66, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %67 unwind label %91, !prof !285

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !153
  %70 = load ptr, ptr %62, align 8, !tbaa !166
  %71 = getelementptr inbounds ptr, ptr %70, i64 5
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %69)
          to label %73 unwind label %93, !prof !286

73:                                               ; preds = %67
  %74 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %74)
          to label %78 unwind label %75, !prof !285

75:                                               ; preds = %73
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #20
  unreachable

78:                                               ; preds = %73
  %79 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %79)
          to label %83 unwind label %80, !prof !285

80:                                               ; preds = %78
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #20
  unreachable

83:                                               ; preds = %78
  %84 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %84)
          to label %88 unwind label %85, !prof !285

85:                                               ; preds = %83
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #20
  unreachable

88:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %245

89:                                               ; preds = %57
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %105

91:                                               ; preds = %64
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %99

93:                                               ; preds = %67
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = load ptr, ptr %9, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %95)
          to label %99 unwind label %96

96:                                               ; preds = %93
  %97 = landingpad { ptr, i32 }
          catch ptr null
  %98 = extractvalue { ptr, i32 } %97, 0
  call void @__clang_call_terminate(ptr %98) #20
  unreachable

99:                                               ; preds = %93, %91
  %100 = phi { ptr, i32 } [ %92, %91 ], [ %94, %93 ]
  %101 = load ptr, ptr %8, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %101)
          to label %105 unwind label %102

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #20
  unreachable

105:                                              ; preds = %99, %89
  %106 = phi { ptr, i32 } [ %90, %89 ], [ %100, %99 ]
  %107 = load ptr, ptr %7, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %107)
          to label %111 unwind label %108

108:                                              ; preds = %105
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #20
  unreachable

111:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %246

112:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %113 = getelementptr inbounds i32, ptr %3, i64 5
  %114 = load i32, ptr %113, align 4, !tbaa !168
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %27, i64 %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %116, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %117 unwind label %161, !prof !287

117:                                              ; preds = %112
  %118 = getelementptr inbounds i32, ptr %116, i64 1
  %119 = load i32, ptr %118, align 4, !tbaa !168
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %116, i64 %120
  %122 = sext i32 %24 to i64
  %123 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr @_ZN11xalanc_1_105XPath11s_functionsE, i64 0, i32 1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !257
  %125 = load ptr, ptr %10, align 8, !tbaa !210
  store ptr %125, ptr %12, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %125)
          to label %126 unwind label %163, !prof !287

126:                                              ; preds = %117
  %127 = load ptr, ptr %11, align 8, !tbaa !210
  store ptr %127, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %127)
          to label %128 unwind label %165, !prof !287

128:                                              ; preds = %126
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull %121, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %129 unwind label %167, !prof !287

129:                                              ; preds = %128
  %130 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !153
  %132 = load ptr, ptr %124, align 8, !tbaa !166
  %133 = getelementptr inbounds ptr, ptr %132, i64 6
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %131)
          to label %135 unwind label %169, !prof !288

135:                                              ; preds = %129
  %136 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %136)
          to label %140 unwind label %137, !prof !287

137:                                              ; preds = %135
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #20
  unreachable

140:                                              ; preds = %135
  %141 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %141)
          to label %145 unwind label %142, !prof !287

142:                                              ; preds = %140
  %143 = landingpad { ptr, i32 }
          catch ptr null
  %144 = extractvalue { ptr, i32 } %143, 0
  call void @__clang_call_terminate(ptr %144) #20
  unreachable

145:                                              ; preds = %140
  %146 = load ptr, ptr %12, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %146)
          to label %150 unwind label %147, !prof !287

147:                                              ; preds = %145
  %148 = landingpad { ptr, i32 }
          catch ptr null
  %149 = extractvalue { ptr, i32 } %148, 0
  call void @__clang_call_terminate(ptr %149) #20
  unreachable

150:                                              ; preds = %145
  %151 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %151)
          to label %155 unwind label %152, !prof !287

152:                                              ; preds = %150
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #20
  unreachable

155:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %156 = load ptr, ptr %10, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %156)
          to label %160 unwind label %157, !prof !287

157:                                              ; preds = %155
  %158 = landingpad { ptr, i32 }
          catch ptr null
  %159 = extractvalue { ptr, i32 } %158, 0
  call void @__clang_call_terminate(ptr %159) #20
  unreachable

160:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %245

161:                                              ; preds = %112
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %193

163:                                              ; preds = %117
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %187

165:                                              ; preds = %126
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %181

167:                                              ; preds = %128
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %175

169:                                              ; preds = %129
  %170 = landingpad { ptr, i32 }
          cleanup
  %171 = load ptr, ptr %14, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %171)
          to label %175 unwind label %172

172:                                              ; preds = %169
  %173 = landingpad { ptr, i32 }
          catch ptr null
  %174 = extractvalue { ptr, i32 } %173, 0
  call void @__clang_call_terminate(ptr %174) #20
  unreachable

175:                                              ; preds = %169, %167
  %176 = phi { ptr, i32 } [ %168, %167 ], [ %170, %169 ]
  %177 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %177)
          to label %181 unwind label %178

178:                                              ; preds = %175
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #20
  unreachable

181:                                              ; preds = %175, %165
  %182 = phi { ptr, i32 } [ %166, %165 ], [ %176, %175 ]
  %183 = load ptr, ptr %12, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %183)
          to label %187 unwind label %184

184:                                              ; preds = %181
  %185 = landingpad { ptr, i32 }
          catch ptr null
  %186 = extractvalue { ptr, i32 } %185, 0
  call void @__clang_call_terminate(ptr %186) #20
  unreachable

187:                                              ; preds = %181, %163
  %188 = phi { ptr, i32 } [ %164, %163 ], [ %182, %181 ]
  %189 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %189)
          to label %193 unwind label %190

190:                                              ; preds = %187
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #20
  unreachable

193:                                              ; preds = %187, %161
  %194 = phi { ptr, i32 } [ %162, %161 ], [ %188, %187 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %195 = load ptr, ptr %10, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %195)
          to label %199 unwind label %196

196:                                              ; preds = %193
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  call void @__clang_call_terminate(ptr %198) #20
  unreachable

199:                                              ; preds = %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %246

200:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #19
  %201 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %4, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !236
  store ptr %202, ptr %15, align 8, !tbaa !275
  %203 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %15, i64 0, i32 1
  %204 = sext i32 %26 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %203, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %204)
          to label %205 unwind label %221

205:                                              ; preds = %200
  %206 = icmp sgt i32 %18, 5
  br i1 %206, label %207, label %233

207:                                              ; preds = %205, %215
  %208 = phi ptr [ %219, %215 ], [ %27, %205 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %208, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %209 unwind label %223

209:                                              ; preds = %207
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %210 unwind label %225

210:                                              ; preds = %209
  %211 = load ptr, ptr %16, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %211)
          to label %215 unwind label %212

212:                                              ; preds = %210
  %213 = landingpad { ptr, i32 }
          catch ptr null
  %214 = extractvalue { ptr, i32 } %213, 0
  call void @__clang_call_terminate(ptr %214) #20
  unreachable

215:                                              ; preds = %210
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  %216 = getelementptr inbounds i32, ptr %208, i64 1
  %217 = load i32, ptr %216, align 4, !tbaa !168
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, ptr %208, i64 %218
  %220 = icmp ult ptr %219, %22
  br i1 %220, label %207, label %233, !llvm.loop !289

221:                                              ; preds = %233, %200
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %243

223:                                              ; preds = %207
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %231

225:                                              ; preds = %209
  %226 = landingpad { ptr, i32 }
          cleanup
  %227 = load ptr, ptr %16, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %227)
          to label %231 unwind label %228

228:                                              ; preds = %225
  %229 = landingpad { ptr, i32 }
          catch ptr null
  %230 = extractvalue { ptr, i32 } %229, 0
  call void @__clang_call_terminate(ptr %230) #20
  unreachable

231:                                              ; preds = %225, %223
  %232 = phi { ptr, i32 } [ %224, %223 ], [ %226, %225 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #19
  br label %243

233:                                              ; preds = %215, %205
  %234 = sext i32 %24 to i64
  %235 = getelementptr inbounds %"class.xalanc_1_10::XPathFunctionTable", ptr @_ZN11xalanc_1_105XPath11s_functionsE, i64 0, i32 1, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !257, !noalias !290
  %237 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !153, !noalias !290
  %239 = load ptr, ptr %236, align 8, !tbaa !166, !noalias !290
  %240 = getelementptr inbounds ptr, ptr %239, i64 2
  %241 = load ptr, ptr %240, align 8, !noalias !290
  invoke void %241(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %236, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %238)
          to label %242 unwind label %221

242:                                              ; preds = %233
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  br label %245

243:                                              ; preds = %231, %221
  %244 = phi { ptr, i32 } [ %232, %231 ], [ %222, %221 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #19
  br label %246

245:                                              ; preds = %46, %242, %160, %88, %28
  ret void

246:                                              ; preds = %51, %243, %199, %111
  %247 = phi { ptr, i32 } [ %106, %111 ], [ %194, %199 ], [ %244, %243 ], [ %52, %51 ]
  resume { ptr, i32 } %247
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !293 {
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store ptr %4, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %4, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !294
  store ptr %11, ptr %7, align 8, !tbaa !272
  %12 = getelementptr inbounds i32, ptr %3, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(44) %11)
          to label %13 unwind label %33, !prof !295

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %19 unwind label %33, !prof !296

19:                                               ; preds = %13
  %20 = load ptr, ptr %7, align 8, !tbaa !272
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22, !prof !295

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !270
  %24 = load ptr, ptr %23, align 8, !tbaa !166
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull %20)
          to label %28 unwind label %29

28:                                               ; preds = %22
  store ptr null, ptr %7, align 8, !tbaa !272
  br label %32

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %19, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void

33:                                               ; preds = %5, %13
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load ptr, ptr %7, align 8, !tbaa !272
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 8, !tbaa !270
  %39 = load ptr, ptr %38, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 22
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull %35)
          to label %43 unwind label %44

43:                                               ; preds = %37
  store ptr null, ptr %7, align 8, !tbaa !272
  br label %47

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #20
  unreachable

47:                                               ; preds = %33, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !297 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !298
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %24, !prof !299

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !299

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = load ptr, ptr %18, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %36 unwind label %26

24:                                               ; preds = %4
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %51

26:                                               ; preds = %31, %19, %14
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %51 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #20
  unreachable

31:                                               ; preds = %11
  %32 = load ptr, ptr %9, align 8, !tbaa !166
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %36 unwind label %26, !prof !300

36:                                               ; preds = %31, %19
  %37 = phi i32 [ %23, %19 ], [ %35, %31 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %41 unwind label %38, !prof !299

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #20
  unreachable

41:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %42 = load ptr, ptr %3, align 8, !tbaa !166
  %43 = getelementptr inbounds ptr, ptr %42, i64 22
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %49 unwind label %46, !prof !301

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #20
  unreachable

49:                                               ; preds = %41
  %50 = uitofp i32 %37 to double
  ret double %50

51:                                               ; preds = %26, %24
  %52 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %53 = icmp eq ptr %9, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 8, !tbaa !166
  %56 = getelementptr inbounds ptr, ptr %55, i64 22
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef zeroext i1 %57(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %62 unwind label %59

59:                                               ; preds = %54
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  tail call void @__clang_call_terminate(ptr %61) #20
  unreachable

62:                                               ; preds = %54, %51
  resume { ptr, i32 } %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath12functionNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %27

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %19 unwind label %29

19:                                               ; preds = %14, %11
  %20 = phi ptr [ %9, %11 ], [ %18, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %25 unwind label %29

25:                                               ; preds = %19
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %41, label %34

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %55

29:                                               ; preds = %39, %34, %19, %14
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %55 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %25
  %35 = load ptr, ptr %20, align 8, !tbaa !166
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 0)
          to label %39 unwind label %29

39:                                               ; preds = %34
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %41 unwind label %29

41:                                               ; preds = %39, %25
  %42 = phi ptr [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %25 ], [ %40, %39 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %46 unwind label %43

43:                                               ; preds = %41
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %47 = load ptr, ptr %3, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 22
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %54 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %46
  ret ptr %42

55:                                               ; preds = %29, %27
  %56 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %57 = icmp eq ptr %9, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !tbaa !166
  %60 = getelementptr inbounds ptr, ptr %59, i64 22
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %66 unwind label %63

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #20
  unreachable

66:                                               ; preds = %58, %55
  resume { ptr, i32 } %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i32 %6, label %38 [
    i32 7, label %7
    i32 1, label %7
    i32 2, label %20
  ]

7:                                                ; preds = %2, %2
  %8 = load ptr, ptr %1, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !218
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %38

20:                                               ; preds = %2
  %21 = load ptr, ptr %1, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 24
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !218
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load ptr, ptr %1, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %33

33:                                               ; preds = %20, %28
  %34 = phi ptr [ %32, %28 ], [ %24, %20 ]
  %35 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !257
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %34, ptr noundef nonnull align 8 dereferenceable(36) %35)
  %37 = select i1 %36, ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %34
  br label %38

38:                                               ; preds = %2, %15, %7, %33
  %39 = phi ptr [ %37, %33 ], [ %19, %15 ], [ %11, %7 ], [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %2 ]
  ret ptr %39
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %27

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %19 unwind label %29

19:                                               ; preds = %14, %11
  %20 = phi ptr [ %9, %11 ], [ %18, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %25 unwind label %29

25:                                               ; preds = %19
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %41, label %34

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %55

29:                                               ; preds = %39, %34, %19, %14
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %55 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %25
  %35 = load ptr, ptr %20, align 8, !tbaa !166
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 0)
          to label %39 unwind label %29

39:                                               ; preds = %34
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_105XPath17functionLocalNameEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr noundef %38)
          to label %41 unwind label %29

41:                                               ; preds = %39, %25
  %42 = phi ptr [ @_ZN11xalanc_1_105XPath13s_emptyStringE, %25 ], [ %40, %39 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %46 unwind label %43

43:                                               ; preds = %41
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %47 = load ptr, ptr %3, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 22
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %54 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %46
  ret ptr %42

55:                                               ; preds = %29, %27
  %56 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %57 = icmp eq ptr %9, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !tbaa !166
  %60 = getelementptr inbounds ptr, ptr %59, i64 22
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %66 unwind label %63

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #20
  unreachable

66:                                               ; preds = %58, %55
  resume { ptr, i32 } %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 17, i64 0)
          to label %4 unwind label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %3, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !203
  %7 = uitofp i64 %6 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret double %7

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %9
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath20functionStringLengthEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %6 = alloca { i64, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  store i64 17, ptr %6, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  store i64 0, ptr %8, align 8, !tbaa !201
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval({ i64, i64 }) align 8 %6)
          to label %9 unwind label %13, !prof !202

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %5, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !203
  %12 = uitofp i64 %11 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret double %12

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !302 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !303
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %44, !prof !304

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !304

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %19 unwind label %46

19:                                               ; preds = %11, %14
  %20 = phi ptr [ %18, %14 ], [ %9, %11 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %25 unwind label %48, !prof !305

25:                                               ; preds = %19
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %83, label %27, !prof !306

27:                                               ; preds = %25
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 23
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef nonnull align 8 dereferenceable(36) ptr %30(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %32 unwind label %50, !prof !307

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %31, i64 0, i32 1
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %31, i64 0, i32 1
  br label %52

36:                                               ; preds = %71
  %37 = load ptr, ptr %3, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %31)
          to label %83 unwind label %41, !prof !308

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %4
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %102

46:                                               ; preds = %14
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %97

48:                                               ; preds = %19
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %97

50:                                               ; preds = %27
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %97

52:                                               ; preds = %32, %71
  %53 = phi i32 [ 0, %32 ], [ %72, %71 ]
  %54 = phi double [ 0.000000e+00, %32 ], [ %64, %71 ]
  %55 = load ptr, ptr %20, align 8, !tbaa !166
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %53)
          to label %59 unwind label %74, !prof !309

59:                                               ; preds = %52
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(36) %31)
          to label %60 unwind label %74, !prof !310

60:                                               ; preds = %59
  %61 = load ptr, ptr %33, align 8, !tbaa !236
  %62 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %31, ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %63 unwind label %74, !prof !310

63:                                               ; preds = %60
  %64 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %54, double noundef %62)
          to label %65 unwind label %74, !prof !310

65:                                               ; preds = %63
  %66 = load i64, ptr %34, align 8, !tbaa !246
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %71, label %68, !prof !311

68:                                               ; preds = %65
  %69 = load i64, ptr %34, align 8, !tbaa !246
  %70 = sub i64 %69, %66
  store i64 %70, ptr %34, align 8, !tbaa !246
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, ptr %35, align 8, !tbaa !218
  %72 = add nuw i32 %53, 1
  %73 = icmp eq i32 %72, %24
  br i1 %73, label %36, label %52, !prof !312, !llvm.loop !313

74:                                               ; preds = %63, %60, %59, %52
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = load ptr, ptr %3, align 8, !tbaa !166
  %77 = getelementptr inbounds ptr, ptr %76, i64 24
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef zeroext i1 %78(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %31)
          to label %97 unwind label %80

80:                                               ; preds = %74
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  tail call void @__clang_call_terminate(ptr %82) #20
  unreachable

83:                                               ; preds = %36, %25
  %84 = phi double [ 0.000000e+00, %25 ], [ %64, %36 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %88 unwind label %85, !prof !304

85:                                               ; preds = %83
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  tail call void @__clang_call_terminate(ptr %87) #20
  unreachable

88:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %89 = load ptr, ptr %3, align 8, !tbaa !166
  %90 = getelementptr inbounds ptr, ptr %89, i64 22
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef zeroext i1 %91(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %96 unwind label %93, !prof !314

93:                                               ; preds = %88
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  tail call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %88
  ret double %84

97:                                               ; preds = %50, %74, %48, %46
  %98 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ], [ %51, %50 ], [ %75, %74 ]
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %12)
          to label %102 unwind label %99

99:                                               ; preds = %97
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  tail call void @__clang_call_terminate(ptr %101) #20
  unreachable

102:                                              ; preds = %97, %44
  %103 = phi { ptr, i32 } [ %45, %44 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %104 = icmp eq ptr %9, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %3, align 8, !tbaa !166
  %107 = getelementptr inbounds ptr, ptr %106, i64 22
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef zeroext i1 %108(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %113 unwind label %110

110:                                              ; preds = %105
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  tail call void @__clang_call_terminate(ptr %112) #20
  unreachable

113:                                              ; preds = %105, %102
  resume { ptr, i32 } %103
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %10 unwind label %26

10:                                               ; preds = %5
  %11 = load ptr, ptr %9, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %15 unwind label %26

15:                                               ; preds = %10
  %16 = icmp ne i32 %14, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %4, align 1, !tbaa !200
  %18 = load ptr, ptr %3, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 22
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %25 unwind label %22

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #20
  unreachable

25:                                               ; preds = %15
  ret void

26:                                               ; preds = %10, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = icmp eq ptr %9, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 8, !tbaa !166
  %31 = getelementptr inbounds ptr, ptr %30, i64 22
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %37 unwind label %34

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #20
  unreachable

37:                                               ; preds = %29, %26
  resume { ptr, i32 } %27
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #3 align 2 !prof !151 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(41) %9)
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %2, align 1, !tbaa !200
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #3 align 2 !prof !151 {
  %4 = getelementptr inbounds i32, ptr %1, i64 3
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(41) %9)
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %2, align 1, !tbaa !200
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !315
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %27, !prof !215

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %16 unwind label %27, !prof !216

16:                                               ; preds = %11
  %17 = icmp ne i32 %15, 0
  %18 = zext i1 %17 to i8
  store i8 %18, ptr %4, align 1, !tbaa !200
  %19 = load ptr, ptr %3, align 8, !tbaa !166
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %26 unwind label %23, !prof !217

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #20
  unreachable

26:                                               ; preds = %16
  ret void

27:                                               ; preds = %11, %5
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = icmp eq ptr %9, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8, !tbaa !166
  %32 = getelementptr inbounds ptr, ptr %31, i64 22
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %38 unwind label %35

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #20
  unreachable

38:                                               ; preds = %30, %27
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %10 unwind label %21

10:                                               ; preds = %5
  %11 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %12 unwind label %21

12:                                               ; preds = %10
  store double %11, ptr %4, align 8, !tbaa !178
  %13 = load ptr, ptr %3, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 22
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %20 unwind label %17

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #20
  unreachable

20:                                               ; preds = %12
  ret void

21:                                               ; preds = %10, %5
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = icmp eq ptr %9, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 22
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %32 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %24, %21
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRd(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 !prof !151 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef double %12(ptr noundef nonnull align 8 dereferenceable(41) %9)
  store double %13, ptr %2, align 8, !tbaa !178
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath9numberlitEPKi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 align 2 !prof !151 {
  %3 = getelementptr inbounds i32, ptr %1, i64 3
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %7, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef double %11(ptr noundef nonnull align 8 dereferenceable(41) %8)
  ret double %12
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !315
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %22, !prof !225

11:                                               ; preds = %5
  %12 = invoke noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %13 unwind label %22, !prof !225

13:                                               ; preds = %11
  store double %12, ptr %4, align 8, !tbaa !178
  %14 = load ptr, ptr %3, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 22
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %21 unwind label %18, !prof !234

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %13
  ret void

22:                                               ; preds = %5, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = icmp eq ptr %9, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %33 unwind label %30

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #20
  unreachable

33:                                               ; preds = %25, %22
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3)
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %10 unwind label %32

10:                                               ; preds = %5
  %11 = load ptr, ptr %9, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %15 unwind label %32

15:                                               ; preds = %10
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %9, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %22 unwind label %32

22:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %23 unwind label %32

23:                                               ; preds = %22, %15
  %24 = load ptr, ptr %3, align 8, !tbaa !166
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %31 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #20
  unreachable

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %22, %17, %10, %5
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = icmp eq ptr %9, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 8, !tbaa !166
  %37 = getelementptr inbounds ptr, ptr %36, i64 22
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef zeroext i1 %38(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %43 unwind label %40

40:                                               ; preds = %35
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %35, %32
  resume { ptr, i32 } %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 !prof !151 {
  %4 = getelementptr inbounds i32, ptr %1, i64 2
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 !prof !151 {
  %4 = getelementptr inbounds i32, ptr %1, i64 3
  %5 = load i32, ptr %4, align 4, !tbaa !168
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %8, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(41) %9, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !316 {
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !317
  %10 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %11 unwind label %33, !prof !318

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %16 unwind label %33, !prof !319

16:                                               ; preds = %11
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %24, label %18, !prof !320

18:                                               ; preds = %16
  %19 = load ptr, ptr %9, align 8, !tbaa !166
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %23 unwind label %33, !prof !321

23:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %24 unwind label %33, !prof !318

24:                                               ; preds = %23, %16
  %25 = load ptr, ptr %3, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 22
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %32 unwind label %29, !prof !322

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %24
  ret void

33:                                               ; preds = %23, %18, %11, %5
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = icmp eq ptr %9, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 22
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %9)
          to label %44 unwind label %41

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %36, %33
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #3 comdat align 2 !prof !151 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %0, label %8, label %16

8:                                                ; preds = %4
  br i1 %7, label %14, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 8, !tbaa !166
  %11 = getelementptr i8, ptr %10, i64 %2
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !nosanitize !187
  br label %24

14:                                               ; preds = %8
  %15 = inttoptr i64 %2 to ptr
  br label %24

16:                                               ; preds = %4
  br i1 %7, label %22, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %5, align 8, !tbaa !166
  %19 = getelementptr i8, ptr %18, i64 %2
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load ptr, ptr %20, align 8, !nosanitize !187
  br label %24

22:                                               ; preds = %16
  %23 = inttoptr i64 %2 to ptr
  br label %24

24:                                               ; preds = %17, %22, %9, %14
  %25 = phi ptr [ @_ZN11xalanc_1_107XObject12s_trueStringE, %14 ], [ @_ZN11xalanc_1_107XObject12s_trueStringE, %9 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %22 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %17 ]
  %26 = phi ptr [ %15, %14 ], [ %13, %9 ], [ %23, %22 ], [ %21, %17 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !257
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !246
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %27, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = select i1 %30, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %32
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %27, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !218
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %33, i32 noundef %35)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath4plusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath5minusEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath4multEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3modEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = tail call noundef double @_ZNK11xalanc_1_105XPath3negEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  tail call void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = load ptr, ptr %3, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 21
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %3)
  invoke void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %13)
          to label %14 unwind label %36

14:                                               ; preds = %6
  %15 = load ptr, ptr %13, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %19 unwind label %36

19:                                               ; preds = %14
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %13, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0)
          to label %26 unwind label %36

26:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
          to label %27 unwind label %36

27:                                               ; preds = %26, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 22
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %13)
          to label %35 unwind label %32

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #20
  unreachable

35:                                               ; preds = %27
  ret void

36:                                               ; preds = %26, %21, %14, %6
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = icmp eq ptr %13, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 8, !tbaa !166
  %41 = getelementptr inbounds ptr, ptr %40, i64 22
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %13)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #20
  unreachable

47:                                               ; preds = %39, %36
  resume { ptr, i32 } %37
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath7literalEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) local_unnamed_addr #3 align 2 !prof !151 {
  %6 = getelementptr inbounds i32, ptr %1, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_17FormatterListenerEMS3_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4) local_unnamed_addr #3 align 2 !prof !151 {
  %6 = getelementptr inbounds i32, ptr %1, i64 3
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(41) %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i64 %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nocapture noundef readonly byval({ i64, i64 }) align 8 %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  %7 = load i64, ptr %5, align 8, !tbaa !201
  %8 = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !201
  %10 = load ptr, ptr %3, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 21
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !324
  %14 = getelementptr inbounds i32, ptr %2, i64 2
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull align 8 dereferenceable(44) %13)
          to label %15 unwind label %37, !prof !325

15:                                               ; preds = %6
  %16 = load ptr, ptr %13, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %20 unwind label %37, !prof !326

20:                                               ; preds = %15
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %28, label %22, !prof !327

22:                                               ; preds = %20
  %23 = load ptr, ptr %13, align 8, !tbaa !166
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0)
          to label %27 unwind label %37, !prof !328

27:                                               ; preds = %22
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %7, i64 %9)
          to label %28 unwind label %37, !prof !329

28:                                               ; preds = %27, %20
  %29 = load ptr, ptr %3, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 22
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %13)
          to label %36 unwind label %33, !prof !330

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #20
  unreachable

36:                                               ; preds = %28
  ret void

37:                                               ; preds = %27, %22, %15, %6
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = icmp eq ptr %13, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %3, align 8, !tbaa !166
  %42 = getelementptr inbounds ptr, ptr %41, i64 22
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %13)
          to label %48 unwind label %45

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  tail call void @__clang_call_terminate(ptr %47) #20
  unreachable

48:                                               ; preds = %40, %37
  resume { ptr, i32 } %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath5UnionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = getelementptr inbounds i32, ptr %2, i64 2
  %8 = load ptr, ptr %3, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %12 = load i32, ptr %7, align 4, !tbaa !168
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %57, label %14

14:                                               ; preds = %5, %40
  %15 = phi ptr [ %42, %40 ], [ %7, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  invoke void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(44) %11)
          to label %16 unwind label %25

16:                                               ; preds = %14
  %17 = load ptr, ptr %6, align 8, !tbaa !210
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 13
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr %22(ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %24 unwind label %27

24:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %34 unwind label %27

25:                                               ; preds = %14
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %45

27:                                               ; preds = %33, %32, %24, %19
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %45 unwind label %29

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %33 unwind label %27

33:                                               ; preds = %32
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %11)
          to label %34 unwind label %27

34:                                               ; preds = %33, %24
  %35 = getelementptr inbounds i32, ptr %15, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !168
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %40 unwind label %37

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #20
  unreachable

40:                                               ; preds = %34
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i32, ptr %15, i64 %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %43 = load i32, ptr %42, align 4, !tbaa !168
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %57, label %14, !llvm.loop !331

45:                                               ; preds = %27, %25
  %46 = phi { ptr, i32 } [ %26, %25 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %47 = icmp eq ptr %11, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !166
  %50 = getelementptr inbounds ptr, ptr %49, i64 22
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef zeroext i1 %51(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %11)
          to label %56 unwind label %53

53:                                               ; preds = %48
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #20
  unreachable

56:                                               ; preds = %48, %45
  resume { ptr, i32 } %46

57:                                               ; preds = %40, %5
  %58 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %4, i64 0, i32 1
  store i32 1, ptr %58, align 8, !tbaa !332
  %59 = icmp eq ptr %11, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 8, !tbaa !166
  %62 = getelementptr inbounds ptr, ptr %61, i64 22
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %11)
          to label %68 unwind label %65

65:                                               ; preds = %60
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  tail call void @__clang_call_terminate(ptr %67) #20
  unreachable

68:                                               ; preds = %60, %57
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = load i32, ptr %6, align 4, !tbaa !168
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %39, label %9, !prof !339

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !166
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 13)
          to label %15 unwind label %29

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = load ptr, ptr %2, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef %1, ptr noundef %17)
          to label %21 unwind label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %56 unwind label %26

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #20
  unreachable

29:                                               ; preds = %15, %9
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %2, align 8, !tbaa !166
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %38 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #20
  unreachable

38:                                               ; preds = %29
  resume { ptr, i32 } %30

39:                                               ; preds = %3
  %40 = getelementptr inbounds i32, ptr %6, i64 2
  %41 = load i32, ptr %40, align 4, !tbaa !168
  %42 = icmp eq i32 %41, 49
  br i1 %42, label %48, label %56, !prof !340

43:                                               ; preds = %48
  %44 = sext i32 %51 to i64
  %45 = getelementptr inbounds i32, ptr %49, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !168
  %47 = icmp eq i32 %46, 49
  br i1 %47, label %48, label %56, !prof !339

48:                                               ; preds = %39, %43
  %49 = phi ptr [ %45, %43 ], [ %40, %39 ]
  %50 = getelementptr inbounds i32, ptr %49, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !tbaa !341
  %52 = getelementptr inbounds i32, ptr %49, i64 2
  %53 = call noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1, ptr noundef nonnull %52, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %54 = load i32, ptr %4, align 4, !tbaa !341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56, !prof !343

56:                                               ; preds = %43, %48, %39, %21
  %57 = phi i32 [ 0, %21 ], [ 0, %39 ], [ %54, %48 ], [ %54, %43 ]
  ret i32 %57
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !338 {
  %5 = load ptr, ptr %3, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 29
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %3), !prof !344
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %12, !prof !343

10:                                               ; preds = %4
  %11 = tail call noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %33

12:                                               ; preds = %4
  %13 = load ptr, ptr %3, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 30
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2), !prof !345
  %16 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %17 unwind label %24, !prof !339

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 30
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %33 unwind label %21, !prof !345

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #20
  unreachable

24:                                               ; preds = %12
  %25 = landingpad { ptr, i32 }
          cleanup
  %26 = load ptr, ptr %3, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 30
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %8)
          to label %32 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %24
  resume { ptr, i32 } %25

33:                                               ; preds = %17, %10
  %34 = phi i32 [ %11, %10 ], [ %16, %17 ]
  ret i32 %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 !prof !346 {
  %3 = alloca %"class.xalanc_1_10::XPath::TargetData", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = getelementptr inbounds i32, ptr %5, i64 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !347
  %9 = icmp ult i64 %8, 5
  br i1 %9, label %10, label %11, !prof !349

10:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 5)
  br label %11

11:                                               ; preds = %2, %10
  %12 = load i32, ptr %6, align 4, !tbaa !168
  %13 = icmp eq i32 %12, 49
  br i1 %13, label %14, label %139, !prof !350

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %3, i64 0, i32 2
  br label %20

17:                                               ; preds = %136, %20
  %18 = load i32, ptr %25, align 4, !tbaa !168
  %19 = icmp eq i32 %18, 49
  br i1 %19, label %20, label %139, !prof !351, !llvm.loop !352

20:                                               ; preds = %14, %17
  %21 = phi ptr [ %6, %14 ], [ %25, %17 ]
  %22 = getelementptr inbounds i32, ptr %21, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = getelementptr inbounds i32, ptr %21, i64 2
  %27 = load i32, ptr %26, align 4, !tbaa !168
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %17, label %29, !prof !351

29:                                               ; preds = %20, %136
  %30 = phi i32 [ %137, %136 ], [ %27, %20 ]
  %31 = phi ptr [ %37, %136 ], [ %26, %20 ]
  %32 = phi i64 [ %33, %136 ], [ 0, %20 ]
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds i32, ptr %31, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !168
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %31, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !168
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %136, !prof !353

40:                                               ; preds = %29
  %41 = getelementptr inbounds i32, ptr %31, i64 3
  switch i32 %30, label %128 [
    i32 24, label %42
    i32 47, label %43
    i32 50, label %44
    i32 51, label %45
    i32 52, label %45
  ], !prof !354

42:                                               ; preds = %40
  br label %128

43:                                               ; preds = %40
  br label %128

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %40, %40, %44
  %46 = phi i32 [ 1, %40 ], [ 0, %44 ], [ 1, %40 ]
  %47 = load i32, ptr %41, align 4, !tbaa !168
  switch i32 %47, label %127 [
    i32 27, label %128
    i32 28, label %48
    i32 30, label %49
    i32 32, label %50
    i32 33, label %51
    i32 29, label %52
    i32 31, label %57
  ], !prof !355

48:                                               ; preds = %45
  br label %128

49:                                               ; preds = %45
  br label %128

50:                                               ; preds = %45
  br label %128

51:                                               ; preds = %45
  br label %128

52:                                               ; preds = %45
  %53 = getelementptr inbounds i32, ptr %31, i64 2
  %54 = load i32, ptr %53, align 4, !tbaa !168
  switch i32 %54, label %56 [
    i32 4, label %128
    i32 5, label %55
  ]

55:                                               ; preds = %52
  br label %128

56:                                               ; preds = %52
  br label %128

57:                                               ; preds = %45
  %58 = getelementptr inbounds i32, ptr %31, i64 4
  %59 = load i32, ptr %58, align 4, !tbaa !168
  %60 = add i32 %59, 3
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %71, label %62, !prof !356

62:                                               ; preds = %57
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %64 = sext i32 %59 to i64
  %65 = load ptr, ptr %63, align 8, !tbaa !185
  %66 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %65, i64 %64
  %67 = load ptr, ptr %66, align 8, !tbaa !166
  %68 = getelementptr inbounds ptr, ptr %67, i64 8
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef nonnull align 8 dereferenceable(36) ptr %69(ptr noundef nonnull align 8 dereferenceable(24) %66), !prof !357
  br label %71

71:                                               ; preds = %57, %62
  %72 = phi ptr [ %70, %62 ], [ null, %57 ]
  %73 = getelementptr inbounds i32, ptr %31, i64 5
  %74 = load i32, ptr %73, align 4, !tbaa !168
  %75 = add i32 %74, 3
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %86, label %77, !prof !358

77:                                               ; preds = %71
  %78 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 2, i32 3
  %79 = sext i32 %74 to i64
  %80 = load ptr, ptr %78, align 8, !tbaa !185
  %81 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %80, i64 %79
  %82 = load ptr, ptr %81, align 8, !tbaa !166
  %83 = getelementptr inbounds ptr, ptr %82, i64 8
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef nonnull align 8 dereferenceable(36) ptr %84(ptr noundef nonnull align 8 dereferenceable(24) %81), !prof !359
  br label %86

86:                                               ; preds = %71, %77
  %87 = phi ptr [ %85, %77 ], [ null, %71 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89, !prof !358

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !246
  %92 = icmp eq i64 %91, 0
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %87, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = select i1 %92, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %94, !prof !358
  br label %96

96:                                               ; preds = %86, %89
  %97 = phi ptr [ %95, %89 ], [ null, %86 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %99, !prof !358

99:                                               ; preds = %96
  %100 = icmp eq ptr %97, @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE
  br i1 %100, label %101, label %128, !prof !358

101:                                              ; preds = %99
  %102 = icmp eq ptr %72, null
  br i1 %102, label %128, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !246
  %106 = icmp eq i64 %105, 0
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8
  %109 = select i1 %106, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %108
  %110 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %109)
  %111 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE)
  %112 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %109, i32 noundef %110, ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, i32 noundef %111)
  %113 = select i1 %112, i32 1, i32 2
  br label %128

114:                                              ; preds = %96
  %115 = icmp eq ptr %72, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !246
  %119 = icmp eq i64 %118, 0
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %72, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = select i1 %119, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %121
  %123 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %122)
  %124 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE)
  %125 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %122, i32 noundef %123, ptr noundef nonnull @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, i32 noundef %124)
  %126 = select i1 %125, i32 1, i32 2
  br label %128

127:                                              ; preds = %45
  br label %128

128:                                              ; preds = %45, %116, %103, %48, %49, %50, %51, %127, %52, %56, %55, %114, %99, %101, %40, %43, %42
  %129 = phi i32 [ 3, %40 ], [ 3, %43 ], [ 2, %42 ], [ 3, %127 ], [ 1, %51 ], [ 3, %50 ], [ 3, %49 ], [ 3, %48 ], [ 3, %52 ], [ 3, %56 ], [ 3, %55 ], [ %46, %114 ], [ %46, %99 ], [ %46, %101 ], [ %46, %103 ], [ %46, %116 ], [ 3, %45 ]
  %130 = phi ptr [ null, %40 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE, %43 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %42 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %127 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %51 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_ROOTE, %50 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_NODEE, %49 ], [ @_ZN11xalanc_1_105XPath15PSEUDONAME_TEXTE, %48 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %52 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %56 ], [ @_ZN11xalanc_1_105XPath13PSEUDONAME_PIE, %55 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %114 ], [ %97, %99 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %101 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %103 ], [ @_ZN11xalanc_1_105XPath14PSEUDONAME_ANYE, %116 ], [ @_ZN11xalanc_1_105XPath18PSEUDONAME_COMMENTE, %45 ]
  %131 = phi i32 [ 0, %40 ], [ 4, %43 ], [ 4, %42 ], [ 1, %127 ], [ 1, %51 ], [ 1, %50 ], [ 1, %49 ], [ 1, %48 ], [ 1, %52 ], [ 0, %56 ], [ 3, %55 ], [ 1, %114 ], [ 3, %99 ], [ 1, %101 ], [ %113, %103 ], [ %126, %116 ], [ 1, %45 ]
  %132 = icmp ugt i64 %33, 1
  %133 = icmp sgt i32 %35, 6
  %134 = or i1 %132, %133
  %135 = select i1 %134, i32 4, i32 %131, !prof !360
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %130, ptr %3, align 8, !tbaa !361
  store i32 %135, ptr %15, align 8, !tbaa !364
  store i32 %129, ptr %16, align 4, !tbaa !365
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %136

136:                                              ; preds = %128, %29
  %137 = load i32, ptr %37, align 4, !tbaa !168
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %17, label %29, !prof !366, !llvm.loop !367

139:                                              ; preds = %17, %11
  ret void
}

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_105XPath17getNumericOperandEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca double, align 8
  %6 = load i32, ptr %2, align 4, !tbaa !168
  %7 = icmp eq i32 %6, 21
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, ptr %2, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !168
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  %14 = getelementptr inbounds double, ptr %13, i64 %11
  %15 = load double, ptr %14, align 8, !tbaa !178
  br label %18

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %17 = load double, ptr %5, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi double [ %15, %8 ], [ %17, %16 ]
  ret double %19
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8subtractEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport6divideEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport7modulusEdd(double noundef, double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8negativeEd(double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !368 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !369
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %27, label %5, !prof !370

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !371
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !372
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %21, label %12, !prof !351

12:                                               ; preds = %5, %18
  %13 = phi ptr [ %19, %18 ], [ %7, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %14)
          to label %18 unwind label %15, !prof !373

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #20
  unreachable

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %12, !prof !374, !llvm.loop !375

21:                                               ; preds = %18, %5
  %22 = load ptr, ptr %6, align 8, !tbaa !371
  %23 = load ptr, ptr %0, align 8, !tbaa !275
  %24 = load ptr, ptr %23, align 8, !tbaa !166
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %22)
          to label %27 unwind label %28, !prof !376

27:                                               ; preds = %21, %1
  ret void

28:                                               ; preds = %21
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #20
  unreachable
}

declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath19locationPathPatternERNS_21XPathExecutionContextERNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !151 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !341
  %6 = getelementptr inbounds i32, ptr %3, i64 2
  %7 = call noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %8 = load i32, ptr %5, align 4, !tbaa !341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %9 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %10 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = getelementptr inbounds i32, ptr %3, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !168
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %3, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !168
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %41, label %18, !prof !378

18:                                               ; preds = %5
  %19 = tail call noundef ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !379

21:                                               ; preds = %18
  store i32 0, ptr %4, align 4, !tbaa !341
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, ptr %4, align 4, !tbaa !341
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %432, label %25, !prof !379

25:                                               ; preds = %22
  store i32 4, ptr %4, align 4, !tbaa !341
  %26 = icmp eq i32 %16, 54
  br i1 %26, label %38, label %27, !prof !379

27:                                               ; preds = %25
  %28 = load ptr, ptr %19, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %19), !prof !380
  %32 = icmp eq i32 %31, 2
  %33 = load ptr, ptr %19, align 8, !tbaa !166
  %34 = select i1 %32, i64 32, i64 5, !prof !381
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %38

38:                                               ; preds = %27, %25
  %39 = phi ptr [ %19, %25 ], [ %37, %27 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %432, label %41, !prof !379

41:                                               ; preds = %38, %5
  %42 = phi ptr [ %39, %38 ], [ %2, %5 ]
  %43 = load i32, ptr %3, align 4, !tbaa !168
  switch i32 %43, label %305 [
    i32 54, label %44
    i32 24, label %46
    i32 47, label %144
    i32 50, label %200
    i32 51, label %226
    i32 53, label %226
    i32 52, label %277
  ], !prof !382

44:                                               ; preds = %41
  %45 = load i32, ptr %4, align 4, !tbaa !341
  br label %361

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !236
  %49 = tail call noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %42, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %50 = load ptr, ptr %6, align 8, !tbaa !210
  %51 = load ptr, ptr %50, align 8, !tbaa !166
  %52 = getelementptr inbounds ptr, ptr %51, i64 13
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr %53(ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %55 unwind label %72

55:                                               ; preds = %46
  %56 = load ptr, ptr %54, align 8, !tbaa !166
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %60 unwind label %74

60:                                               ; preds = %55
  %61 = icmp eq i32 %16, 54
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %129, label %114

64:                                               ; preds = %60
  %65 = icmp eq ptr %42, null
  br i1 %65, label %129, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %59, 0
  br label %68

68:                                               ; preds = %66, %107
  %69 = phi ptr [ %42, %66 ], [ %106, %107 ]
  %70 = phi i8 [ 0, %66 ], [ %95, %107 ]
  %71 = phi i32 [ 0, %66 ], [ %94, %107 ]
  br i1 %67, label %93, label %76

72:                                               ; preds = %46
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %137

74:                                               ; preds = %55
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %137

76:                                               ; preds = %68, %84
  %77 = phi i32 [ %88, %84 ], [ 0, %68 ]
  %78 = phi i8 [ %87, %84 ], [ %70, %68 ]
  %79 = phi i32 [ %86, %84 ], [ %71, %68 ]
  %80 = load ptr, ptr %54, align 8, !tbaa !166
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef %77)
          to label %84 unwind label %91

84:                                               ; preds = %76
  %85 = icmp ne ptr %83, %69
  %86 = select i1 %85, i32 %79, i32 4
  %87 = select i1 %85, i8 %78, i8 1
  %88 = add nuw i32 %77, 1
  %89 = icmp ult i32 %88, %59
  %90 = and i1 %85, %89
  br i1 %90, label %76, label %93, !llvm.loop !383

91:                                               ; preds = %76
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %137

93:                                               ; preds = %84, %68
  %94 = phi i32 [ %71, %68 ], [ %86, %84 ]
  %95 = phi i8 [ %70, %68 ], [ %87, %84 ]
  %96 = load ptr, ptr %69, align 8, !tbaa !166
  %97 = getelementptr inbounds ptr, ptr %96, i64 4
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef i32 %98(ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %100 unwind label %112

100:                                              ; preds = %93
  %101 = icmp eq i32 %99, 2
  %102 = load ptr, ptr %69, align 8, !tbaa !166
  %103 = select i1 %101, i64 32, i64 5
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %107 unwind label %112

107:                                              ; preds = %100
  %108 = icmp ne ptr %106, null
  %109 = and i8 %95, 1
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %68, label %129

112:                                              ; preds = %100, %93
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %137

114:                                              ; preds = %62, %121
  %115 = phi i32 [ %124, %121 ], [ 0, %62 ]
  %116 = phi i32 [ %123, %121 ], [ 0, %62 ]
  %117 = load ptr, ptr %54, align 8, !tbaa !166
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef %115)
          to label %121 unwind label %127

121:                                              ; preds = %114
  %122 = icmp eq ptr %120, %42
  %123 = select i1 %122, i32 4, i32 %116
  %124 = add nuw i32 %115, 1
  %125 = icmp eq i32 %124, %59
  %126 = select i1 %122, i1 true, i1 %125
  br i1 %126, label %129, label %114, !llvm.loop !384

127:                                              ; preds = %114
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %137

129:                                              ; preds = %121, %107, %62, %64
  %130 = phi i32 [ 0, %64 ], [ 0, %62 ], [ %94, %107 ], [ %123, %121 ]
  %131 = phi ptr [ %42, %64 ], [ %42, %62 ], [ %106, %107 ], [ %42, %121 ]
  %132 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %132)
          to label %136 unwind label %133

133:                                              ; preds = %129
  %134 = landingpad { ptr, i32 }
          catch ptr null
  %135 = extractvalue { ptr, i32 } %134, 0
  call void @__clang_call_terminate(ptr %135) #20
  unreachable

136:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %361

137:                                              ; preds = %74, %127, %112, %91, %72
  %138 = phi { ptr, i32 } [ %73, %72 ], [ %128, %127 ], [ %75, %74 ], [ %113, %112 ], [ %92, %91 ]
  %139 = load ptr, ptr %6, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %139)
          to label %143 unwind label %140

140:                                              ; preds = %137
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  call void @__clang_call_terminate(ptr %142) #20
  unreachable

143:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %430

144:                                              ; preds = %41
  %145 = getelementptr inbounds i32, ptr %3, i64 2
  %146 = load i32, ptr %145, align 4, !tbaa !168
  %147 = add nsw i32 %146, -3
  %148 = getelementptr inbounds i32, ptr %3, i64 3
  %149 = load ptr, ptr %42, align 8, !tbaa !166
  %150 = getelementptr inbounds ptr, ptr %149, i64 4
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef i32 %151(ptr noundef nonnull align 8 dereferenceable(8) %42), !prof !385
  %153 = and i32 %152, -3
  %154 = icmp eq i32 %153, 9
  br i1 %154, label %361, label %155, !prof !340

155:                                              ; preds = %144
  %156 = load i32, ptr %12, align 4, !tbaa !168
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, ptr %3, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !168
  switch i32 %159, label %361 [
    i32 53, label %160
    i32 51, label %160
  ]

160:                                              ; preds = %155, %155
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %148, i32 noundef %147, i32 noundef 47)
  %161 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %162 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %163

163:                                              ; preds = %160, %185
  %164 = phi ptr [ %42, %160 ], [ %195, %185 ]
  %165 = load ptr, ptr %164, align 8, !tbaa !166
  %166 = getelementptr inbounds ptr, ptr %165, i64 4
  %167 = load ptr, ptr %166, align 8
  %168 = call noundef i32 %167(ptr noundef nonnull align 8 dereferenceable(8) %164)
  %169 = load i64, ptr %161, align 8, !tbaa !386
  %170 = load i64, ptr %162, align 8, !tbaa !386
  %171 = getelementptr inbounds i8, ptr %7, i64 %170
  %172 = and i64 %169, 1
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %163
  %175 = load ptr, ptr %171, align 8, !tbaa !166
  %176 = getelementptr i8, ptr %175, i64 %169
  %177 = getelementptr i8, ptr %176, i64 -1
  %178 = load ptr, ptr %177, align 8, !nosanitize !187
  br label %181

179:                                              ; preds = %163
  %180 = inttoptr i64 %169 to ptr
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi ptr [ %178, %174 ], [ %180, %179 ]
  %183 = call noundef i32 %182(ptr noundef nonnull align 8 dereferenceable(56) %171, ptr noundef nonnull align 8 dereferenceable(8) %164, i32 noundef %168)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load ptr, ptr %164, align 8, !tbaa !166
  %187 = getelementptr inbounds ptr, ptr %186, i64 4
  %188 = load ptr, ptr %187, align 8
  %189 = call noundef i32 %188(ptr noundef nonnull align 8 dereferenceable(8) %164)
  %190 = icmp eq i32 %189, 2
  %191 = load ptr, ptr %164, align 8, !tbaa !166
  %192 = select i1 %190, i64 32, i64 5
  %193 = getelementptr inbounds ptr, ptr %191, i64 %192
  %194 = load ptr, ptr %193, align 8
  %195 = call noundef ptr %194(ptr noundef nonnull align 8 dereferenceable(8) %164)
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %163, !llvm.loop !388

197:                                              ; preds = %181, %185
  %198 = phi ptr [ %164, %181 ], [ %195, %185 ]
  %199 = phi i32 [ %183, %181 ], [ 0, %185 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %361

200:                                              ; preds = %41
  %201 = getelementptr inbounds i32, ptr %3, i64 2
  %202 = load i32, ptr %201, align 4, !tbaa !168
  %203 = add nsw i32 %202, -3
  %204 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %204, i32 noundef %203, i32 noundef 36)
  %205 = load ptr, ptr %42, align 8, !tbaa !166
  %206 = getelementptr inbounds ptr, ptr %205, i64 4
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef i32 %207(ptr noundef nonnull align 8 dereferenceable(8) %42), !prof !389
  %209 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %8, i64 0, i32 3
  %210 = load i64, ptr %209, align 8, !tbaa !386
  %211 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %8, i64 0, i32 3, i32 1
  %212 = load i64, ptr %211, align 8, !tbaa !386
  %213 = getelementptr inbounds i8, ptr %8, i64 %212
  %214 = and i64 %210, 1
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %221, label %216, !prof !390

216:                                              ; preds = %200
  %217 = load ptr, ptr %213, align 8, !tbaa !166
  %218 = getelementptr i8, ptr %217, i64 %210
  %219 = getelementptr i8, ptr %218, i64 -1
  %220 = load ptr, ptr %219, align 8, !nosanitize !187
  br label %223

221:                                              ; preds = %200
  %222 = inttoptr i64 %210 to ptr
  br label %223

223:                                              ; preds = %216, %221
  %224 = phi ptr [ %220, %216 ], [ %222, %221 ]
  %225 = call noundef i32 %224(ptr noundef nonnull align 8 dereferenceable(56) %213, ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %208), !prof !391
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #19
  br label %361

226:                                              ; preds = %41, %41
  %227 = getelementptr inbounds i32, ptr %3, i64 2
  %228 = load i32, ptr %227, align 4, !tbaa !168
  %229 = add nsw i32 %228, -3
  %230 = load ptr, ptr %42, align 8, !tbaa !166
  %231 = getelementptr inbounds ptr, ptr %230, i64 4
  %232 = load ptr, ptr %231, align 8
  %233 = tail call noundef i32 %232(ptr noundef nonnull align 8 dereferenceable(8) %42), !prof !392
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %361, label %235, !prof !393

235:                                              ; preds = %226
  %236 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %236, i32 noundef %229, i32 noundef %43)
  %237 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %9, i64 0, i32 3
  %238 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %9, i64 0, i32 3, i32 1
  br label %239

239:                                              ; preds = %270, %235
  %240 = phi ptr [ %42, %235 ], [ %268, %270 ]
  %241 = phi i32 [ %233, %235 ], [ %274, %270 ]
  %242 = load i64, ptr %237, align 8, !tbaa !386
  %243 = load i64, ptr %238, align 8, !tbaa !386
  %244 = getelementptr inbounds i8, ptr %9, i64 %243
  %245 = and i64 %242, 1
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %252, label %247, !prof !394

247:                                              ; preds = %239
  %248 = load ptr, ptr %244, align 8, !tbaa !166
  %249 = getelementptr i8, ptr %248, i64 %242
  %250 = getelementptr i8, ptr %249, i64 -1
  %251 = load ptr, ptr %250, align 8, !nosanitize !187
  br label %254

252:                                              ; preds = %239
  %253 = inttoptr i64 %242 to ptr
  br label %254

254:                                              ; preds = %247, %252
  %255 = phi ptr [ %251, %247 ], [ %253, %252 ]
  %256 = call noundef i32 %255(ptr noundef nonnull align 8 dereferenceable(56) %244, ptr noundef nonnull align 8 dereferenceable(8) %240, i32 noundef %241), !prof !395
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %275, !prof !393

258:                                              ; preds = %254
  %259 = load ptr, ptr %240, align 8, !tbaa !166
  %260 = getelementptr inbounds ptr, ptr %259, i64 4
  %261 = load ptr, ptr %260, align 8
  %262 = call noundef i32 %261(ptr noundef nonnull align 8 dereferenceable(8) %240)
  %263 = icmp eq i32 %262, 2
  %264 = load ptr, ptr %240, align 8, !tbaa !166
  %265 = select i1 %263, i64 32, i64 5
  %266 = getelementptr inbounds ptr, ptr %264, i64 %265
  %267 = load ptr, ptr %266, align 8
  %268 = call noundef ptr %267(ptr noundef nonnull align 8 dereferenceable(8) %240)
  %269 = icmp eq ptr %268, null
  br i1 %269, label %275, label %270

270:                                              ; preds = %258
  %271 = load ptr, ptr %268, align 8, !tbaa !166
  %272 = getelementptr inbounds ptr, ptr %271, i64 4
  %273 = load ptr, ptr %272, align 8
  %274 = call noundef i32 %273(ptr noundef nonnull align 8 dereferenceable(8) %268)
  br label %239, !llvm.loop !396

275:                                              ; preds = %258, %254
  %276 = phi ptr [ %240, %254 ], [ null, %258 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #19
  br label %361

277:                                              ; preds = %41
  %278 = getelementptr inbounds i32, ptr %3, i64 2
  %279 = load i32, ptr %278, align 4, !tbaa !168
  %280 = add nsw i32 %279, -3
  %281 = load ptr, ptr %42, align 8, !tbaa !166
  %282 = getelementptr inbounds ptr, ptr %281, i64 4
  %283 = load ptr, ptr %282, align 8
  %284 = tail call noundef i32 %283(ptr noundef nonnull align 8 dereferenceable(8) %42), !prof !397
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %361, label %286, !prof !398

286:                                              ; preds = %277
  %287 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %287, i32 noundef %280, i32 noundef 52)
  %288 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %10, i64 0, i32 3
  %289 = load i64, ptr %288, align 8, !tbaa !386
  %290 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %10, i64 0, i32 3, i32 1
  %291 = load i64, ptr %290, align 8, !tbaa !386
  %292 = getelementptr inbounds i8, ptr %10, i64 %291
  %293 = and i64 %289, 1
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %300, label %295, !prof !399

295:                                              ; preds = %286
  %296 = load ptr, ptr %292, align 8, !tbaa !166
  %297 = getelementptr i8, ptr %296, i64 %289
  %298 = getelementptr i8, ptr %297, i64 -1
  %299 = load ptr, ptr %298, align 8, !nosanitize !187
  br label %302

300:                                              ; preds = %286
  %301 = inttoptr i64 %289 to ptr
  br label %302

302:                                              ; preds = %295, %300
  %303 = phi ptr [ %299, %295 ], [ %301, %300 ]
  %304 = call noundef i32 %303(ptr noundef nonnull align 8 dereferenceable(56) %292, ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %284), !prof !400
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19
  br label %361

305:                                              ; preds = %41
  %306 = load ptr, ptr %1, align 8, !tbaa !166
  %307 = getelementptr inbounds ptr, ptr %306, i64 23
  %308 = load ptr, ptr %307, align 8
  %309 = tail call noundef nonnull align 8 dereferenceable(36) ptr %308(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %310 = load ptr, ptr %1, align 8, !tbaa !166
  %311 = getelementptr inbounds ptr, ptr %310, i64 23
  %312 = load ptr, ptr %311, align 8
  %313 = invoke noundef nonnull align 8 dereferenceable(36) ptr %312(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %314 unwind label %341

314:                                              ; preds = %305
  %315 = sext i32 %43 to i64
  %316 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %315, ptr noundef nonnull align 8 dereferenceable(36) %313)
          to label %317 unwind label %343

317:                                              ; preds = %314
  %318 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %309, i32 noundef 118, ptr noundef nonnull align 8 dereferenceable(36) %316)
          to label %319 unwind label %343

319:                                              ; preds = %317
  %320 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !153
  %322 = load ptr, ptr %1, align 8, !tbaa !166
  %323 = getelementptr inbounds ptr, ptr %322, i64 2
  %324 = load ptr, ptr %323, align 8
  invoke void %324(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %318, ptr noundef %42, ptr noundef %321)
          to label %325 unwind label %343

325:                                              ; preds = %319
  %326 = load ptr, ptr %1, align 8, !tbaa !166
  %327 = getelementptr inbounds ptr, ptr %326, i64 24
  %328 = load ptr, ptr %327, align 8
  %329 = invoke noundef zeroext i1 %328(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %313)
          to label %333 unwind label %330

330:                                              ; preds = %325
  %331 = landingpad { ptr, i32 }
          catch ptr null
  %332 = extractvalue { ptr, i32 } %331, 0
  tail call void @__clang_call_terminate(ptr %332) #20
  unreachable

333:                                              ; preds = %325
  %334 = load ptr, ptr %1, align 8, !tbaa !166
  %335 = getelementptr inbounds ptr, ptr %334, i64 24
  %336 = load ptr, ptr %335, align 8
  %337 = invoke noundef zeroext i1 %336(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %309)
          to label %361 unwind label %338

338:                                              ; preds = %333
  %339 = landingpad { ptr, i32 }
          catch ptr null
  %340 = extractvalue { ptr, i32 } %339, 0
  tail call void @__clang_call_terminate(ptr %340) #20
  unreachable

341:                                              ; preds = %305
  %342 = landingpad { ptr, i32 }
          cleanup
  br label %352

343:                                              ; preds = %319, %317, %314
  %344 = landingpad { ptr, i32 }
          cleanup
  %345 = load ptr, ptr %1, align 8, !tbaa !166
  %346 = getelementptr inbounds ptr, ptr %345, i64 24
  %347 = load ptr, ptr %346, align 8
  %348 = invoke noundef zeroext i1 %347(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %313)
          to label %352 unwind label %349

349:                                              ; preds = %343
  %350 = landingpad { ptr, i32 }
          catch ptr null
  %351 = extractvalue { ptr, i32 } %350, 0
  tail call void @__clang_call_terminate(ptr %351) #20
  unreachable

352:                                              ; preds = %341, %343
  %353 = phi { ptr, i32 } [ %342, %341 ], [ %344, %343 ]
  %354 = load ptr, ptr %1, align 8, !tbaa !166
  %355 = getelementptr inbounds ptr, ptr %354, i64 24
  %356 = load ptr, ptr %355, align 8
  %357 = invoke noundef zeroext i1 %356(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %309)
          to label %430 unwind label %358

358:                                              ; preds = %352
  %359 = landingpad { ptr, i32 }
          catch ptr null
  %360 = extractvalue { ptr, i32 } %359, 0
  tail call void @__clang_call_terminate(ptr %360) #20
  unreachable

361:                                              ; preds = %333, %155, %277, %302, %226, %275, %144, %197, %223, %136, %44
  %362 = phi i32 [ %225, %223 ], [ %130, %136 ], [ %45, %44 ], [ 4, %144 ], [ %199, %197 ], [ 0, %155 ], [ %256, %275 ], [ 0, %226 ], [ %304, %302 ], [ 0, %277 ], [ 0, %333 ]
  %363 = phi i32 [ %203, %223 ], [ %49, %136 ], [ 0, %44 ], [ %147, %144 ], [ %147, %197 ], [ %147, %155 ], [ %229, %275 ], [ %229, %226 ], [ %280, %302 ], [ %280, %277 ], [ 0, %333 ]
  %364 = phi ptr [ %204, %223 ], [ %3, %136 ], [ %3, %44 ], [ %148, %144 ], [ %148, %197 ], [ %148, %155 ], [ %236, %275 ], [ %3, %226 ], [ %287, %302 ], [ %3, %277 ], [ %3, %333 ]
  %365 = phi ptr [ %42, %223 ], [ %131, %136 ], [ %42, %44 ], [ %42, %144 ], [ %198, %197 ], [ %42, %155 ], [ %276, %275 ], [ %42, %226 ], [ %42, %302 ], [ %42, %277 ], [ %42, %333 ]
  %366 = icmp eq i32 %362, 0
  br i1 %366, label %421, label %367, !prof !401

367:                                              ; preds = %361
  %368 = sext i32 %363 to i64
  %369 = getelementptr inbounds i32, ptr %364, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !168
  switch i32 %370, label %421 [
    i32 55, label %371
    i32 26, label %371
  ], !prof !402

371:                                              ; preds = %367, %367
  br label %372

372:                                              ; preds = %371, %414
  %373 = phi i32 [ %415, %414 ], [ 4, %371 ]
  %374 = phi i32 [ %420, %414 ], [ %370, %371 ]
  %375 = phi ptr [ %419, %414 ], [ %369, %371 ]
  switch i32 %374, label %421 [
    i32 55, label %376
    i32 26, label %384
  ]

376:                                              ; preds = %372
  %377 = getelementptr inbounds i32, ptr %375, i64 2
  %378 = load i32, ptr %377, align 4, !tbaa !168
  %379 = icmp eq i32 %378, 21
  br i1 %379, label %380, label %382

380:                                              ; preds = %376
  %381 = call noundef i32 @_ZNK11xalanc_1_105XPath26handleFoundIndexPositionalERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %365, ptr noundef nonnull %3), !range !403
  br label %414

382:                                              ; preds = %376
  %383 = call noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %365, ptr noundef nonnull %3), !range !403
  br label %414

384:                                              ; preds = %372
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %385 = getelementptr inbounds i32, ptr %375, i64 2
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %365, ptr noundef nonnull %385, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %386 = load ptr, ptr %11, align 8, !tbaa !210
  %387 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %386, i64 0, i32 1
  %388 = load i32, ptr %387, align 4, !tbaa !263
  %389 = icmp eq i32 %388, 3
  br i1 %389, label %390, label %399

390:                                              ; preds = %384
  %391 = invoke noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %365, ptr noundef nonnull %3)
          to label %406 unwind label %392, !range !403

392:                                              ; preds = %399, %390
  %393 = landingpad { ptr, i32 }
          cleanup
  %394 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %394)
          to label %398 unwind label %395

395:                                              ; preds = %392
  %396 = landingpad { ptr, i32 }
          catch ptr null
  %397 = extractvalue { ptr, i32 } %396, 0
  call void @__clang_call_terminate(ptr %397) #20
  unreachable

398:                                              ; preds = %392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %430

399:                                              ; preds = %384
  %400 = load ptr, ptr %386, align 8, !tbaa !166
  %401 = getelementptr inbounds ptr, ptr %400, i64 7
  %402 = load ptr, ptr %401, align 8
  %403 = invoke noundef zeroext i1 %402(ptr noundef nonnull align 8 dereferenceable(24) %386)
          to label %404 unwind label %392

404:                                              ; preds = %399
  %405 = select i1 %403, i32 %373, i32 0
  br label %406

406:                                              ; preds = %404, %390
  %407 = phi i32 [ %391, %390 ], [ %405, %404 ]
  %408 = phi i1 [ true, %390 ], [ %403, %404 ]
  %409 = load ptr, ptr %11, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %409)
          to label %413 unwind label %410

410:                                              ; preds = %406
  %411 = landingpad { ptr, i32 }
          catch ptr null
  %412 = extractvalue { ptr, i32 } %411, 0
  call void @__clang_call_terminate(ptr %412) #20
  unreachable

413:                                              ; preds = %406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br i1 %408, label %414, label %421

414:                                              ; preds = %413, %380, %382
  %415 = phi i32 [ %381, %380 ], [ %383, %382 ], [ %407, %413 ]
  %416 = getelementptr inbounds i32, ptr %375, i64 1
  %417 = load i32, ptr %416, align 4, !tbaa !168
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, ptr %375, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !168
  br label %372, !llvm.loop !404

421:                                              ; preds = %413, %372, %367, %361
  %422 = phi i32 [ %362, %367 ], [ 0, %361 ], [ %407, %413 ], [ %373, %372 ]
  %423 = load i32, ptr %4, align 4, !tbaa !341
  %424 = icmp eq i32 %423, 0
  %425 = icmp eq i32 %422, 0
  %426 = select i1 %424, i1 true, i1 %425, !prof !378
  br i1 %426, label %427, label %428, !prof !378

427:                                              ; preds = %421
  store i32 %422, ptr %4, align 4, !tbaa !341
  br label %428

428:                                              ; preds = %421, %427
  %429 = select i1 %425, ptr null, ptr %365, !prof !401
  br label %432

430:                                              ; preds = %352, %398, %143
  %431 = phi { ptr, i32 } [ %393, %398 ], [ %138, %143 ], [ %353, %352 ]
  resume { ptr, i32 } %431

432:                                              ; preds = %38, %22, %428
  %433 = phi ptr [ %429, %428 ], [ null, %22 ], [ null, %38 ]
  ret ptr %433
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  %6 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = load i32, ptr %3, align 4, !tbaa !168
  %9 = load ptr, ptr %1, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !406
  switch i32 %8, label %128 [
    i32 19, label %13
    i32 23, label %13
    i32 24, label %13
    i32 20, label %13
    i32 47, label %19
    i32 42, label %21
    i32 45, label %23
    i32 34, label %58
    i32 35, label %60
    i32 50, label %62
    i32 36, label %63
    i32 51, label %66
    i32 52, label %66
    i32 53, label %66
    i32 37, label %67
    i32 38, label %116
    i32 39, label %116
    i32 40, label %118
    i32 41, label %120
    i32 43, label %122
    i32 44, label %124
    i32 46, label %126
  ], !prof !407

13:                                               ; preds = %5, %5, %5, %5
  %14 = invoke noundef ptr @_ZNK11xalanc_1_105XPath11findNodeSetERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 poison, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

15:                                               ; preds = %83, %102, %107, %108
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %292

17:                                               ; preds = %13, %19, %21, %58, %60, %63, %116, %118, %120, %122, %124, %126, %128, %28, %29, %31, %51, %56, %67, %78
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %292

19:                                               ; preds = %5
  %20 = invoke noundef ptr @_ZNK11xalanc_1_105XPath8findRootERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr noundef %2, ptr noundef nonnull %3, i32 poison, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

21:                                               ; preds = %5
  %22 = invoke noundef ptr @_ZNK11xalanc_1_105XPath10findParentERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 42, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

23:                                               ; preds = %5
  %24 = getelementptr inbounds i32, ptr %3, i64 2
  %25 = load i32, ptr %24, align 4, !tbaa !168
  %26 = add nsw i32 %25, -3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !408

28:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef %2)
          to label %130 unwind label %17

29:                                               ; preds = %23
  %30 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  invoke void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %30, i32 noundef %26, i32 noundef 45)
          to label %31 unwind label %17

31:                                               ; preds = %29
  %32 = load ptr, ptr %2, align 8, !tbaa !166
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %36 unwind label %17, !prof !409

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !386
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !386
  %41 = getelementptr inbounds i8, ptr %7, i64 %40
  %42 = and i64 %38, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44, !prof !410

44:                                               ; preds = %36
  %45 = load ptr, ptr %41, align 8, !tbaa !166
  %46 = getelementptr i8, ptr %45, i64 %38
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !nosanitize !187
  br label %51

49:                                               ; preds = %36
  %50 = inttoptr i64 %38 to ptr
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %48, %44 ], [ %50, %49 ]
  %53 = invoke noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %35)
          to label %54 unwind label %17, !prof !411

54:                                               ; preds = %51
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %57, label %56, !prof !408

56:                                               ; preds = %54
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull %2)
          to label %57 unwind label %17

57:                                               ; preds = %56, %54
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %130

58:                                               ; preds = %5
  %59 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findAncestorsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 34, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

60:                                               ; preds = %5
  %61 = invoke noundef ptr @_ZNK11xalanc_1_105XPath19findAncestorsOrSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

62:                                               ; preds = %5
  br label %63

63:                                               ; preds = %5, %62
  %64 = phi i1 [ false, %62 ], [ true, %5 ]
  %65 = invoke noundef ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17, !prof !412

66:                                               ; preds = %5, %5, %5
  br label %67

67:                                               ; preds = %5, %66
  %68 = phi i1 [ false, %66 ], [ true, %5 ]
  %69 = load ptr, ptr %2, align 8, !tbaa !166
  %70 = getelementptr inbounds ptr, ptr %69, i64 7
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %73 unwind label %17, !prof !413

73:                                               ; preds = %67
  %74 = getelementptr inbounds i32, ptr %3, i64 2
  %75 = load i32, ptr %74, align 4, !tbaa !168
  %76 = add nsw i32 %75, -3
  %77 = icmp eq ptr %72, null
  br i1 %77, label %130, label %78, !prof !414

78:                                               ; preds = %73
  %79 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  invoke void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %79, i32 noundef %76, i32 noundef %8)
          to label %80 unwind label %17

80:                                               ; preds = %78
  %81 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %6, i64 0, i32 3
  %82 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %6, i64 0, i32 3, i32 1
  br label %83

83:                                               ; preds = %113, %80
  %84 = phi ptr [ %72, %80 ], [ %112, %113 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !166
  %86 = getelementptr inbounds ptr, ptr %85, i64 4
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef i32 %87(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %89 unwind label %15, !prof !415

89:                                               ; preds = %83
  %90 = load i64, ptr %81, align 8, !tbaa !386
  %91 = load i64, ptr %82, align 8, !tbaa !386
  %92 = getelementptr inbounds i8, ptr %6, i64 %91
  %93 = and i64 %90, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95, !prof !416

95:                                               ; preds = %89
  %96 = load ptr, ptr %92, align 8, !tbaa !166
  %97 = getelementptr i8, ptr %96, i64 %90
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load ptr, ptr %98, align 8, !nosanitize !187
  br label %102

100:                                              ; preds = %89
  %101 = inttoptr i64 %90 to ptr
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi ptr [ %99, %95 ], [ %101, %100 ]
  %104 = invoke noundef i32 %103(ptr noundef nonnull align 8 dereferenceable(56) %92, ptr noundef nonnull align 8 dereferenceable(8) %84, i32 noundef %88)
          to label %105 unwind label %15, !prof !417

105:                                              ; preds = %102
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %108, label %107, !prof !418

107:                                              ; preds = %105
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull %84)
          to label %108 unwind label %15

108:                                              ; preds = %107, %105
  %109 = load ptr, ptr %84, align 8, !tbaa !166
  %110 = getelementptr inbounds ptr, ptr %109, i64 10
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %113 unwind label %15, !prof !419

113:                                              ; preds = %108
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %83, !prof !420, !llvm.loop !421

115:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  br label %130

116:                                              ; preds = %5, %5
  %117 = invoke noundef ptr @_ZNK11xalanc_1_105XPath15findDescendantsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

118:                                              ; preds = %5
  %119 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findFollowingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

120:                                              ; preds = %5
  %121 = invoke noundef ptr @_ZNK11xalanc_1_105XPath21findFollowingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 41, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

122:                                              ; preds = %5
  %123 = invoke noundef ptr @_ZNK11xalanc_1_105XPath14findPreceedingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 43, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

124:                                              ; preds = %5
  %125 = invoke noundef ptr @_ZNK11xalanc_1_105XPath22findPreceedingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 44, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

126:                                              ; preds = %5
  %127 = invoke noundef ptr @_ZNK11xalanc_1_105XPath13findNamespaceERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef 46, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %137 unwind label %17

128:                                              ; preds = %5
  %129 = invoke noundef ptr @_ZNK11xalanc_1_105XPath22findNodesOnUnknownAxisERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %8, ptr nonnull align 8 poison)
          to label %137 unwind label %17

130:                                              ; preds = %115, %73, %57, %28
  %131 = phi i32 [ %26, %28 ], [ %26, %57 ], [ %76, %73 ], [ %76, %115 ]
  %132 = phi i1 [ true, %28 ], [ true, %57 ], [ %68, %73 ], [ %68, %115 ]
  %133 = getelementptr inbounds i32, ptr %3, i64 3
  %134 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %12, i64 0, i32 1
  store i32 1, ptr %134, align 8, !tbaa !332
  %135 = sext i32 %131 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  br label %137

137:                                              ; preds = %130, %128, %126, %124, %122, %120, %118, %116, %63, %60, %58, %21, %19, %13
  %138 = phi i1 [ true, %13 ], [ true, %19 ], [ true, %21 ], [ true, %58 ], [ true, %60 ], [ %64, %63 ], [ true, %116 ], [ true, %118 ], [ true, %120 ], [ true, %122 ], [ true, %124 ], [ true, %126 ], [ true, %128 ], [ %132, %130 ]
  %139 = phi ptr [ %14, %13 ], [ %20, %19 ], [ %22, %21 ], [ %59, %58 ], [ %61, %60 ], [ %65, %63 ], [ %117, %116 ], [ %119, %118 ], [ %121, %120 ], [ %123, %122 ], [ %125, %124 ], [ %127, %126 ], [ %129, %128 ], [ %136, %130 ]
  %140 = load i32, ptr %139, align 4, !tbaa !168
  %141 = load ptr, ptr %1, align 8, !tbaa !166
  %142 = getelementptr inbounds ptr, ptr %141, i64 10
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %144 unwind label %149, !prof !422

144:                                              ; preds = %137
  switch i32 %140, label %153 [
    i32 55, label %145
    i32 26, label %145
  ], !prof !423

145:                                              ; preds = %144, %144
  %146 = invoke noundef ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %139, ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %147 unwind label %151, !prof !424

147:                                              ; preds = %145
  %148 = load i32, ptr %146, align 4, !tbaa !168
  br label %153

149:                                              ; preds = %137
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %292

151:                                              ; preds = %265, %244, %145
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %284

153:                                              ; preds = %144, %147
  %154 = phi i32 [ %148, %147 ], [ %140, %144 ]
  %155 = phi ptr [ %146, %147 ], [ %139, %144 ]
  %156 = icmp ne i32 %154, -1
  %157 = and i1 %138, %156
  br i1 %157, label %158, label %240, !prof !425

158:                                              ; preds = %153
  %159 = load ptr, ptr %12, align 8, !tbaa !166
  %160 = getelementptr inbounds ptr, ptr %159, i64 3
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef i32 %161(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %163 unwind label %171, !prof !426

163:                                              ; preds = %158
  %164 = icmp eq i32 %162, 0
  br i1 %164, label %266, label %165, !prof !427

165:                                              ; preds = %163
  %166 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 1
  br label %173

167:                                              ; preds = %235
  %168 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !428
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %238, label %266, !prof !429

171:                                              ; preds = %158
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %284

173:                                              ; preds = %165, %235
  %174 = phi i32 [ 0, %165 ], [ %236, %235 ]
  %175 = load ptr, ptr %12, align 8, !tbaa !166
  %176 = getelementptr inbounds ptr, ptr %175, i64 2
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %174)
          to label %179 unwind label %195, !prof !430

179:                                              ; preds = %173
  %180 = load ptr, ptr %1, align 8, !tbaa !166
  %181 = getelementptr inbounds ptr, ptr %180, i64 21
  %182 = load ptr, ptr %181, align 8
  %183 = invoke noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %184 unwind label %197, !prof !431

184:                                              ; preds = %179
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %178, ptr noundef nonnull %155, ptr noundef nonnull align 8 dereferenceable(44) %183)
          to label %185 unwind label %199, !prof !432

185:                                              ; preds = %184
  %186 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %183, i64 0, i32 1, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !428
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %227, label %189, !prof !433

189:                                              ; preds = %185
  %190 = load i64, ptr %166, align 8, !tbaa !428
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %210, label %192, !prof !434

192:                                              ; preds = %189
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(44) %183, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %193 unwind label %199, !prof !435

193:                                              ; preds = %192
  %194 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %4, i64 0, i32 1
  store i32 1, ptr %194, align 8, !tbaa !332
  br label %227

195:                                              ; preds = %173
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %284

197:                                              ; preds = %179
  %198 = landingpad { ptr, i32 }
          cleanup
  br label %284

199:                                              ; preds = %192, %184
  %200 = landingpad { ptr, i32 }
          cleanup
  %201 = icmp eq ptr %183, null
  br i1 %201, label %284, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %1, align 8, !tbaa !166
  %204 = getelementptr inbounds ptr, ptr %203, i64 22
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef zeroext i1 %205(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %183)
          to label %284 unwind label %207

207:                                              ; preds = %202
  %208 = landingpad { ptr, i32 }
          catch ptr null
  %209 = extractvalue { ptr, i32 } %208, 0
  call void @__clang_call_terminate(ptr %209) #20
  unreachable

210:                                              ; preds = %189
  %211 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1
  %212 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 2
  %213 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 3
  %214 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %4, i64 0, i32 1
  %215 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %183, i64 0, i32 1
  %216 = load ptr, ptr %211, align 8, !tbaa !436
  %217 = load i64, ptr %212, align 8, !tbaa !437
  %218 = load ptr, ptr %213, align 8, !tbaa !438
  %219 = load ptr, ptr %215, align 8, !tbaa !436
  store ptr %219, ptr %211, align 8, !tbaa !436
  store i64 %187, ptr %166, align 8, !tbaa !428
  %220 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %183, i64 0, i32 1, i32 2
  %221 = load i64, ptr %220, align 8, !tbaa !437
  store i64 %221, ptr %212, align 8, !tbaa !437
  %222 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %183, i64 0, i32 1, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !438
  store ptr %223, ptr %213, align 8, !tbaa !438
  store ptr %216, ptr %215, align 8, !tbaa !436
  store i64 %190, ptr %186, align 8, !tbaa !428
  store i64 %217, ptr %220, align 8, !tbaa !437
  store ptr %218, ptr %222, align 8, !tbaa !438
  %224 = load i32, ptr %214, align 8, !tbaa !332
  %225 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %183, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !332
  store i32 %226, ptr %214, align 8, !tbaa !332
  store i32 %224, ptr %225, align 8, !tbaa !332
  br label %227

227:                                              ; preds = %185, %193, %210
  %228 = load ptr, ptr %1, align 8, !tbaa !166
  %229 = getelementptr inbounds ptr, ptr %228, i64 22
  %230 = load ptr, ptr %229, align 8
  %231 = invoke noundef zeroext i1 %230(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %183)
          to label %235 unwind label %232, !prof !439

232:                                              ; preds = %227
  %233 = landingpad { ptr, i32 }
          catch ptr null
  %234 = extractvalue { ptr, i32 } %233, 0
  call void @__clang_call_terminate(ptr %234) #20
  unreachable

235:                                              ; preds = %227
  %236 = add nuw i32 %174, 1
  %237 = icmp eq i32 %236, %162
  br i1 %237, label %167, label %173, !prof !440, !llvm.loop !441

238:                                              ; preds = %167
  %239 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %4, i64 0, i32 1
  store i32 1, ptr %239, align 8, !tbaa !332
  br label %266

240:                                              ; preds = %153
  %241 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %12, i64 0, i32 1, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !428
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %245, !prof !442

244:                                              ; preds = %240
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %4)
          to label %266 unwind label %151, !prof !443

245:                                              ; preds = %240
  %246 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %12, i64 0, i32 1
  %247 = load i32, ptr %246, align 8, !tbaa !332
  %248 = icmp eq i32 %247, 2
  %249 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1
  %250 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %12, i64 0, i32 1
  %251 = load ptr, ptr %249, align 8, !tbaa !436
  %252 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !428
  %254 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 2
  %255 = load i64, ptr %254, align 8, !tbaa !437
  %256 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %4, i64 0, i32 1, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !438
  %258 = load ptr, ptr %250, align 8, !tbaa !436
  store ptr %258, ptr %249, align 8, !tbaa !436
  store i64 %242, ptr %252, align 8, !tbaa !428
  %259 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %12, i64 0, i32 1, i32 2
  %260 = load i64, ptr %259, align 8, !tbaa !437
  store i64 %260, ptr %254, align 8, !tbaa !437
  %261 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %12, i64 0, i32 1, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !438
  store ptr %262, ptr %256, align 8, !tbaa !438
  store ptr %251, ptr %250, align 8, !tbaa !436
  store i64 %253, ptr %241, align 8, !tbaa !428
  store i64 %255, ptr %259, align 8, !tbaa !437
  store ptr %257, ptr %261, align 8, !tbaa !438
  %263 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %4, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !332
  store i32 %247, ptr %263, align 8, !tbaa !332
  store i32 %264, ptr %246, align 8, !tbaa !332
  br i1 %248, label %265, label %266, !prof !444

265:                                              ; preds = %245
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %4)
          to label %266 unwind label %151

266:                                              ; preds = %245, %265, %163, %238, %167, %244
  %267 = load ptr, ptr %1, align 8, !tbaa !166
  %268 = getelementptr inbounds ptr, ptr %267, i64 11
  %269 = load ptr, ptr %268, align 8
  invoke void %269(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %273 unwind label %270, !prof !445

270:                                              ; preds = %266
  %271 = landingpad { ptr, i32 }
          catch ptr null
  %272 = extractvalue { ptr, i32 } %271, 0
  call void @__clang_call_terminate(ptr %272) #20
  unreachable

273:                                              ; preds = %266
  %274 = icmp eq ptr %12, null
  br i1 %274, label %283, label %275, !prof !446

275:                                              ; preds = %273
  %276 = load ptr, ptr %1, align 8, !tbaa !166
  %277 = getelementptr inbounds ptr, ptr %276, i64 22
  %278 = load ptr, ptr %277, align 8
  %279 = invoke noundef zeroext i1 %278(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %12)
          to label %283 unwind label %280, !prof !447

280:                                              ; preds = %275
  %281 = landingpad { ptr, i32 }
          catch ptr null
  %282 = extractvalue { ptr, i32 } %281, 0
  call void @__clang_call_terminate(ptr %282) #20
  unreachable

283:                                              ; preds = %275, %273
  ret void

284:                                              ; preds = %197, %202, %199, %171, %195, %151
  %285 = phi { ptr, i32 } [ %152, %151 ], [ %172, %171 ], [ %196, %195 ], [ %198, %197 ], [ %200, %202 ], [ %200, %199 ]
  %286 = load ptr, ptr %1, align 8, !tbaa !166
  %287 = getelementptr inbounds ptr, ptr %286, i64 11
  %288 = load ptr, ptr %287, align 8
  invoke void %288(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %292 unwind label %289

289:                                              ; preds = %284
  %290 = landingpad { ptr, i32 }
          catch ptr null
  %291 = extractvalue { ptr, i32 } %290, 0
  call void @__clang_call_terminate(ptr %291) #20
  unreachable

292:                                              ; preds = %15, %17, %149, %284
  %293 = phi { ptr, i32 } [ %150, %149 ], [ %285, %284 ], [ %16, %15 ], [ %18, %17 ]
  %294 = icmp eq ptr %12, null
  br i1 %294, label %303, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %1, align 8, !tbaa !166
  %297 = getelementptr inbounds ptr, ptr %296, i64 22
  %298 = load ptr, ptr %297, align 8
  %299 = invoke noundef zeroext i1 %298(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %12)
          to label %303 unwind label %300

300:                                              ; preds = %295
  %301 = landingpad { ptr, i32 }
          catch ptr null
  %302 = extractvalue { ptr, i32 } %301, 0
  call void @__clang_call_terminate(ptr %302) #20
  unreachable

303:                                              ; preds = %295, %292
  resume { ptr, i32 } %293
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath11findNodeSetERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(44) %5)
  %8 = load ptr, ptr %7, align 8, !tbaa !210
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %16

10:                                               ; preds = %24, %21, %16
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %8)
          to label %15 unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #20
  unreachable

15:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  resume { ptr, i32 } %11

16:                                               ; preds = %6
  %17 = load ptr, ptr %8, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %21 unwind label %10

21:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %22 unwind label %10

22:                                               ; preds = %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %23, align 8, !tbaa !332
  br label %24

24:                                               ; preds = %6, %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !236
  %27 = invoke noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %28 unwind label %10

28:                                               ; preds = %24
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %8)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %28
  %33 = sext i32 %27 to i64
  %34 = getelementptr inbounds i32, ptr %3, i64 %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath8findRootERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr noundef readonly %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = getelementptr inbounds i32, ptr %3, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = load ptr, ptr %2, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %19

19:                                               ; preds = %6, %14
  %20 = phi ptr [ %18, %14 ], [ %2, %6 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 38
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = icmp eq i32 %12, 11
  br i1 %27, label %45, label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %39, %28 ], [ %2, %26 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !166
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(8) %29)
  %34 = icmp eq i32 %33, 2
  %35 = load ptr, ptr %29, align 8, !tbaa !166
  %36 = select i1 %34, i64 32, i64 5
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29)
  %40 = load ptr, ptr %39, align 8, !tbaa !166
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %44 = icmp eq i32 %43, 11
  br i1 %44, label %45, label %28, !llvm.loop !448

45:                                               ; preds = %28, %26, %19
  %46 = phi ptr [ %20, %19 ], [ %2, %26 ], [ %39, %28 ]
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %46)
  %47 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %47, align 8, !tbaa !332
  %48 = sext i32 %8 to i64
  %49 = getelementptr i32, ptr %3, i64 %48
  ret ptr %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath10findParentERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = load ptr, ptr %2, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = icmp eq i32 %14, 2
  %16 = load ptr, ptr %2, align 8, !tbaa !166
  %17 = select i1 %15, i64 32, i64 5
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %21 = getelementptr inbounds i32, ptr %3, i64 3
  %22 = icmp eq ptr %20, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = icmp sgt i32 %9, 3
  br i1 %24, label %25, label %50

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %21, i32 noundef %10, i32 noundef %4)
  %26 = load ptr, ptr %20, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !386
  %32 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !386
  %34 = getelementptr inbounds i8, ptr %7, i64 %33
  %35 = and i64 %31, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load ptr, ptr %34, align 8, !tbaa !166
  %39 = getelementptr i8, ptr %38, i64 %31
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !nosanitize !187
  br label %44

42:                                               ; preds = %25
  %43 = inttoptr i64 %31 to ptr
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  %46 = call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(56) %34, ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %29)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %20)
  br label %49

49:                                               ; preds = %48, %44
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %51

50:                                               ; preds = %23
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %20)
  br label %51

51:                                               ; preds = %49, %50, %6
  %52 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %52, align 8, !tbaa !332
  %53 = sext i32 %10 to i64
  %54 = getelementptr inbounds i32, ptr %21, i64 %53
  ret ptr %54
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath8findSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #7 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %14, !prof !408

13:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef %2)
  br label %39

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %15 = load ptr, ptr %2, align 8, !tbaa !166
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !449
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !386
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !386
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26, !prof !410

26:                                               ; preds = %14
  %27 = load ptr, ptr %23, align 8, !tbaa !166
  %28 = getelementptr i8, ptr %27, i64 %20
  %29 = getelementptr i8, ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !nosanitize !187
  br label %33

31:                                               ; preds = %14
  %32 = inttoptr i64 %20 to ptr
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %30, %26 ], [ %32, %31 ]
  %35 = call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %18), !prof !450
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !408

37:                                               ; preds = %33
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %2)
  br label %38

38:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %39

39:                                               ; preds = %38, %13
  %40 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %40, align 8, !tbaa !332
  %41 = sext i32 %10 to i64
  %42 = getelementptr inbounds i32, ptr %11, i64 %41
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findAncestorsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = icmp eq i32 %11, 2
  %13 = load ptr, ptr %2, align 8, !tbaa !166
  %14 = select i1 %12, i64 32, i64 5
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %18 = getelementptr inbounds i32, ptr %3, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !168
  %20 = add nsw i32 %19, -3
  %21 = getelementptr inbounds i32, ptr %3, i64 3
  %22 = icmp eq ptr %17, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %21, i32 noundef %20, i32 noundef %4)
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %26

26:                                               ; preds = %49, %23
  %27 = phi ptr [ %17, %23 ], [ %59, %49 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %32 = load i64, ptr %24, align 8, !tbaa !386
  %33 = load i64, ptr %25, align 8, !tbaa !386
  %34 = getelementptr inbounds i8, ptr %7, i64 %33
  %35 = and i64 %32, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr %34, align 8, !tbaa !166
  %39 = getelementptr i8, ptr %38, i64 %32
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !nosanitize !187
  br label %44

42:                                               ; preds = %26
  %43 = inttoptr i64 %32 to ptr
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  %46 = call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(56) %34, ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef %31)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %27)
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %27, align 8, !tbaa !166
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %54 = icmp eq i32 %53, 2
  %55 = load ptr, ptr %27, align 8, !tbaa !166
  %56 = select i1 %54, i64 32, i64 5
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %26, !llvm.loop !451

61:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %62

62:                                               ; preds = %61, %6
  %63 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 2, ptr %63, align 8, !tbaa !332
  %64 = sext i32 %20 to i64
  %65 = getelementptr inbounds i32, ptr %21, i64 %64
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath19findAncestorsOrSelfERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %14

14:                                               ; preds = %37, %6
  %15 = phi ptr [ %2, %6 ], [ %47, %37 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %20 = load i64, ptr %12, align 8, !tbaa !386
  %21 = load i64, ptr %13, align 8, !tbaa !386
  %22 = getelementptr inbounds i8, ptr %7, i64 %21
  %23 = and i64 %20, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %22, align 8, !tbaa !166
  %27 = getelementptr i8, ptr %26, i64 %20
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load ptr, ptr %28, align 8, !nosanitize !187
  br label %32

30:                                               ; preds = %14
  %31 = inttoptr i64 %20 to ptr
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi ptr [ %29, %25 ], [ %31, %30 ]
  %34 = call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %19)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %15)
  br label %37

37:                                               ; preds = %36, %32
  %38 = load ptr, ptr %15, align 8, !tbaa !166
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %42 = icmp eq i32 %41, 2
  %43 = load ptr, ptr %15, align 8, !tbaa !166
  %44 = select i1 %42, i64 32, i64 5
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %14, !llvm.loop !452

49:                                               ; preds = %37
  %50 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 2, ptr %50, align 8, !tbaa !332
  %51 = sext i32 %10 to i64
  %52 = getelementptr inbounds i32, ptr %11, i64 %51
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  ret ptr %52
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #7 align 2 !prof !453 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !454
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %59, !prof !412

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !455
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23, !prof !456

23:                                               ; preds = %17
  %24 = load ptr, ptr %21, align 8, !tbaa !166
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %21), !prof !457
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29, !prof !456

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %31 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %33

32:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %59

33:                                               ; preds = %29, %56
  %34 = phi i32 [ 0, %29 ], [ %57, %56 ]
  %35 = load ptr, ptr %21, align 8, !tbaa !166
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %34), !prof !458
  %39 = load i64, ptr %30, align 8, !tbaa !386
  %40 = load i64, ptr %31, align 8, !tbaa !386
  %41 = getelementptr inbounds i8, ptr %7, i64 %40
  %42 = and i64 %39, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44, !prof !459

44:                                               ; preds = %33
  %45 = load ptr, ptr %41, align 8, !tbaa !166
  %46 = getelementptr i8, ptr %45, i64 %39
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !nosanitize !187
  br label %51

49:                                               ; preds = %33
  %50 = inttoptr i64 %39 to ptr
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %48, %44 ], [ %50, %49 ]
  %53 = call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef 2), !prof !460
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !461

55:                                               ; preds = %51
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %38)
  br label %56

56:                                               ; preds = %55, %51
  %57 = add nuw i32 %34, 1
  %58 = icmp eq i32 %57, %27
  br i1 %58, label %32, label %33, !prof !462, !llvm.loop !463

59:                                               ; preds = %17, %32, %23, %6
  %60 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %60, align 8, !tbaa !332
  %61 = sext i32 %10 to i64
  %62 = getelementptr inbounds i32, ptr %11, i64 %61
  ret ptr %62
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath12findChildrenERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #7 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !464
  %12 = getelementptr inbounds i32, ptr %3, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !168
  %14 = add nsw i32 %13, -3
  %15 = getelementptr inbounds i32, ptr %3, i64 3
  %16 = icmp eq ptr %11, null
  br i1 %16, label %50, label %17, !prof !414

17:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %15, i32 noundef %14, i32 noundef %4)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %20

20:                                               ; preds = %43, %17
  %21 = phi ptr [ %11, %17 ], [ %47, %43 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %21), !prof !465
  %26 = load i64, ptr %18, align 8, !tbaa !386
  %27 = load i64, ptr %19, align 8, !tbaa !386
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31, !prof !416

31:                                               ; preds = %20
  %32 = load ptr, ptr %28, align 8, !tbaa !166
  %33 = getelementptr i8, ptr %32, i64 %26
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !nosanitize !187
  br label %38

36:                                               ; preds = %20
  %37 = inttoptr i64 %26 to ptr
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %35, %31 ], [ %37, %36 ]
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %25), !prof !466
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !418

42:                                               ; preds = %38
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %21)
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %21, align 8, !tbaa !166
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %21), !prof !467
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !prof !420, !llvm.loop !421

49:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %50

50:                                               ; preds = %49, %6
  %51 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %51, align 8, !tbaa !332
  %52 = sext i32 %14 to i64
  %53 = getelementptr inbounds i32, ptr %15, i64 %52
  ret ptr %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath15findDescendantsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %12 = icmp ne i32 %4, 39
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %15

15:                                               ; preds = %73, %6
  %16 = phi ptr [ %2, %6 ], [ %74, %73 ]
  %17 = icmp eq ptr %16, %2
  %18 = and i1 %12, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %16, align 8, !tbaa !166
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %24 = load i64, ptr %13, align 8, !tbaa !386
  %25 = load i64, ptr %14, align 8, !tbaa !386
  %26 = getelementptr inbounds i8, ptr %7, i64 %25
  %27 = and i64 %24, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %26, align 8, !tbaa !166
  %31 = getelementptr i8, ptr %30, i64 %24
  %32 = getelementptr i8, ptr %31, i64 -1
  %33 = load ptr, ptr %32, align 8, !nosanitize !187
  br label %36

34:                                               ; preds = %19
  %35 = inttoptr i64 %24 to ptr
  br label %36

36:                                               ; preds = %29, %34
  %37 = phi ptr [ %33, %29 ], [ %35, %34 ]
  %38 = call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %23)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %16)
  br label %41

41:                                               ; preds = %36, %40, %15
  %42 = load ptr, ptr %16, align 8, !tbaa !166
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %41, %70
  %48 = phi ptr [ %71, %70 ], [ %16, %41 ]
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !166
  %52 = getelementptr inbounds ptr, ptr %51, i64 10
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %48)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load ptr, ptr %48, align 8, !tbaa !166
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(8) %48)
  %61 = icmp eq i32 %60, 2
  %62 = load ptr, ptr %48, align 8, !tbaa !166
  %63 = select i1 %61, i64 32, i64 5
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %48)
  %67 = icmp eq ptr %66, %2
  %68 = icmp eq ptr %66, null
  %69 = or i1 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %56, %50
  %71 = phi ptr [ %66, %56 ], [ %48, %50 ]
  %72 = icmp eq ptr %54, null
  br i1 %72, label %47, label %73, !llvm.loop !468

73:                                               ; preds = %70, %47, %56, %41
  %74 = phi ptr [ %45, %41 ], [ %54, %70 ], [ null, %47 ], [ null, %56 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %15, !llvm.loop !469

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %77, align 8, !tbaa !332
  %78 = sext i32 %10 to i64
  %79 = getelementptr inbounds i32, ptr %11, i64 %78
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  ret ptr %79
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findFollowingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %18

18:                                               ; preds = %6, %96
  %19 = phi ptr [ %2, %6 ], [ %97, %96 ]
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %48, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %26 = load i64, ptr %16, align 8, !tbaa !386
  %27 = load i64, ptr %17, align 8, !tbaa !386
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %28, align 8, !tbaa !166
  %33 = getelementptr i8, ptr %32, i64 %26
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !nosanitize !187
  br label %38

36:                                               ; preds = %21
  %37 = inttoptr i64 %26 to ptr
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %35, %31 ], [ %37, %36 ]
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %25)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %19, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %19, align 8, !tbaa !166
  %45 = getelementptr inbounds ptr, ptr %44, i64 7
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %48

48:                                               ; preds = %18, %43
  %49 = phi ptr [ %47, %43 ], [ null, %18 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %48, %93
  %52 = phi ptr [ %94, %93 ], [ %19, %48 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !166
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef i32 %55(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %57 = icmp eq i32 %56, 2
  %58 = load ptr, ptr %52, align 8, !tbaa !166
  br i1 %57, label %59, label %71

59:                                               ; preds = %51
  %60 = getelementptr inbounds ptr, ptr %58, i64 4
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %63 = icmp eq i32 %62, 2
  %64 = load ptr, ptr %52, align 8, !tbaa !166
  %65 = select i1 %63, i64 32, i64 5
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %69 = load ptr, ptr %68, align 8, !tbaa !166
  %70 = getelementptr inbounds ptr, ptr %69, i64 7
  br label %73

71:                                               ; preds = %51
  %72 = getelementptr inbounds ptr, ptr %58, i64 10
  br label %73

73:                                               ; preds = %71, %59
  %74 = phi ptr [ %72, %71 ], [ %70, %59 ]
  %75 = phi ptr [ %52, %71 ], [ %68, %59 ]
  %76 = load ptr, ptr %74, align 8
  %77 = call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %75)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load ptr, ptr %52, align 8, !tbaa !166
  %81 = getelementptr inbounds ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = call noundef i32 %82(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %84 = icmp eq i32 %83, 2
  %85 = load ptr, ptr %52, align 8, !tbaa !166
  %86 = select i1 %84, i64 32, i64 5
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %90 = icmp eq ptr %15, %89
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %79, %73
  %94 = phi ptr [ %89, %79 ], [ %52, %73 ]
  %95 = icmp eq ptr %77, null
  br i1 %95, label %51, label %96, !llvm.loop !470

96:                                               ; preds = %93, %79, %48
  %97 = phi ptr [ %49, %48 ], [ %77, %93 ], [ null, %79 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %18, !llvm.loop !471

99:                                               ; preds = %96
  %100 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %100, align 8, !tbaa !332
  %101 = sext i32 %10 to i64
  %102 = getelementptr inbounds i32, ptr %11, i64 %101
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  ret ptr %102
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath21findFollowingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = load ptr, ptr %2, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = getelementptr inbounds i32, ptr %3, i64 3
  %16 = icmp eq ptr %14, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %15, i32 noundef %10, i32 noundef %4)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %20

20:                                               ; preds = %43, %17
  %21 = phi ptr [ %14, %17 ], [ %47, %43 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = load i64, ptr %18, align 8, !tbaa !386
  %27 = load i64, ptr %19, align 8, !tbaa !386
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %28, align 8, !tbaa !166
  %33 = getelementptr i8, ptr %32, i64 %26
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !nosanitize !187
  br label %38

36:                                               ; preds = %20
  %37 = inttoptr i64 %26 to ptr
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %35, %31 ], [ %37, %36 ]
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %25)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %21)
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %21, align 8, !tbaa !166
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !472

49:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %50

50:                                               ; preds = %49, %6
  %51 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %51, align 8, !tbaa !332
  %52 = sext i32 %10 to i64
  %53 = getelementptr inbounds i32, ptr %15, i64 %52
  ret ptr %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath14findPreceedingERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %52, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 38
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load ptr, ptr %2, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %52, label %39

33:                                               ; preds = %39
  %34 = load ptr, ptr %50, align 8, !tbaa !166
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(8) %50)
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %52, label %39, !llvm.loop !473

39:                                               ; preds = %27, %33
  %40 = phi ptr [ %50, %33 ], [ %2, %27 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !166
  %42 = getelementptr inbounds ptr, ptr %41, i64 4
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %40)
  %45 = icmp eq i32 %44, 2
  %46 = load ptr, ptr %40, align 8, !tbaa !166
  %47 = select i1 %45, i64 32, i64 5
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %40)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %33, !llvm.loop !473

52:                                               ; preds = %33, %39, %27, %6, %17
  %53 = phi ptr [ %2, %6 ], [ %21, %17 ], [ null, %27 ], [ %40, %39 ], [ %40, %33 ]
  %54 = icmp eq i32 %15, 2
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load ptr, ptr %2, align 8, !tbaa !166
  %57 = getelementptr inbounds ptr, ptr %56, i64 4
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %60 = icmp eq i32 %59, 2
  %61 = load ptr, ptr %2, align 8, !tbaa !166
  %62 = select i1 %60, i64 32, i64 5
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %66

66:                                               ; preds = %55, %52
  %67 = phi ptr [ null, %52 ], [ %65, %55 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %68 = icmp eq ptr %53, null
  %69 = icmp eq ptr %53, %2
  %70 = or i1 %68, %69
  br i1 %70, label %162, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %74

74:                                               ; preds = %71, %157
  %75 = phi ptr [ %53, %71 ], [ %158, %157 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !166
  %77 = getelementptr inbounds ptr, ptr %76, i64 4
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef i32 %78(ptr noundef nonnull align 8 dereferenceable(8) %75)
  %80 = load i64, ptr %72, align 8, !tbaa !386
  %81 = load i64, ptr %73, align 8, !tbaa !386
  %82 = getelementptr inbounds i8, ptr %7, i64 %81
  %83 = and i64 %80, 1
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load ptr, ptr %82, align 8, !tbaa !166
  %87 = getelementptr i8, ptr %86, i64 %80
  %88 = getelementptr i8, ptr %87, i64 -1
  %89 = load ptr, ptr %88, align 8, !nosanitize !187
  br label %92

90:                                               ; preds = %74
  %91 = inttoptr i64 %80 to ptr
  br label %92

92:                                               ; preds = %85, %90
  %93 = phi ptr [ %89, %85 ], [ %91, %90 ]
  %94 = call noundef i32 %93(ptr noundef nonnull align 8 dereferenceable(56) %82, ptr noundef nonnull align 8 dereferenceable(8) %75, i32 noundef %79)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %2, align 8, !tbaa !166
  %98 = getelementptr inbounds ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef i32 %99(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %101 = icmp eq i32 %100, 2
  %102 = load ptr, ptr %2, align 8, !tbaa !166
  %103 = select i1 %101, i64 32, i64 5
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = load ptr, ptr %104, align 8
  %106 = call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %107 = icmp eq ptr %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %96, %111
  %109 = phi ptr [ %121, %111 ], [ %106, %96 ]
  %110 = icmp eq ptr %109, %75
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %109, align 8, !tbaa !166
  %113 = getelementptr inbounds ptr, ptr %112, i64 4
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef i32 %114(ptr noundef nonnull align 8 dereferenceable(8) %109)
  %116 = icmp eq i32 %115, 2
  %117 = load ptr, ptr %109, align 8, !tbaa !166
  %118 = select i1 %116, i64 32, i64 5
  %119 = getelementptr inbounds ptr, ptr %117, i64 %118
  %120 = load ptr, ptr %119, align 8
  %121 = call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %109)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %108, !llvm.loop !474

123:                                              ; preds = %111, %96
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %75)
  br label %124

124:                                              ; preds = %108, %123, %92
  %125 = icmp eq ptr %75, %67
  %126 = and i1 %54, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %75, align 8, !tbaa !166
  %129 = getelementptr inbounds ptr, ptr %128, i64 7
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %75)
  br label %132

132:                                              ; preds = %124, %127
  %133 = phi ptr [ %131, %127 ], [ %2, %124 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %157

135:                                              ; preds = %132, %154
  %136 = phi ptr [ %155, %154 ], [ %75, %132 ]
  %137 = load ptr, ptr %136, align 8, !tbaa !166
  %138 = getelementptr inbounds ptr, ptr %137, i64 10
  %139 = load ptr, ptr %138, align 8
  %140 = call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %136)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load ptr, ptr %136, align 8, !tbaa !166
  %144 = getelementptr inbounds ptr, ptr %143, i64 4
  %145 = load ptr, ptr %144, align 8
  %146 = call noundef i32 %145(ptr noundef nonnull align 8 dereferenceable(8) %136)
  %147 = icmp eq i32 %146, 2
  %148 = load ptr, ptr %136, align 8, !tbaa !166
  %149 = select i1 %147, i64 32, i64 5
  %150 = getelementptr inbounds ptr, ptr %148, i64 %149
  %151 = load ptr, ptr %150, align 8
  %152 = call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %136)
  %153 = icmp eq ptr %53, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %142, %135
  %155 = phi ptr [ %152, %142 ], [ %136, %135 ]
  %156 = icmp eq ptr %140, null
  br i1 %156, label %135, label %157, !llvm.loop !475

157:                                              ; preds = %154, %142, %132
  %158 = phi ptr [ %133, %132 ], [ %140, %154 ], [ null, %142 ]
  %159 = icmp eq ptr %158, null
  %160 = icmp eq ptr %158, %2
  %161 = or i1 %159, %160
  br i1 %161, label %162, label %74, !llvm.loop !476

162:                                              ; preds = %157, %66
  call void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
  %163 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 2, ptr %163, align 8, !tbaa !332
  %164 = sext i32 %10 to i64
  %165 = getelementptr inbounds i32, ptr %11, i64 %164
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  ret ptr %165
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath22findPreceedingSiblingsERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 9
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %20

20:                                               ; preds = %43, %17
  %21 = phi ptr [ %15, %17 ], [ %47, %43 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = load i64, ptr %18, align 8, !tbaa !386
  %27 = load i64, ptr %19, align 8, !tbaa !386
  %28 = getelementptr inbounds i8, ptr %7, i64 %27
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %28, align 8, !tbaa !166
  %33 = getelementptr i8, ptr %32, i64 %26
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !nosanitize !187
  br label %38

36:                                               ; preds = %20
  %37 = inttoptr i64 %26 to ptr
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %35, %31 ], [ %37, %36 ]
  %40 = call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %25)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %21)
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %21, align 8, !tbaa !166
  %45 = getelementptr inbounds ptr, ptr %44, i64 9
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %20, !llvm.loop !477

49:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %50

50:                                               ; preds = %49, %6
  %51 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 2, ptr %51, align 8, !tbaa !332
  %52 = sext i32 %10 to i64
  %53 = getelementptr inbounds i32, ptr %11, i64 %52
  ret ptr %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath13findNamespaceERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(44) %5) local_unnamed_addr #3 align 2 !prof !151 {
  %7 = alloca %"class.xalanc_1_10::XPath::NodeTester", align 8
  %8 = getelementptr inbounds i32, ptr %3, i64 2
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add nsw i32 %9, -3
  %11 = getelementptr inbounds i32, ptr %3, i64 3
  %12 = load ptr, ptr %2, align 8, !tbaa !166
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %147

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 8, !tbaa !166
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %11, i32 noundef %10, i32 noundef %4)
  %22 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %22, i64 0, i32 1
  %26 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %27 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %7, i64 0, i32 3, i32 1
  br label %29

29:                                               ; preds = %136, %17
  %30 = phi i8 [ 0, %17 ], [ %137, %136 ]
  %31 = phi i32 [ 0, %17 ], [ %138, %136 ]
  %32 = phi ptr [ %2, %17 ], [ %142, %136 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !166
  %34 = getelementptr inbounds ptr, ptr %33, i64 11
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %136, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %36, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(8) %36)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %136, label %44

44:                                               ; preds = %38, %132
  %45 = phi i32 [ %134, %132 ], [ %31, %38 ]
  %46 = phi i8 [ %133, %132 ], [ %30, %38 ]
  %47 = phi i32 [ %48, %132 ], [ %42, %38 ]
  %48 = add i32 %47, -1
  %49 = load ptr, ptr %36, align 8, !tbaa !166
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef %48)
  %53 = load ptr, ptr %52, align 8, !tbaa !166
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef nonnull align 8 dereferenceable(36) ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !246
  %59 = icmp eq i64 %58, 0
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %56, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %61
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %56, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !218
  %65 = load i64, ptr %23, align 8, !tbaa !246
  %66 = icmp eq i64 %65, 0
  %67 = load ptr, ptr %24, align 8
  %68 = select i1 %66, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %67
  %69 = load i32, ptr %25, align 8, !tbaa !218
  %70 = call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %62, i32 noundef %64, ptr noundef %68, i32 noundef %69)
  br i1 %70, label %73, label %71

71:                                               ; preds = %44
  %72 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull align 8 dereferenceable(36) %26)
  br i1 %72, label %73, label %132

73:                                               ; preds = %71, %44
  %74 = load i64, ptr %27, align 8, !tbaa !386
  %75 = load i64, ptr %28, align 8, !tbaa !386
  %76 = getelementptr inbounds i8, ptr %7, i64 %75
  %77 = and i64 %74, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %76, align 8, !tbaa !166
  %81 = getelementptr i8, ptr %80, i64 %74
  %82 = getelementptr i8, ptr %81, i64 -1
  %83 = load ptr, ptr %82, align 8, !nosanitize !187
  br label %86

84:                                               ; preds = %73
  %85 = inttoptr i64 %74 to ptr
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi ptr [ %83, %79 ], [ %85, %84 ]
  %88 = call noundef i32 %87(ptr noundef nonnull align 8 dereferenceable(56) %76, ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef 2)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %132, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %52, align 8, !tbaa !166
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef nonnull align 8 dereferenceable(36) ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %95 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull align 8 dereferenceable(36) %26)
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = and i8 %46, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %94, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1011DOMServices13s_emptyStringE)
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i1 [ true, %96 ], [ %100, %99 ]
  %103 = zext i1 %102 to i8
  br label %104

104:                                              ; preds = %101, %90
  %105 = phi i8 [ 1, %101 ], [ %46, %90 ]
  %106 = phi i8 [ %103, %101 ], [ 0, %90 ]
  %107 = icmp eq i8 %106, 0
  %108 = icmp ne i32 %45, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %112, label %110

110:                                              ; preds = %112, %104
  %111 = phi i1 [ %107, %104 ], [ %127, %112 ]
  br i1 %111, label %130, label %132

112:                                              ; preds = %104, %112
  %113 = phi i32 [ %125, %112 ], [ 0, %104 ]
  %114 = phi i8 [ %124, %112 ], [ %106, %104 ]
  %115 = load ptr, ptr %5, align 8, !tbaa !166
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %113)
  %119 = load ptr, ptr %118, align 8, !tbaa !166
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8
  %122 = call noundef nonnull align 8 dereferenceable(36) ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %118)
  %123 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %122, ptr noundef nonnull align 8 dereferenceable(36) %56)
  %124 = select i1 %123, i8 1, i8 %114
  %125 = add nuw i32 %113, 1
  %126 = and i8 %124, 1
  %127 = icmp eq i8 %126, 0
  %128 = icmp ult i32 %125, %45
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %112, label %110, !llvm.loop !478

130:                                              ; preds = %110
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull %52)
  %131 = add i32 %45, 1
  br label %132

132:                                              ; preds = %86, %130, %110, %71
  %133 = phi i8 [ %46, %71 ], [ %46, %86 ], [ %105, %130 ], [ %105, %110 ]
  %134 = phi i32 [ %45, %71 ], [ %45, %86 ], [ %131, %130 ], [ %45, %110 ]
  %135 = icmp eq i32 %48, 0
  br i1 %135, label %136, label %44, !llvm.loop !479

136:                                              ; preds = %132, %38, %29
  %137 = phi i8 [ %30, %29 ], [ %30, %38 ], [ %133, %132 ]
  %138 = phi i32 [ %31, %29 ], [ %31, %38 ], [ %134, %132 ]
  %139 = load ptr, ptr %32, align 8, !tbaa !166
  %140 = getelementptr inbounds ptr, ptr %139, i64 5
  %141 = load ptr, ptr %140, align 8
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %143 = icmp ne ptr %142, %21
  %144 = icmp ne ptr %142, null
  %145 = and i1 %143, %144
  br i1 %145, label %29, label %146, !llvm.loop !480

146:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  br label %147

147:                                              ; preds = %146, %6
  call void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
  %148 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %5, i64 0, i32 1
  store i32 1, ptr %148, align 8, !tbaa !332
  %149 = sext i32 %10 to i64
  %150 = getelementptr inbounds i32, ptr %11, i64 %149
  ret ptr %150
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath22findNodesOnUnknownAxisERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture nonnull readnone align 8 %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %7 = getelementptr inbounds i32, ptr %3, i64 2
  %8 = load i32, ptr %7, align 4, !tbaa !168
  %9 = load ptr, ptr %1, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 23
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %13 = load ptr, ptr %1, align 8, !tbaa !166
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %17 unwind label %47

17:                                               ; preds = %6
  %18 = sext i32 %4 to i64
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %18, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %20 unwind label %49

20:                                               ; preds = %17
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %22 unwind label %49

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  %25 = load ptr, ptr %1, align 8, !tbaa !166
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef %2, ptr noundef %24)
          to label %28 unwind label %49

28:                                               ; preds = %22
  %29 = load ptr, ptr %1, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 24
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %36 unwind label %33

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #20
  unreachable

36:                                               ; preds = %28
  %37 = load ptr, ptr %1, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %12)
          to label %44 unwind label %41

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %36
  %45 = sext i32 %8 to i64
  %46 = getelementptr i32, ptr %3, i64 %45
  ret ptr %46

47:                                               ; preds = %6
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %58

49:                                               ; preds = %22, %20, %17
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %1, align 8, !tbaa !166
  %52 = getelementptr inbounds ptr, ptr %51, i64 24
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %58 unwind label %55

55:                                               ; preds = %49
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable

58:                                               ; preds = %47, %49
  %59 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ]
  %60 = load ptr, ptr %1, align 8, !tbaa !166
  %61 = getelementptr inbounds ptr, ptr %60, i64 24
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %12)
          to label %67 unwind label %64

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #20
  unreachable

67:                                               ; preds = %58
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(44) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  %5 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %6 = load ptr, ptr %3, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(40) %3), !prof !482
  br label %10

10:                                               ; preds = %97, %4
  %11 = phi i32 [ %9, %4 ], [ %98, %97 ]
  %12 = phi ptr [ %2, %4 ], [ %90, %97 ]
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %86, label %14, !prof !483

14:                                               ; preds = %10
  %15 = getelementptr inbounds i32, ptr %12, i64 2
  %16 = load i32, ptr %15, align 4, !tbaa !168
  %17 = icmp eq i32 %16, 21
  br i1 %17, label %18, label %44, !prof !484

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %0, i64 0, i32 5, i32 3
  %20 = getelementptr inbounds i32, ptr %12, i64 4
  %21 = load i32, ptr %20, align 4, !tbaa !168
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr %19, align 8, !tbaa !177
  %24 = getelementptr inbounds double, ptr %23, i64 %22
  %25 = load double, ptr %24, align 8, !tbaa !178
  %26 = fcmp ugt double %25, 0.000000e+00
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = fptoui double %25 to i32
  %29 = icmp ult i32 %11, %28
  %30 = uitofp i32 %28 to double
  %31 = fcmp une double %25, %30
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %18
  call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %3)
  br label %86

34:                                               ; preds = %27
  %35 = icmp eq i32 %11, 1
  br i1 %35, label %86, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %3, i64 0, i32 1
  %38 = add i32 %28, -1
  %39 = load ptr, ptr %3, align 8, !tbaa !166
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %38)
  call void @_ZN11xalanc_1_1018MutableNodeRefList5clearEv(ptr noundef nonnull align 8 dereferenceable(44) %3)
  call void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef %42)
  store i32 1, ptr %37, align 8, !tbaa !332
  br label %86

43:                                               ; preds = %83
  call void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr noundef nonnull align 8 dereferenceable(44) %3)
  br label %86

44:                                               ; preds = %14, %83
  %45 = phi i32 [ %84, %83 ], [ 0, %14 ]
  %46 = load ptr, ptr %3, align 8, !tbaa !166
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %45), !prof !485
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %49, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %50 = load ptr, ptr %5, align 8, !tbaa !210
  %51 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !263
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %63, !prof !484

54:                                               ; preds = %44
  %55 = load ptr, ptr %50, align 8, !tbaa !166
  %56 = getelementptr inbounds ptr, ptr %55, i64 6
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef double %57(ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %59 unwind label %71

59:                                               ; preds = %54
  %60 = add nuw i32 %45, 1
  %61 = uitofp i32 %60 to double
  %62 = fcmp une double %58, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %59, %44
  %64 = load ptr, ptr %5, align 8, !tbaa !210
  %65 = load ptr, ptr %64, align 8, !tbaa !166
  %66 = getelementptr inbounds ptr, ptr %65, i64 7
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef zeroext i1 %67(ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %69 unwind label %71, !prof !486

69:                                               ; preds = %63
  br i1 %68, label %78, label %70, !prof !484

70:                                               ; preds = %69, %59
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %45, ptr noundef null)
          to label %78 unwind label %71, !prof !487

71:                                               ; preds = %70, %63, %54
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %73)
          to label %77 unwind label %74

74:                                               ; preds = %71
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #20
  unreachable

77:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %72

78:                                               ; preds = %70, %69
  %79 = load ptr, ptr %5, align 8, !tbaa !210
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %79)
          to label %83 unwind label %80, !prof !487

80:                                               ; preds = %78
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #20
  unreachable

83:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %84 = add nuw i32 %45, 1
  %85 = icmp eq i32 %84, %11
  br i1 %85, label %43, label %44, !prof !487, !llvm.loop !488

86:                                               ; preds = %43, %36, %34, %33, %10
  %87 = getelementptr inbounds i32, ptr %12, i64 1
  %88 = load i32, ptr %87, align 4, !tbaa !168
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %12, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !168
  switch i32 %91, label %97 [
    i32 55, label %92
    i32 26, label %92
  ], !prof !489

92:                                               ; preds = %86, %86
  %93 = load ptr, ptr %3, align 8, !tbaa !166
  %94 = getelementptr inbounds ptr, ptr %93, i64 3
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef i32 %95(ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %97

97:                                               ; preds = %86, %92
  %98 = phi i32 [ %96, %92 ], [ %11, %86 ]
  %99 = phi i1 [ true, %92 ], [ false, %86 ]
  br i1 %99, label %10, label %100, !prof !490

100:                                              ; preds = %97
  ret ptr %90
}

declare void @_ZN11xalanc_1_1018MutableNodeRefList7reverseEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #0

declare noundef i32 @_ZNK11xalanc_1_1015XPathExpression24getOpCodeLengthFromOpMapEPKiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath26handleFoundIndexPositionalERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = load ptr, ptr %2, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %9 = icmp eq i32 %8, 2
  %10 = load ptr, ptr %2, align 8, !tbaa !166
  %11 = select i1 %9, i64 32, i64 5
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %1, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 21
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %14, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %20)
          to label %21 unwind label %33

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::NodeRefList", ptr %20, i64 0, i32 1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !428
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i32 0, i32 4
  %26 = load ptr, ptr %1, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %20)
          to label %45 unwind label %30

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #20
  unreachable

33:                                               ; preds = %16
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = icmp eq ptr %20, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %1, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 22
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %20)
          to label %44 unwind label %41

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %36, %33
  resume { ptr, i32 } %34

45:                                               ; preds = %21, %4
  %46 = phi i32 [ 0, %4 ], [ %25, %21 ]
  ret i32 %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath16handleFoundIndexERNS_21XPathExecutionContextEPNS_9XalanNodeEPKi(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = load ptr, ptr %2, align 8, !tbaa !166
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %9 = icmp eq i32 %8, 2
  %10 = load ptr, ptr %2, align 8, !tbaa !166
  %11 = select i1 %9, i64 32, i64 5
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %1, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 21
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %14, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(44) %20)
          to label %21 unwind label %36

21:                                               ; preds = %16
  %22 = load ptr, ptr %20, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %2)
          to label %26 unwind label %36

26:                                               ; preds = %21
  %27 = icmp eq i32 %25, -1
  %28 = select i1 %27, i32 0, i32 4
  %29 = load ptr, ptr %1, align 8, !tbaa !166
  %30 = getelementptr inbounds ptr, ptr %29, i64 22
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %20)
          to label %48 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #20
  unreachable

36:                                               ; preds = %21, %16
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = icmp eq ptr %20, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %1, align 8, !tbaa !166
  %41 = getelementptr inbounds ptr, ptr %40, i64 22
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %20)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #20
  unreachable

47:                                               ; preds = %39, %36
  resume { ptr, i32 } %37

48:                                               ; preds = %26, %4
  %49 = phi i32 [ 0, %4 ], [ %28, %26 ]
  ret i32 %49
}

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS1_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) unnamed_addr #8 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !491
  store ptr %3, ptr %0, align 8, !tbaa !491
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !492
  store ptr %6, ptr %4, align 8, !tbaa !492
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  store ptr %9, ptr %7, align 8, !tbaa !493
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !386
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 3, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !386
  store i64 %12, ptr %10, align 8, !tbaa !386
  %15 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !386
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !494
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %1, i64 0, i32 4, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !494
  store i64 %18, ptr %16, align 8, !tbaa !494
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !494
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !495 {
  store ptr %2, ptr %0, align 8, !tbaa !491
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %11, align 8, !tbaa !494
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !494
  %13 = load i32, ptr %3, align 4, !tbaa !168
  switch i32 %13, label %130 [
    i32 27, label %14
    i32 28, label %15
    i32 29, label %16
    i32 30, label %64
    i32 32, label %65
    i32 31, label %66
  ], !prof !496

14:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testCommentERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

15:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testTextERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

16:                                               ; preds = %6
  switch i32 %4, label %34 [
    i32 1, label %17
    i32 2, label %18
  ]

17:                                               ; preds = %16
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester6testPIERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

18:                                               ; preds = %16
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester10testPINameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  %19 = getelementptr inbounds i32, ptr %3, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !168
  %21 = add i32 %20, 3
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !185
  %27 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef nonnull align 8 dereferenceable(36) ptr %30(ptr noundef nonnull align 8 dereferenceable(24) %27)
  br label %32

32:                                               ; preds = %18, %23
  %33 = phi ptr [ %31, %23 ], [ null, %18 ]
  store ptr %33, ptr %8, align 8, !tbaa !493
  br label %131

34:                                               ; preds = %16
  %35 = load ptr, ptr %2, align 8, !tbaa !166
  %36 = getelementptr inbounds ptr, ptr %35, i64 23
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef nonnull align 8 dereferenceable(36) ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %39 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %38, i32 noundef 14, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %40 unwind label %54

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !153
  %43 = load ptr, ptr %2, align 8, !tbaa !166
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef null, ptr noundef %42)
          to label %46 unwind label %54

46:                                               ; preds = %40
  %47 = load ptr, ptr %2, align 8, !tbaa !166
  %48 = getelementptr inbounds ptr, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %38)
          to label %131 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %40, %34
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %2, align 8, !tbaa !166
  %57 = getelementptr inbounds ptr, ptr %56, i64 24
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %38)
          to label %63 unwind label %60

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #20
  unreachable

63:                                               ; preds = %54
  resume { ptr, i32 } %55

64:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

65:                                               ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester8testRootERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

66:                                               ; preds = %6
  %67 = getelementptr inbounds i32, ptr %3, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !168
  %69 = add i32 %68, 3
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %80, label %71, !prof !497

71:                                               ; preds = %66
  %72 = sext i32 %68 to i64
  %73 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !185
  %75 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %74, i64 %72
  %76 = load ptr, ptr %75, align 8, !tbaa !166
  %77 = getelementptr inbounds ptr, ptr %76, i64 8
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef nonnull align 8 dereferenceable(36) ptr %78(ptr noundef nonnull align 8 dereferenceable(24) %75), !prof !498
  br label %80

80:                                               ; preds = %66, %71
  %81 = phi ptr [ %79, %71 ], [ null, %66 ]
  store ptr %81, ptr %7, align 8, !tbaa !492
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87, !prof !497

83:                                               ; preds = %80
  %84 = getelementptr inbounds i32, ptr %3, i64 2
  %85 = load i32, ptr %84, align 4, !tbaa !168
  %86 = icmp eq i32 %85, -3
  br i1 %86, label %103, label %87, !prof !499

87:                                               ; preds = %83, %80
  %88 = getelementptr inbounds i32, ptr %3, i64 2
  %89 = load i32, ptr %88, align 4, !tbaa !168
  %90 = add i32 %89, 3
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %101, label %92, !prof !500

92:                                               ; preds = %87
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %1, i64 0, i32 2, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !185
  %96 = getelementptr inbounds %"class.xalanc_1_10::XToken", ptr %95, i64 %93
  %97 = load ptr, ptr %96, align 8, !tbaa !166
  %98 = getelementptr inbounds ptr, ptr %97, i64 8
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef nonnull align 8 dereferenceable(36) ptr %99(ptr noundef nonnull align 8 dereferenceable(24) %96), !prof !501
  br label %101

101:                                              ; preds = %87, %92
  %102 = phi ptr [ %100, %92 ], [ null, %87 ]
  store ptr %102, ptr %8, align 8, !tbaa !493
  br label %103

103:                                              ; preds = %83, %101
  %104 = phi i1 [ false, %101 ], [ true, %83 ]
  switch i32 %5, label %119 [
    i32 36, label %105
    i32 46, label %116
  ], !prof !502

105:                                              ; preds = %103
  br i1 %104, label %106, label %107, !prof !503

106:                                              ; preds = %105
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testAttributeTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

107:                                              ; preds = %105
  %108 = load ptr, ptr %7, align 8, !tbaa !492
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111, !prof !504

110:                                              ; preds = %107
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

111:                                              ; preds = %107
  %112 = load ptr, ptr %8, align 8, !tbaa !493
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester26testAttributeNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

115:                                              ; preds = %111
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testAttributeQNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

116:                                              ; preds = %103
  br i1 %104, label %117, label %118

117:                                              ; preds = %116
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testNamespaceTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

118:                                              ; preds = %116
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester19testNamespaceNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

119:                                              ; preds = %103
  br i1 %104, label %120, label %121, !prof !505

120:                                              ; preds = %119
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester22testElementTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

121:                                              ; preds = %119
  %122 = load ptr, ptr %7, align 8, !tbaa !492
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %125, !prof !506

124:                                              ; preds = %121
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

125:                                              ; preds = %121
  %126 = load ptr, ptr %8, align 8, !tbaa !493
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129, !prof !507

128:                                              ; preds = %125
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester24testElementNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

129:                                              ; preds = %125
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

130:                                              ; preds = %6
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %9, align 8, !tbaa !386
  store i64 0, ptr %10, align 8, !tbaa !386
  br label %131

131:                                              ; preds = %46, %110, %115, %114, %106, %120, %128, %129, %124, %117, %118, %17, %32, %130, %65, %64, %15, %14
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) #9 align 2 !prof !151 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester11testCommentERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #9 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 8
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testTextERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = add i32 %2, -3
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !491
  %8 = load ptr, ptr %7, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 34
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %11, label %12, label %13

12:                                               ; preds = %3, %6
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i32 [ 0, %12 ], [ 1, %6 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester6testPIERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #9 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 7
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester10testPINameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 7
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !493
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %11)
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %3
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i32 [ 0, %13 ], [ 3, %5 ]
  ret i32 %15
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #7 align 2 !prof !508 {
  %4 = add i32 %2, -5
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %14, label %6, !prof !509

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !491
  %8 = load ptr, ptr %7, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 34
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !510
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ 1, %3 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester8testRootERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #9 align 2 !prof !151 {
  %4 = and i32 %2, -3
  %5 = icmp eq i32 %4, 9
  %6 = select i1 %5, i32 4, i32 0
  ret i32 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testAttributeTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %3 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #7 align 2 !prof !511 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %58, !prof !512

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !513
  %10 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !257
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !246
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15, !prof !514
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !218
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !246
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %23, !prof !514
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !218
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %16, i32 noundef %18, ptr noundef %24, i32 noundef %26)
  br i1 %27, label %58, label %28, !prof !514

28:                                               ; preds = %5
  %29 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !257
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %29)
  br i1 %30, label %58, label %31, !prof !514

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !166
  %33 = getelementptr inbounds ptr, ptr %32, i64 22
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !515
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !218
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58, !prof !516

39:                                               ; preds = %31
  %40 = load ptr, ptr %1, align 8, !tbaa !166
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef nonnull align 8 dereferenceable(36) ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !517
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !218
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !512

47:                                               ; preds = %39
  %48 = load ptr, ptr %1, align 8, !tbaa !166
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !518
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi ptr [ %51, %47 ], [ %43, %39 ]
  %54 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !493
  %56 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %53, ptr noundef nonnull align 8 dereferenceable(36) %55)
  %57 = select i1 %56, i32 3, i32 0, !prof !519
  br label %58

58:                                               ; preds = %52, %31, %5, %3, %28
  %59 = phi i32 [ 0, %28 ], [ 0, %3 ], [ 0, %5 ], [ 0, %31 ], [ %57, %52 ]
  ret i32 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester26testAttributeNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !492
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %13)
  %15 = select i1 %14, i32 2, i32 0
  br label %16

16:                                               ; preds = %7, %3, %5
  %17 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %15, %7 ]
  ret i32 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester18testAttributeQNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %6, label %34, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !218
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 8, !tbaa !166
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi ptr [ %19, %15 ], [ %11, %7 ]
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !493
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %23)
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load ptr, ptr %1, align 8, !tbaa !166
  %27 = getelementptr inbounds ptr, ptr %26, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef nonnull align 8 dereferenceable(36) ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !492
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %29, ptr noundef nonnull align 8 dereferenceable(36) %31)
  %33 = select i1 %32, i32 3, i32 0
  br label %34

34:                                               ; preds = %25, %20, %3, %5
  %35 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %20 ], [ %33, %25 ]
  ret i32 %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testNamespaceTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester19testNamespaceNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !166
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !493
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %13)
  %15 = select i1 %14, i32 3, i32 0
  br label %16

16:                                               ; preds = %7, %3, %5
  %17 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %15, %7 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester22testElementTotallyWildERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) #10 align 2 !prof !520 {
  %4 = icmp eq i32 %2, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #7 align 2 !prof !521 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %32, !prof !522

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !523
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32, !prof !516

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 24
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !524
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !218
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26, !prof !512

21:                                               ; preds = %13
  %22 = load ptr, ptr %1, align 8, !tbaa !166
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !525
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi ptr [ %25, %21 ], [ %17, %13 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !493
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %29)
  %31 = select i1 %30, i32 3, i32 0, !prof !526
  br label %32

32:                                               ; preds = %26, %5, %3
  %33 = phi i32 [ 0, %3 ], [ 0, %5 ], [ %31, %26 ]
  ret i32 %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester24testElementNamespaceOnlyERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #3 align 2 !prof !151 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !492
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %11)
  %13 = select i1 %12, i32 2, i32 0
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ 0, %3 ], [ %13, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #7 align 2 !prof !527 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %32, !prof !528

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !166
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !529
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18, !prof !530

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !166
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %18

18:                                               ; preds = %13, %5
  %19 = phi ptr [ %17, %13 ], [ %9, %5 ]
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !493
  %22 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(36) %21)
  br i1 %22, label %23, label %32, !prof !531

23:                                               ; preds = %18
  %24 = load ptr, ptr %1, align 8, !tbaa !166
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !532
  %28 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !492
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %29)
  %31 = select i1 %30, i32 3, i32 0, !prof !533
  br label %32

32:                                               ; preds = %23, %18, %3
  %33 = phi i32 [ 0, %3 ], [ 0, %18 ], [ %31, %23 ]
  ret i32 %33
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) #9 align 2 !prof !151 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #11 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %2, align 8, !tbaa !386
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %3, align 8, !tbaa !386
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %4, align 8, !tbaa !494
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %5, align 8, !tbaa !494
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEPNS0_11eMatchScoreE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #3 align 2 !prof !151 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %7, align 8, !tbaa !386
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %8, align 8, !tbaa !386
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester12testDefault2ERKNS_12XalanElementE to i64), ptr %9, align 8, !tbaa !494
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %10, align 8, !tbaa !494
  %11 = tail call noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4)
  %12 = icmp eq ptr %5, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32 %11, ptr %5, align 4, !tbaa !341
  br label %14

14:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !218
  switch i32 %7, label %26 [
    i32 1, label %8
    i32 0, label %44
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !534
  %11 = load i16, ptr %10, align 2, !tbaa !535
  %12 = icmp eq i16 %11, 42
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, i64 0, i32 1), align 8, !tbaa !218
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %17, align 8, !tbaa !492
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %18, align 8, !tbaa !494
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %19, align 8, !tbaa !494
  %20 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %20, align 8, !tbaa !493
  br label %228

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %22, align 8, !tbaa !494
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %23, align 8, !tbaa !494
  br label %228

24:                                               ; preds = %8
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %5, %24
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !246
  %29 = icmp eq i64 %28, 0
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = select i1 %29, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %31
  br label %33

33:                                               ; preds = %36, %26
  %34 = phi ptr [ %32, %26 ], [ %37, %36 ]
  %35 = load i16, ptr %34, align 2, !tbaa !535
  switch i16 %35, label %36 [
    i16 58, label %38
    i16 0, label %38
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  br label %33, !llvm.loop !537

38:                                               ; preds = %33, %33
  %39 = ptrtoint ptr %34 to i64
  %40 = ptrtoint ptr %32 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 1
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %5, %24, %38
  %45 = phi i32 [ %43, %38 ], [ 0, %24 ], [ %7, %5 ]
  %46 = icmp eq i32 %45, %7
  br i1 %46, label %47, label %101

47:                                               ; preds = %44
  %48 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %2)
  %49 = load ptr, ptr %1, align 8, !tbaa !166
  br i1 %48, label %76, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds ptr, ptr %49, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef nonnull align 8 dereferenceable(36) ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %54 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %53, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %55 unwind label %67

55:                                               ; preds = %50
  %56 = load ptr, ptr %1, align 8, !tbaa !166
  %57 = getelementptr inbounds ptr, ptr %56, i64 7
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %54, ptr noundef null, ptr noundef %4)
          to label %59 unwind label %67

59:                                               ; preds = %55
  %60 = load ptr, ptr %1, align 8, !tbaa !166
  %61 = getelementptr inbounds ptr, ptr %60, i64 6
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %53)
          to label %228 unwind label %64

64:                                               ; preds = %59
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #20
  unreachable

67:                                               ; preds = %55, %50
  %68 = landingpad { ptr, i32 }
          cleanup
  %69 = load ptr, ptr %1, align 8, !tbaa !166
  %70 = getelementptr inbounds ptr, ptr %69, i64 6
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef zeroext i1 %71(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %53)
          to label %226 unwind label %73

73:                                               ; preds = %67
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  tail call void @__clang_call_terminate(ptr %75) #20
  unreachable

76:                                               ; preds = %47
  %77 = getelementptr inbounds ptr, ptr %49, i64 3
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef nonnull align 8 dereferenceable(36) ptr %78(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %80 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, i64 0, i32 1), align 8, !tbaa !218
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %83, align 8, !tbaa !492
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %79, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !218
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %88 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %86, label %89, label %90

89:                                               ; preds = %82
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %87, align 8, !tbaa !494
  store i64 0, ptr %88, align 8, !tbaa !494
  br label %228

90:                                               ; preds = %82
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %87, align 8, !tbaa !494
  store i64 0, ptr %88, align 8, !tbaa !494
  %91 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %79, ptr %91, align 8, !tbaa !493
  br label %228

92:                                               ; preds = %76
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %79, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !218
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %97 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %95, label %100, label %98

98:                                               ; preds = %92
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %96, align 8, !tbaa !494
  store i64 0, ptr %97, align 8, !tbaa !494
  %99 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %79, ptr %99, align 8, !tbaa !493
  br label %228

100:                                              ; preds = %92
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %96, align 8, !tbaa !494
  store i64 0, ptr %97, align 8, !tbaa !494
  br label %228

101:                                              ; preds = %44
  %102 = load ptr, ptr %1, align 8, !tbaa !166
  %103 = getelementptr inbounds ptr, ptr %102, i64 5
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef nonnull align 8 dereferenceable(36) ptr %104(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %106 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %105, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 0, i32 noundef %45)
          to label %107 unwind label %116

107:                                              ; preds = %101
  %108 = load ptr, ptr %3, align 8, !tbaa !166
  %109 = getelementptr inbounds ptr, ptr %108, i64 2
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %112 unwind label %118

112:                                              ; preds = %107
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef 27)
          to label %170 unwind label %118

116:                                              ; preds = %101
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %217

118:                                              ; preds = %168, %170, %180, %175, %165, %160, %134, %120, %114, %107
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %217

120:                                              ; preds = %112
  %121 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %122 unwind label %118

122:                                              ; preds = %120
  br i1 %121, label %123, label %168

123:                                              ; preds = %122
  %124 = add i32 %7, -2
  %125 = icmp eq i32 %45, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %123
  %127 = add i32 %45, 1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !534
  %131 = getelementptr inbounds i16, ptr %130, i64 %128
  %132 = load i16, ptr %131, align 2, !tbaa !535
  %133 = icmp eq i16 %132, 42
  br i1 %133, label %134, label %160

134:                                              ; preds = %126
  %135 = load ptr, ptr %1, align 8, !tbaa !166
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef nonnull align 8 dereferenceable(36) ptr %137(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %111)
          to label %139 unwind label %118

139:                                              ; preds = %134
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %138, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !218
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr %138, ptr %144, align 8, !tbaa !492
  %145 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, i64 0, i32 1), align 8, !tbaa !218
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %148 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %146, label %149, label %150

149:                                              ; preds = %143
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %147, align 8, !tbaa !494
  store i64 0, ptr %148, align 8, !tbaa !494
  br label %208

150:                                              ; preds = %143
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %147, align 8, !tbaa !494
  store i64 0, ptr %148, align 8, !tbaa !494
  %151 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %151, align 8, !tbaa !493
  br label %208

152:                                              ; preds = %139
  %153 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, i64 0, i32 1), align 8, !tbaa !218
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %156 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %154, label %159, label %157

157:                                              ; preds = %152
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %155, align 8, !tbaa !494
  store i64 0, ptr %156, align 8, !tbaa !494
  %158 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr %158, align 8, !tbaa !493
  br label %208

159:                                              ; preds = %152
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %155, align 8, !tbaa !494
  store i64 0, ptr %156, align 8, !tbaa !494
  br label %208

160:                                              ; preds = %126, %123
  %161 = add i32 %45, 1
  %162 = xor i32 %45, -1
  %163 = add i32 %7, %162
  %164 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %105, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %161, i32 noundef %163)
          to label %165 unwind label %118

165:                                              ; preds = %160
  %166 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %167 unwind label %118

167:                                              ; preds = %165
  br i1 %166, label %175, label %168

168:                                              ; preds = %167, %122
  %169 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %105, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %170 unwind label %118

170:                                              ; preds = %168, %114
  %171 = phi ptr [ %115, %114 ], [ %169, %168 ]
  %172 = load ptr, ptr %1, align 8, !tbaa !166
  %173 = getelementptr inbounds ptr, ptr %172, i64 7
  %174 = load ptr, ptr %173, align 8
  invoke void %174(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %171, ptr noundef null, ptr noundef %4)
          to label %208 unwind label %118

175:                                              ; preds = %167
  %176 = load ptr, ptr %1, align 8, !tbaa !166
  %177 = getelementptr inbounds ptr, ptr %176, i64 3
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef nonnull align 8 dereferenceable(36) ptr %178(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %111)
          to label %180 unwind label %118

180:                                              ; preds = %175
  %181 = load ptr, ptr %1, align 8, !tbaa !166
  %182 = getelementptr inbounds ptr, ptr %181, i64 3
  %183 = load ptr, ptr %182, align 8
  %184 = invoke noundef nonnull align 8 dereferenceable(36) ptr %183(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %185 unwind label %118

185:                                              ; preds = %180
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %179, i64 0, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !218
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr %179, ptr %190, align 8, !tbaa !492
  %191 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %184, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !218
  %193 = icmp eq i32 %192, 0
  %194 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %195 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %193, label %196, label %197

196:                                              ; preds = %189
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %194, align 8, !tbaa !494
  store i64 0, ptr %195, align 8, !tbaa !494
  br label %208

197:                                              ; preds = %189
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %194, align 8, !tbaa !494
  store i64 0, ptr %195, align 8, !tbaa !494
  %198 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %184, ptr %198, align 8, !tbaa !493
  br label %208

199:                                              ; preds = %185
  %200 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %184, i64 0, i32 1
  %201 = load i32, ptr %200, align 8, !tbaa !218
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %204 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %202, label %207, label %205

205:                                              ; preds = %199
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %203, align 8, !tbaa !494
  store i64 0, ptr %204, align 8, !tbaa !494
  %206 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %184, ptr %206, align 8, !tbaa !493
  br label %208

207:                                              ; preds = %199
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %203, align 8, !tbaa !494
  store i64 0, ptr %204, align 8, !tbaa !494
  br label %208

208:                                              ; preds = %170, %149, %150, %157, %159, %196, %197, %205, %207
  %209 = phi i32 [ 2, %149 ], [ 3, %150 ], [ 3, %157 ], [ 1, %159 ], [ 2, %196 ], [ 3, %197 ], [ 3, %205 ], [ 1, %207 ], [ 0, %170 ]
  %210 = load ptr, ptr %1, align 8, !tbaa !166
  %211 = getelementptr inbounds ptr, ptr %210, i64 6
  %212 = load ptr, ptr %211, align 8
  %213 = invoke noundef zeroext i1 %212(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %228 unwind label %214

214:                                              ; preds = %208
  %215 = landingpad { ptr, i32 }
          catch ptr null
  %216 = extractvalue { ptr, i32 } %215, 0
  tail call void @__clang_call_terminate(ptr %216) #20
  unreachable

217:                                              ; preds = %116, %118
  %218 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  %219 = load ptr, ptr %1, align 8, !tbaa !166
  %220 = getelementptr inbounds ptr, ptr %219, i64 6
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef zeroext i1 %221(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %105)
          to label %226 unwind label %223

223:                                              ; preds = %217
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  tail call void @__clang_call_terminate(ptr %225) #20
  unreachable

226:                                              ; preds = %217, %67
  %227 = phi { ptr, i32 } [ %68, %67 ], [ %218, %217 ]
  resume { ptr, i32 } %227

228:                                              ; preds = %208, %100, %98, %90, %89, %59, %21, %16
  %229 = phi i32 [ 3, %16 ], [ 1, %21 ], [ 0, %59 ], [ 2, %89 ], [ 3, %90 ], [ 3, %98 ], [ 1, %100 ], [ %209, %208 ]
  ret i32 %229
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_105XPath10NodeTesterC2ERKNS_14XalanDOMStringES4_PNS0_11eMatchScoreE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef writeonly %3) unnamed_addr #8 align 2 !prof !151 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester11testDefaultERKNS_9XalanNodeENS2_8NodeTypeE to i64), ptr %6, align 8, !tbaa !386
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 3, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %11 = load i32, ptr %10, align 8, !tbaa !218
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !492
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !218
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !494
  store i64 0, ptr %9, align 8, !tbaa !494
  br label %26

19:                                               ; preds = %13
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !494
  store i64 0, ptr %9, align 8, !tbaa !494
  store ptr %2, ptr %5, align 8, !tbaa !493
  br label %26

20:                                               ; preds = %4
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !218
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !494
  store i64 0, ptr %9, align 8, !tbaa !494
  store ptr %2, ptr %5, align 8, !tbaa !493
  br label %26

25:                                               ; preds = %20
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %8, align 8, !tbaa !494
  store i64 0, ptr %9, align 8, !tbaa !494
  br label %26

26:                                               ; preds = %18, %19, %24, %25
  %27 = phi i32 [ 2, %18 ], [ 3, %19 ], [ 3, %24 ], [ 1, %25 ]
  %28 = icmp eq ptr %3, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 %27, ptr %3, align 4, !tbaa !341
  br label %30

30:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN11xalanc_1_105XPath10NodeTester10initializeERKNS_14XalanDOMStringES4_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #8 align 2 !prof !151 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !218
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !492
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !218
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %11, label %14, label %15

14:                                               ; preds = %7
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE to i64), ptr %12, align 8, !tbaa !494
  store i64 0, ptr %13, align 8, !tbaa !494
  br label %26

15:                                               ; preds = %7
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE to i64), ptr %12, align 8, !tbaa !494
  store i64 0, ptr %13, align 8, !tbaa !494
  %16 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %2, ptr %16, align 8, !tbaa !493
  br label %26

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !218
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 4, i32 1
  br i1 %20, label %25, label %23

23:                                               ; preds = %17
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE to i64), ptr %21, align 8, !tbaa !494
  store i64 0, ptr %22, align 8, !tbaa !494
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  store ptr %2, ptr %24, align 8, !tbaa !493
  br label %26

25:                                               ; preds = %17
  store i64 ptrtoint (ptr @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE to i64), ptr %21, align 8, !tbaa !494
  store i64 0, ptr %22, align 8, !tbaa !494
  br label %26

26:                                               ; preds = %25, %23, %15, %14
  %27 = phi i32 [ 2, %14 ], [ 3, %15 ], [ 3, %23 ], [ 1, %25 ]
  ret i32 %27
}

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester25testElementNamespaceOnly2ERKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !492
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8)
  %10 = select i1 %9, i32 2, i32 0
  ret i32 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester17testElementQName2ERKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !218
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi ptr [ %14, %10 ], [ %6, %2 ]
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !493
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %18)
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load ptr, ptr %1, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 22
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !492
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef nonnull align 8 dereferenceable(36) %26)
  %28 = select i1 %27, i32 3, i32 0
  br label %29

29:                                               ; preds = %15, %20
  %30 = phi i32 [ 0, %15 ], [ %28, %20 ]
  ret i32 %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester18testElementNCName2ERKNS_12XalanElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 align 2 !prof !151 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = select i1 %3, i32 3, i32 0
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_105XPath10NodeTester23testElementTotallyWild2ERKNS_12XalanElementE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) #9 align 2 !prof !151 {
  ret i32 1
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester21shouldStripSourceNodeERKNS_9XalanTextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !491
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds ptr, ptr %4, i64 34
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchLocalNameERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !538
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !218
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28, !prof !516

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !166
  %12 = getelementptr inbounds ptr, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !539
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !218
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23, !prof !512

18:                                               ; preds = %10
  %19 = load ptr, ptr %1, align 8, !tbaa !166
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !540
  br label %23

23:                                               ; preds = %10, %18
  %24 = phi ptr [ %22, %18 ], [ %14, %10 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !493
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef nonnull align 8 dereferenceable(36) %26)
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ false, %2 ], [ %27, %23 ]
  ret i1 %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester17matchNamespaceURIERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !492
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8)
  ret i1 %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_105XPath10NodeTester14matchNamespaceERKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !151 {
  %3 = load ptr, ptr %1, align 8, !tbaa !166
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPath::NodeTester", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !493
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %8)
  ret i1 %9
}

declare void @_ZN11xalanc_1_1018XPathFunctionTableC1Eb(ptr noundef nonnull align 8 dereferenceable(304), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XPathFunctionTableD1Ev(ptr noundef nonnull align 8 dereferenceable(304)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !541 {
  store ptr %0, ptr @_ZN11xalanc_1_105XPath11s_functionsE, align 8, !tbaa !542
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE)
  ret void
}

declare void @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_105XPath9terminateEv() local_unnamed_addr #3 align 2 !prof !541 {
  tail call void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE)
  ret void
}

declare void @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !544 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !545
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !546

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !534
  %8 = load ptr, ptr %0, align 8, !tbaa !547
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !548

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !151 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1017DoubleToDOMStringEdRNS_14XalanDOMStringE(double noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE(double noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices22isNamespaceDeclarationERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !166
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !540
  %6 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !257
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !246
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !514
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !218
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !246
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19, !prof !514
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !218
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %12, i32 noundef %14, ptr noundef %20, i32 noundef %22)
  br i1 %23, label %27, label %24, !prof !514

24:                                               ; preds = %1
  %25 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !257
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i1 [ true, %1 ], [ %26, %24 ]
  ret i1 %28
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !346 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !549
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !549
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !550
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !347
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !551
  %12 = load ptr, ptr %3, align 8, !tbaa !549
  store ptr %12, ptr %0, align 8, !tbaa !549
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !550
  store i64 %14, ptr %6, align 8, !tbaa !550
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !347
  store i64 %16, ptr %8, align 8, !tbaa !347
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !551
  store ptr %18, ptr %10, align 8, !tbaa !551
  store ptr %5, ptr %3, align 8, !tbaa !549
  store i64 %7, ptr %13, align 8, !tbaa !550
  store i64 %9, ptr %15, align 8, !tbaa !347
  store ptr %11, ptr %17, align 8, !tbaa !551
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !349

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !166
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !346 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %2, ptr %0, align 8, !tbaa !549
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !550
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !349

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !549
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !550
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !347
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !551
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !551
  %24 = load i64, ptr %9, align 8, !tbaa !550
  %25 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !549
  %28 = load i64, ptr %6, align 8, !tbaa !550
  %29 = load i64, ptr %7, align 8, !tbaa !347
  %30 = load ptr, ptr %8, align 8, !tbaa !551
  %31 = load ptr, ptr %5, align 8, !tbaa !549
  store ptr %31, ptr %0, align 8, !tbaa !549
  %32 = load i64, ptr %14, align 8, !tbaa !550
  store i64 %32, ptr %6, align 8, !tbaa !550
  %33 = load i64, ptr %15, align 8, !tbaa !347
  store i64 %33, ptr %7, align 8, !tbaa !347
  %34 = load ptr, ptr %21, align 8, !tbaa !551
  store ptr %34, ptr %8, align 8, !tbaa !551
  store ptr %27, ptr %5, align 8, !tbaa !549
  store i64 %28, ptr %14, align 8, !tbaa !550
  store i64 %29, ptr %15, align 8, !tbaa !347
  store ptr %30, ptr %21, align 8, !tbaa !551
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !347
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !551
  %50 = load ptr, ptr %5, align 8, !tbaa !549
  %51 = load ptr, ptr %50, align 8, !tbaa !166
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !552

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !166
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !553
  store ptr %65, ptr %8, align 8, !tbaa !551
  store i64 %3, ptr %7, align 8, !tbaa !347
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %132, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !550
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !551
  %17 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !347
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %132, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !551
  %28 = load i64, ptr %12, align 8, !tbaa !550
  %29 = getelementptr %"class.xalanc_1_10::XPath::TargetData", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !554
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !550
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !550
  %36 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %132, label %30, !llvm.loop !556

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %41 = load ptr, ptr %0, align 8, !tbaa !549
  store ptr %41, ptr %5, align 8, !tbaa !549
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !550
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !347
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !166
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !551
  %50 = load i64, ptr %42, align 8, !tbaa !550
  %51 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !551
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !551
  %55 = load i64, ptr %42, align 8, !tbaa !550
  %56 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !551
  %59 = load i64, ptr %42, align 8, !tbaa !550
  %60 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !551
  %62 = load i64, ptr %12, align 8, !tbaa !550
  %63 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !549
  %66 = load i64, ptr %12, align 8, !tbaa !550
  %67 = load i64, ptr %19, align 8, !tbaa !347
  %68 = load ptr, ptr %15, align 8, !tbaa !551
  %69 = load ptr, ptr %5, align 8, !tbaa !549
  store ptr %69, ptr %0, align 8, !tbaa !549
  %70 = load i64, ptr %42, align 8, !tbaa !550
  store i64 %70, ptr %12, align 8, !tbaa !550
  %71 = load i64, ptr %43, align 8, !tbaa !347
  store i64 %71, ptr %19, align 8, !tbaa !347
  %72 = load ptr, ptr %49, align 8, !tbaa !551
  store ptr %72, ptr %15, align 8, !tbaa !551
  store ptr %65, ptr %5, align 8, !tbaa !549
  store i64 %66, ptr %42, align 8, !tbaa !550
  store i64 %67, ptr %43, align 8, !tbaa !347
  store ptr %68, ptr %49, align 8, !tbaa !551
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !166
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #20
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %132

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !347
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !551
  %88 = load ptr, ptr %5, align 8, !tbaa !549
  %89 = load ptr, ptr %88, align 8, !tbaa !166
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #20
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %83

96:                                               ; preds = %38
  %97 = ptrtoint ptr %17 to i64
  %98 = ptrtoint ptr %1 to i64
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %99, %8
  br i1 %100, label %115, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %2, i64 %99
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %106

104:                                              ; preds = %106, %101
  %105 = icmp eq ptr %17, %1
  br i1 %105, label %114, label %110

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %107)
  %108 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !557

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !558

114:                                              ; preds = %110, %104
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %99, i1 false)
  br label %132

115:                                              ; preds = %96
  %116 = sub nsw i64 0, %9
  %117 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %17, i64 %116
  %118 = icmp eq ptr %3, %2
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %119
  %120 = phi ptr [ %121, %119 ], [ %117, %115 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %120)
  %121 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %120, i64 1
  %122 = icmp eq ptr %121, %17
  br i1 %122, label %123, label %119, !llvm.loop !559

123:                                              ; preds = %119, %115
  %124 = icmp eq ptr %117, %1
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %126, %98
  %128 = ashr exact i64 %127, 4
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %17, i64 %129
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %130, ptr align 8 %1, i64 %127, i1 false)
  br label %131

131:                                              ; preds = %125, %123
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %132

132:                                              ; preds = %30, %24, %81, %114, %131, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !346 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !550
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !347
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !349

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !551
  %12 = getelementptr inbounds %"class.xalanc_1_10::XPath::TargetData", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !554
  %13 = load i64, ptr %4, align 8, !tbaa !550
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !550
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !549
  call void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !549
  %24 = load i64, ptr %4, align 8, !tbaa !550
  %25 = load i64, ptr %6, align 8, !tbaa !347
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !551
  %28 = load ptr, ptr %3, align 8, !tbaa !549
  store ptr %28, ptr %0, align 8, !tbaa !549
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !550
  store i64 %30, ptr %4, align 8, !tbaa !550
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !347
  store i64 %32, ptr %6, align 8, !tbaa !347
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !551
  store ptr %34, ptr %26, align 8, !tbaa !551
  store ptr %23, ptr %3, align 8, !tbaa !549
  store i64 %24, ptr %29, align 8, !tbaa !550
  store i64 %25, ptr %31, align 8, !tbaa !347
  store ptr %27, ptr %33, align 8, !tbaa !551
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !166
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !347
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !551
  %52 = load ptr, ptr %3, align 8, !tbaa !549
  %53 = load ptr, ptr %52, align 8, !tbaa !166
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !560 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !372
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !369
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !561

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !210
  store ptr %13, ptr %12, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %13)
  %14 = load i64, ptr %4, align 8, !tbaa !372
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !372
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20, !prof !562
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !275
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %23 unwind label %36, !prof !563

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !275
  %25 = load i64, ptr %4, align 8, !tbaa !372
  %26 = load i64, ptr %6, align 8, !tbaa !369
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !371
  %29 = load ptr, ptr %3, align 8, !tbaa !275
  store ptr %29, ptr %0, align 8, !tbaa !275
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !372
  store i64 %31, ptr %4, align 8, !tbaa !372
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !369
  store i64 %33, ptr %6, align 8, !tbaa !369
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !371
  store ptr %35, ptr %27, align 8, !tbaa !371
  store ptr %24, ptr %3, align 8, !tbaa !275
  store i64 %25, ptr %30, align 8, !tbaa !372
  store i64 %26, ptr %32, align 8, !tbaa !369
  store ptr %28, ptr %34, align 8, !tbaa !371
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !564 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !275
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !372
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !562

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !275
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !372
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !369
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !166
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !565
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !371
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !371
  %24 = load i64, ptr %9, align 8, !tbaa !372
  %25 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35, !prof !566

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !275
  %28 = load i64, ptr %6, align 8, !tbaa !372
  %29 = load i64, ptr %7, align 8, !tbaa !369
  %30 = load ptr, ptr %8, align 8, !tbaa !371
  %31 = load ptr, ptr %5, align 8, !tbaa !275
  store ptr %31, ptr %0, align 8, !tbaa !275
  %32 = load i64, ptr %14, align 8, !tbaa !372
  store i64 %32, ptr %6, align 8, !tbaa !372
  %33 = load i64, ptr %15, align 8, !tbaa !369
  store i64 %33, ptr %7, align 8, !tbaa !369
  %34 = load ptr, ptr %21, align 8, !tbaa !371
  store ptr %34, ptr %8, align 8, !tbaa !371
  store ptr %27, ptr %5, align 8, !tbaa !275
  store i64 %28, ptr %14, align 8, !tbaa !372
  store i64 %29, ptr %15, align 8, !tbaa !369
  store ptr %30, ptr %21, align 8, !tbaa !371
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !567

39:                                               ; preds = %37
  %40 = shl i64 %3, 3
  %41 = load ptr, ptr %2, align 8, !tbaa !166
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !568
  store ptr %44, ptr %8, align 8, !tbaa !371
  store i64 %3, ptr %7, align 8, !tbaa !369
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !569 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %107, label %11, !prof !570

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !372
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !371
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !369
  br i1 %18, label %21, label %39, !prof !566

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !570

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %107, label %26, !prof !571

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !371
  %28 = load i64, ptr %12, align 8, !tbaa !372
  %29 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !210
  store ptr %33, ptr %32, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %33)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !372
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !372
  %37 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %107, label %30, !prof !572, !llvm.loop !573

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !275
  store ptr %42, ptr %5, align 8, !tbaa !275
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !372
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !369
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !166
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !371
  %51 = load i64, ptr %43, align 8, !tbaa !372
  %52 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !371
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !371
  %56 = load i64, ptr %43, align 8, !tbaa !372
  %57 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !371
  %60 = load i64, ptr %43, align 8, !tbaa !372
  %61 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !371
  %63 = load i64, ptr %12, align 8, !tbaa !372
  %64 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !275
  %67 = load i64, ptr %12, align 8, !tbaa !372
  %68 = load i64, ptr %19, align 8, !tbaa !369
  %69 = load ptr, ptr %15, align 8, !tbaa !371
  %70 = load ptr, ptr %5, align 8, !tbaa !275
  store ptr %70, ptr %0, align 8, !tbaa !275
  %71 = load i64, ptr %43, align 8, !tbaa !372
  store i64 %71, ptr %12, align 8, !tbaa !372
  %72 = load i64, ptr %44, align 8, !tbaa !369
  store i64 %72, ptr %19, align 8, !tbaa !369
  %73 = load ptr, ptr %50, align 8, !tbaa !371
  store ptr %73, ptr %15, align 8, !tbaa !371
  store ptr %66, ptr %5, align 8, !tbaa !275
  store i64 %67, ptr %43, align 8, !tbaa !372
  store i64 %68, ptr %44, align 8, !tbaa !369
  store ptr %69, ptr %50, align 8, !tbaa !371
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %107

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !574

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !575

94:                                               ; preds = %90, %84
  %95 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %82, ptr noundef %1)
  br label %107

96:                                               ; preds = %76
  %97 = sub nsw i64 0, %9
  %98 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %17, i64 %97
  %99 = icmp eq ptr %3, %2
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %101, i64 1
  %103 = icmp eq ptr %102, %17
  br i1 %103, label %104, label %100, !llvm.loop !576

104:                                              ; preds = %100, %96
  %105 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_(ptr noundef %1, ptr noundef %98, ptr noundef %17)
  %106 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %3, ptr noundef %1)
  br label %107

107:                                              ; preds = %30, %24, %65, %104, %94, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !275
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !275
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !372
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !369
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !371
  %12 = load ptr, ptr %3, align 8, !tbaa !275
  store ptr %12, ptr %0, align 8, !tbaa !275
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !372
  store i64 %14, ptr %6, align 8, !tbaa !372
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !369
  store i64 %16, ptr %8, align 8, !tbaa !369
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !371
  store ptr %18, ptr %10, align 8, !tbaa !371
  store ptr %5, ptr %3, align 8, !tbaa !275
  store i64 %7, ptr %13, align 8, !tbaa !372
  store i64 %9, ptr %15, align 8, !tbaa !369
  store ptr %11, ptr %17, align 8, !tbaa !371
  call void @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1010XObjectPtrEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !151 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %20, %3
  %10 = phi ptr [ %2, %3 ], [ %22, %20 ]
  ret ptr %10

11:                                               ; preds = %3, %20
  %12 = phi i64 [ %23, %20 ], [ %7, %3 ]
  %13 = phi ptr [ %22, %20 ], [ %2, %3 ]
  %14 = phi ptr [ %21, %20 ], [ %0, %3 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !210
  %16 = load ptr, ptr %14, align 8, !tbaa !210
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %15)
  %19 = load ptr, ptr %14, align 8, !tbaa !210
  store ptr %19, ptr %13, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %19)
  br label %20

20:                                               ; preds = %11, %18
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %14, i64 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %23 = add nsw i64 %12, -1
  %24 = icmp sgt i64 %12, 1
  br i1 %24, label %11, label %9, !llvm.loop !577
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1010XObjectPtrES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !151 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3, %20
  %10 = phi i64 [ %21, %20 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %20 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %20 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %12, i64 -1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %11, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !210
  %16 = load ptr, ptr %13, align 8, !tbaa !210
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %15)
  %19 = load ptr, ptr %13, align 8, !tbaa !210
  store ptr %19, ptr %14, align 8, !tbaa !210
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %19)
  br label %20

20:                                               ; preds = %9, %18
  %21 = add nsw i64 %10, -1
  %22 = icmp sgt i64 %10, 1
  br i1 %22, label %9, label %23, !llvm.loop !578

23:                                               ; preds = %20, %3
  %24 = phi ptr [ %2, %3 ], [ %14, %20 ]
  ret ptr %24
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XPath.cpp() #16 section ".text.startup" !prof !541 !PGOFuncName !579 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_105XPath13s_emptyStringE, ptr nonnull @__dso_handle) #19
  tail call void @_ZN11xalanc_1_1018XPathFunctionTableC1Eb(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, i1 noundef zeroext false)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018XPathFunctionTableD1Ev, ptr nonnull @_ZN11xalanc_1_105XPath11s_functionsE, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!150}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!35 = !{ptr @_ZN11xalanc_1_105XPathC2ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE, ptr @_ZN11xalanc_1_1015XPathExpressionC1ERN11xercesc_2_713MemoryManagerE, i64 164}
!36 = !{ptr @_ZN11xalanc_1_105XPathD2Ev, ptr @_ZN11xalanc_1_1015XPathExpressionD1Ev, i64 164}
!37 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 19395}
!38 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 22323641}
!39 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport8subtractEdd, i64 22323641}
!40 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 67091837}
!41 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, i64 67091837}
!42 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 66991832}
!43 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 207523}
!44 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev, i64 22360916}
!45 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 22360916}
!46 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev, i64 22360916}
!47 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 22360916}
!48 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERb, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 10875}
!49 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 6000}
!50 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 649727}
!51 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 93911}
!52 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1013DoubleSupport8subtractEdd, i64 86258}
!53 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1013DoubleSupport8multiplyEdd, i64 93911}
!54 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, i64 93911}
!55 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1013DoubleSupport7modulusEdd, i64 93911}
!56 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 6048}
!57 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, i64 6048}
!58 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 3}
!59 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev, i64 22503952}
!60 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 22503952}
!61 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev, i64 22503952}
!62 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 3}
!63 = !{ptr @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 144968}
!64 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 79918}
!65 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 79918}
!66 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, i64 65050}
!67 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 3}
!68 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1015DOMStringHelper18DoubleToCharactersEdRNS_17FormatterListenerEMS1_FvPKtjE, i64 77903}
!69 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 44759106}
!70 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, i64 44759107}
!71 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44834544}
!72 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 75480}
!73 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, i64 395351}
!74 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 10}
!75 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE, i64 6}
!76 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, i64 71882}
!77 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 6008}
!78 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 345597}
!79 = !{ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 345597}
!80 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 44760622}
!81 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, i64 22380311}
!82 = !{ptr @_ZNK11xalanc_1_105XPath6equalsEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44760622}
!83 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERd, i64 3}
!84 = !{ptr @_ZNK11xalanc_1_105XPath3divEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport6divideEdd, i64 3}
!85 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 2}
!86 = !{ptr @_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, i64 2}
!87 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 179021670}
!88 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 111874431}
!89 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 290896101}
!90 = !{ptr @_ZNK11xalanc_1_105XPath11runFunctionEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 8}
!91 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 207523}
!92 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 13}
!93 = !{ptr @_ZNK11xalanc_1_105XPath13functionCountEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 13}
!94 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_18MutableNodeRefListE, i64 6011}
!95 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 64756}
!96 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 64756}
!97 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 64756}
!98 = !{ptr @_ZNK11xalanc_1_105XPath11functionSumEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 6011}
!99 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 65050}
!100 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 65050}
!101 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 395351}
!102 = !{ptr @_ZNK11xalanc_1_105XPath12locationPathEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextERNS_17FormatterListenerEMS7_FvPKtjE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE, i64 354005}
!103 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, i64 229388}
!104 = !{ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERNS_21XPathExecutionContextE, i64 229388}
!105 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 24}
!106 = !{ptr @_ZNK11xalanc_1_105XPath13getTargetDataERNS_11XalanVectorINS0_10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 24}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 19}
!108 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, i64 36543}
!109 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 265930}
!110 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, i64 6465}
!111 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE, i64 12740}
!112 = !{ptr @_ZNK11xalanc_1_105XPath11stepPatternERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS0_11eMatchScoreE, ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE, i64 246725}
!113 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 1275477}
!114 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTester8testNodeERKNS_9XalanNodeENS2_8NodeTypeE, i64 372266}
!115 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 1498711}
!116 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, i64 217913}
!117 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE, i64 12233567}
!118 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE, i64 577710}
!119 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, i64 38249}
!120 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, i64 462980}
!121 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList18addNodesInDocOrderERKS0_RNS_21XPathExecutionContextE, i64 97464}
!122 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList5clearEv, i64 177184}
!123 = !{ptr @_ZNK11xalanc_1_105XPath4stepERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiRNS_18MutableNodeRefListE, ptr @__clang_call_terminate, i64 2}
!124 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_105XPath10NodeTesterC2ERKS0_RNS_21XPathExecutionContextEPKiii, i64 217913}
!125 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, i64 228788}
!126 = !{ptr @_ZNK11xalanc_1_105XPath14findAttributesERNS_21XPathExecutionContextEPNS_9XalanNodeEPKiiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE, i64 217913}
!127 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList10clearNullsEv, i64 19395}
!128 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZNK11xalanc_1_105XPath11executeMoreEPNS_9XalanNodeEPKiRNS_21XPathExecutionContextE, i64 19395}
!129 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1018MutableNodeRefList7setNodeEjPNS_9XalanNodeE, i64 19395}
!130 = !{ptr @_ZNK11xalanc_1_105XPath10predicatesERNS_21XPathExecutionContextEPKiRNS_18MutableNodeRefListE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 19395}
!131 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 235253}
!132 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester19testAttributeNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 347564}
!133 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester17testElementNCNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 122942}
!134 = !{ptr @_ZNK11xalanc_1_105XPath10NodeTester16testElementQNameERKNS_9XalanNodeENS2_8NodeTypeE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 7238425}
!135 = !{ptr @_ZN11xalanc_1_105XPath10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XPathFunctionTable11CreateTableEv, i64 1}
!136 = !{ptr @_ZN11xalanc_1_105XPath9terminateEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable12DestroyTableEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 24}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 339573}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, i64 6}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, i64 6}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 6}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, i64 5}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 5}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 19}
!146 = !{ptr @_GLOBAL__sub_I_XPath.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!147 = !{ptr @_GLOBAL__sub_I_XPath.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!148 = !{ptr @_GLOBAL__sub_I_XPath.cpp, ptr @__cxa_atexit, i64 2}
!149 = !{ptr @_GLOBAL__sub_I_XPath.cpp, ptr @_ZN11xalanc_1_1018XPathFunctionTableC1Eb, i64 1}
!150 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!"function_entry_count", i64 164}
!153 = !{!154, !157, i64 120}
!154 = !{!"_ZTSN11xalanc_1_105XPathE", !155, i64 0, !157, i64 120, !164, i64 128}
!155 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !156, i64 0, !161, i64 32, !162, i64 40, !161, i64 72, !157, i64 80, !163, i64 88}
!156 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!157 = !{!"any pointer", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C++ TBAA"}
!160 = !{!"long", !158, i64 0}
!161 = !{!"int", !158, i64 0}
!162 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!163 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!164 = !{!"bool", !158, i64 0}
!165 = !{!154, !164, i64 128}
!166 = !{!167, !167, i64 0}
!167 = !{!"vtable pointer", !159, i64 0}
!168 = !{!161, !161, i64 0}
!169 = !{!156, !157, i64 24}
!170 = !{!"function_entry_count", i64 268602606}
!171 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 19395, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22323641, i32 0, i32 0, i32 0, i32 0, i32 0, i32 103035, i32 67091838, i32 0, i32 89504425, i32 0, i32 66991833, i32 207523, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22360916, i32 0}
!172 = !{!173, !157, i64 16}
!173 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !174, i64 0, !157, i64 16}
!174 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !157, i64 8}
!175 = !{!"VP", i32 0, i64 19395, i64 -2857548620243287302, i64 19395}
!176 = !{!"branch_weights", i32 0, i32 22409208}
!177 = !{!163, !157, i64 24}
!178 = !{!179, !179, i64 0}
!179 = !{!"double", !158, i64 0}
!180 = !{!"branch_weights", i32 22409208, i32 0}
!181 = !{!"VP", i32 0, i64 22323641, i64 -6711884194610633037, i64 22323641}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE: argument 0"}
!184 = distinct !{!184, !"_ZNK11xalanc_1_105XPath7literalEPKiRNS_21XPathExecutionContextE"}
!185 = !{!162, !157, i64 24}
!186 = !{i8 0, i8 2}
!187 = !{}
!188 = !{!"branch_weights", i32 0, i32 103035}
!189 = !{!"VP", i32 0, i64 103035, i64 -2212513696081740960, i64 103035}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE: argument 0"}
!192 = distinct !{!192, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE"}
!193 = !{!"VP", i32 0, i64 67091837, i64 -2661239832470905707, i64 67091837}
!194 = !{!"VP", i32 0, i64 111850945, i64 -6307931244701675947, i64 111850945}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE: argument 0"}
!197 = distinct !{!197, !"_ZNK11xalanc_1_105XPath9numberlitEPKiRNS_21XPathExecutionContextE"}
!198 = !{!"branch_weights", i32 0, i32 89504425}
!199 = !{!"VP", i32 0, i64 89504425, i64 -3552627748425506233, i64 89504425}
!200 = !{!164, !164, i64 0}
!201 = !{!158, !158, i64 0}
!202 = !{!"branch_weights", i32 44684557, i32 0}
!203 = !{!204, !160, i64 24}
!204 = !{!"_ZTSN11xalanc_1_1028FormatterStringLengthCounterE", !205, i64 0, !160, i64 24}
!205 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !206, i64 0, !157, i64 8, !207, i64 16, !208, i64 20}
!206 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!207 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !158, i64 0}
!208 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !158, i64 0}
!209 = !{!"VP", i32 0, i64 22360916, i64 -6711884194610633037, i64 22360916}
!210 = !{!211, !157, i64 0}
!211 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !157, i64 0}
!212 = !{!"function_entry_count", i64 22371791}
!213 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 22360916, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10875, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!214 = !{!"VP", i32 0, i64 10875, i64 -7126169151534623685, i64 10875}
!215 = !{!"branch_weights", i32 10875, i32 0}
!216 = !{!"VP", i32 0, i64 10875, i64 -587917090741629528, i64 10875}
!217 = !{!"VP", i32 0, i64 10875, i64 -4442925746666724313, i64 10875}
!218 = !{!219, !161, i64 32}
!219 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !220, i64 0, !161, i64 32}
!220 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!221 = !{!"function_entry_count", i64 6000}
!222 = !{!"VP", i32 0, i64 6000, i64 -6410307884929493294, i64 6000}
!223 = !{!"VP", i32 0, i64 6000, i64 8453500335362080052, i64 6000}
!224 = !{!"VP", i32 0, i64 6000, i64 -1063818360559479977, i64 6000}
!225 = !{!"branch_weights", i32 6000, i32 0}
!226 = !{!"VP", i32 0, i64 6000, i64 -1244769862664253517, i64 6000}
!227 = !{!"function_entry_count", i64 23253645}
!228 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93159, i32 85567, i32 93159, i32 93159, i32 93159, i32 0, i32 0, i32 0, i32 0, i32 186318, i32 0, i32 0, i32 0, i32 6000, i32 186318, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 93159, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22323641, i32 3}
!229 = !{!"branch_weights", i32 0, i32 93159}
!230 = !{!"branch_weights", i32 93159, i32 0}
!231 = !{!"branch_weights", i32 0, i32 93162}
!232 = !{!"branch_weights", i32 93159, i32 3}
!233 = !{!"VP", i32 0, i64 6000, i64 -7126169151534623685, i64 6000}
!234 = !{!"VP", i32 0, i64 6000, i64 -4442925746666724313, i64 6000}
!235 = !{!"VP", i32 0, i64 186318, i64 1489373475960345102, i64 186318}
!236 = !{!174, !157, i64 8}
!237 = !{!"function_entry_count", i64 144968}
!238 = !{!"VP", i32 0, i64 144968, i64 -6410307884929493294, i64 144968}
!239 = !{!"VP", i32 0, i64 144968, i64 8453500335362080052, i64 144968}
!240 = !{!"VP", i32 0, i64 144968, i64 -1063818360559479977, i64 144968}
!241 = !{!"branch_weights", i32 144968, i32 0}
!242 = !{!"VP", i32 0, i64 144968, i64 -1244769862664253517, i64 144968}
!243 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79918, i32 65050, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!244 = !{!"VP", i32 0, i64 79918, i64 593248325516517966, i64 79918}
!245 = !{!"branch_weights", i32 79918, i32 0}
!246 = !{!220, !160, i64 8}
!247 = !{!"function_entry_count", i64 45307847}
!248 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 44759107, i32 0, i32 0, i32 0, i32 75480, i32 395351, i32 0, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71882, i32 0, i32 0, i32 0, i32 6008}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE: argument 0"}
!251 = distinct !{!251, !"_ZNK11xalanc_1_105XPath8variableEPKiRNS_21XPathExecutionContextE"}
!252 = !{!"VP", i32 0, i64 44759106, i64 -2661239832470905707, i64 44759106}
!253 = !{!"VP", i32 0, i64 44759107, i64 2789614367551323459, i64 44613876, i64 -69364217839611715, i64 74550, i64 5079349806162887644, i64 37275}
!254 = !{!"branch_weights", i32 44759107, i32 0}
!255 = !{!"VP", i32 0, i64 75480, i64 2789614367551323459, i64 75480}
!256 = !{!"branch_weights", i32 75480, i32 0}
!257 = !{!157, !157, i64 0}
!258 = !{!"branch_weights", i32 0, i32 6}
!259 = !{!"VP", i32 0, i64 6, i64 7358946498439485224, i64 6}
!260 = !{!"function_entry_count", i64 345597}
!261 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 345597}
!262 = !{!"branch_weights", i32 345597, i32 0}
!263 = !{!264, !266, i64 12}
!264 = !{!"_ZTSN11xalanc_1_107XObjectE", !265, i64 0, !266, i64 12, !157, i64 16}
!265 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !161, i64 8}
!266 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !158, i64 0}
!267 = !{!"function_entry_count", i64 22380311}
!268 = !{!"branch_weights", i32 22380311, i32 0}
!269 = !{!"function_entry_count", i64 3}
!270 = !{!271, !157, i64 0}
!271 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !157, i64 0, !157, i64 8}
!272 = !{!271, !157, i64 8}
!273 = !{!"function_entry_count", i64 2}
!274 = !{!"VP", i32 0, i64 2, i64 -2661239832470905707, i64 2}
!275 = !{!276, !157, i64 0}
!276 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!277 = distinct !{!277, !278, !279}
!278 = !{!"llvm.loop.mustprogress"}
!279 = !{!"llvm.loop.unroll.disable"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZNK11xalanc_1_105XPath11extfunctionEPNS_9XalanNodeEPKiRKNS_14XalanDOMStringES7_RKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEERNS_21XPathExecutionContextE: argument 0"}
!282 = distinct !{!282, !"_ZNK11xalanc_1_105XPath11extfunctionEPNS_9XalanNodeEPKiRKNS_14XalanDOMStringES7_RKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS9_EEEERNS_21XPathExecutionContextE"}
!283 = !{!"function_entry_count", i64 67147231}
!284 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 22420031, i32 44727200}
!285 = !{!"branch_weights", i32 22420031, i32 0}
!286 = !{!"VP", i32 0, i64 22420031, i64 6774332839970040396, i64 22344551, i64 -4134925694518257068, i64 41820, i64 9159376014532317269, i64 20910}
!287 = !{!"branch_weights", i32 44727200, i32 0}
!288 = !{!"VP", i32 0, i64 44727200, i64 -3897829112359548222, i64 44727200}
!289 = distinct !{!289, !278, !279}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE: argument 0"}
!292 = distinct !{!292, !"_ZNK11xalanc_1_105XPath8functionEPNS_9XalanNodeEiRKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS4_EEEERNS_21XPathExecutionContextE"}
!293 = !{!"function_entry_count", i64 207523}
!294 = !{!"VP", i32 0, i64 207523, i64 -7126169151534623685, i64 207523}
!295 = !{!"branch_weights", i32 207523, i32 0}
!296 = !{!"VP", i32 0, i64 207523, i64 -4220447980236921034, i64 207523}
!297 = !{!"function_entry_count", i64 13}
!298 = !{!"VP", i32 0, i64 13, i64 -7126169151534623685, i64 13}
!299 = !{!"branch_weights", i32 13, i32 0}
!300 = !{!"VP", i32 0, i64 13, i64 -587917090741629528, i64 13}
!301 = !{!"VP", i32 0, i64 13, i64 -4442925746666724313, i64 13}
!302 = !{!"function_entry_count", i64 6011}
!303 = !{!"VP", i32 0, i64 6011, i64 -7126169151534623685, i64 6011}
!304 = !{!"branch_weights", i32 6011, i32 0}
!305 = !{!"VP", i32 0, i64 6011, i64 -587917090741629528, i64 6011}
!306 = !{!"branch_weights", i32 603, i32 5408}
!307 = !{!"VP", i32 0, i64 5408, i64 513632834810131310, i64 5408}
!308 = !{!"VP", i32 0, i64 5408, i64 1667259618122374371, i64 5408}
!309 = !{!"VP", i32 0, i64 64757, i64 -1438070377793093859, i64 64757}
!310 = !{!"branch_weights", i32 64757, i32 0}
!311 = !{!"branch_weights", i32 0, i32 64757}
!312 = !{!"branch_weights", i32 5408, i32 59349}
!313 = distinct !{!313, !278, !279}
!314 = !{!"VP", i32 0, i64 6011, i64 -4442925746666724313, i64 6011}
!315 = !{!"VP", i32 0, i64 0, i64 -7126169151534623685, i64 0}
!316 = !{!"function_entry_count", i64 65050}
!317 = !{!"VP", i32 0, i64 65050, i64 -7126169151534623685, i64 65050}
!318 = !{!"branch_weights", i32 65050, i32 0}
!319 = !{!"VP", i32 0, i64 65050, i64 -587917090741629528, i64 65050}
!320 = !{!"branch_weights", i32 0, i32 65050}
!321 = !{!"VP", i32 0, i64 65050, i64 -1438070377793093859, i64 65050}
!322 = !{!"VP", i32 0, i64 65050, i64 -4442925746666724313, i64 65050}
!323 = !{!"function_entry_count", i64 395351}
!324 = !{!"VP", i32 0, i64 395351, i64 -7126169151534623685, i64 395351}
!325 = !{!"branch_weights", i32 395351, i32 0}
!326 = !{!"VP", i32 0, i64 395351, i64 -587917090741629528, i64 395351}
!327 = !{!"branch_weights", i32 41345, i32 354006}
!328 = !{!"VP", i32 0, i64 354006, i64 -1438070377793093859, i64 354006}
!329 = !{!"branch_weights", i32 354006, i32 0}
!330 = !{!"VP", i32 0, i64 395351, i64 -4442925746666724313, i64 395351}
!331 = distinct !{!331, !278, !279}
!332 = !{!333, !337, i64 40}
!333 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !334, i64 0, !337, i64 40}
!334 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !335, i64 0, !336, i64 8}
!335 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!336 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!337 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !158, i64 0}
!338 = !{!"function_entry_count", i64 229388}
!339 = !{!"branch_weights", i32 229388, i32 0}
!340 = !{!"branch_weights", i32 1, i32 0}
!341 = !{!342, !342, i64 0}
!342 = !{!"_ZTSN11xalanc_1_105XPath11eMatchScoreE", !158, i64 0}
!343 = !{!"branch_weights", i32 0, i32 229388}
!344 = !{!"VP", i32 0, i64 229388, i64 -6410307884929493294, i64 229388}
!345 = !{!"VP", i32 0, i64 229388, i64 8453500335362080052, i64 229388}
!346 = !{!"function_entry_count", i64 24}
!347 = !{!348, !160, i64 16}
!348 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_5XPath10TargetDataENS_31MemoryManagedConstructionTraitsIS2_EEEE", !157, i64 0, !160, i64 8, !160, i64 16, !157, i64 24}
!349 = !{!"branch_weights", i32 24, i32 0}
!350 = !{!"branch_weights", i32 191, i32 1}
!351 = !{!"branch_weights", i32 1, i32 191}
!352 = distinct !{!352, !278, !279}
!353 = !{!"branch_weights", i32 24, i32 11}
!354 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 1, i32 0, i32 22}
!355 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 23}
!356 = !{!"branch_weights", i32 1, i32 22}
!357 = !{!"VP", i32 0, i64 22, i64 -2661239832470905707, i64 22}
!358 = !{!"branch_weights", i32 0, i32 23}
!359 = !{!"VP", i32 0, i64 23, i64 -2661239832470905707, i64 23}
!360 = !{!"branch_weights", i32 11, i32 13}
!361 = !{!362, !157, i64 0}
!362 = !{!"_ZTSN11xalanc_1_105XPath10TargetDataE", !157, i64 0, !342, i64 8, !363, i64 12}
!363 = !{!"_ZTSN11xalanc_1_105XPath10TargetData11eTargetTypeE", !158, i64 0}
!364 = !{!362, !342, i64 8}
!365 = !{!362, !363, i64 12}
!366 = !{!"branch_weights", i32 191, i32 89}
!367 = distinct !{!367, !278, !279}
!368 = !{!"function_entry_count", i64 12}
!369 = !{!276, !160, i64 16}
!370 = !{!"branch_weights", i32 6, i32 6}
!371 = !{!276, !157, i64 24}
!372 = !{!276, !160, i64 8}
!373 = !{!"branch_weights", i32 19, i32 0}
!374 = !{!"branch_weights", i32 191, i32 417}
!375 = distinct !{!375, !278, !279}
!376 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!377 = !{!"function_entry_count", i64 265931}
!378 = !{!"branch_weights", i32 229388, i32 36543}
!379 = !{!"branch_weights", i32 0, i32 36543}
!380 = !{!"VP", i32 0, i64 36543, i64 5575636727286712827, i64 30078, i64 7640389117638268357, i64 6465}
!381 = !{!"branch_weights", i32 6465, i32 30078}
!382 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 1, i32 6465, i32 0, i32 12740, i32 246725}
!383 = distinct !{!383, !278, !279}
!384 = distinct !{!384, !278, !279}
!385 = !{!"VP", i32 0, i64 1, i64 6316165463780562933, i64 1}
!386 = !{!387, !158, i64 24}
!387 = !{!"_ZTSN11xalanc_1_105XPath10NodeTesterE", !157, i64 0, !157, i64 8, !157, i64 16, !158, i64 24, !158, i64 40}
!388 = distinct !{!388, !278, !279}
!389 = !{!"VP", i32 0, i64 6465, i64 7640389117638268357, i64 6465}
!390 = !{!"branch_weights", i32 6465, i32 0}
!391 = !{!"VP", i32 0, i64 6465, i64 7349355868902408905, i64 6465}
!392 = !{!"VP", i32 0, i64 12740, i64 5575636727286712827, i64 12740}
!393 = !{!"branch_weights", i32 0, i32 12740}
!394 = !{!"branch_weights", i32 12740, i32 0}
!395 = !{!"VP", i32 0, i64 12740, i64 -7141932254870712899, i64 12740}
!396 = distinct !{!396, !278, !279}
!397 = !{!"VP", i32 0, i64 246725, i64 5575636727286712827, i64 246725}
!398 = !{!"branch_weights", i32 0, i32 246725}
!399 = !{!"branch_weights", i32 246725, i32 0}
!400 = !{!"VP", i32 0, i64 246725, i64 5130296407233132079, i64 246725}
!401 = !{!"branch_weights", i32 0, i32 265931}
!402 = !{!"branch_weights", i32 265931, i32 0, i32 0}
!403 = !{i32 0, i32 5}
!404 = distinct !{!404, !278, !279}
!405 = !{!"function_entry_count", i64 1493391}
!406 = !{!"VP", i32 0, i64 1493391, i64 -7126169151534623685, i64 1493391}
!407 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 137389, i32 0, i32 0, i32 0, i32 217913, i32 0, i32 0, i32 0, i32 1138089, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!408 = !{!"branch_weights", i32 0, i32 137389}
!409 = !{!"VP", i32 0, i64 137389, i64 5575636727286712827, i64 137389}
!410 = !{!"branch_weights", i32 137389, i32 0}
!411 = !{!"VP", i32 0, i64 137389, i64 -7141932254870712899, i64 137389}
!412 = !{!"branch_weights", i32 217913, i32 0}
!413 = !{!"VP", i32 0, i64 1138089, i64 543931881986103364, i64 1138084, i64 -4980141531800104814, i64 5}
!414 = !{!"branch_weights", i32 0, i32 1138089}
!415 = !{!"VP", i32 0, i64 13067923, i64 -2905376512939438276, i64 7103001, i64 5575636727286712827, i64 5964922}
!416 = !{!"branch_weights", i32 13067923, i32 0}
!417 = !{!"VP", i32 0, i64 13067923, i64 5130296407233132079, i64 12233567, i64 9214544255471141974, i64 577710, i64 -7141932254870712899, i64 234877}
!418 = !{!"branch_weights", i32 11706554, i32 1361369}
!419 = !{!"VP", i32 0, i64 13067923, i64 -853211046839366833, i64 7103001, i64 7650302809387452093, i64 5964922}
!420 = !{!"branch_weights", i32 1138089, i32 11929834}
!421 = distinct !{!421, !278, !279}
!422 = !{!"VP", i32 0, i64 1493391, i64 -6103451104460992262, i64 1493391}
!423 = !{!"branch_weights", i32 1455141, i32 0, i32 38250}
!424 = !{!"branch_weights", i32 38250, i32 0}
!425 = !{!"branch_weights", i32 352705, i32 1140686}
!426 = !{!"VP", i32 0, i64 352705, i64 -587917090741629528, i64 352705}
!427 = !{!"branch_weights", i32 57168, i32 295537}
!428 = !{!336, !160, i64 8}
!429 = !{!"branch_weights", i32 24434, i32 271103}
!430 = !{!"VP", i32 0, i64 462995, i64 -1438070377793093859, i64 462995}
!431 = !{!"VP", i32 0, i64 462995, i64 -7126169151534623685, i64 462995}
!432 = !{!"branch_weights", i32 462995, i32 0}
!433 = !{!"branch_weights", i32 94425, i32 368570}
!434 = !{!"branch_weights", i32 271103, i32 97467}
!435 = !{!"branch_weights", i32 97467, i32 0}
!436 = !{!336, !157, i64 0}
!437 = !{!336, !160, i64 16}
!438 = !{!336, !157, i64 24}
!439 = !{!"VP", i32 0, i64 462995, i64 -4442925746666724313, i64 462995}
!440 = !{!"branch_weights", i32 295537, i32 167458}
!441 = distinct !{!441, !278, !279}
!442 = !{!"branch_weights", i32 177189, i32 963497}
!443 = !{!"branch_weights", i32 177189, i32 0}
!444 = !{!"branch_weights", i32 0, i32 963497}
!445 = !{!"VP", i32 0, i64 1493391, i64 3787174768168837400, i64 1493391}
!446 = !{!"branch_weights", i32 0, i32 1493391}
!447 = !{!"VP", i32 0, i64 1493391, i64 -4442925746666724313, i64 1493391}
!448 = distinct !{!448, !278, !279}
!449 = !{!"VP", i32 0, i64 0, i64 5575636727286712827, i64 0}
!450 = !{!"VP", i32 0, i64 0, i64 -7141932254870712899, i64 0}
!451 = distinct !{!451, !278, !279}
!452 = distinct !{!452, !278, !279}
!453 = !{!"function_entry_count", i64 217913}
!454 = !{!"VP", i32 0, i64 217913, i64 5575636727286712827, i64 217913}
!455 = !{!"VP", i32 0, i64 217913, i64 -5530958640200428011, i64 217913}
!456 = !{!"branch_weights", i32 0, i32 217913}
!457 = !{!"VP", i32 0, i64 217913, i64 6751742982613680161, i64 217913}
!458 = !{!"VP", i32 0, i64 228788, i64 -971782602115532363, i64 228788}
!459 = !{!"branch_weights", i32 228788, i32 0}
!460 = !{!"VP", i32 0, i64 228788, i64 7349355868902408905, i64 228788}
!461 = !{!"branch_weights", i32 10875, i32 217913}
!462 = !{!"branch_weights", i32 217913, i32 10875}
!463 = distinct !{!463, !278, !279}
!464 = !{!"VP", i32 0, i64 0, i64 543931881986103364, i64 0, i64 -4980141531800104814, i64 0}
!465 = !{!"VP", i32 0, i64 0, i64 -2905376512939438276, i64 0, i64 5575636727286712827, i64 0}
!466 = !{!"VP", i32 0, i64 0, i64 5130296407233132079, i64 0, i64 9214544255471141974, i64 0, i64 -7141932254870712899, i64 0}
!467 = !{!"VP", i32 0, i64 0, i64 -853211046839366833, i64 0, i64 7650302809387452093, i64 0}
!468 = distinct !{!468, !278, !279}
!469 = distinct !{!469, !278, !279}
!470 = distinct !{!470, !278, !279}
!471 = distinct !{!471, !278, !279}
!472 = distinct !{!472, !278, !279}
!473 = distinct !{!473, !278, !279}
!474 = distinct !{!474, !278, !279}
!475 = distinct !{!475, !278, !279}
!476 = distinct !{!476, !278, !279}
!477 = distinct !{!477, !278, !279}
!478 = distinct !{!478, !278, !279}
!479 = distinct !{!479, !278, !279}
!480 = distinct !{!480, !278, !279}
!481 = !{!"function_entry_count", i64 38250}
!482 = !{!"VP", i32 0, i64 38250, i64 -587917090741629528, i64 38250}
!483 = !{!"branch_weights", i32 18855, i32 19395}
!484 = !{!"branch_weights", i32 0, i32 19395}
!485 = !{!"VP", i32 0, i64 19395, i64 -1438070377793093859, i64 19395}
!486 = !{!"VP", i32 0, i64 19395, i64 -5672407743361924621, i64 19395}
!487 = !{!"branch_weights", i32 19395, i32 0}
!488 = distinct !{!488, !278, !279}
!489 = !{!"branch_weights", i32 38250, i32 0, i32 0}
!490 = !{!"branch_weights", i32 0, i32 38250}
!491 = !{!387, !157, i64 0}
!492 = !{!387, !157, i64 8}
!493 = !{!387, !157, i64 16}
!494 = !{!387, !158, i64 40}
!495 = !{!"function_entry_count", i64 1759321}
!496 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 250692, i32 0, i32 1508629}
!497 = !{!"branch_weights", i32 287055, i32 1221574}
!498 = !{!"VP", i32 0, i64 1221574, i64 -2661239832470905707, i64 1221574}
!499 = !{!"branch_weights", i32 7, i32 287048}
!500 = !{!"branch_weights", i32 0, i32 1508622}
!501 = !{!"VP", i32 0, i64 1508622, i64 -2661239832470905707, i64 1508622}
!502 = !{!"branch_weights", i32 1284251, i32 224378, i32 0}
!503 = !{!"branch_weights", i32 0, i32 224378}
!504 = !{!"branch_weights", i32 224378, i32 0}
!505 = !{!"branch_weights", i32 7, i32 1284244}
!506 = !{!"branch_weights", i32 62670, i32 1221574}
!507 = !{!"branch_weights", i32 0, i32 1221574}
!508 = !{!"function_entry_count", i64 385006}
!509 = !{!"branch_weights", i32 217286, i32 167720}
!510 = !{!"VP", i32 0, i64 167720, i64 8073269881114004310, i64 167720}
!511 = !{!"function_entry_count", i64 235253}
!512 = !{!"branch_weights", i32 235253, i32 0}
!513 = !{!"VP", i32 0, i64 235253, i64 4904834064969965898, i64 235253}
!514 = !{!"branch_weights", i32 0, i32 235253}
!515 = !{!"VP", i32 0, i64 235253, i64 -2429938349032670732, i64 112311, i64 -3508360182149195153, i64 90033, i64 4210002383130325207, i64 32908}
!516 = !{!"branch_weights", i32 235253, i32 257520}
!517 = !{!"VP", i32 0, i64 112311, i64 7246843899848535413, i64 112311}
!518 = !{!"VP", i32 0, i64 112311, i64 4904834064969965898, i64 112311}
!519 = !{!"branch_weights", i32 224378, i32 10875}
!520 = !{!"function_entry_count", i64 21769}
!521 = !{!"function_entry_count", i64 577710}
!522 = !{!"branch_weights", i32 257520, i32 320190}
!523 = !{!"VP", i32 0, i64 257520, i64 -2429938349032670732, i64 122941, i64 -3508360182149195153, i64 98555, i64 4210002383130325207, i64 36022}
!524 = !{!"VP", i32 0, i64 122941, i64 7246843899848535413, i64 122941}
!525 = !{!"VP", i32 0, i64 122941, i64 4904834064969965898, i64 122941}
!526 = !{!"branch_weights", i32 0, i32 257520}
!527 = !{!"function_entry_count", i64 12480292}
!528 = !{!"branch_weights", i32 5876089, i32 6604203}
!529 = !{!"VP", i32 0, i64 5876089, i64 2210637470563739765, i64 4462332, i64 5152610129549485300, i64 1413757}
!530 = !{!"branch_weights", i32 0, i32 5876089}
!531 = !{!"branch_weights", i32 1362336, i32 4513753}
!532 = !{!"VP", i32 0, i64 1362336, i64 -3508360182149195153, i64 988900, i64 4210002383130325207, i64 373436}
!533 = !{!"branch_weights", i32 1362336, i32 0}
!534 = !{!220, !157, i64 24}
!535 = !{!536, !536, i64 0}
!536 = !{!"short", !158, i64 0}
!537 = distinct !{!537, !278, !279}
!538 = !{!"VP", i32 0, i64 0, i64 -2429938349032670732, i64 0, i64 -3508360182149195153, i64 0, i64 4210002383130325207, i64 0}
!539 = !{!"VP", i32 0, i64 0, i64 7246843899848535413, i64 0}
!540 = !{!"VP", i32 0, i64 0, i64 4904834064969965898, i64 0}
!541 = !{!"function_entry_count", i64 1}
!542 = !{!543, !157, i64 0}
!543 = !{!"_ZTSN11xalanc_1_1018XPathFunctionTableE", !157, i64 0, !158, i64 8, !157, i64 296}
!544 = !{!"function_entry_count", i64 42470003}
!545 = !{!220, !160, i64 16}
!546 = !{!"branch_weights", i32 52000, i32 42418003}
!547 = !{!220, !157, i64 0}
!548 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!549 = !{!348, !157, i64 0}
!550 = !{!348, !160, i64 8}
!551 = !{!348, !157, i64 24}
!552 = !{!"branch_weights", i32 0, i32 24}
!553 = !{!"VP", i32 0, i64 24, i64 8345045103670217670, i64 24}
!554 = !{i64 0, i64 8, !257, i64 8, i64 4, !341, i64 12, i64 4, !555}
!555 = !{!363, !363, i64 0}
!556 = distinct !{!556, !278, !279}
!557 = distinct !{!557, !278, !279}
!558 = distinct !{!558, !278, !279}
!559 = distinct !{!559, !278, !279}
!560 = !{!"function_entry_count", i64 339579}
!561 = !{!"branch_weights", i32 339573, i32 6}
!562 = !{!"branch_weights", i32 1, i32 5}
!563 = !{!"branch_weights", i32 6, i32 0}
!564 = !{!"function_entry_count", i64 6}
!565 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!566 = !{!"branch_weights", i32 5, i32 0}
!567 = !{!"branch_weights", i32 0, i32 1}
!568 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!569 = !{!"function_entry_count", i64 5}
!570 = !{!"branch_weights", i32 0, i32 5}
!571 = !{!"branch_weights", i32 1, i32 159}
!572 = !{!"branch_weights", i32 159, i32 449}
!573 = distinct !{!573, !278, !279}
!574 = distinct !{!574, !278, !279}
!575 = distinct !{!575, !278, !279}
!576 = distinct !{!576, !278, !279}
!577 = distinct !{!577, !278, !279}
!578 = distinct !{!578, !278, !279}
!579 = !{!"XPath.cpp;_GLOBAL__sub_I_XPath.cpp"}
