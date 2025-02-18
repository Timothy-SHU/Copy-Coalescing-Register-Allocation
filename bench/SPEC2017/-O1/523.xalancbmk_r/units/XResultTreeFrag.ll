; ModuleID = 'XResultTreeFrag.cpp'
source_filename = "XResultTreeFrag.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XResultTreeFrag" = type { %"class.xalanc_1_10::XObject", ptr, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterStringLengthCounter" = type { %"class.xalanc_1_10::FormatterListener", i64 }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1015XResultTreeFragE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XResultTreeFragE, ptr @_ZN11xalanc_1_1015XResultTreeFragD2Ev, ptr @_ZN11xalanc_1_1015XResultTreeFragD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_1015XResultTreeFrag12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag13getTypeStringEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag3numEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag7booleanEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag3strEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_1015XResultTreeFrag12stringLengthEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1015XResultTreeFrag5rtreeEv, ptr @_ZNK11xalanc_1_1015XResultTreeFrag7nodesetEv, ptr @_ZN11xalanc_1_1015XResultTreeFrag26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_1015XResultTreeFrag26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject26s_resultTreeFragmentStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XResultTreeFragE = dso_local constant [33 x i8] c"N11xalanc_1_1015XResultTreeFragE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_1015XResultTreeFragE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XResultTreeFragE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1015XResultTreeFragC1ERNS_21XalanDocumentFragmentERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XResultTreeFragC2ERNS_21XalanDocumentFragmentERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015XResultTreeFragC1ERKS0_RN11xercesc_2_713MemoryManagerEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1015XResultTreeFragC2ERKS0_RN11xercesc_2_713MemoryManagerEb
@_ZN11xalanc_1_1015XResultTreeFragD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XResultTreeFragD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFragC2ERNS_21XalanDocumentFragmentERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 6)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1015XResultTreeFragE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !45
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %37, !prof !57

9:                                                ; preds = %3
  %10 = icmp eq ptr %8, null
  br i1 %10, label %30, label %11, !prof !58

11:                                               ; preds = %9
  %12 = load ptr, ptr %8, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %16 unwind label %37, !prof !59

16:                                               ; preds = %11
  %17 = icmp eq i32 %15, 3
  br i1 %17, label %18, label %30, !prof !60

18:                                               ; preds = %16
  %19 = load ptr, ptr %8, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 10
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %23 unwind label %37, !prof !61

23:                                               ; preds = %18
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %30, !prof !60

25:                                               ; preds = %23
  %26 = load ptr, ptr %8, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef nonnull align 8 dereferenceable(36) ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %30 unwind label %37, !prof !62

30:                                               ; preds = %25, %23, %16, %9
  %31 = phi ptr [ null, %23 ], [ null, %16 ], [ null, %9 ], [ %29, %25 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !63
  %33 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 3
  store ptr null, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %34, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %35 unwind label %37, !prof !65

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 5
  store double 0.000000e+00, ptr %36, align 8, !tbaa !66
  ret void

37:                                               ; preds = %25, %18, %11, %3, %30
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %38
}

declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFragC2ERKS0_RN11xercesc_2_713MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1015XResultTreeFragE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store ptr %7, ptr %5, align 8, !tbaa !45
  %8 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  store ptr %10, ptr %8, align 8, !tbaa !63
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %1, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %14 unwind label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %1, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !66
  store double %17, ptr %15, align 8, !tbaa !66
  ret void

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %19
}

declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFragD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1015XResultTreeFragE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %16, label %5, !prof !69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = load ptr, ptr %6, align 8, !tbaa !71
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %8)
          to label %16 unwind label %13, !prof !72

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable

16:                                               ; preds = %1, %5
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFragD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_1015XResultTreeFragE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XResultTreeFrag13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !67 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject26s_resultTreeFragmentStringE, align 8, !tbaa !73
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_1015XResultTreeFrag3numEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !66
  %4 = fcmp oeq double %3, 0.000000e+00
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
  store double %12, ptr %2, align 8, !tbaa !66
  br label %13

13:                                               ; preds = %5, %1
  %14 = load double, ptr %2, align 8, !tbaa !66
  ret double %14
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1015XResultTreeFrag7booleanEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !67 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015XResultTreeFrag3strEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(36) %6)
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = phi ptr [ %3, %1 ], [ %6, %5 ], [ %6, %10 ]
  ret ptr %14
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XResultTreeFrag3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 !prof !41 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !58

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %1, i64 %3
  %10 = and i64 %2, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12, !prof !75

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 8, !tbaa !42
  %14 = getelementptr i8, ptr %13, i64 %2
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !76
  br label %19

17:                                               ; preds = %8
  %18 = inttoptr i64 %2 to ptr
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %25, !prof !75
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !74
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %26, i32 noundef %28), !prof !78
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !74
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33, !prof !79

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %1, i64 %3
  %35 = and i64 %2, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %34, align 8, !tbaa !42
  %39 = getelementptr i8, ptr %38, i64 %2
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !nosanitize !76
  br label %44

42:                                               ; preds = %33
  %43 = inttoptr i64 %2 to ptr
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  %46 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !77
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %51, i32 noundef %31)
  br label %55

52:                                               ; preds = %29
  %53 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %55

55:                                               ; preds = %44, %52, %19
  ret void
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XResultTreeFrag3strERNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %12, i32 noundef %14)
  br label %31

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %25
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %26, i32 noundef %18)
  br label %31

