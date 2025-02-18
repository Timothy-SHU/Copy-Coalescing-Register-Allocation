; ModuleID = 'DOMAttrMapImpl.cpp'
source_filename = "DOMAttrMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMAttrMapImpl" = type <{ %"class.xercesc_2_7::DOMNamedNodeMap", ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMNamedNodeMap" = type { ptr }
%"class.xercesc_2_7::DOMNodeVector" = type { ptr, i64, i64 }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv = comdat any

$_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb = comdat any

$_ZTSN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTIN11xercesc_2_715DOMNamedNodeMapE = comdat any

@_ZTVN11xercesc_2_714DOMAttrMapImplE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DOMAttrMapImplE, ptr @_ZN11xercesc_2_714DOMAttrMapImplD2Ev, ptr @_ZN11xercesc_2_714DOMAttrMapImplD0Ev, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12setNamedItemEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl9getLengthEv, ptr @_ZN11xercesc_2_714DOMAttrMapImpl15removeNamedItemEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl14getNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneContentEPKS0_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneAttrMapEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemAtEm, ptr @_ZN11xercesc_2_714DOMAttrMapImpl11setReadOnlyEbb] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714DOMAttrMapImplE = dso_local constant [32 x i8] c"N11xercesc_2_714DOMAttrMapImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNamedNodeMapE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNamedNodeMapE }, comdat, align 8
@_ZTIN11xercesc_2_714DOMAttrMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DOMAttrMapImplE, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeEPKS0_
@_ZN11xercesc_2_714DOMAttrMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMAttrMapImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMAttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 8, !tbaa !55
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplC2EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMAttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !55
  %7 = icmp eq ptr %2, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i64 %11(ptr noundef nonnull align 8 dereferenceable(25) %2)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext true)
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %18, i64 10
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %2)
  br label %21

21:                                               ; preds = %14, %8, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #4 align 2 !prof !56 {
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl12cloneContentEPKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(25) %0, ptr noundef readonly %1) unnamed_addr #2 align 2 !prof !56 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %6, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %24 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %23, i64 noundef 24)
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull %23, i64 noundef %15)
  store ptr %24, ptr %9, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %13, %17, %12
  %26 = load ptr, ptr %5, align 8, !tbaa !54
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %25
  %31 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2
  %32 = xor i16 %31, -1
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %34 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %26, %30 ], [ %60, %35 ]
  %37 = phi i64 [ 0, %30 ], [ %59, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !60
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %40, i1 noundef zeroext true)
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %44, i64 0, i32 1
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %40, i64 0, i32 1, i32 1
  %47 = load i16, ptr %46, align 8, !tbaa !62
  %48 = and i16 %31, %47
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %44, i64 0, i32 1, i32 1
  %51 = load i16, ptr %50, align 8, !tbaa !62
  %52 = or i16 %51, %31
  %53 = and i16 %51, %32
  %54 = select i1 %49, i16 %53, i16 %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %44, i64 0, i32 1, i32 1
  store i16 %54, ptr %55, align 8, !tbaa !62
  %56 = load ptr, ptr %33, align 8, !tbaa !48
  store ptr %56, ptr %45, align 8, !tbaa !65
  %57 = or i16 %34, %54
  store i16 %57, ptr %55, align 8, !tbaa !62
  %58 = load ptr, ptr %9, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef %44)
  %59 = add nuw i64 %37, 1
  %60 = load ptr, ptr %5, align 8, !tbaa !54
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !57
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %35, label %64, !llvm.loop !66

64:                                               ; preds = %35, %25, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_713DOMNodeVector5resetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl12cloneAttrMapEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %4, i64 noundef 32)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMAttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %5, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %5, i64 0, i32 3
  store i8 0, ptr %8, align 8, !tbaa !55
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl12cloneContentEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull %0)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !56 {
  br i1 %2, label %4, label %30

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %6, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !57
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = and i64 %10, 4294967295
  br label %15

15:                                               ; preds = %13, %25
  %16 = phi i64 [ 0, %13 ], [ %28, %25 ]
  %17 = load ptr, ptr %5, align 8, !tbaa !54
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp ugt i64 %19, %16
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %17, align 8, !tbaa !60
  %23 = getelementptr inbounds ptr, ptr %22, i64 %16
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  br label %25

25:                                               ; preds = %15, %21
  %26 = phi ptr [ %24, %21 ], [ null, %15 ]
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %26, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %27, i1 noundef zeroext %1, i1 noundef zeroext true)
  %28 = add nuw nsw i64 %16, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %15, !llvm.loop !69

30:                                               ; preds = %25, %8, %4, %3
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl8readOnlyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) local_unnamed_addr #6 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !62
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %7 = and i16 %6, %5
  %8 = icmp ne i16 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6, !prof !72

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %4, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, -1
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %45, label %14, !prof !73

12:                                               ; preds = %41
  %13 = icmp sgt i32 %42, %43
  br i1 %13, label %45, label %14, !prof !74, !llvm.loop !75

14:                                               ; preds = %6, %12
  %15 = phi i1 [ %13, %12 ], [ %11, %6 ]
  %16 = phi i32 [ %44, %12 ], [ undef, %6 ]
  %17 = phi i32 [ %43, %12 ], [ %10, %6 ]
  %18 = phi i32 [ %42, %12 ], [ 0, %6 ]
  %19 = add nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = load ptr, ptr %3, align 8, !tbaa !54
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %21, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = icmp ugt i64 %24, %22
  tail call void @llvm.assume(i1 %25)
  %26 = load ptr, ptr %21, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !76
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %1, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35, !prof !77

35:                                               ; preds = %14
  %36 = icmp slt i32 %33, 0
  %37 = add nsw i32 %20, -1
  %38 = add nsw i32 %20, 1
  %39 = select i1 %36, i32 %18, i32 %38, !prof !78
  %40 = select i1 %36, i32 %37, i32 %17, !prof !78
  br label %41

