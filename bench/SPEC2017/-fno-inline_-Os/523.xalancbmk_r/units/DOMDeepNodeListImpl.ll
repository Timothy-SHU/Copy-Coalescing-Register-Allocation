; ModuleID = 'DOMDeepNodeListImpl.cpp'
source_filename = "DOMDeepNodeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMDeepNodeListImpl" = type <{ %"class.xercesc_2_7::DOMNodeList", ptr, ptr, i8, [3 x i8], i32, ptr, i64, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }

$_ZN11xercesc_2_711DOMNodeListC2Ev = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_711DOMNodeListD2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeListD0Ev = comdat any

$_ZTSN11xercesc_2_711DOMNodeListE = comdat any

$_ZTIN11xercesc_2_711DOMNodeListE = comdat any

$_ZTVN11xercesc_2_711DOMNodeListE = comdat any

@_ZTVN11xercesc_2_719DOMDeepNodeListImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMDeepNodeListImplE, ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev, ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD0Ev, ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl4itemEm, ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl9getLengthEv] }, align 8
@_ZN11xercesc_2_7L5kAstrE = internal constant [2 x i16] [i16 42, i16 0], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMDeepNodeListImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMDeepNodeListImplE\00", align 1
@_ZTSN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMNodeListE\00", comdat, align 1
@_ZTIN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMNodeListE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMDeepNodeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMDeepNodeListImplE, ptr @_ZTIN11xercesc_2_711DOMNodeListE }, align 8
@_ZTVN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMNodeListE, ptr @_ZN11xercesc_2_711DOMNodeListD2Ev, ptr @_ZN11xercesc_2_711DOMNodeListD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKt
@_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKtS5_
@_ZN11xercesc_2_719DOMDeepNodeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711DOMNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(30) %5, i8 0, i64 30, i1 false)
  %7 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %6) #7
          to label %8 unwind label %15

8:                                                ; preds = %3
  %9 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef %2) #7
          to label %10 unwind label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !46
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %9, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE) #7
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 8, !tbaa !47
  ret void

15:                                               ; preds = %8, %3
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMNodeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #3 !prof !34 !PGOFuncName !49 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !50 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !51

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !52
  %8 = load i16, ptr %1, align 2, !tbaa !52
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !54

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !55

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !52
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !56

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !57

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !52
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !58

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !59

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !52
  %28 = load i16, ptr %26, align 2, !tbaa !52
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !60, !llvm.loop !61

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711DOMNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store i8 1, ptr %8, align 1, !tbaa !64
  %9 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #7
  %10 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #7
          to label %11 unwind label %25

11:                                               ; preds = %4
  %12 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %10, ptr noundef %3) #7
          to label %13 unwind label %25

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !46
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %12, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE) #7
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 8, !tbaa !47
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_7L5kAstrE) #7
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %7, align 8, !tbaa !63
  %20 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #7
          to label %21 unwind label %25

21:                                               ; preds = %13
  %22 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %20, ptr noundef %2) #7
          to label %23 unwind label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 8
  store ptr %22, ptr %24, align 8, !tbaa !65
  ret void

25:                                               ; preds = %21, %13, %11, %4
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_719DOMDeepNodeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef 0) #7
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef 2147483647) #7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !66
  ret i64 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl4itemEm(ptr nocapture noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl9cacheItemEm(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl9cacheItemEm(ptr nocapture noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef %8) #7
  %10 = tail call noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #7
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 8, !tbaa !38
  %16 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef %15) #7
  %17 = tail call noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #7
  store i32 %17, ptr %11, align 4, !tbaa !68
  %18 = add i64 %1, 1
  br label %26

19:                                               ; preds = %2
  %20 = add i64 %1, 1
  %21 = icmp ugt i64 %4, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8, !tbaa !38
  br label %26

24:                                               ; preds = %19
  %25 = icmp eq i64 %20, %4
  br i1 %25, label %45, label %26

26:                                               ; preds = %22, %24, %14
  %27 = phi i64 [ %20, %22 ], [ %20, %24 ], [ %18, %14 ]
  %28 = phi i64 [ 0, %22 ], [ %4, %24 ], [ 0, %14 ]
  %29 = phi ptr [ %23, %22 ], [ %6, %24 ], [ %15, %14 ]
  %30 = icmp ult i64 %28, %27
  %31 = icmp ne ptr %29, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %41

33:                                               ; preds = %26, %38
  %34 = phi ptr [ %36, %38 ], [ %29, %26 ]
  %35 = phi i64 [ %39, %38 ], [ %28, %26 ]
  %36 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl24nextMatchingElementAfterEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull %34) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = add i64 %35, 1
  %40 = icmp eq i64 %39, %27
  br i1 %40, label %41, label %33, !llvm.loop !69

