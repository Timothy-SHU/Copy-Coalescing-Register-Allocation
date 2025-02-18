; ModuleID = 'XNodeSetBase.cpp'
source_filename = "XNodeSetBase.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XNodeSetBase" = type { %"class.xalanc_1_10::XObject", %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterStringLengthCounter" = type { %"class.xalanc_1_10::FormatterListener", i64 }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1012XNodeSetBaseE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012XNodeSetBaseE, ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev, ptr @_ZN11xalanc_1_1012XNodeSetBaseD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3numEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv, ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZN11xalanc_1_107XObject15s_nodesetStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012XNodeSetBaseE = dso_local constant [30 x i8] c"N11xalanc_1_1012XNodeSetBaseE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_1012XNodeSetBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012XNodeSetBaseE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1012XNodeSetBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 5)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1012XNodeSetBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %4 unwind label %8, !prof !49

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %10, !prof !49

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 3
  store double 0x419D6F3454000000, ptr %7, align 8, !tbaa !50
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %12

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ]
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  resume { ptr, i32 } %13
}

declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBaseC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1012XNodeSetBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %1, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !50
  store double %11, ptr %9, align 8, !tbaa !50
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  resume { ptr, i32 } %17
}

declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN11xalanc_1_1012XNodeSetBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !66 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !66 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject15s_nodesetStringE, align 8, !tbaa !67
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_1012XNodeSetBase3numEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 3
  %3 = load double, ptr %2, align 8, !tbaa !50
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %3, double noundef 0x419D6F3454000000)
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
  store double %12, ptr %2, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %5, %1
  %14 = load double, ptr %2, align 8, !tbaa !50
  ret double %14
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #1

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1012XNodeSetBase7booleanEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 !prof !66 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 18
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17, !prof !71

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 18
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(88) %0), !prof !72
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !73

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 17
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0), !prof !74
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %17

17:                                               ; preds = %12, %6, %1
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #7 align 2 !prof !75 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !70
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8, !prof !76

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %1, i64 %3
  %10 = and i64 %2, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 8, !tbaa !46
  %14 = getelementptr i8, ptr %13, i64 %2
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !77
  br label %19

17:                                               ; preds = %8
  %18 = inttoptr i64 %2 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  %21 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !78
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %25
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %26, i32 noundef %6)
  br label %38

27:                                               ; preds = %4
  %28 = load ptr, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 18
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(88) %0), !prof !79
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33, !prof !80

33:                                               ; preds = %27
  %34 = load ptr, ptr %0, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 17
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0), !prof !81
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %38

38:                                               ; preds = %27, %33, %19
  ret void
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #7 align 2 !prof !82 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !83

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !78
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %12, i32 noundef %4)
  br label %25

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(88) %0), !prof !84
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20, !prof !83

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 17
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0)
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %25

25:                                               ; preds = %14, %20, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_1012XNodeSetBase12stringLengthEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = uitofp i32 %4 to double
  br label %25

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 17, i64 0)
          to label %19 unwind label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !85
  %22 = uitofp i64 %21 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  resume { ptr, i32 } %24

25:                                               ; preds = %8, %19, %6
  %26 = phi double [ %7, %6 ], [ %22, %19 ], [ 0.000000e+00, %8 ]
  ret double %26
}

declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1012XNodeSetBase5rtreeEv(ptr noundef nonnull readnone align 8 dereferenceable(88) %0) unnamed_addr #6 align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !66 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 13
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr %5(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012XNodeSetBase26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !66 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 13
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr %5(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 7
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1012XNodeSetBase17clearCachedValuesEv(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #9 align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 3
  store double 0x419D6F3454000000, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6, !prof !92

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8, !tbaa !78
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !78
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetBase", ptr %0, i64 0, i32 2, i32 1
  store i32 0, ptr %10, align 8, !tbaa !70
  ret void
}

declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !93
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !95
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !98

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !66 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1012XNodeSetBaseD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 2}
!41 = !{ptr @_ZNK11xalanc_1_1012XNodeSetBase3strEv, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 146984}
!42 = !{ptr @_ZNK11xalanc_1_1012XNodeSetBase3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE, i64 66812}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 2, i32 0}
!50 = !{!51, !65, i64 80}
!51 = !{!"_ZTSN11xalanc_1_1012XNodeSetBaseE", !52, i64 0, !58, i64 24, !62, i64 40, !65, i64 80}
!52 = !{!"_ZTSN11xalanc_1_107XObjectE", !53, i64 0, !56, i64 12, !57, i64 16}
!53 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !54, i64 8}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !48, i64 0}
!56 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !55, i64 0}
!57 = !{!"any pointer", !55, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE", !59, i64 0, !57, i64 8}
!59 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE", !60, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !61, i64 0}
!61 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!62 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !63, i64 0, !54, i64 32}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !57, i64 0, !64, i64 8, !64, i64 16, !57, i64 24}
!64 = !{!"long", !55, i64 0}
!65 = !{!"double", !55, i64 0}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!57, !57, i64 0}
!68 = !{!63, !57, i64 0}
!69 = !{!"function_entry_count", i64 222210}
!70 = !{!62, !54, i64 32}
!71 = !{!"branch_weights", i32 146984, i32 75226}
!72 = !{!"VP", i32 0, i64 146984, i64 8759889239132318340, i64 146984}
!73 = !{!"branch_weights", i32 0, i32 146984}
!74 = !{!"VP", i32 0, i64 146984, i64 2835549025469278349, i64 146984}
!75 = !{!"function_entry_count", i64 74550}
!76 = !{!"branch_weights", i32 74550, i32 0}
!77 = !{}
!78 = !{!63, !64, i64 8}
!79 = !{!"VP", i32 0, i64 74550, i64 8759889239132318340, i64 74550}
!80 = !{!"branch_weights", i32 7738, i32 66812}
!81 = !{!"VP", i32 0, i64 66812, i64 2835549025469278349, i64 66812}
!82 = !{!"function_entry_count", i64 33406}
!83 = !{!"branch_weights", i32 33406, i32 0}
!84 = !{!"VP", i32 0, i64 33406, i64 8759889239132318340, i64 33406}
!85 = !{!86, !64, i64 24}
!86 = !{!"_ZTSN11xalanc_1_1028FormatterStringLengthCounterE", !87, i64 0, !64, i64 24}
!87 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !88, i64 0, !57, i64 8, !89, i64 16, !90, i64 20}
!88 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!89 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !55, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !55, i64 0}
!91 = !{!"function_entry_count", i64 415044}
!92 = !{!"branch_weights", i32 268060, i32 146984}
!93 = !{!53, !54, i64 8}
!94 = !{!"function_entry_count", i64 42470003}
!95 = !{!63, !64, i64 16}
!96 = !{!"branch_weights", i32 52000, i32 42418003}
!97 = !{!63, !57, i64 24}
!98 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