41:                                               ; preds = %14, %35
  %42 = phi i32 [ %39, %35 ], [ %18, %14 ]
  %43 = phi i32 [ %40, %35 ], [ %17, %14 ]
  %44 = phi i32 [ %16, %35 ], [ %20, %14 ]
  br i1 %34, label %51, label %12, !prof !77, !llvm.loop !75

45:                                               ; preds = %12, %6
  %46 = phi i32 [ 0, %6 ], [ %20, %12 ]
  %47 = phi i32 [ 0, %6 ], [ %42, %12 ]
  %48 = phi i32 [ undef, %6 ], [ %44, %12 ]
  %49 = phi i1 [ %11, %6 ], [ %13, %12 ]
  %50 = tail call i32 @llvm.smax.i32(i32 %47, i32 %46)
  br label %51

51:                                               ; preds = %41, %45
  %52 = phi i1 [ %49, %45 ], [ %15, %41 ]
  %53 = phi i32 [ %50, %45 ], [ %20, %41 ]
  %54 = phi i32 [ %48, %45 ], [ %44, %41 ]
  br i1 %52, label %55, label %58, !prof !79

55:                                               ; preds = %51, %2
  %56 = phi i32 [ %53, %51 ], [ 0, %2 ]
  %57 = xor i32 %56, -1
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi i32 [ %57, %55 ], [ %54, %51 ]
  ret i32 %59
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !80 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 14
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1), !prof !81
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8, !prof !82

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %10, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !57
  %14 = icmp ugt i64 %13, %11
  br i1 %14, label %15, label %19, !prof !83

15:                                               ; preds = %8
  %16 = load ptr, ptr %10, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  br label %19

19:                                               ; preds = %15, %8, %2
  %20 = phi ptr [ null, %2 ], [ %18, %15 ], [ null, %8 ]
  ret ptr %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl12setNamedItemEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %18 unwind label %32

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %10, align 8, !tbaa !48
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %26 unwind label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %25, i64 0, i32 25
  br label %28

28:                                               ; preds = %18, %8, %26
  %29 = phi ptr [ %27, %26 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %8 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %18 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 3, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

32:                                               ; preds = %28, %20, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %198

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %36)
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %42 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %41)
  %43 = icmp eq ptr %42, %40
  br i1 %43, label %69, label %44

44:                                               ; preds = %34
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %46 = load ptr, ptr %35, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !45
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %53 unwind label %67

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %35, align 8, !tbaa !48
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %61 unwind label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %60, i64 0, i32 25
  br label %63

63:                                               ; preds = %53, %44, %61
  %64 = phi ptr [ %62, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %44 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %53 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 4, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

67:                                               ; preds = %63, %55, %48
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %198

69:                                               ; preds = %34
  %70 = load ptr, ptr %35, align 8, !tbaa !48
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %70, i64 0, i32 1, i32 1
  %72 = load i16, ptr %71, align 8, !tbaa !62
  %73 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %74 = and i16 %73, %72
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %69
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %78 = load ptr, ptr %35, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !45
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %85 unwind label %99

85:                                               ; preds = %80
  %86 = icmp eq ptr %84, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %35, align 8, !tbaa !48
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds ptr, ptr %89, i64 12
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %93 unwind label %99

93:                                               ; preds = %87
  %94 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %92, i64 0, i32 25
  br label %95

95:                                               ; preds = %85, %76, %93
  %96 = phi ptr [ %94, %93 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %76 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %85 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 7, ptr noundef null, ptr noundef %97)
          to label %98 unwind label %99

98:                                               ; preds = %95
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

99:                                               ; preds = %95, %87, %80
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %198

101:                                              ; preds = %69
  %102 = load ptr, ptr %1, align 8, !tbaa !45
  %103 = getelementptr inbounds ptr, ptr %102, i64 4
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef signext i16 %104(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %106 = icmp eq i16 %105, 2
  br i1 %106, label %107, label %142

107:                                              ; preds = %101
  %108 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %109 = load i16, ptr %108, align 8, !tbaa !62
  %110 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %111 = and i16 %110, %109
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %142, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %41, align 8, !tbaa !65
  %115 = load ptr, ptr %35, align 8, !tbaa !48
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %142, label %117

117:                                              ; preds = %113
  %118 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %119 = load ptr, ptr %35, align 8, !tbaa !48
  %120 = icmp eq ptr %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %119, align 8, !tbaa !45
  %123 = getelementptr inbounds ptr, ptr %122, i64 12
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %126 unwind label %140

126:                                              ; preds = %121
  %127 = icmp eq ptr %125, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %35, align 8, !tbaa !48
  %130 = load ptr, ptr %129, align 8, !tbaa !45
  %131 = getelementptr inbounds ptr, ptr %130, i64 12
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %129)
          to label %134 unwind label %140

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %133, i64 0, i32 25
  br label %136

136:                                              ; preds = %126, %117, %134
  %137 = phi ptr [ %135, %134 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %117 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %126 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %118, i16 noundef signext 10, ptr noundef null, ptr noundef %138)
          to label %139 unwind label %140

139:                                              ; preds = %136
  tail call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

140:                                              ; preds = %136, %128, %121
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %198

142:                                              ; preds = %113, %107, %101
  %143 = load ptr, ptr %35, align 8, !tbaa !48
  store ptr %143, ptr %41, align 8, !tbaa !65
  %144 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %145 = load i16, ptr %144, align 8, !tbaa !62
  %146 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %147 = or i16 %146, %145
  store i16 %147, ptr %144, align 8, !tbaa !62
  %148 = load ptr, ptr %1, align 8, !tbaa !45
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %152 = load ptr, ptr %0, align 8, !tbaa !45
  %153 = getelementptr inbounds ptr, ptr %152, i64 14
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef i32 %154(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %151)
  %156 = icmp sgt i32 %155, -1
  br i1 %156, label %157, label %170

157:                                              ; preds = %142
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !54
  %160 = zext nneg i32 %155 to i64
  %161 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %159, i64 0, i32 2
  %162 = load i64, ptr %161, align 8, !tbaa !57
  %163 = icmp ugt i64 %162, %160
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load ptr, ptr %159, align 8, !tbaa !60
  %166 = getelementptr inbounds ptr, ptr %165, i64 %160
  %167 = load ptr, ptr %166, align 8, !tbaa !61
  br label %168

168:                                              ; preds = %157, %164
  %169 = phi ptr [ %167, %164 ], [ null, %157 ]
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %159, ptr noundef nonnull %1, i64 noundef %160)
  br label %180

