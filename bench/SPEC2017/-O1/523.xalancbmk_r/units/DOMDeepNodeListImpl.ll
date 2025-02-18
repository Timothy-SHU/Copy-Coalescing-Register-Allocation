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

$_ZTSN11xercesc_2_711DOMNodeListE = comdat any

$_ZTIN11xercesc_2_711DOMNodeListE = comdat any

@_ZTVN11xercesc_2_719DOMDeepNodeListImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMDeepNodeListImplE, ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev, ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD0Ev, ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl4itemEm, ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl9getLengthEv] }, align 8
@_ZN11xercesc_2_7L5kAstrE = internal unnamed_addr constant [2 x i16] [i16 42, i16 0], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMDeepNodeListImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMDeepNodeListImplE\00", align 1
@_ZTSN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMNodeListE\00", comdat, align 1
@_ZTIN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMNodeListE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMDeepNodeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMDeepNodeListImplE, ptr @_ZTIN11xercesc_2_711DOMNodeListE }, align 8

@_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKt
@_ZN11xercesc_2_719DOMDeepNodeListImplC1EPKNS_7DOMNodeEPKtS5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKtS5_
@_ZN11xercesc_2_719DOMDeepNodeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(30) %5, i8 0, i64 30, i1 false)
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %6)
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef %2)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !46
  %10 = icmp eq ptr %8, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = load i16, ptr %8, align 2, !tbaa !47
  %13 = icmp eq i16 %12, 42
  br i1 %13, label %14, label %25

14:                                               ; preds = %11, %19
  %15 = phi i16 [ %22, %19 ], [ 1, %11 ]
  %16 = phi ptr [ %21, %19 ], [ @_ZN11xercesc_2_7L5kAstrE, %11 ]
  %17 = phi ptr [ %20, %19 ], [ %8, %11 ]
  %18 = icmp eq i16 %15, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  %22 = load i16, ptr %20, align 2, !tbaa !47
  %23 = load i16, ptr %21, align 2, !tbaa !47
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %14, label %25, !llvm.loop !49

25:                                               ; preds = %14, %19, %11, %3
  %26 = phi i8 [ 0, %3 ], [ 0, %11 ], [ 0, %19 ], [ 1, %14 ]
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  store i8 %26, ptr %27, align 8, !tbaa !52
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplC2EPKNS_7DOMNodeEPKtS5_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(58) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDeepNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store i8 1, ptr %8, align 1, !tbaa !54
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9)
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %10, ptr noundef %3)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !46
  %13 = icmp eq ptr %11, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = load i16, ptr %11, align 2, !tbaa !47
  %16 = icmp eq i16 %15, 42
  br i1 %16, label %17, label %28

17:                                               ; preds = %14, %22
  %18 = phi i16 [ %25, %22 ], [ 1, %14 ]
  %19 = phi ptr [ %24, %22 ], [ @_ZN11xercesc_2_7L5kAstrE, %14 ]
  %20 = phi ptr [ %23, %22 ], [ %11, %14 ]
  %21 = icmp eq i16 %18, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = getelementptr inbounds i16, ptr %19, i64 1
  %25 = load i16, ptr %23, align 2, !tbaa !47
  %26 = load i16, ptr %24, align 2, !tbaa !47
  %27 = icmp eq i16 %25, %26
  br i1 %27, label %17, label %28, !llvm.loop !49

