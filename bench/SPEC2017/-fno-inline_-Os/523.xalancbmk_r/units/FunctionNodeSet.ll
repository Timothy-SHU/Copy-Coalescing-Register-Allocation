; ModuleID = 'FunctionNodeSet.cpp'
source_filename = "FunctionNodeSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FunctionNodeSet" = type <{ %"class.xalanc_1_10::Function", i8, [7 x i8] }>
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy" = type { %"class.xalanc_1_10::XNodeSetBase", %"class.xalanc_1_10::XObjectPtr", %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy" }
%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy" = type { %"class.xalanc_1_10::NodeRefListBase", ptr }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_107XObject7getTypeEv = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy6createERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev = comdat any

$_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj = comdat any

$_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRN11xercesc_2_713MemoryManagerERT_ = comdat any

$_ZNK11xalanc_1_1012XNodeSetBase16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRT_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_ = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

$_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

$_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

$_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = comdat any

@_ZTVN11xalanc_1_1015FunctionNodeSetE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015FunctionNodeSetE, ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_1015FunctionNodeSetD0Ev, ptr @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet8getErrorERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015FunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"nodeset\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015FunctionNodeSetE = dso_local constant [33 x i8] c"N11xalanc_1_1015FunctionNodeSetE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1015FunctionNodeSetE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015FunctionNodeSetE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj, ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv] }, comdat, align 8
@_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local constant [56 x i8] c"N11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE\00", comdat, align 1
@_ZTIN11xalanc_1_1012XNodeSetBaseE = external constant ptr
@_ZTIN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, ptr @_ZTIN11xalanc_1_1012XNodeSetBaseE }, comdat, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8

@_ZN11xalanc_1_1015FunctionNodeSetC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb
@_ZN11xalanc_1_1015FunctionNodeSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !62 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 align 2 !prof !71 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1015FunctionNodeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  %13 = load ptr, ptr %1, align 8, !tbaa !63
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(36) %7) #7
          to label %17 unwind label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 8, !tbaa !63
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef %3, ptr noundef %5) #7
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %24

22:                                               ; preds = %17, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %52

24:                                               ; preds = %21, %6
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #7
  %26 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #7
  %27 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #7
  switch i32 %27, label %36 [
    i32 6, label %32
    i32 4, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %1, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !66, !range !73, !noundef !74
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %28
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #7
  %35 = call noundef ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy6createERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %34) #7
  call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %35) #7
  br label %51

36:                                               ; preds = %24, %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  %37 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  %38 = load ptr, ptr %1, align 8, !tbaa !63
  %39 = getelementptr inbounds ptr, ptr %38, i64 9
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef nonnull align 8 dereferenceable(36) ptr %40(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(36) %37) #7
          to label %42 unwind label %49

42:                                               ; preds = %36
  %43 = load ptr, ptr %2, align 8, !tbaa !63
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef %3, ptr noundef %5) #7
          to label %46 unwind label %49

46:                                               ; preds = %42
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #7
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %47) #7
          to label %48 unwind label %49

48:                                               ; preds = %46
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %51

49:                                               ; preds = %46, %42, %36
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %52

51:                                               ; preds = %48, %32
  ret void

52:                                               ; preds = %49, %22
  %53 = phi { ptr, i32 } [ %50, %49 ], [ %23, %22 ]
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !75 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !76
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !83 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !89
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy6createERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !94 {
  store ptr %1, ptr %0, align 8, !tbaa !86
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !95 {
  store ptr %1, ptr %0, align 8, !tbaa !96
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !63
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  store ptr %7, ptr %3, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !100 {
  %3 = load ptr, ptr %1, align 8, !tbaa !86
  store ptr %3, ptr %0, align 8, !tbaa !86
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !102

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !96
  %7 = load ptr, ptr %6, align 8, !tbaa !63
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
define dso_local noundef ptr @_ZNK11xalanc_1_1015FunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !62 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %0) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat !prof !62 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 16) #7
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %1) #8
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015FunctionNodeSet8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #7
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015FunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !72 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 140, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #7
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !106

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #7
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
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !108 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !109 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !110

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #7
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !111, !llvm.loop !112

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !114 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !109 {
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !117 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_38XalanDocumentFragmentXNodeSetBaseProxyEN11xercesc_2_713MemoryManagerENS_10XObjectPtrEEEPT_RS3_RS6_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 112) #7
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  invoke void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %7 unwind label %9

7:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %8 = load ptr, ptr %1, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret ptr %8

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !121 {
  store ptr %1, ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !63
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #7
  store ptr %8, ptr %4, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyC2ERN11xercesc_2_713MemoryManagerERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
          to label %5 unwind label %14

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr %9(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
          to label %11 unwind label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKNS_21XalanDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
          to label %13 unwind label %16

13:                                               ; preds = %11
  ret void

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %11, %5
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !124

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !125
  %7 = load ptr, ptr %6, align 8, !tbaa !63
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

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKNS_21XalanDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #7
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  tail call void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #7
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRN11xercesc_2_713MemoryManagerERT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(112) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !127
  ret i32 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase3numEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy7nodesetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %1) #7
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1038XalanDocumentFragmentXNodeSetBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentXNodeSetBaseProxy", ptr %0, i64 0, i32 2
  %3 = tail call noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRN11xercesc_2_713MemoryManagerERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 comdat !prof !72 {
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRT_(ptr noundef nonnull align 8 dereferenceable(112) %1) #7
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_38XalanDocumentFragmentXNodeSetBaseProxyEEEvRT_(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat !prof !72 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(112) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !130 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !66, !range !73, !noundef !74
  store i8 %5, ptr %3, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
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
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 3}
!37 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!39 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!40 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!41 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!42 = !{ptr @_ZNK11xalanc_1_1015FunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_15FunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!58 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!59 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!60 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 2}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !69, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1015FunctionNodeSetE", !68, i64 0, !69, i64 8}
!68 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!69 = !{!"bool", !70, i64 0}
!70 = !{!"omnipotent char", !65, i64 0}
!71 = !{!"function_entry_count", i64 3}
!72 = !{!"function_entry_count", i64 0}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!"function_entry_count", i64 5}
!76 = !{!77, !79, i64 8}
!77 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !78, i64 0, !79, i64 8, !79, i64 16, !78, i64 24}
!78 = !{!"any pointer", !70, i64 0}
!79 = !{!"long", !70, i64 0}
!80 = !{!"function_entry_count", i64 280295}
!81 = !{!82, !78, i64 8}
!82 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !78, i64 8}
!83 = !{!"function_entry_count", i64 43398227}
!84 = !{!77, !78, i64 24}
!85 = !{!"function_entry_count", i64 246321862}
!86 = !{!87, !78, i64 0}
!87 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !78, i64 0}
!88 = !{!"function_entry_count", i64 44780017}
!89 = !{!90, !93, i64 12}
!90 = !{!"_ZTSN11xalanc_1_107XObjectE", !91, i64 0, !93, i64 12, !78, i64 16}
!91 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !92, i64 8}
!92 = !{!"int", !70, i64 0}
!93 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !70, i64 0}
!94 = !{!"function_entry_count", i64 292432932}
!95 = !{!"function_entry_count", i64 67594463}
!96 = !{!97, !78, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !78, i64 0, !78, i64 8}
!98 = !{!97, !78, i64 8}
!99 = !{!"function_entry_count", i64 201578993}
!100 = !{!"function_entry_count", i64 717007216}
!101 = !{!"function_entry_count", i64 134708288}
!102 = !{!"branch_weights", i32 67113826, i32 67594464}
!103 = !{!"function_entry_count", i64 128698679}
!104 = !{!105, !79, i64 16}
!105 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !78, i64 0, !79, i64 8, !79, i64 16, !78, i64 24}
!106 = !{!"branch_weights", i32 43398290, i32 85300391}
!107 = !{!105, !78, i64 24}
!108 = !{!"function_entry_count", i64 6521798493}
!109 = !{!"function_entry_count", i64 85300390}
!110 = !{!"branch_weights", i32 1, i32 12185770}
!111 = !{!"branch_weights", i32 12185770, i32 -193930396}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"function_entry_count", i64 227375739}
!115 = !{!"function_entry_count", i64 568333389}
!116 = !{!105, !78, i64 0}
!117 = !{!"function_entry_count", i64 30137156660}
!118 = !{!"function_entry_count", i64 825654971}
!119 = !{!105, !79, i64 8}
!120 = !{!78, !78, i64 0}
!121 = !{!"function_entry_count", i64 50702}
!122 = !{!123, !78, i64 8}
!123 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !78, i64 0, !78, i64 8}
!124 = !{!"branch_weights", i32 50703, i32 1}
!125 = !{!123, !78, i64 0}
!126 = !{!"function_entry_count", i64 1009440147}
!127 = !{!91, !92, i64 8}
!128 = !{!"function_entry_count", i64 832918}
!129 = !{!"function_entry_count", i64 833358}
!130 = !{!"function_entry_count", i64 2037554}