170:                                              ; preds = %142
  %171 = xor i32 %155, -1
  %172 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !54
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %40, i64 noundef 24)
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %176, ptr noundef nonnull %40)
  store ptr %176, ptr %172, align 8, !tbaa !54
  br label %177

177:                                              ; preds = %175, %170
  %178 = load ptr, ptr %172, align 8, !tbaa !54
  %179 = zext nneg i32 %171 to i64
  tail call void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %178, ptr noundef nonnull %1, i64 noundef %179)
  br label %180

180:                                              ; preds = %177, %168
  %181 = phi ptr [ %169, %168 ], [ null, %177 ]
  %182 = icmp eq ptr %181, null
  br i1 %182, label %197, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %35, align 8, !tbaa !48
  %185 = load ptr, ptr %184, align 8, !tbaa !45
  %186 = getelementptr inbounds ptr, ptr %185, i64 12
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %184)
  %189 = icmp eq ptr %188, null
  %190 = getelementptr inbounds i8, ptr %188, i64 24
  %191 = select i1 %189, ptr null, ptr %190
  %192 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %181, i64 0, i32 1
  store ptr %191, ptr %192, align 8, !tbaa !65
  %193 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %181, i64 0, i32 1, i32 1
  %194 = load i16, ptr %193, align 8, !tbaa !62
  %195 = xor i16 %146, -1
  %196 = and i16 %194, %195
  store i16 %196, ptr %193, align 8, !tbaa !62
  br label %197

197:                                              ; preds = %183, %180
  ret ptr %181

198:                                              ; preds = %67, %99, %140, %32
  %199 = phi ptr [ %45, %67 ], [ %77, %99 ], [ %118, %140 ], [ %9, %32 ]
  %200 = phi { ptr, i32 } [ %68, %67 ], [ %100, %99 ], [ %141, %140 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %199) #14
  resume { ptr, i32 } %200
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #7 align 2 !prof !84 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %132, label %7, !prof !85

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %5, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !57
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %132, !prof !86

12:                                               ; preds = %7
  %13 = icmp eq ptr %1, null
  %14 = icmp eq ptr %2, null
  %15 = and i64 %9, 4294967295
  br label %16