28:                                               ; preds = %17, %22, %14, %4
  %29 = phi i8 [ 0, %4 ], [ 0, %14 ], [ 0, %22 ], [ 1, %17 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  store i8 %29, ptr %30, align 8, !tbaa !52
  %31 = icmp eq ptr %2, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = load i16, ptr %2, align 2, !tbaa !47
  %34 = icmp eq i16 %33, 42
  br i1 %34, label %35, label %46

35:                                               ; preds = %32, %40
  %36 = phi i16 [ %43, %40 ], [ 1, %32 ]
  %37 = phi ptr [ %42, %40 ], [ @_ZN11xercesc_2_7L5kAstrE, %32 ]
  %38 = phi ptr [ %41, %40 ], [ %2, %32 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !47
  %44 = load i16, ptr %42, align 2, !tbaa !47
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %46, !llvm.loop !49

46:                                               ; preds = %35, %40, %32, %28
  %47 = phi i8 [ 0, %28 ], [ 0, %32 ], [ 0, %40 ], [ 1, %35 ]
  store i8 %47, ptr %7, align 8, !tbaa !53
  %48 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9)
  %49 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %48, ptr noundef %2)
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 8
  store ptr %49, ptr %50, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719DOMDeepNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZdlPv(ptr noundef %0) #6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_719DOMDeepNodeListImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(58) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef 0)
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef 2147483647)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !56
  ret i64 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDeepNodeListImpl4itemEm(ptr nocapture noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl9cacheItemEm(ptr noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl9cacheItemEm(ptr nocapture noundef nonnull align 8 dereferenceable(58) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %8, i64 0, i32 2
  %10 = tail call noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !58
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %15, i64 0, i32 2
  %17 = tail call noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32) %16)
  store i32 %17, ptr %11, align 4, !tbaa !58
  br label %25

18:                                               ; preds = %2
  %19 = add i64 %1, 1
  %20 = icmp ugt i64 %4, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8, !tbaa !38
  br label %25

23:                                               ; preds = %18
  %24 = icmp eq i64 %19, %4
  br i1 %24, label %44, label %25

25:                                               ; preds = %21, %23, %14
  %26 = phi i64 [ 0, %14 ], [ 0, %21 ], [ %4, %23 ]
  %27 = phi ptr [ %15, %14 ], [ %22, %21 ], [ %6, %23 ]
  %28 = add i64 %1, 1
  %29 = icmp ult i64 %26, %28
  %30 = icmp ne ptr %27, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %25, %37
  %33 = phi ptr [ %35, %37 ], [ %27, %25 ]
  %34 = phi i64 [ %38, %37 ], [ %26, %25 ]
  %35 = tail call noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl24nextMatchingElementAfterEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull %33)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = add nuw i64 %34, 1
  %39 = icmp eq i64 %34, %1
  br i1 %39, label %40, label %32, !llvm.loop !59

40:                                               ; preds = %37, %32, %25
  %41 = phi i64 [ %26, %25 ], [ %28, %37 ], [ %34, %32 ]
  %42 = phi ptr [ %27, %25 ], [ %35, %37 ], [ %33, %32 ]
  %43 = phi ptr [ null, %25 ], [ %35, %37 ], [ null, %32 ]
  store ptr %42, ptr %5, align 8, !tbaa !57
  store i64 %41, ptr %3, align 8, !tbaa !56
  br label %44

44:                                               ; preds = %23, %40
  %45 = phi ptr [ %43, %40 ], [ %6, %23 ]
  ret ptr %45
}

