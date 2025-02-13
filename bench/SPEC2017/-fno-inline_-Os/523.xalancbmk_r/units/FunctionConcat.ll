; ModuleID = 'FunctionConcat.cpp'
source_filename = "FunctionConcat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1014FunctionConcatC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1014FunctionConcatE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014FunctionConcatE, ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev, ptr @_ZN11xalanc_1_1014FunctionConcatD0Ev, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1014FunctionConcat8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"concat()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014FunctionConcatE = dso_local constant [32 x i8] c"N11xalanc_1_1014FunctionConcatE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1014FunctionConcatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014FunctionConcatE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8

@_ZN11xalanc_1_1014FunctionConcatC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FunctionConcatC2Ev
@_ZN11xalanc_1_1014FunctionConcatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !53 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1014FunctionConcatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1014FunctionConcatD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ptr nocapture readnone %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %9 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  %10 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 11
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(36) %9) #7
          to label %14 unwind label %25

14:                                               ; preds = %7
  %15 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 11
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(36) %9) #7
          to label %19 unwind label %25

19:                                               ; preds = %14
  %20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 15
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %8) #7
          to label %24 unwind label %25

24:                                               ; preds = %19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret void

25:                                               ; preds = %19, %14, %7
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !59 {
  store ptr %1, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  store ptr %7, ptr %3, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !74

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !60
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #7
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture readnone %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %10 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #7
  %11 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(36) %10) #7
          to label %15 unwind label %31

15:                                               ; preds = %8
  %16 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 11
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(36) %10) #7
          to label %20 unwind label %31

20:                                               ; preds = %15
  %21 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(36) %10) #7
          to label %25 unwind label %31

25:                                               ; preds = %20
  %26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds ptr, ptr %27, i64 15
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %9) #7
          to label %30 unwind label %31

30:                                               ; preds = %25
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  ret void

31:                                               ; preds = %25, %20, %15, %8
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nocapture readnone %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %9 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  %10 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %27, label %12

12:                                               ; preds = %6, %18
  %13 = phi ptr [ %19, %18 ], [ %10, %6 ]
  %14 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds ptr, ptr %15, i64 11
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(36) %9) #7
          to label %18 unwind label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %27, label %12, !llvm.loop !76

21:                                               ; preds = %12
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %27
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %22, %21 ], [ %24, %23 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  resume { ptr, i32 } %26

27:                                               ; preds = %18, %6
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 15
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %7) #7
          to label %32 unwind label %23

32:                                               ; preds = %27
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014FunctionConcat5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #7
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @_ZN11xalanc_1_1014FunctionConcatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FunctionConcat8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !75 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 44, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #7
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !82 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !84 {
  store ptr %1, ptr %0, align 8, !tbaa !85
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !54
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #7
  store ptr %8, ptr %4, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014FunctionConcatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1014FunctionConcatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !88

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #7
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
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!52}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZN11xalanc_1_1014FunctionConcatC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 22344551}
!38 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 22344551}
!39 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 44689081}
!40 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 22344508}
!41 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 22344551}
!42 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!43 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!44 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10endPointerEv, i64 5}
!45 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!46 = !{ptr @_ZNK11xalanc_1_1014FunctionConcat5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1014FunctionConcatC2ERKS0_, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_14FunctionConcatEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 1}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"function_entry_count", i64 2}
!58 = !{!"function_entry_count", i64 22344551}
!59 = !{!"function_entry_count", i64 67594463}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !62, i64 0, !62, i64 8}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !56, i64 0}
!64 = !{!61, !62, i64 8}
!65 = !{!"function_entry_count", i64 201578993}
!66 = !{!"function_entry_count", i64 246321862}
!67 = !{!68, !62, i64 0}
!68 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !62, i64 0}
!69 = !{!"function_entry_count", i64 201666166}
!70 = !{!71, !62, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !72, i64 0, !62, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !62, i64 8}
!73 = !{!"function_entry_count", i64 134708288}
!74 = !{!"branch_weights", i32 67113826, i32 67594464}
!75 = !{!"function_entry_count", i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"function_entry_count", i64 5}
!79 = !{!80, !62, i64 24}
!80 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !62, i64 0, !81, i64 8, !81, i64 16, !62, i64 24}
!81 = !{!"long", !63, i64 0}
!82 = !{!"function_entry_count", i64 2037554}
!83 = !{!80, !81, i64 8}
!84 = !{!"function_entry_count", i64 50702}
!85 = !{!62, !62, i64 0}
!86 = !{!87, !62, i64 8}
!87 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !62, i64 0, !62, i64 8}
!88 = !{!"branch_weights", i32 50703, i32 1}
!89 = !{!87, !62, i64 0}