16:                                               ; preds = %12, %129
  %17 = phi i64 [ 0, %12 ], [ %130, %129 ]
  %18 = phi i32 [ undef, %12 ], [ %127, %129 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !54
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !57
  %22 = icmp ugt i64 %21, %17
  br i1 %22, label %23, label %27, !prof !87

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  br label %27

27:                                               ; preds = %16, %23
  %28 = phi ptr [ %26, %23 ], [ null, %16 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds ptr, ptr %29, i64 22
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !88
  %33 = load ptr, ptr %28, align 8, !tbaa !45
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !89
  %37 = icmp eq ptr %32, null
  %38 = or i1 %13, %37
  br i1 %38, label %43, label %39, !prof !90

39:                                               ; preds = %27
  %40 = load i16, ptr %32, align 2, !tbaa !70
  %41 = load i16, ptr %1, align 2, !tbaa !70
  %42 = icmp eq i16 %40, %41
  br i1 %42, label %51, label %126, !prof !91

43:                                               ; preds = %27
  br i1 %37, label %47, label %44, !prof !92

44:                                               ; preds = %43
  %45 = load i16, ptr %32, align 2, !tbaa !70
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %126, !prof !93

47:                                               ; preds = %44, %43
  br i1 %13, label %62, label %48, !prof !94

48:                                               ; preds = %47
  %49 = load i16, ptr %1, align 2, !tbaa !70
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %62, label %126, !prof !95

51:                                               ; preds = %39, %56
  %52 = phi i16 [ %59, %56 ], [ %40, %39 ]
  %53 = phi ptr [ %58, %56 ], [ %1, %39 ]
  %54 = phi ptr [ %57, %56 ], [ %32, %39 ]
  %55 = icmp eq i16 %52, 0
  br i1 %55, label %62, label %56, !prof !96

56:                                               ; preds = %51
  %57 = getelementptr inbounds i16, ptr %54, i64 1
  %58 = getelementptr inbounds i16, ptr %53, i64 1
  %59 = load i16, ptr %57, align 2, !tbaa !70
  %60 = load i16, ptr %58, align 2, !tbaa !70
  %61 = icmp eq i16 %59, %60
  br i1 %61, label %51, label %126, !prof !97, !llvm.loop !98

62:                                               ; preds = %51, %48, %47
  %63 = icmp eq ptr %36, null
  %64 = or i1 %14, %63
  %65 = trunc i64 %17 to i32
  br i1 %64, label %70, label %66, !prof !99

66:                                               ; preds = %62
  %67 = load i16, ptr %2, align 2, !tbaa !70
  %68 = load i16, ptr %36, align 2, !tbaa !70
  %69 = icmp eq i16 %67, %68
  br i1 %69, label %81, label %92, !prof !100

70:                                               ; preds = %62
  br i1 %14, label %74, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %2, align 2, !tbaa !70
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71, %70
  br i1 %63, label %126, label %75

75:                                               ; preds = %74
  %76 = load i16, ptr %36, align 2, !tbaa !70
  %77 = icmp eq i16 %76, 0
  %78 = trunc i64 %17 to i32
  %79 = select i1 %77, i32 %78, i32 %18
  %80 = zext i1 %77 to i32
  br label %126

81:                                               ; preds = %66, %86
  %82 = phi i16 [ %89, %86 ], [ %67, %66 ]
  %83 = phi ptr [ %88, %86 ], [ %36, %66 ]
  %84 = phi ptr [ %87, %86 ], [ %2, %66 ]
  %85 = icmp eq i16 %82, 0
  br i1 %85, label %126, label %86, !prof !101

86:                                               ; preds = %81
  %87 = getelementptr inbounds i16, ptr %84, i64 1
  %88 = getelementptr inbounds i16, ptr %83, i64 1
  %89 = load i16, ptr %87, align 2, !tbaa !70
  %90 = load i16, ptr %88, align 2, !tbaa !70
  %91 = icmp eq i16 %89, %90
  br i1 %91, label %81, label %92, !prof !101, !llvm.loop !98

92:                                               ; preds = %86, %66, %71
  br i1 %63, label %93, label %126, !prof !99

93:                                               ; preds = %92
  %94 = load ptr, ptr %28, align 8, !tbaa !45
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %28)
  %98 = icmp eq ptr %97, null
  %99 = or i1 %14, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %93
  %101 = load i16, ptr %2, align 2, !tbaa !70
  %102 = load i16, ptr %97, align 2, !tbaa !70
  %103 = icmp eq i16 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %100
  %105 = trunc i64 %17 to i32
  br label %115

106:                                              ; preds = %93
  br i1 %14, label %110, label %107

107:                                              ; preds = %106
  %108 = load i16, ptr %2, align 2, !tbaa !70
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %107, %106
  br i1 %98, label %114, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %97, align 2, !tbaa !70
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111, %110
  br label %126

115:                                              ; preds = %104, %120
  %116 = phi i16 [ %123, %120 ], [ %101, %104 ]
  %117 = phi ptr [ %122, %120 ], [ %97, %104 ]
  %118 = phi ptr [ %121, %120 ], [ %2, %104 ]
  %119 = icmp eq i16 %116, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds i16, ptr %118, i64 1
  %122 = getelementptr inbounds i16, ptr %117, i64 1
  %123 = load i16, ptr %121, align 2, !tbaa !70
  %124 = load i16, ptr %122, align 2, !tbaa !70
  %125 = icmp eq i16 %123, %124
  br i1 %125, label %115, label %126, !llvm.loop !98

126:                                              ; preds = %56, %81, %115, %120, %39, %100, %74, %75, %114, %92, %107, %111, %48, %44
  %127 = phi i32 [ %18, %44 ], [ %18, %48 ], [ %18, %111 ], [ %18, %107 ], [ %18, %92 ], [ %65, %114 ], [ %79, %75 ], [ %65, %74 ], [ %18, %100 ], [ %18, %39 ], [ %18, %120 ], [ %105, %115 ], [ %65, %81 ], [ %18, %56 ]
  %128 = phi i32 [ 4, %44 ], [ 4, %48 ], [ 0, %111 ], [ 0, %107 ], [ 0, %92 ], [ 1, %114 ], [ %80, %75 ], [ 1, %74 ], [ 0, %100 ], [ 4, %39 ], [ 0, %120 ], [ 1, %115 ], [ 1, %81 ], [ 4, %56 ]
  switch i32 %128, label %132 [
    i32 0, label %129
    i32 4, label %129
  ], !prof !102

129:                                              ; preds = %126, %126
  %130 = add nuw nsw i64 %17, 1
  %131 = icmp eq i64 %130, %15
  br i1 %131, label %132, label %16, !prof !103, !llvm.loop !104

132:                                              ; preds = %129, %126, %7, %3
  %133 = phi i32 [ -1, %3 ], [ -1, %7 ], [ %127, %126 ], [ -1, %129 ]
  ret i32 %133
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl14getNamedItemNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !56 {
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = getelementptr inbounds ptr, ptr %4, i64 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = zext nneg i32 %7 to i64
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %11, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !57
  %15 = icmp ugt i64 %14, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load ptr, ptr %11, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %16, %9, %3
  %21 = phi ptr [ null, %3 ], [ %19, %16 ], [ null, %9 ]
  ret ptr %21
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !105
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %34, label %8, !prof !106

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %18 unwind label %32

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %10, align 8, !tbaa !48
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %26 unwind label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %25, i64 0, i32 25
  br label %28

28:                                               ; preds = %18, %8, %26
  %29 = phi ptr [ %27, %26 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %8 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %18 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 3, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

32:                                               ; preds = %28, %20, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %197

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %36), !prof !107
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %42 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %41)
  %43 = icmp eq ptr %42, %40
  br i1 %43, label %69, label %44, !prof !106

44:                                               ; preds = %34
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %46 = load ptr, ptr %35, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !45
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %53 unwind label %67

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %35, align 8, !tbaa !48
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %61 unwind label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %60, i64 0, i32 25
  br label %63

63:                                               ; preds = %53, %44, %61
  %64 = phi ptr [ %62, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %44 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %53 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 4, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

67:                                               ; preds = %63, %55, %48
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %197

69:                                               ; preds = %34
  %70 = load ptr, ptr %35, align 8, !tbaa !48
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %70, i64 0, i32 1, i32 1
  %72 = load i16, ptr %71, align 8, !tbaa !62
  %73 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %74 = and i16 %73, %72
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %101, label %76, !prof !106

76:                                               ; preds = %69
  %77 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %78 = load ptr, ptr %35, align 8, !tbaa !48
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !45
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %85 unwind label %99

85:                                               ; preds = %80
  %86 = icmp eq ptr %84, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %35, align 8, !tbaa !48
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds ptr, ptr %89, i64 12
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %93 unwind label %99

93:                                               ; preds = %87
  %94 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %92, i64 0, i32 25
  br label %95

95:                                               ; preds = %85, %76, %93
  %96 = phi ptr [ %94, %93 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %76 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %85 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %77, i16 noundef signext 7, ptr noundef null, ptr noundef %97)
          to label %98 unwind label %99

98:                                               ; preds = %95
  tail call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

99:                                               ; preds = %95, %87, %80
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %197

101:                                              ; preds = %69
  %102 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %103 = load i16, ptr %102, align 8, !tbaa !62
  %104 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %105 = and i16 %104, %103
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %132, label %107, !prof !106

107:                                              ; preds = %101
  %108 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %109 = load ptr, ptr %35, align 8, !tbaa !48
  %110 = icmp eq ptr %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !45
  %113 = getelementptr inbounds ptr, ptr %112, i64 12
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %109)
          to label %116 unwind label %130

116:                                              ; preds = %111
  %117 = icmp eq ptr %115, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %35, align 8, !tbaa !48
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  %121 = getelementptr inbounds ptr, ptr %120, i64 12
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %124 unwind label %130

124:                                              ; preds = %118
  %125 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %123, i64 0, i32 25
  br label %126

126:                                              ; preds = %116, %107, %124
  %127 = phi ptr [ %125, %124 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %107 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %116 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %108, i16 noundef signext 10, ptr noundef null, ptr noundef %128)
          to label %129 unwind label %130

129:                                              ; preds = %126
  tail call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

130:                                              ; preds = %126, %118, %111
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %197

132:                                              ; preds = %101
  store ptr %70, ptr %41, align 8, !tbaa !65
  %133 = or i16 %104, %103
  store i16 %133, ptr %102, align 8, !tbaa !62
  %134 = load ptr, ptr %1, align 8, !tbaa !45
  %135 = getelementptr inbounds ptr, ptr %134, i64 22
  %136 = load ptr, ptr %135, align 8
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !108
  %138 = load ptr, ptr %1, align 8, !tbaa !45
  %139 = getelementptr inbounds ptr, ptr %138, i64 24
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !109
  %142 = load ptr, ptr %0, align 8, !tbaa !45
  %143 = getelementptr inbounds ptr, ptr %142, i64 15
  %144 = load ptr, ptr %143, align 8
  %145 = tail call noundef i32 %144(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %137, ptr noundef %141), !prof !110
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %160, !prof !111

147:                                              ; preds = %132
  %148 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  %150 = zext nneg i32 %145 to i64
  %151 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %149, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !57
  %153 = icmp ugt i64 %152, %150
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load ptr, ptr %149, align 8, !tbaa !60
  %156 = getelementptr inbounds ptr, ptr %155, i64 %150
  %157 = load ptr, ptr %156, align 8, !tbaa !61
  br label %158

158:                                              ; preds = %147, %154
  %159 = phi ptr [ %157, %154 ], [ null, %147 ]
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %149, ptr noundef nonnull %1, i64 noundef %150)
  br label %179

