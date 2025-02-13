; ModuleID = 'FunctionSubstringAfter.cpp'
source_filename = "FunctionSubstringAfter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1022FunctionSubstringAfterC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1022FunctionSubstringAfterE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022FunctionSubstringAfterE, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD2Ev, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_10L14theEmptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [18 x i8] c"substring-after()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022FunctionSubstringAfterE = dso_local constant [40 x i8] c"N11xalanc_1_1022FunctionSubstringAfterE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1022FunctionSubstringAfterE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022FunctionSubstringAfterE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionSubstringAfter.cpp, ptr null }]

@_ZN11xalanc_1_1022FunctionSubstringAfterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022FunctionSubstringAfterC2Ev
@_ZN11xalanc_1_1022FunctionSubstringAfterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSubstringAfterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !88 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionSubstringAfterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSubstringAfterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !92 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022FunctionSubstringAfterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1022FunctionSubstringAfterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #9
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L14theEmptyStringE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !93 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef nonnull %4, ptr noundef %5, ptr nocapture readnone %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %9) #9
  %14 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !95

16:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  br label %49

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(24) %18) #9
  %23 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !95

25:                                               ; preds = %17
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %49

26:                                               ; preds = %17
  %27 = tail call noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %22) #9
  %28 = icmp eq i32 %27, %14
  br i1 %28, label %29, label %30, !prof !95

29:                                               ; preds = %26
  tail call void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  br label %49

30:                                               ; preds = %26
  %31 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %22) #9
  %32 = tail call noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %13) #9
  %33 = zext i32 %27 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  %35 = zext i32 %31 to i64
  %36 = getelementptr inbounds i16, ptr %34, i64 %35
  %37 = add i32 %27, %31
  %38 = sub i32 %14, %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %39 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #9
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef %36, i32 noundef %38) #9
          to label %41 unwind label %47

41:                                               ; preds = %30
  %42 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %43 = load ptr, ptr %42, align 8, !tbaa !89
  %44 = getelementptr inbounds ptr, ptr %43, i64 15
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %8) #9
          to label %46 unwind label %47

46:                                               ; preds = %41
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %49

47:                                               ; preds = %41, %30
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  resume { ptr, i32 } %48

