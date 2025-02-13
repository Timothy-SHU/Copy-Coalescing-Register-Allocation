; ModuleID = 'XalanEXSLTDynamic.cpp'
source_filename = "XalanEXSLTDynamic.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEXSLTFunctionEvaluate" = type { %"class.xalanc_1_10::FunctionEvaluate" }
%"class.xalanc_1_10::FunctionEvaluate" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_ = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1026XalanEXSLTFunctionEvaluateE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionEvaluateE, ptr @_ZN11xalanc_1_1016FunctionEvaluateD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateD0Ev, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionEvaluateE = dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionEvaluateE\00", align 1
@_ZTIN11xalanc_1_1016FunctionEvaluateE = external constant ptr
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionEvaluateE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionEvaluateE, ptr @_ZTIN11xalanc_1_1016FunctionEvaluateE }, align 8
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZN11xalanc_1_10L18s_evaluateFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionEvaluate" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_dynamicNamespaceE = internal constant [25 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 100, i16 121, i16 110, i16 97, i16 109, i16 105, i16 99, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [2 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_evaluateFunctionNameE, ptr @_ZN11xalanc_1_10L18s_evaluateFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZN11xalanc_1_10L22s_evaluateFunctionNameE = internal constant [9 x i16] [i16 101, i16 118, i16 97, i16 108, i16 117, i16 97, i16 116, i16 101, i16 0], align 16
@_ZTVN11xalanc_1_1016FunctionEvaluateE = external unnamed_addr constant { [11 x ptr] }, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"evaluate\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTDynamic.cpp, ptr null }]

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016FunctionEvaluateD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  invoke void @_ZNK11xalanc_1_1016FunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) #12
          to label %23 unwind label %8

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #13
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #13
  tail call void @__cxa_end_catch()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
          to label %20 unwind label %21

20:                                               ; preds = %13
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %23

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %24

23:                                               ; preds = %6, %20
  ret void

24:                                               ; preds = %21, %8
  %25 = phi { ptr, i32 } [ %22, %21 ], [ %9, %8 ]
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !52 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #2 comdat align 2 !prof !48 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1016FunctionEvaluate7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !53 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  store ptr %7, ptr %3, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !65

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #7 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_evaluateFunctionE) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionEvaluateD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_evaluateFunctionE, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionEvaluateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016FunctionEvaluateC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #2 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L18s_dynamicNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L18s_dynamicNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #2 align 2 !prof !48 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L18s_dynamicNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L18s_dynamicNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !52 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #12
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 !prof !66 {
  store ptr %1, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #12
  store ptr %8, ptr %4, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionEvaluateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !70

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !71
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #12
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016FunctionEvaluateC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionEvaluateE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTDynamic.cpp() #7 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!47}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !{ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionEvaluate5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 2647211}
!38 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @__clang_call_terminate, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2Ev, ptr @_ZN11xalanc_1_1016FunctionEvaluateC2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionEvaluateC2ERKS0_, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionEvaluateEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!"function_entry_count", i64 2647209}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !56, i64 0, !56, i64 8}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !51, i64 0}
!58 = !{!55, !56, i64 8}
!59 = !{!"function_entry_count", i64 201666166}
!60 = !{!61, !56, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !62, i64 0, !56, i64 16}
!62 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !56, i64 8}
!63 = !{!"function_entry_count", i64 2647211}
!64 = !{!"function_entry_count", i64 3269776}
!65 = !{!"branch_weights", i32 622568, i32 2647210}
!66 = !{!"function_entry_count", i64 50702}
!67 = !{!56, !56, i64 0}
!68 = !{!69, !56, i64 8}
!69 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !56, i64 0, !56, i64 8}
!70 = !{!"branch_weights", i32 50703, i32 1}
!71 = !{!69, !56, i64 0}