160:                                              ; preds = %132
  %161 = load ptr, ptr %1, align 8, !tbaa !45
  %162 = getelementptr inbounds ptr, ptr %161, i64 2
  %163 = load ptr, ptr %162, align 8
  %164 = tail call noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !112
  %165 = load ptr, ptr %0, align 8, !tbaa !45
  %166 = getelementptr inbounds ptr, ptr %165, i64 14
  %167 = load ptr, ptr %166, align 8
  %168 = tail call noundef i32 %167(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %164), !prof !113
  %169 = ashr i32 %168, 31
  %170 = xor i32 %169, %168
  %171 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !54
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176, !prof !85

174:                                              ; preds = %160
  %175 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %40, i64 noundef 24)
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %175, ptr noundef nonnull %40)
  store ptr %175, ptr %171, align 8, !tbaa !54
  br label %176

176:                                              ; preds = %174, %160
  %177 = load ptr, ptr %171, align 8, !tbaa !54
  %178 = zext nneg i32 %170 to i64
  tail call void @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %177, ptr noundef nonnull %1, i64 noundef %178)
  br label %179

179:                                              ; preds = %176, %158
  %180 = phi ptr [ %159, %158 ], [ null, %176 ]
  %181 = icmp eq ptr %180, null
  br i1 %181, label %196, label %182, !prof !106

182:                                              ; preds = %179
  %183 = load ptr, ptr %35, align 8, !tbaa !48
  %184 = load ptr, ptr %183, align 8, !tbaa !45
  %185 = getelementptr inbounds ptr, ptr %184, i64 12
  %186 = load ptr, ptr %185, align 8
  %187 = tail call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(8) %183)
  %188 = icmp eq ptr %187, null
  %189 = getelementptr inbounds i8, ptr %187, i64 24
  %190 = select i1 %188, ptr null, ptr %189
  %191 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %180, i64 0, i32 1
  store ptr %190, ptr %191, align 8, !tbaa !65
  %192 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %180, i64 0, i32 1, i32 1
  %193 = load i16, ptr %192, align 8, !tbaa !62
  %194 = xor i16 %104, -1
  %195 = and i16 %193, %194
  store i16 %195, ptr %192, align 8, !tbaa !62
  br label %196

196:                                              ; preds = %182, %179
  ret ptr %180