41:                                               ; preds = %38, %33, %26
  %42 = phi i64 [ %28, %26 ], [ %35, %33 ], [ %27, %38 ]
  %43 = phi ptr [ %29, %26 ], [ %34, %33 ], [ %36, %38 ]
  %44 = phi ptr [ null, %26 ], [ null, %33 ], [ %36, %38 ]
  store ptr %43, ptr %5, align 8, !tbaa !67
  store i64 %42, ptr %3, align 8, !tbaa !66
  br label %45

45:                                               ; preds = %24, %41
  %46 = phi ptr [ %44, %41 ], [ %6, %24 ]
  ret ptr %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #3 !prof !34 !PGOFuncName !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl24nextMatchingElementAfterEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(58) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  %4 = icmp eq ptr %1, null
  br i1 %4, label %97, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %5, %95
  %10 = phi ptr [ %1, %5 ], [ %49, %95 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 18
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br label %48

20:                                               ; preds = %9
  %21 = load ptr, ptr %6, align 8, !tbaa !38
  %22 = icmp eq ptr %10, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %10, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 10
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8, !tbaa !38
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi ptr [ %30, %29 ], [ %10, %20 ]
  %33 = icmp eq ptr %10, %32
  br i1 %33, label %97, label %34

34:                                               ; preds = %31, %41
  %35 = phi ptr [ %45, %41 ], [ %10, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 10
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load ptr, ptr %35, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %35) #7
  %46 = load ptr, ptr %6, align 8, !tbaa !38
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %97, label %34, !llvm.loop !71

48:                                               ; preds = %34, %23, %15
  %49 = phi ptr [ %19, %15 ], [ %27, %23 ], [ %39, %34 ]
  %50 = icmp eq ptr %49, null
  %51 = load ptr, ptr %6, align 8
  %52 = icmp eq ptr %49, %51
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %95, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %49, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 4
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef signext i16 %57(ptr noundef nonnull align 8 dereferenceable(8) %49) #7
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = load i8, ptr %7, align 1, !tbaa !64, !range !72, !noundef !73
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i8, ptr %3, align 8, !tbaa !47, !range !72, !noundef !73
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load ptr, ptr %49, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 40
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %49) #7
  %71 = load ptr, ptr %8, align 8, !tbaa !46
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %70, ptr noundef %71) #7
  br i1 %72, label %97, label %95

73:                                               ; preds = %60
  %74 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 9
  %75 = load i8, ptr %74, align 8, !tbaa !63, !range !72, !noundef !73
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 8
  %79 = load ptr, ptr %49, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 22
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %49) #7
  %83 = load ptr, ptr %78, align 8, !tbaa !65
  %84 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %82, ptr noundef %83) #7
  br i1 %84, label %85, label %95

85:                                               ; preds = %77, %73
  %86 = load i8, ptr %3, align 8, !tbaa !47, !range !72, !noundef !73
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load ptr, ptr %49, align 8, !tbaa !35
  %90 = getelementptr inbounds ptr, ptr %89, i64 24
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %49) #7
  %93 = load ptr, ptr %8, align 8, !tbaa !46
  %94 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %92, ptr noundef %93) #7
  br i1 %94, label %97, label %95

95:                                               ; preds = %48, %54, %66, %88, %77
  %96 = icmp eq ptr %49, null
  br i1 %96, label %97, label %9, !llvm.loop !74

97:                                               ; preds = %31, %95, %66, %63, %88, %85, %41, %2
  %98 = phi ptr [ null, %2 ], [ null, %41 ], [ null, %31 ], [ %49, %85 ], [ %49, %88 ], [ %49, %63 ], [ %49, %66 ], [ null, %95 ]
  ret ptr %98
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #10
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_719DOMDeepNodeListImplE", !40, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !44, i64 28, !41, i64 32, !45, i64 40, !41, i64 48, !43, i64 56, !43, i64 57}
!40 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"bool", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!"long", !42, i64 0}
!46 = !{!39, !41, i64 16}
!47 = !{!39, !43, i64 24}
!48 = !{!"function_entry_count", i64 1201}
!49 = !{!"DOMDeepNodeListImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!50 = !{!"function_entry_count", i64 1231717351}
!51 = !{!"branch_weights", i32 621, i32 -1469098093}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !42, i64 0}
!54 = !{!"branch_weights", i32 408901017, i32 1}
!55 = !{!"branch_weights", i32 267, i32 4}
!56 = !{!"branch_weights", i32 1, i32 4}
!57 = !{!"branch_weights", i32 156, i32 112}
!58 = !{!"branch_weights", i32 1, i32 112}
!59 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!60 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!39, !43, i64 56}
!64 = !{!39, !43, i64 57}
!65 = !{!39, !41, i64 48}
!66 = !{!39, !45, i64 40}
!67 = !{!39, !41, i64 32}
!68 = !{!39, !44, i64 28}
!69 = distinct !{!69, !62}
!70 = !{!"DOMDeepNodeListImpl.cpp:_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE"}
!71 = distinct !{!71, !62}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = distinct !{!74, !62}
!75 = !{!"function_entry_count", i64 1}
