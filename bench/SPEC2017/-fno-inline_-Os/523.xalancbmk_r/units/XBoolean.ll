; ModuleID = 'XBoolean.cpp'
source_filename = "XBoolean.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZN11xalanc_1_107XObject6numberEb = comdat any

$_ZN11xalanc_1_107XObject6stringEb = comdat any

$_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

@_ZTVN11xalanc_1_108XBooleanE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108XBooleanE, ptr @_ZN11xalanc_1_108XBooleanD2Ev, ptr @_ZN11xalanc_1_108XBooleanD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @_ZNK11xalanc_1_108XBoolean13getTypeStringEv, ptr @_ZNK11xalanc_1_108XBoolean3numEv, ptr @_ZNK11xalanc_1_108XBoolean7booleanEv, ptr @_ZNK11xalanc_1_108XBoolean3strEv, ptr @_ZNK11xalanc_1_108XBoolean3strERNS_17FormatterListenerEMS1_FvPKtjE, ptr @_ZNK11xalanc_1_108XBoolean12stringLengthEv, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @_ZN11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZN11xalanc_1_107XObject15s_booleanStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject12s_trueStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = external local_unnamed_addr constant ptr, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108XBooleanE = dso_local constant [25 x i8] c"N11xalanc_1_108XBooleanE\00", align 1
@_ZTIN11xalanc_1_107XObjectE = external constant ptr
@_ZTIN11xalanc_1_108XBooleanE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108XBooleanE, ptr @_ZTIN11xalanc_1_107XObjectE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_108XBooleanC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN11xalanc_1_108XBooleanC2Eb
@_ZN11xalanc_1_108XBooleanC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_108XBooleanC2ERKS0_
@_ZN11xalanc_1_108XBooleanD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108XBooleanD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanC2Eb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2) #7
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XBooleanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 align 2 !prof !58 {
  tail call void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_108XBooleanE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !49, !range !59, !noundef !60
  store i8 %5, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanD2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_108XBooleanD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_108XBooleanD2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XBoolean13getTypeStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !58 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject15s_booleanStringE, align 8, !tbaa !61
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XBoolean3numEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !59, !noundef !60
  %4 = icmp ne i8 %3, 0
  %5 = tail call noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %4) #7
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_107XObject6numberEb(i1 noundef zeroext %0) local_unnamed_addr #3 comdat align 2 !prof !58 {
  %2 = select i1 %0, double 1.000000e+00, double 0.000000e+00
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_108XBoolean7booleanEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #6 align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !59, !noundef !60
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_108XBoolean3strEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #3 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !59, !noundef !60
  %4 = icmp ne i8 %3, 0
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_107XObject6stringEb(i1 noundef zeroext %4) #7
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_107XObject6stringEb(i1 noundef zeroext %0) local_unnamed_addr #3 comdat align 2 !prof !58 {
  %2 = load ptr, ptr @_ZN11xalanc_1_107XObject12s_trueStringE, align 8
  %3 = load ptr, ptr @_ZN11xalanc_1_107XObject13s_falseStringE, align 8
  %4 = select i1 %0, ptr %2, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_108XBoolean3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #0 align 2 !prof !58 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !49, !range !59, !noundef !60
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject6stringEbRNS_17FormatterListenerEMS1_FvPKtjE(i1 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #0 comdat align 2 !prof !58 {
  %5 = getelementptr inbounds i8, ptr %1, i64 %3
  %6 = and i64 %2, 1
  %7 = icmp eq i64 %6, 0
  br i1 %0, label %8, label %16

8:                                                ; preds = %4
  br i1 %7, label %14, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %5, align 8, !tbaa !46
  %11 = getelementptr i8, ptr %10, i64 %2
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !nosanitize !60
  br label %24

14:                                               ; preds = %8
  %15 = inttoptr i64 %2 to ptr
  br label %24

16:                                               ; preds = %4
  br i1 %7, label %22, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %5, align 8, !tbaa !46
  %19 = getelementptr i8, ptr %18, i64 %2
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load ptr, ptr %20, align 8, !nosanitize !60
  br label %24

22:                                               ; preds = %16
  %23 = inttoptr i64 %2 to ptr
  br label %24

24:                                               ; preds = %17, %22, %9, %14
  %25 = phi ptr [ @_ZN11xalanc_1_107XObject12s_trueStringE, %14 ], [ @_ZN11xalanc_1_107XObject12s_trueStringE, %9 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %22 ], [ @_ZN11xalanc_1_107XObject13s_falseStringE, %17 ]
  %26 = phi ptr [ %15, %14 ], [ %13, %9 ], [ %23, %22 ], [ %21, %17 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !61
  %28 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #7
  %29 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #7
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %28, i32 noundef %29) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xalanc_1_108XBoolean12stringLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #0 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XBoolean", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !49, !range !59, !noundef !60
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @_ZN11xalanc_1_107XObject13s_falseStringE, align 8
  %6 = load ptr, ptr @_ZN11xalanc_1_107XObject12s_trueStringE, align 8
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %7) #7
  %9 = uitofp i32 %8 to double
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !63 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !58 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(25) %0) #7
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %6) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_108XBoolean26ProcessXObjectTypeCallbackERNS_19XObjectTypeCallbackE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !58 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(25) %0) #7
  %7 = load ptr, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %6) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject10referencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !65 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  br i1 %2, label %5, label %3, !prof !66

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !74 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !75 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !76
  ret i32 %3
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_108XBooleanC2Eb, ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, i64 2}
!36 = !{ptr @_ZN11xalanc_1_108XBooleanD2Ev, ptr @_ZN11xalanc_1_107XObjectD2Ev, i64 2}
!37 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!38 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!39 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!40 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!41 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!42 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!43 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !57, i64 24}
!50 = !{!"_ZTSN11xalanc_1_108XBooleanE", !51, i64 0, !57, i64 24}
!51 = !{!"_ZTSN11xalanc_1_107XObjectE", !52, i64 0, !55, i64 12, !56, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !53, i64 8}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !48, i64 0}
!55 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !54, i64 0}
!56 = !{!"any pointer", !54, i64 0}
!57 = !{!"bool", !54, i64 0}
!58 = !{!"function_entry_count", i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!56, !56, i64 0}
!62 = !{!"function_entry_count", i64 19395}
!63 = !{!"function_entry_count", i64 230527004}
!64 = !{!52, !53, i64 8}
!65 = !{!"function_entry_count", i64 967143541}
!66 = !{!"branch_weights", i32 403628487, i32 563515056}
!67 = !{!"function_entry_count", i64 3070433834}
!68 = !{!"function_entry_count", i64 1083116306}
!69 = !{!70, !71, i64 8}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !71, i64 8, !71, i64 16, !56, i64 24}
!71 = !{!"long", !54, i64 0}
!72 = !{!"function_entry_count", i64 565220908}
!73 = !{!70, !56, i64 24}
!74 = !{!"function_entry_count", i64 6521798493}
!75 = !{!"function_entry_count", i64 1414337980}
!76 = !{!77, !53, i64 32}
!77 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !70, i64 0, !53, i64 32}