197:                                              ; preds = %67, %99, %130, %32
  %198 = phi ptr [ %45, %67 ], [ %77, %99 ], [ %108, %130 ], [ %9, %32 ]
  %199 = phi { ptr, i32 } [ %68, %67 ], [ %100, %99 ], [ %131, %130 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %198) #14
  resume { ptr, i32 } %199
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl15removeNamedItemEPKt(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !62
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %19 unwind label %33

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %3, align 8, !tbaa !48
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %27 unwind label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %26, i64 0, i32 25
  br label %29

29:                                               ; preds = %19, %10, %27
  %30 = phi ptr [ %28, %27 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %10 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %19 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %31)
          to label %32 unwind label %33

32:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

33:                                               ; preds = %29, %21, %14
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %120

35:                                               ; preds = %2
  %36 = load ptr, ptr %0, align 8, !tbaa !45
  %37 = getelementptr inbounds ptr, ptr %36, i64 14
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %43 = load ptr, ptr %3, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !45
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %50 unwind label %64

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %3, align 8, !tbaa !48
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds ptr, ptr %54, i64 12
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %58 unwind label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %57, i64 0, i32 25
  br label %60

60:                                               ; preds = %50, %41, %58
  %61 = phi ptr [ %59, %58 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %50 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 8, ptr noundef null, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

64:                                               ; preds = %60, %52, %45
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %120

66:                                               ; preds = %35
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  %69 = zext nneg i32 %39 to i64
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %68, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !57
  %72 = icmp ugt i64 %71, %69
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load ptr, ptr %68, align 8, !tbaa !60
  %75 = getelementptr inbounds ptr, ptr %74, i64 %69
  %76 = load ptr, ptr %75, align 8, !tbaa !61
  br label %77

77:                                               ; preds = %66, %73
  %78 = phi ptr [ %76, %73 ], [ null, %66 ]
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %68, i64 noundef %69)
  %79 = load ptr, ptr %3, align 8, !tbaa !48
  %80 = load ptr, ptr %79, align 8, !tbaa !45
  %81 = getelementptr inbounds ptr, ptr %80, i64 12
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %79)
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds i8, ptr %83, i64 24
  %86 = select i1 %84, ptr null, ptr %85
  %87 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %78, i64 0, i32 1
  store ptr %86, ptr %87, align 8, !tbaa !65
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %78, i64 0, i32 1, i32 1
  %89 = load i16, ptr %88, align 8, !tbaa !62
  %90 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %91 = xor i16 %90, -1
  %92 = and i16 %89, %91
  store i16 %92, ptr %88, align 8, !tbaa !62
  %93 = load ptr, ptr %0, align 8, !tbaa !45
  %94 = getelementptr inbounds ptr, ptr %93, i64 12
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef zeroext i1 %95(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %97 = icmp ne ptr %78, null
  %98 = and i1 %97, %96
  br i1 %98, label %99, label %119

99:                                               ; preds = %77
  %100 = load ptr, ptr %3, align 8, !tbaa !48
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = getelementptr inbounds ptr, ptr %101, i64 63
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(96) %100)
  %105 = load ptr, ptr %104, align 8, !tbaa !45
  %106 = getelementptr inbounds ptr, ptr %105, i64 4
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(25) %104, ptr noundef %1)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %99
  %111 = load ptr, ptr %108, align 8, !tbaa !45
  %112 = getelementptr inbounds ptr, ptr %111, i64 13
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %108, i1 noundef zeroext true)
  %115 = load ptr, ptr %0, align 8, !tbaa !45
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %114)
  br label %119

119:                                              ; preds = %99, %110, %77
  ret ptr %78

120:                                              ; preds = %64, %33
  %121 = phi ptr [ %42, %64 ], [ %11, %33 ]
  %122 = phi { ptr, i32 } [ %65, %64 ], [ %34, %33 ]
  tail call void @__cxa_free_exception(ptr %121) #14
  resume { ptr, i32 } %122
}

declare void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %5, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !62
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %13 = load ptr, ptr %4, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %20 unwind label %34

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %4, align 8, !tbaa !48
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %28 unwind label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %27, i64 0, i32 25
  br label %30

30:                                               ; preds = %20, %11, %28
  %31 = phi ptr [ %29, %28 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %11 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %20 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

34:                                               ; preds = %30, %22, %15
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %121

36:                                               ; preds = %3
  %37 = load ptr, ptr %0, align 8, !tbaa !45
  %38 = getelementptr inbounds ptr, ptr %37, i64 15
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %44 = load ptr, ptr %4, align 8, !tbaa !48
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 8, !tbaa !45
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %51 unwind label %65

51:                                               ; preds = %46
  %52 = icmp eq ptr %50, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %4, align 8, !tbaa !48
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = getelementptr inbounds ptr, ptr %55, i64 12
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %59 unwind label %65

59:                                               ; preds = %53
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %58, i64 0, i32 25
  br label %61

61:                                               ; preds = %51, %42, %59
  %62 = phi ptr [ %60, %59 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %42 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %51 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 8, ptr noundef null, ptr noundef %63)
          to label %64 unwind label %65

64:                                               ; preds = %61
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

65:                                               ; preds = %61, %53, %46
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %121

67:                                               ; preds = %36
  %68 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = zext nneg i32 %40 to i64
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %69, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !57
  %73 = icmp ugt i64 %72, %70
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load ptr, ptr %69, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 %70
  %77 = load ptr, ptr %76, align 8, !tbaa !61
  br label %78

78:                                               ; preds = %67, %74
  %79 = phi ptr [ %77, %74 ], [ null, %67 ]
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %70)
  %80 = load ptr, ptr %4, align 8, !tbaa !48
  %81 = load ptr, ptr %80, align 8, !tbaa !45
  %82 = getelementptr inbounds ptr, ptr %81, i64 12
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %80)
  %85 = icmp eq ptr %84, null
  %86 = getelementptr inbounds i8, ptr %84, i64 24
  %87 = select i1 %85, ptr null, ptr %86
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %79, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !65
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %79, i64 0, i32 1, i32 1
  %90 = load i16, ptr %89, align 8, !tbaa !62
  %91 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %92 = xor i16 %91, -1
  %93 = and i16 %90, %92
  store i16 %93, ptr %89, align 8, !tbaa !62
  %94 = load ptr, ptr %0, align 8, !tbaa !45
  %95 = getelementptr inbounds ptr, ptr %94, i64 12
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %98 = icmp ne ptr %79, null
  %99 = and i1 %98, %97
  br i1 %99, label %100, label %120

100:                                              ; preds = %78
  %101 = load ptr, ptr %4, align 8, !tbaa !48
  %102 = load ptr, ptr %101, align 8, !tbaa !45
  %103 = getelementptr inbounds ptr, ptr %102, i64 63
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(96) %101)
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = getelementptr inbounds ptr, ptr %106, i64 7
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(25) %105, ptr noundef %1, ptr noundef %2)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %100
  %112 = load ptr, ptr %109, align 8, !tbaa !45
  %113 = getelementptr inbounds ptr, ptr %112, i64 13
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(8) %109, i1 noundef zeroext true)
  %116 = load ptr, ptr %0, align 8, !tbaa !45
  %117 = getelementptr inbounds ptr, ptr %116, i64 8
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %115)
  br label %120

120:                                              ; preds = %100, %111, %78
  ret ptr %79

