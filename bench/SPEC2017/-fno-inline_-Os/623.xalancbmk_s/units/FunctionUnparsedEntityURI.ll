; ModuleID = 'FunctionUnparsedEntityURI.cpp'
source_filename = "FunctionUnparsedEntityURI.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZTVN11xalanc_1_1025FunctionUnparsedEntityURIE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025FunctionUnparsedEntityURIE, ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURID2Ev, ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURID0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1025FunctionUnparsedEntityURIE = dso_local constant [43 x i8] c"N11xalanc_1_1025FunctionUnparsedEntityURIE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1025FunctionUnparsedEntityURIE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025FunctionUnparsedEntityURIE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@.str = private unnamed_addr constant [20 x i8] c"unparsed-entity-uri\00", align 1
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8

@_ZN11xalanc_1_1025FunctionUnparsedEntityURIC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2Ev
@_ZN11xalanc_1_1025FunctionUnparsedEntityURID1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURID2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  %10 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #10
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 5, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #10
          to label %12 unwind label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef null, ptr noundef %5) #10
          to label %16 unwind label %18

16:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #10
          to label %17 unwind label %18

17:                                               ; preds = %16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %46

18:                                               ; preds = %16, %12, %9
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  resume { ptr, i32 } %19

20:                                               ; preds = %6
  %21 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %21) #10
  %26 = load ptr, ptr %3, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load ptr, ptr %3, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  br label %36

36:                                               ; preds = %20, %31
  %37 = phi ptr [ %35, %31 ], [ %3, %20 ]
  %38 = load ptr, ptr %2, align 8, !tbaa !48
  %39 = getelementptr inbounds ptr, ptr %38, i64 33
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr %40(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull align 8 dereferenceable(8) %37) #10
  %42 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds ptr, ptr %43, i64 13
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(36) %41) #10
  br label %46

46:                                               ; preds = %36, %17
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !51 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #2 align 2 !prof !47 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025FunctionUnparsedEntityURIE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !52 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !53 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  store ptr %7, ptr %3, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !60 {
  store ptr %1, ptr %0, align 8, !tbaa !61
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !64

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #10
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #10
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 !prof !70 {
  store ptr %1, ptr %0, align 8, !tbaa !71
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #10
  store ptr %8, ptr %4, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025FunctionUnparsedEntityURIE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !74

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !75
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #10
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

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
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
!36 = !{ptr @_ZNK11xalanc_1_1025FunctionUnparsedEntityURI5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURID2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!40 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!41 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC2ERKS0_, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25FunctionUnparsedEntityURIEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!"function_entry_count", i64 2}
!53 = !{!"function_entry_count", i64 67594463}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !56, i64 0, !56, i64 8}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !50, i64 0}
!58 = !{!55, !56, i64 8}
!59 = !{!"function_entry_count", i64 201578993}
!60 = !{!"function_entry_count", i64 292432932}
!61 = !{!62, !56, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !56, i64 0}
!63 = !{!"function_entry_count", i64 134708288}
!64 = !{!"branch_weights", i32 67113826, i32 67594464}
!65 = !{!"function_entry_count", i64 246321862}
!66 = !{!"function_entry_count", i64 201666166}
!67 = !{!68, !56, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !69, i64 0, !56, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !56, i64 8}
!70 = !{!"function_entry_count", i64 50702}
!71 = !{!56, !56, i64 0}
!72 = !{!73, !56, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !56, i64 0, !56, i64 8}
!74 = !{!"branch_weights", i32 50703, i32 1}
!75 = !{!73, !56, i64 0}