declare noundef i32 @_ZNK11xercesc_2_713DOMParentNode7changesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDeepNodeListImpl24nextMatchingElementAfterEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(58) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %180, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 9
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDeepNodeListImpl", ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %4, %177
  %15 = phi ptr [ undef, %4 ], [ %178, %177 ]
  %16 = phi ptr [ %1, %4 ], [ %53, %177 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 18
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load ptr, ptr %16, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %52

26:                                               ; preds = %14
  %27 = load ptr, ptr %5, align 8, !tbaa !38
  %28 = icmp eq ptr %16, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %16, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 10
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %29, %26
  %36 = load ptr, ptr %5, align 8, !tbaa !38
  %37 = icmp eq ptr %16, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %35, %45
  %39 = phi ptr [ %49, %45 ], [ %16, %35 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %50 = load ptr, ptr %5, align 8, !tbaa !38
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %38, !llvm.loop !60

52:                                               ; preds = %38, %45, %35, %29, %21
  %53 = phi ptr [ %25, %21 ], [ %33, %29 ], [ null, %35 ], [ null, %45 ], [ %43, %38 ]
  %54 = icmp eq ptr %53, null
  %55 = load ptr, ptr %6, align 8
  %56 = icmp eq ptr %53, %55
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %177, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 4
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef signext i16 %61(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %177

64:                                               ; preds = %58
  %65 = load i8, ptr %7, align 1, !tbaa !54, !range !61, !noundef !62
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i8, ptr %12, align 8, !tbaa !52, !range !61, !noundef !62
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %174

70:                                               ; preds = %67
  %71 = load ptr, ptr %53, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 40
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %75 = load ptr, ptr %13, align 8, !tbaa !46
  %76 = icmp eq ptr %74, null
  %77 = icmp eq ptr %75, null
  %78 = or i1 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i16, ptr %74, align 2, !tbaa !47
  %81 = load i16, ptr %75, align 2, !tbaa !47
  %82 = icmp eq i16 %80, %81
  br i1 %82, label %92, label %174

83:                                               ; preds = %70
  br i1 %76, label %87, label %84

84:                                               ; preds = %83
  %85 = load i16, ptr %74, align 2, !tbaa !47
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %174

87:                                               ; preds = %84, %83
  br i1 %77, label %91, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %75, align 2, !tbaa !47
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %174

91:                                               ; preds = %88, %87
  br label %174

92:                                               ; preds = %79, %97
  %93 = phi i16 [ %100, %97 ], [ %80, %79 ]
  %94 = phi ptr [ %99, %97 ], [ %75, %79 ]
  %95 = phi ptr [ %98, %97 ], [ %74, %79 ]
  %96 = icmp eq i16 %93, 0
  br i1 %96, label %174, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i16, ptr %95, i64 1
  %99 = getelementptr inbounds i16, ptr %94, i64 1
  %100 = load i16, ptr %98, align 2, !tbaa !47
  %101 = load i16, ptr %99, align 2, !tbaa !47
  %102 = icmp eq i16 %100, %101
  br i1 %102, label %92, label %174, !llvm.loop !49

103:                                              ; preds = %64
  %104 = load i8, ptr %8, align 8, !tbaa !53, !range !61, !noundef !62
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %103
  %107 = load ptr, ptr %53, align 8, !tbaa !35
  %108 = getelementptr inbounds ptr, ptr %107, i64 22
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %111 = load ptr, ptr %9, align 8, !tbaa !55
  %112 = icmp eq ptr %110, null
  %113 = icmp eq ptr %111, null
  %114 = or i1 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %106
  %116 = load i16, ptr %110, align 2, !tbaa !47
  %117 = load i16, ptr %111, align 2, !tbaa !47
  %118 = icmp eq i16 %116, %117
  br i1 %118, label %127, label %174, !llvm.loop !63

119:                                              ; preds = %106
  br i1 %112, label %123, label %120

120:                                              ; preds = %119
  %121 = load i16, ptr %110, align 2, !tbaa !47
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %174, !llvm.loop !63

123:                                              ; preds = %120, %119
  br i1 %113, label %138, label %124

124:                                              ; preds = %123
  %125 = load i16, ptr %111, align 2, !tbaa !47
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %138, label %174, !llvm.loop !63

127:                                              ; preds = %115, %132
  %128 = phi i16 [ %135, %132 ], [ %116, %115 ]
  %129 = phi ptr [ %134, %132 ], [ %111, %115 ]
  %130 = phi ptr [ %133, %132 ], [ %110, %115 ]
  %131 = icmp eq i16 %128, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds i16, ptr %130, i64 1
  %134 = getelementptr inbounds i16, ptr %129, i64 1
  %135 = load i16, ptr %133, align 2, !tbaa !47
  %136 = load i16, ptr %134, align 2, !tbaa !47
  %137 = icmp eq i16 %135, %136
  br i1 %137, label %127, label %174, !llvm.loop !49

138:                                              ; preds = %127, %124, %123, %103
  %139 = load i8, ptr %10, align 8, !tbaa !52, !range !61, !noundef !62
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %138
  %142 = load ptr, ptr %53, align 8, !tbaa !35
  %143 = getelementptr inbounds ptr, ptr %142, i64 24
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %146 = load ptr, ptr %11, align 8, !tbaa !46
  %147 = icmp eq ptr %145, null
  %148 = icmp eq ptr %146, null
  %149 = or i1 %147, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %141
  %151 = load i16, ptr %145, align 2, !tbaa !47
  %152 = load i16, ptr %146, align 2, !tbaa !47
  %153 = icmp eq i16 %151, %152
  br i1 %153, label %163, label %174

154:                                              ; preds = %141
  br i1 %147, label %158, label %155

155:                                              ; preds = %154
  %156 = load i16, ptr %145, align 2, !tbaa !47
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %155, %154
  br i1 %148, label %162, label %159

159:                                              ; preds = %158
  %160 = load i16, ptr %146, align 2, !tbaa !47
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %159, %158
  br label %174

163:                                              ; preds = %150, %168
  %164 = phi i16 [ %171, %168 ], [ %151, %150 ]
  %165 = phi ptr [ %170, %168 ], [ %146, %150 ]
  %166 = phi ptr [ %169, %168 ], [ %145, %150 ]
  %167 = icmp eq i16 %164, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds i16, ptr %166, i64 1
  %170 = getelementptr inbounds i16, ptr %165, i64 1
  %171 = load i16, ptr %169, align 2, !tbaa !47
  %172 = load i16, ptr %170, align 2, !tbaa !47
  %173 = icmp eq i16 %171, %172
  br i1 %173, label %163, label %174, !llvm.loop !49

174:                                              ; preds = %132, %168, %163, %97, %92, %115, %150, %79, %162, %91, %84, %88, %155, %159, %124, %120, %138, %67
  %175 = phi ptr [ %53, %67 ], [ %53, %138 ], [ %15, %120 ], [ %15, %124 ], [ %15, %159 ], [ %15, %155 ], [ %15, %88 ], [ %15, %84 ], [ %53, %91 ], [ %53, %162 ], [ %15, %79 ], [ %15, %150 ], [ %15, %115 ], [ %53, %92 ], [ %15, %97 ], [ %53, %163 ], [ %15, %168 ], [ %15, %132 ]
  %176 = phi i32 [ 1, %67 ], [ 1, %138 ], [ 2, %120 ], [ 2, %124 ], [ 0, %159 ], [ 0, %155 ], [ 0, %88 ], [ 0, %84 ], [ 1, %91 ], [ 1, %162 ], [ 0, %79 ], [ 0, %150 ], [ 2, %115 ], [ 1, %92 ], [ 0, %97 ], [ 1, %163 ], [ 0, %168 ], [ 2, %132 ]
  switch i32 %176, label %180 [
    i32 0, label %177
    i32 2, label %177
  ]

177:                                              ; preds = %52, %58, %174, %174
  %178 = phi ptr [ %175, %174 ], [ %175, %174 ], [ %15, %58 ], [ %15, %52 ]
  %179 = icmp eq ptr %53, null
  br i1 %179, label %180, label %14, !llvm.loop !63

180:                                              ; preds = %177, %174, %2
  %181 = phi ptr [ null, %2 ], [ null, %177 ], [ %175, %174 ]
  ret ptr %181
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !42, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!39, !43, i64 24}
!53 = !{!39, !43, i64 56}
!54 = !{!39, !43, i64 57}
!55 = !{!39, !41, i64 48}
!56 = !{!39, !45, i64 40}
!57 = !{!39, !41, i64 32}
!58 = !{!39, !44, i64 28}
!59 = distinct !{!59, !50, !51}
!60 = distinct !{!60, !50, !51}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !50, !51}