121:                                              ; preds = %65, %34
  %122 = phi ptr [ %43, %65 ], [ %12, %34 ]
  %123 = phi { ptr, i32 } [ %66, %65 ], [ %35, %34 ]
  tail call void @__cxa_free_exception(ptr %122) #14
  resume { ptr, i32 } %123
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMAttrMapImpl17removeNamedItemAtEm(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !62
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %12 = load ptr, ptr %3, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !45
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %19 unwind label %33

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %3, align 8, !tbaa !48
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %27 unwind label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %26, i64 0, i32 25
  br label %29

29:                                               ; preds = %19, %10, %27
  %30 = phi ptr [ %28, %27 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %10 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %19 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %31)
          to label %32 unwind label %33

32:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

33:                                               ; preds = %29, %21, %14
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %128

35:                                               ; preds = %2
  %36 = load ptr, ptr %0, align 8, !tbaa !45
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %43 = load ptr, ptr %3, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !45
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %50 unwind label %64

50:                                               ; preds = %45
  %51 = icmp eq ptr %49, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %3, align 8, !tbaa !48
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds ptr, ptr %54, i64 12
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %58 unwind label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %57, i64 0, i32 25
  br label %60

60:                                               ; preds = %50, %41, %58
  %61 = phi ptr [ %59, %58 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %50 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 8, ptr noundef null, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

64:                                               ; preds = %60, %52, %45
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %128

66:                                               ; preds = %35
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %68, i64 noundef %1)
  %69 = load ptr, ptr %3, align 8, !tbaa !48
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = getelementptr inbounds ptr, ptr %70, i64 12
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %69)
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds i8, ptr %73, i64 24
  %76 = select i1 %74, ptr null, ptr %75
  %77 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %39, i64 0, i32 1
  store ptr %76, ptr %77, align 8, !tbaa !65
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %39, i64 0, i32 1, i32 1
  %79 = load i16, ptr %78, align 8, !tbaa !62
  %80 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %81 = xor i16 %80, -1
  %82 = and i16 %79, %81
  store i16 %82, ptr %78, align 8, !tbaa !62
  %83 = load ptr, ptr %0, align 8, !tbaa !45
  %84 = getelementptr inbounds ptr, ptr %83, i64 12
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef zeroext i1 %85(ptr noundef nonnull align 8 dereferenceable(25) %0)
  br i1 %86, label %87, label %127

87:                                               ; preds = %66
  %88 = load ptr, ptr %3, align 8, !tbaa !48
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds ptr, ptr %89, i64 63
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(96) %88)
  %93 = load ptr, ptr %39, align 8, !tbaa !45
  %94 = getelementptr inbounds ptr, ptr %93, i64 24
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %97 = icmp eq ptr %96, null
  %98 = load ptr, ptr %39, align 8, !tbaa !45
  br i1 %97, label %107, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds ptr, ptr %98, i64 22
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %103 = load ptr, ptr %92, align 8, !tbaa !45
  %104 = getelementptr inbounds ptr, ptr %103, i64 7
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(25) %92, ptr noundef %102, ptr noundef nonnull %96)
  br label %115

107:                                              ; preds = %87
  %108 = getelementptr inbounds ptr, ptr %98, i64 40
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %39)
  %111 = load ptr, ptr %92, align 8, !tbaa !45
  %112 = getelementptr inbounds ptr, ptr %111, i64 4
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(25) %92, ptr noundef %110)
  br label %115

115:                                              ; preds = %107, %99
  %116 = phi ptr [ %106, %99 ], [ %114, %107 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %116, align 8, !tbaa !45
  %120 = getelementptr inbounds ptr, ptr %119, i64 13
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %116, i1 noundef zeroext true)
  %123 = load ptr, ptr %0, align 8, !tbaa !45
  %124 = getelementptr inbounds ptr, ptr %123, i64 2
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %122)
  br label %127

127:                                              ; preds = %115, %118, %66
  ret ptr %39

128:                                              ; preds = %64, %33
  %129 = phi ptr [ %42, %64 ], [ %11, %33 ]
  %130 = phi { ptr, i32 } [ %65, %64 ], [ %34, %33 ]
  tail call void @__cxa_free_exception(ptr %129) #14
  resume { ptr, i32 } %130
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !56 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %7 = add i64 %6, -1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %14, label %9

9:                                                ; preds = %29, %2
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext false)
  %13 = icmp eq ptr %1, null
  br i1 %13, label %66, label %32

14:                                               ; preds = %2, %29
  %15 = phi i64 [ %30, %29 ], [ %7, %2 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %15)
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds ptr, ptr %20, i64 41
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 8, !tbaa !45
  %26 = getelementptr inbounds ptr, ptr %25, i64 16
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %15)
  br label %29

29:                                               ; preds = %24, %14
  %30 = add nsw i64 %15, -1
  %31 = icmp sgt i64 %15, 0
  br i1 %31, label %14, label %9, !llvm.loop !114

32:                                               ; preds = %9
  %33 = load ptr, ptr %0, align 8, !tbaa !45
  %34 = getelementptr inbounds ptr, ptr %33, i64 13
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext true)
  %36 = icmp eq i64 %6, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !45
  %39 = getelementptr inbounds ptr, ptr %38, i64 10
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %1)
  br label %66

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8, !tbaa !45
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i64 %44(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %41, %47
  %48 = phi i64 [ %64, %47 ], [ 0, %41 ]
  %49 = load ptr, ptr %1, align 8, !tbaa !45
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %48)
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds ptr, ptr %53, i64 13
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52, i1 noundef zeroext true)
  %57 = load ptr, ptr %0, align 8, !tbaa !45
  %58 = getelementptr inbounds ptr, ptr %57, i64 8
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %56)
  %61 = load ptr, ptr %56, align 8, !tbaa !45
  %62 = getelementptr inbounds ptr, ptr %61, i64 47
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(72) %56, i1 noundef zeroext false)
  %64 = add nuw i64 %48, 1
  %65 = icmp eq i64 %64, %45
  br i1 %65, label %66, label %47, !llvm.loop !115

66:                                               ; preds = %47, %41, %37, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !56 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %7 = add i64 %6, -1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %10, label %9

9:                                                ; preds = %25, %2
  ret void