28:                                               ; preds = %16
  %29 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %31

31:                                               ; preds = %20, %28, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZNK11xalanc_1_1015XResultTreeFrag12stringLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = alloca %"class.xalanc_1_10::FormatterStringLengthCounter", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !74
  %9 = uitofp i32 %8 to double
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !74
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = uitofp i32 %12 to double
  br label %25

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 17, i64 0)
          to label %19 unwind label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterStringLengthCounter", ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !80
  %22 = uitofp i64 %21 to double
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  br label %25

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %19, %14, %6
  %26 = phi double [ %9, %6 ], [ %15, %14 ], [ %22, %19 ]
  ret double %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028FormatterStringLengthCounterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1015XResultTreeFrag5rtreeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #9 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1015XResultTreeFrag7nodesetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !67 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFrag26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1015XResultTreeFrag26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 !prof !67 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015XResultTreeFrag7releaseEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #10 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !77
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6, !prof !65

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8, !tbaa !77
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !77
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %10, align 8, !tbaa !74
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 5
  store double 0.000000e+00, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  store ptr null, ptr %12, align 8, !tbaa !45
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFrag3setERNS_21XalanDocumentFragmentE(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !77
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !77
  %9 = sub i64 %8, %5
  store i64 %9, ptr %4, align 8, !tbaa !77
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %11, align 8, !tbaa !74
  %12 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 5
  store double 0.000000e+00, ptr %12, align 8, !tbaa !66
  %13 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !45
  %14 = load ptr, ptr %1, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %17, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load ptr, ptr %17, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 10
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load ptr, ptr %17, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %36

36:                                               ; preds = %10, %19, %25, %31
  %37 = phi ptr [ %35, %31 ], [ null, %25 ], [ null, %19 ], [ null, %10 ]
  store ptr %37, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015XResultTreeFrag12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !86

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !42
  %7 = getelementptr inbounds ptr, ptr %6, i64 121
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0), !prof !87
  br i1 %9, label %22, label %10, !prof !65

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XResultTreeFrag", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  br label %18

18:                                               ; preds = %10, %14
  %19 = load ptr, ptr %0, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  br label %22

22:                                               ; preds = %18, %5
  ret void
}

declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !88
  ret i32 %3
}

declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !72

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !67 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xalanc_1_1015XResultTreeFragC2ERNS_21XalanDocumentFragmentERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 37275}
!36 = !{ptr @_ZN11xalanc_1_1015XResultTreeFragC2ERNS_21XalanDocumentFragmentERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 37275}
!37 = !{ptr @_ZN11xalanc_1_1015XResultTreeFragD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 37275}
!38 = !{ptr @_ZNK11xalanc_1_1015XResultTreeFrag3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE, i64 3869}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 37275}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !52, i64 24}
!46 = !{!"_ZTSN11xalanc_1_1015XResultTreeFragE", !47, i64 0, !52, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !56, i64 88}
!47 = !{!"_ZTSN11xalanc_1_107XObjectE", !48, i64 0, !51, i64 12, !52, i64 16}
!48 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !49, i64 8}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !44, i64 0}
!51 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !50, i64 0}
!52 = !{!"any pointer", !50, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !54, i64 0, !49, i64 32}
!54 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !52, i64 0, !55, i64 8, !55, i64 16, !52, i64 24}
!55 = !{!"long", !50, i64 0}
!56 = !{!"double", !50, i64 0}
!57 = !{!"VP", i32 0, i64 37275, i64 5676555952161286401, i64 37275}
!58 = !{!"branch_weights", i32 3869, i32 33406}
!59 = !{!"VP", i32 0, i64 33406, i64 -2905376512939438276, i64 33406}
!60 = !{!"branch_weights", i32 33406, i32 0}
!61 = !{!"VP", i32 0, i64 33406, i64 -853211046839366833, i64 33406}
!62 = !{!"VP", i32 0, i64 33406, i64 2264349190374304535, i64 33406}
!63 = !{!46, !52, i64 32}
!64 = !{!46, !52, i64 40}
!65 = !{!"branch_weights", i32 37275, i32 0}
!66 = !{!46, !56, i64 88}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!54, !55, i64 16}
!69 = !{!"branch_weights", i32 52000, i32 42418003}
!70 = !{!54, !52, i64 24}
!71 = !{!54, !52, i64 0}
!72 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!73 = !{!52, !52, i64 0}
!74 = !{!53, !49, i64 32}
!75 = !{!"branch_weights", i32 0, i32 33406}
!76 = !{}
!77 = !{!54, !55, i64 8}
!78 = !{!"VP", i32 0, i64 33406, i64 7358946498439485224, i64 33406}
!79 = !{!"branch_weights", i32 3869, i32 0}
!80 = !{!81, !55, i64 24}
!81 = !{!"_ZTSN11xalanc_1_1028FormatterStringLengthCounterE", !82, i64 0, !55, i64 24}
!82 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !83, i64 0, !52, i64 8, !84, i64 16, !85, i64 20}
!83 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!84 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !50, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !50, i64 0}
!86 = !{!"branch_weights", i32 0, i32 37275}
!87 = !{!"VP", i32 0, i64 37275, i64 -7126419732400037645, i64 37275}
!88 = !{!48, !49, i64 8}
!89 = !{!"function_entry_count", i64 42432728}
