; ModuleID = 'FunctionEvaluate.cpp'
source_filename = "FunctionEvaluate.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathProcessorImpl" = type <{ %"class.xalanc_1_10::XPathProcessor", %"class.xalanc_1_10::XalanDOMString", i16, [6 x i8], ptr, ptr, ptr, ptr, i8, i8, [6 x i8], ptr, %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::XPathProcessor" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList.3" }
%"class.xalanc_1_10::XalanList.3" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.4", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.5", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i16, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.7", i32, %"class.xalanc_1_10::XalanVector.8", i32, ptr, %"class.xalanc_1_10::XalanVector.9" }
%"class.xalanc_1_10::XalanVector.7" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElementPrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE = comdat any

$_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringEPKS2_PKN11xercesc_2_77LocatorE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1016FunctionEvaluateE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016FunctionEvaluateE, ptr @_ZN11xalanc_1_1016FunctionEvaluateD2Ev, ptr @_ZN11xalanc_1_1016FunctionEvaluateD0Ev, ptr @_ZNK11xalanc_1_1016FunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1016FunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1016FunctionEvaluate8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016FunctionEvaluateE = dso_local constant [34 x i8] c"N11xalanc_1_1016FunctionEvaluateE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1016FunctionEvaluateE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016FunctionEvaluateE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"evaluate\00", align 1

@_ZN11xalanc_1_1016FunctionEvaluateC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionEvaluateC2Ev
@_ZN11xalanc_1_1016FunctionEvaluateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionEvaluateD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionEvaluateD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1016FunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %12 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  %13 = load ptr, ptr %1, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %12) #9
          to label %17 unwind label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef %3, ptr noundef %5) #9
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %24

22:                                               ; preds = %17, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %63

24:                                               ; preds = %21, %6
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #9
  %26 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #9
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef nonnull align 8 dereferenceable(36) ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %26) #9
  %31 = load ptr, ptr %2, align 8, !tbaa !48
  %32 = getelementptr inbounds ptr, ptr %31, i64 29
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  call void @_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %5) #9
  br label %62

37:                                               ; preds = %24
  %38 = load ptr, ptr %3, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = call noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %45 = load ptr, ptr %3, align 8, !tbaa !48
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef i32 %47(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %60, label %50

50:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %51 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #9
  %52 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %51, i32 noundef 139) #9
          to label %53 unwind label %58

53:                                               ; preds = %50
  %54 = load ptr, ptr %2, align 8, !tbaa !48
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull %3, ptr noundef %5) #9
          to label %57 unwind label %58

57:                                               ; preds = %53
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %60

58:                                               ; preds = %53, %50
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %63

60:                                               ; preds = %43, %57, %37
  %61 = phi ptr [ null, %57 ], [ %44, %43 ], [ %3, %37 ]
  call void @_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringEPKS2_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef %61, ptr noundef %5) #9
  br label %62

62:                                               ; preds = %60, %36
  ret void

63:                                               ; preds = %58, %22
  %64 = phi { ptr, i32 } [ %59, %58 ], [ %23, %22 ]
  resume { ptr, i32 } %64
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016FunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !51 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016FunctionEvaluate8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionEvaluateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionEvaluateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionEvaluateD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !53 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !54
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !59 {
  store ptr %1, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %7, ptr %3, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !65

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !60
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #11
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !67 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XPathProcessorImpl", align 8
  %8 = alloca %"class.xalanc_1_10::XPathConstructionContextDefault", align 8
  %9 = alloca %"class.xalanc_1_10::XPath", align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %7) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  call void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274) %7, ptr noundef nonnull align 8 dereferenceable(8) %10) #9
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %8) #10
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  invoke void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #9
          to label %12 unwind label %17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %9) #10
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  invoke void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %5) #9
          to label %14 unwind label %19

14:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274) %7, ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true) #9
          to label %15 unwind label %21

15:                                               ; preds = %14
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
          to label %16 unwind label %21

16:                                               ; preds = %15
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %9) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %9) #10
  call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #7
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #10
  ret void

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %15, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129) %9) #7
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %9) #10
  call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #7
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274) %7) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %7) #10
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011DOMServices15getParentOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !70 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = icmp eq i32 %5, 2
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = select i1 %6, i64 32, i64 5, !prof !71
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %11
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringEPKS2_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #9
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERN11xercesc_2_713MemoryManagerEPKNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #9
  invoke void @_ZN11xalanc_1_109doExecuteERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %5) #9
          to label %9 unwind label %10

9:                                                ; preds = %6
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XPathC1ERN11xercesc_2_713MemoryManagerEPKNS1_7LocatorE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImpl9initXPathERNS_5XPathERNS_24XPathConstructionContextERKNS_14XalanDOMStringERKNS_14PrefixResolverEPKN11xercesc_2_77LocatorEbb(ptr noundef nonnull align 8 dereferenceable(274), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_105XPathD1Ev(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018XPathProcessorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(274)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERN11xercesc_2_713MemoryManagerEPKNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #9
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !76 {
  store ptr %1, ptr %0, align 8, !tbaa !77
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #9
  store ptr %8, ptr %4, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionEvaluateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !80

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !81
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #9
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!46}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !{ptr @_ZNK11xalanc_1_1016FunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1016FunctionEvaluateC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1016FunctionEvaluateD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!39 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!40 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!41 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_16FunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!"function_entry_count", i64 2}
!53 = !{!"function_entry_count", i64 5}
!54 = !{!55, !58, i64 8}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !56, i64 0, !58, i64 8, !58, i64 16, !56, i64 24}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !50, i64 0}
!58 = !{!"long", !57, i64 0}
!59 = !{!"function_entry_count", i64 67594463}
!60 = !{!61, !56, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !56, i64 0, !56, i64 8}
!62 = !{!61, !56, i64 8}
!63 = !{!"function_entry_count", i64 201578993}
!64 = !{!"function_entry_count", i64 134708288}
!65 = !{!"branch_weights", i32 67113826, i32 67594464}
!66 = !{!55, !56, i64 24}
!67 = !{!"function_entry_count", i64 246321862}
!68 = !{!69, !56, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !56, i64 0}
!70 = !{!"function_entry_count", i64 36543}
!71 = !{!"branch_weights", i32 6466, i32 30079}
!72 = !{!"function_entry_count", i64 2037554}
!73 = !{!"function_entry_count", i64 280295}
!74 = !{!75, !56, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !56, i64 8}
!76 = !{!"function_entry_count", i64 50702}
!77 = !{!56, !56, i64 0}
!78 = !{!79, !56, i64 8}
!79 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !56, i64 0, !56, i64 8}
!80 = !{!"branch_weights", i32 50703, i32 1}
!81 = !{!79, !56, i64 0}