10:                                               ; preds = %2, %25
  %11 = phi i64 [ %36, %25 ], [ %7, %2 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %11)
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load ptr, ptr %1, align 8, !tbaa !45
  %22 = getelementptr inbounds ptr, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %11)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load ptr, ptr %15, align 8, !tbaa !45
  %27 = getelementptr inbounds ptr, ptr %26, i64 24
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %0, align 8, !tbaa !45
  %32 = select i1 %30, i64 2, i64 8
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %15)
  %36 = add nsw i64 %11, -1
  %37 = icmp sgt i64 %11, 0
  br i1 %37, label %10, label %9, !llvm.loop !116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_714DOMAttrMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) unnamed_addr #9 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !118

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %3, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ %7, %5 ], [ 0, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMAttrMapImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i64 noundef %1) unnamed_addr #9 align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !120

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %4, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %14, !prof !121

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 %1
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  br label %14

14:                                               ; preds = %2, %6, %10
  %15 = phi ptr [ %13, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEv(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #10 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !55, !range !122, !noundef !123
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DOMAttrMapImpl11hasDefaultsEb(ptr noundef nonnull align 8 dereferenceable(25) %0, i1 noundef zeroext %1) unnamed_addr #10 comdat align 2 !prof !56 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrMapImpl", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 8, !tbaa !55
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, ptr @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_, i64 6416}
!36 = !{ptr @_ZNK11xercesc_2_714DOMAttrMapImpl12getNamedItemEPKt, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, i64 5038}
!37 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv, i64 650}
!38 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKtS2_, i64 650}
!39 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMAttrMapImpl13findNamePointEPKt, i64 650}
!40 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 514}
!41 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentE, i64 514}
!42 = !{ptr @_ZN11xercesc_2_714DOMAttrMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMNodeVector15insertElementAtEPNS_7DOMNodeEm, i64 650}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1100}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !51, i64 16}
!49 = !{!"_ZTSN11xercesc_2_714DOMAttrMapImplE", !50, i64 0, !51, i64 8, !51, i64 16, !53, i64 24}
!50 = !{!"_ZTSN11xercesc_2_715DOMNamedNodeMapE"}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !47, i64 0}
!53 = !{!"bool", !52, i64 0}
!54 = !{!49, !51, i64 8}
!55 = !{!49, !53, i64 24}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!58, !59, i64 16}
!58 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !51, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"long", !52, i64 0}
!60 = !{!58, !51, i64 0}
!61 = !{!51, !51, i64 0}
!62 = !{!63, !64, i64 8}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !51, i64 0, !64, i64 8}
!64 = !{!"short", !52, i64 0}
!65 = !{!63, !51, i64 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = !{!64, !64, i64 0}
!71 = !{!"function_entry_count", i64 5688}
!72 = !{!"branch_weights", i32 671, i32 5017}
!73 = !{!"branch_weights", i32 1, i32 1027}
!74 = !{!"branch_weights", i32 1027, i32 4434}
!75 = distinct !{!75, !67, !68}
!76 = !{!"VP", i32 0, i64 5461, i64 1007997617537810451, i64 5461}
!77 = !{!"branch_weights", i32 3989, i32 1472}
!78 = !{!"branch_weights", i32 984, i32 488}
!79 = !{!"branch_weights", i32 1028, i32 3989}
!80 = !{!"function_entry_count", i64 5038}
!81 = !{!"VP", i32 0, i64 5038, i64 50144575458010691, i64 5038}
!82 = !{!"branch_weights", i32 1049, i32 3989}
!83 = !{!"branch_weights", i32 3989, i32 0}
!84 = !{!"function_entry_count", i64 650}
!85 = !{!"branch_weights", i32 514, i32 136}
!86 = !{!"branch_weights", i32 135, i32 1}
!87 = !{!"branch_weights", i32 160, i32 0}
!88 = !{!"VP", i32 0, i64 160, i64 -9074832845527981440, i64 160}
!89 = !{!"VP", i32 0, i64 160, i64 -4137491375604096784, i64 160}
!90 = !{!"branch_weights", i32 159, i32 1}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!"branch_weights", i32 156, i32 3}
!93 = !{!"branch_weights", i32 0, i32 3}
!94 = !{!"branch_weights", i32 155, i32 1}
!95 = !{!"branch_weights", i32 0, i32 1}
!96 = !{!"branch_weights", i32 1, i32 29}
!97 = !{!"branch_weights", i32 30, i32 0}
!98 = distinct !{!98, !67, !68}
!99 = !{!"branch_weights", i32 0, i32 156}
!100 = !{!"branch_weights", i32 5, i32 151}
!101 = !{!"branch_weights", i32 0, i32 5}
!102 = !{!"branch_weights", i32 0, i32 156, i32 4}
!103 = !{!"branch_weights", i32 135, i32 25}
!104 = distinct !{!104, !67, !68}
!105 = !{!"VP", i32 0, i64 650, i64 -1743754952083387195, i64 650}
!106 = !{!"branch_weights", i32 650, i32 0}
!107 = !{!"VP", i32 0, i64 650, i64 -436814257186127076, i64 650}
!108 = !{!"VP", i32 0, i64 650, i64 -9074832845527981440, i64 650}
!109 = !{!"VP", i32 0, i64 650, i64 -4137491375604096784, i64 650}
!110 = !{!"VP", i32 0, i64 650, i64 -4047797842923545960, i64 650}
!111 = !{!"branch_weights", i32 0, i32 650}
!112 = !{!"VP", i32 0, i64 650, i64 1007997617537810451, i64 650}
!113 = !{!"VP", i32 0, i64 650, i64 50144575458010691, i64 650}
!114 = distinct !{!114, !67, !68}
!115 = distinct !{!115, !67, !68}
!116 = distinct !{!116, !67, !68}
!117 = !{!"function_entry_count", i64 551}
!118 = !{!"branch_weights", i32 36, i32 515}
!119 = !{!"function_entry_count", i64 654}
!120 = !{!"branch_weights", i32 0, i32 654}
!121 = !{!"branch_weights", i32 654, i32 0}
!122 = !{i8 0, i8 2}
!123 = !{}