49:                                               ; preds = %25, %46, %29, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !101 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat !prof !102 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !103 {
  %3 = load ptr, ptr %1, align 8, !tbaa !97
  store ptr %3, ptr %0, align 8, !tbaa !97
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #9
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !104 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !105 {
  store ptr %1, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !89
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %7, ptr %3, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat !prof !110 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !111

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #9
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !112 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !117

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !106
  %7 = load ptr, ptr %6, align 8, !tbaa !89
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
  tail call void @__clang_call_terminate(ptr %14) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !88 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #9
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @_ZN11xalanc_1_1022FunctionSubstringAfterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !118 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 6, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #9
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !120
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !123

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #9
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #9
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !125 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !127

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #9
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !128, !llvm.loop !129

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !131 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %3 = load ptr, ptr %0, align 8, !tbaa !133
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !134 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !135 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !137 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !139 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !140
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !143 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  br i1 %2, label %5, label %3, !prof !144

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !145 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !136
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !147 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !148 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #9
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #9
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #9
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #9
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !150 {
  store ptr %1, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !89
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #9
  store ptr %8, ptr %4, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022FunctionSubstringAfterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1022FunctionSubstringAfterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !154

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !155
  %7 = load ptr, ptr %6, align 8, !tbaa !89
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
  tail call void @__clang_call_terminate(ptr %13) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_FunctionSubstringAfter.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!87}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!35 = !{ptr @_ZN11xalanc_1_1022FunctionSubstringAfterC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022FunctionSubstringAfterD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!38 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 83639}
!39 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 125456}
!40 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE, i64 2}
!41 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 1}
!42 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_, i64 41818}
!43 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, i64 41817}
!44 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 41817}
!45 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 41817}
!46 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, i64 41817}
!47 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 41817}
!48 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 41817}
!49 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!50 = !{ptr @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 33406}
!51 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!52 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!53 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 159}
!54 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 44748363}
!55 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!56 = !{ptr @_ZNK11xalanc_1_1022FunctionSubstringAfter5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1022FunctionSubstringAfterC2ERKS0_, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_22FunctionSubstringAfterEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!72 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!73 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!74 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!75 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!76 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!77 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!78 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!79 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!80 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!81 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!82 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!83 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!84 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!85 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!86 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = !{!"function_entry_count", i64 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"vtable pointer", !91, i64 0}
!91 = !{!"Simple C++ TBAA"}
!92 = !{!"function_entry_count", i64 2}
!93 = !{!"function_entry_count", i64 43398227}
!94 = !{!"function_entry_count", i64 41820}
!95 = !{!"branch_weights", i32 1, i32 41821}
!96 = !{!"function_entry_count", i64 246321862}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !99, i64 0}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !91, i64 0}
!101 = !{!"function_entry_count", i64 66708619}
!102 = !{!"function_entry_count", i64 33406}
!103 = !{!"function_entry_count", i64 717007216}
!104 = !{!"function_entry_count", i64 45868073}
!105 = !{!"function_entry_count", i64 67594463}
!106 = !{!107, !99, i64 0}
!107 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !99, i64 0, !99, i64 8}
!108 = !{!107, !99, i64 8}
!109 = !{!"function_entry_count", i64 201578993}
!110 = !{!"function_entry_count", i64 44748522}
!111 = !{!"branch_weights", i32 159, i32 44748365}
!112 = !{!"function_entry_count", i64 201666166}
!113 = !{!114, !99, i64 16}
!114 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !115, i64 0, !99, i64 16}
!115 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !99, i64 8}
!116 = !{!"function_entry_count", i64 134708288}
!117 = !{!"branch_weights", i32 67113826, i32 67594464}
!118 = !{!"function_entry_count", i64 0}
!119 = !{!"function_entry_count", i64 128698679}
!120 = !{!121, !122, i64 16}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !99, i64 0, !122, i64 8, !122, i64 16, !99, i64 24}
!122 = !{!"long", !100, i64 0}
!123 = !{!"branch_weights", i32 43398290, i32 85300391}
!124 = !{!121, !99, i64 24}
!125 = !{!"function_entry_count", i64 6521798493}
!126 = !{!"function_entry_count", i64 85300390}
!127 = !{!"branch_weights", i32 1, i32 12185770}
!128 = !{!"branch_weights", i32 12185770, i32 -193930396}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"function_entry_count", i64 227375739}
!132 = !{!"function_entry_count", i64 568333389}
!133 = !{!121, !99, i64 0}
!134 = !{!"function_entry_count", i64 30137156660}
!135 = !{!"function_entry_count", i64 825654971}
!136 = !{!121, !122, i64 8}
!137 = !{!"function_entry_count", i64 230527004}
!138 = !{!"function_entry_count", i64 3070433834}
!139 = !{!"function_entry_count", i64 1414337980}
!140 = !{!141, !142, i64 32}
!141 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !121, i64 0, !142, i64 32}
!142 = !{!"int", !100, i64 0}
!143 = !{!"function_entry_count", i64 967143541}
!144 = !{!"branch_weights", i32 403628487, i32 563515056}
!145 = !{!"function_entry_count", i64 1083116306}
!146 = !{!"function_entry_count", i64 565220908}
!147 = !{!"function_entry_count", i64 1084505}
!148 = !{!"function_entry_count", i64 44966986}
!149 = !{!"function_entry_count", i64 1179818}
!150 = !{!"function_entry_count", i64 50702}
!151 = !{!99, !99, i64 0}
!152 = !{!153, !99, i64 8}
!153 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !99, i64 0, !99, i64 8}
!154 = !{!"branch_weights", i32 50703, i32 1}
!155 = !{!153, !99, i64 0}
