; ModuleID = 'DOMNamedNodeMapImpl.cpp'
source_filename = "DOMNamedNodeMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNamedNodeMapImpl" = type { %"class.xercesc_2_7::DOMNamedNodeMap", [193 x ptr], ptr }
%"class.xercesc_2_7::DOMNamedNodeMap" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMNodeVector" = type { ptr, i64, i64 }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_715DOMNamedNodeMapC2Ev = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_713DOMNodeVector4sizeEv = comdat any

$_ZN11xercesc_2_713DOMNodeVector9elementAtEm = comdat any

$_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZN11xercesc_2_715DOMNamedNodeMapD2Ev = comdat any

$_ZN11xercesc_2_715DOMNamedNodeMapD0Ev = comdat any

$_ZTSN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTIN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTVN11xercesc_2_715DOMNamedNodeMapE = comdat any

@_ZTVN11xercesc_2_719DOMNamedNodeMapImplE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMNamedNodeMapImplE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD0Ev, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl12setNamedItemEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl4itemEm, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl12getNamedItemEPKt, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl9getLengthEv, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl15removeNamedItemEPKt, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl14getNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl17removeNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl8cloneMapEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl11setReadOnlyEbb] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMNamedNodeMapImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMNamedNodeMapImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNamedNodeMapE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNamedNodeMapE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMNamedNodeMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMNamedNodeMapImplE, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE }, align 8
@_ZTVN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE, ptr @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev, ptr @_ZN11xercesc_2_715DOMNamedNodeMapD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_719DOMNamedNodeMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplC2EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %4, i8 0, i64 1544, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNamedNodeMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1560) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(1560) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1560) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %3) #8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #3 !prof !37 !PGOFuncName !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !49
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !52
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl8cloneMapEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !37 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #8
  %5 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef %4) #8
  tail call void @_ZN11xercesc_2_719DOMNamedNodeMapImplC2EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %5, ptr noundef %1) #8
  br label %7

6:                                                ; preds = %31
  ret ptr %5

7:                                                ; preds = %2, %31
  %8 = phi i64 [ 0, %2 ], [ %32, %31 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #8
  %14 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %4) #8
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef %4, i64 noundef %13) #8
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %5, i64 0, i32 1, i64 %8
  store ptr %14, ptr %15, align 8, !tbaa !53
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ %29, %17 ], [ 0, %12 ]
  %19 = load ptr, ptr %9, align 8, !tbaa !53
  %20 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %18) #8
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i1 noundef zeroext true) #8
  %25 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %24) #8
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %20) #8
  %27 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %26) #8
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %25, i1 noundef zeroext %27) #8
  store ptr %1, ptr %25, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %25, i1 noundef zeroext true) #8
  %28 = load ptr, ptr %15, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %24) #8
  %29 = add nuw i64 %18, 1
  %30 = icmp eq i64 %29, %13
  br i1 %30, label %31, label %17, !llvm.loop !55

31:                                               ; preds = %17, %12, %7
  %32 = add nuw nsw i64 %8, 1
  %33 = icmp eq i64 %32, 193
  br i1 %33, label %6, label %7, !llvm.loop !57
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !58 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  ret i64 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !63 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !60
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %10, !prof !64

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = getelementptr inbounds ptr, ptr %7, i64 %1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !52
  br i1 %1, label %6, label %8, !prof !67

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !49
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !52
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !49
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !52
  br i1 %1, label %6, label %8, !prof !69

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_719DOMNamedNodeMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0) unnamed_addr #1 align 2 !prof !37 {
  br label %3

2:                                                ; preds = %11
  ret i64 %13

3:                                                ; preds = %1, %11
  %4 = phi i64 [ 0, %1 ], [ %14, %11 ]
  %5 = phi i64 [ 0, %1 ], [ %13, %11 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i64 [ %10, %9 ], [ 0, %3 ]
  %13 = add i64 %12, %5
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 193
  br i1 %15, label %2, label %3, !llvm.loop !70
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !37 {
  br label %3

3:                                                ; preds = %2, %20
  %4 = phi i64 [ 0, %2 ], [ %22, %20 ]
  %5 = phi i64 [ 0, %2 ], [ %21, %20 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %11 = icmp ule i64 %5, %1
  %12 = add i64 %10, %5
  %13 = icmp ugt i64 %12, %1
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %4
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = sub i64 %1, %5
  %19 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %18) #8
  br label %24

20:                                               ; preds = %9, %3
  %21 = phi i64 [ %5, %3 ], [ %12, %9 ]
  %22 = add nuw nsw i64 %4, 1
  %23 = icmp eq i64 %22, 193
  br i1 %23, label %24, label %3, !llvm.loop !71

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %19, %15 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl12getNamedItemEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !37 {
  %3 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef 193, ptr noundef %3) #8
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = and i64 %10, 4294967295
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %27, label %18, !llvm.loop !72

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !53
  %21 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %19) #8
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21) #8
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %25) #8
  br i1 %26, label %27, label %15

27:                                               ; preds = %15, %18, %9, %2
  %28 = phi ptr [ null, %2 ], [ null, %9 ], [ null, %15 ], [ %21, %18 ]
  ret ptr %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !73 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !74

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !52
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !75

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !52
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !76

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !52
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !77, !llvm.loop !78

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !79 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !80

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !52
  %8 = load i16, ptr %1, align 2, !tbaa !52
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !81

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !82

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !52
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !83

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !84

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !52
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !85

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !86

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !52
  %28 = load i16, ptr %26, align 2, !tbaa !52
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !87, !llvm.loop !88

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl15removeNamedItemEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #8
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %28

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %16 unwind label %31

16:                                               ; preds = %11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %6, align 8, !tbaa !41
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #8
          to label %24 unwind label %31

24:                                               ; preds = %18
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #8
  br label %28

26:                                               ; preds = %16
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %28

28:                                               ; preds = %24, %26, %9
  %29 = phi ptr [ %10, %9 ], [ %25, %24 ], [ %27, %26 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %5, i16 noundef signext 7, ptr noundef null, ptr noundef %29) #8
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

31:                                               ; preds = %28, %18, %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %128

33:                                               ; preds = %2
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  %35 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef 193, ptr noundef %34) #8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %64

47:                                               ; preds = %40
  %48 = load ptr, ptr %43, align 8, !tbaa !38
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %43) #8
          to label %52 unwind label %67

52:                                               ; preds = %47
  %53 = icmp eq ptr %51, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %42, align 8, !tbaa !41
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55) #8
          to label %60 unwind label %67

60:                                               ; preds = %54
  %61 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %59) #8
  br label %64

62:                                               ; preds = %52
  %63 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %64

64:                                               ; preds = %60, %62, %45
  %65 = phi ptr [ %46, %45 ], [ %61, %60 ], [ %63, %62 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %41, i16 noundef signext 8, ptr noundef null, ptr noundef %65) #8
          to label %66 unwind label %67

66:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

67:                                               ; preds = %64, %54, %47
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %128

69:                                               ; preds = %33
  %70 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %38) #8
  %71 = trunc i64 %70 to i32
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = and i64 %70, 4294967295
  br label %78

75:                                               ; preds = %78
  %76 = add nuw nsw i64 %79, 1
  %77 = icmp eq i64 %76, %74
  br i1 %77, label %87, label %78, !llvm.loop !89

78:                                               ; preds = %73, %75
  %79 = phi i64 [ 0, %73 ], [ %76, %75 ]
  %80 = load ptr, ptr %37, align 8, !tbaa !53
  %81 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 noundef %79) #8
  %82 = load ptr, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %81) #8
  %86 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %85) #8
  br i1 %86, label %116, label %75

87:                                               ; preds = %75, %69
  %88 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !41
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %111

94:                                               ; preds = %87
  %95 = load ptr, ptr %90, align 8, !tbaa !38
  %96 = getelementptr inbounds ptr, ptr %95, i64 12
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %90) #8
          to label %99 unwind label %114

99:                                               ; preds = %94
  %100 = icmp eq ptr %98, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %89, align 8, !tbaa !41
  %103 = load ptr, ptr %102, align 8, !tbaa !38
  %104 = getelementptr inbounds ptr, ptr %103, i64 12
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %102) #8
          to label %107 unwind label %114

107:                                              ; preds = %101
  %108 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %106) #8
  br label %111

109:                                              ; preds = %99
  %110 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %111

111:                                              ; preds = %107, %109, %92
  %112 = phi ptr [ %93, %92 ], [ %108, %107 ], [ %110, %109 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %88, i16 noundef signext 8, ptr noundef null, ptr noundef %112) #8
          to label %113 unwind label %114

113:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

114:                                              ; preds = %111, %101, %94
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %128

116:                                              ; preds = %78
  %117 = load ptr, ptr %37, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %117, i64 noundef %79) #8
  %118 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !41
  %120 = load ptr, ptr %119, align 8, !tbaa !38
  %121 = getelementptr inbounds ptr, ptr %120, i64 12
  %122 = load ptr, ptr %121, align 8
  %123 = tail call noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(8) %119) #8
  %124 = icmp eq ptr %123, null
  %125 = getelementptr inbounds i8, ptr %123, i64 24
  %126 = select i1 %124, ptr null, ptr %125
  %127 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %81) #8
  store ptr %126, ptr %127, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %127, i1 noundef zeroext false) #8
  ret ptr %81

128:                                              ; preds = %67, %114, %31
  %129 = phi ptr [ %41, %67 ], [ %88, %114 ], [ %5, %31 ]
  %130 = phi { ptr, i32 } [ %68, %67 ], [ %115, %114 ], [ %32, %31 ]
  tail call void @__cxa_free_exception(ptr %129) #11
  resume { ptr, i32 } %130
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl12setNamedItemEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #8
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %40, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %14 = load ptr, ptr %3, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %35

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
          to label %23 unwind label %38

23:                                               ; preds = %18
  %24 = icmp eq ptr %22, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 8, !tbaa !41
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26) #8
          to label %31 unwind label %38

31:                                               ; preds = %25
  %32 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #8
  br label %35

33:                                               ; preds = %23
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %31, %33, %16
  %36 = phi ptr [ %17, %16 ], [ %32, %31 ], [ %34, %33 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %13, i16 noundef signext 4, ptr noundef null, ptr noundef %36) #8
          to label %37 unwind label %38

37:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

38:                                               ; preds = %35, %25, %18
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %160

40:                                               ; preds = %2
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #8
  br i1 %41, label %42, label %70

42:                                               ; preds = %40
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %44 = load ptr, ptr %3, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %65

48:                                               ; preds = %42
  %49 = load ptr, ptr %44, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %44) #8
          to label %53 unwind label %68

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %3, align 8, !tbaa !41
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56) #8
          to label %61 unwind label %68

61:                                               ; preds = %55
  %62 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %60) #8
  br label %65

63:                                               ; preds = %53
  %64 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %61, %63, %46
  %66 = phi ptr [ %47, %46 ], [ %62, %61 ], [ %64, %63 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 7, ptr noundef null, ptr noundef %66) #8
          to label %67 unwind label %68

67:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

68:                                               ; preds = %65, %55, %48
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %160

70:                                               ; preds = %40
  %71 = load ptr, ptr %1, align 8, !tbaa !38
  %72 = getelementptr inbounds ptr, ptr %71, i64 4
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef signext i16 %73(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %75 = icmp eq i16 %74, 2
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %3, align 8, !tbaa !41
  br label %112

78:                                               ; preds = %70
  %79 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #8
  %80 = load ptr, ptr %3, align 8, !tbaa !41
  br i1 %79, label %81, label %112

81:                                               ; preds = %78
  %82 = load ptr, ptr %9, align 8, !tbaa !54
  %83 = icmp eq ptr %82, %80
  br i1 %83, label %112, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %86 = load ptr, ptr %3, align 8, !tbaa !41
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %107

90:                                               ; preds = %84
  %91 = load ptr, ptr %86, align 8, !tbaa !38
  %92 = getelementptr inbounds ptr, ptr %91, i64 12
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %86) #8
          to label %95 unwind label %110

95:                                               ; preds = %90
  %96 = icmp eq ptr %94, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr %3, align 8, !tbaa !41
  %99 = load ptr, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds ptr, ptr %99, i64 12
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %98) #8
          to label %103 unwind label %110

103:                                              ; preds = %97
  %104 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %102) #8
  br label %107

105:                                              ; preds = %95
  %106 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %107

107:                                              ; preds = %103, %105, %88
  %108 = phi ptr [ %89, %88 ], [ %104, %103 ], [ %106, %105 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %85, i16 noundef signext 10, ptr noundef null, ptr noundef %108) #8
          to label %109 unwind label %110

109:                                              ; preds = %107
  tail call void @__cxa_throw(ptr nonnull %85, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

110:                                              ; preds = %107, %97, %90
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %160

112:                                              ; preds = %76, %81, %78
  %113 = phi ptr [ %77, %76 ], [ %80, %81 ], [ %80, %78 ]
  store ptr %113, ptr %9, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %9, i1 noundef zeroext true) #8
  %114 = load ptr, ptr %1, align 8, !tbaa !38
  %115 = getelementptr inbounds ptr, ptr %114, i64 2
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %118 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  %119 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %117, i32 noundef 193, ptr noundef %118) #8
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !53
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %112
  %125 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 24, ptr noundef %8) #8
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %125, ptr noundef %8, i64 noundef 3) #8
  store ptr %125, ptr %121, align 8, !tbaa !53
  br label %126

126:                                              ; preds = %124, %112
  %127 = phi ptr [ %125, %124 ], [ %122, %112 ]
  %128 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %127) #8
  %129 = trunc i64 %128 to i32
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %126
  %132 = and i64 %128, 4294967295
  br label %136

133:                                              ; preds = %136
  %134 = add nuw nsw i64 %137, 1
  %135 = icmp eq i64 %134, %132
  br i1 %135, label %156, label %136, !llvm.loop !105

136:                                              ; preds = %131, %133
  %137 = phi i64 [ 0, %131 ], [ %134, %133 ]
  %138 = load ptr, ptr %121, align 8, !tbaa !53
  %139 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %138, i64 noundef %137) #8
  %140 = load ptr, ptr %139, align 8, !tbaa !38
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %139) #8
  %144 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %117, ptr noundef %143) #8
  br i1 %144, label %145, label %133

145:                                              ; preds = %136
  %146 = load ptr, ptr %121, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %146, ptr noundef nonnull %1, i64 noundef %137) #8
  %147 = load ptr, ptr %3, align 8, !tbaa !41
  %148 = load ptr, ptr %147, align 8, !tbaa !38
  %149 = getelementptr inbounds ptr, ptr %148, i64 12
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %147) #8
  %152 = icmp eq ptr %151, null
  %153 = getelementptr inbounds i8, ptr %151, i64 24
  %154 = select i1 %152, ptr null, ptr %153
  %155 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %139) #8
  store ptr %154, ptr %155, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %155, i1 noundef zeroext false) #8
  br label %158

156:                                              ; preds = %133, %126
  %157 = load ptr, ptr %121, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %157, ptr noundef nonnull %1) #8
  br label %158

158:                                              ; preds = %145, %156
  %159 = phi ptr [ null, %156 ], [ %139, %145 ]
  ret ptr %159

160:                                              ; preds = %110, %68, %38
  %161 = phi ptr [ %85, %110 ], [ %43, %68 ], [ %13, %38 ]
  %162 = phi { ptr, i32 } [ %111, %110 ], [ %69, %68 ], [ %39, %38 ]
  tail call void @__cxa_free_exception(ptr %161) #11
  resume { ptr, i32 } %162
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !49
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !52
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !37 {
  br i1 %2, label %4, label %25

4:                                                ; preds = %3, %22
  %5 = phi i64 [ %23, %22 ], [ 0, %3 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = and i64 %10, 4294967295
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %20, %15 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !53
  %18 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %16) #8
  %19 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %18) #8
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %19, i1 noundef zeroext %1, i1 noundef zeroext true) #8
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !107

22:                                               ; preds = %15, %9, %4
  %23 = add nuw nsw i64 %5, 1
  %24 = icmp eq i64 %23, 193
  br i1 %24, label %25, label %4, !llvm.loop !108

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl14getNamedItemNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !37 {
  br label %4

4:                                                ; preds = %3, %41
  %5 = phi i64 [ 0, %3 ], [ %42, %41 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = and i64 %10, 4294967295
  br label %15

15:                                               ; preds = %13, %38
  %16 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !53
  %18 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %16) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #8
  %23 = load ptr, ptr %18, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %18) #8
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %22, ptr noundef %1) #8
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %26) #8
  br i1 %29, label %44, label %30

30:                                               ; preds = %28
  %31 = icmp eq ptr %26, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load ptr, ptr %18, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18) #8
  %37 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %36) #8
  br i1 %37, label %44, label %38

38:                                               ; preds = %32, %30, %15
  %39 = add nuw nsw i64 %16, 1
  %40 = icmp eq i64 %39, %14
  br i1 %40, label %41, label %15, !llvm.loop !109

41:                                               ; preds = %38, %9, %4
  %42 = add nuw nsw i64 %5, 1
  %43 = icmp eq i64 %42, 193
  br i1 %43, label %44, label %4, !llvm.loop !110

44:                                               ; preds = %41, %28, %32
  %45 = phi ptr [ %18, %32 ], [ %18, %28 ], [ null, %41 ]
  ret ptr %45
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl14setNamedItemNSEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %1) #8
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #8
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %40, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %14 = load ptr, ptr %3, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %35

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
          to label %23 unwind label %38

23:                                               ; preds = %18
  %24 = icmp eq ptr %22, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 8, !tbaa !41
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 12
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26) #8
          to label %31 unwind label %38

31:                                               ; preds = %25
  %32 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %30) #8
  br label %35

33:                                               ; preds = %23
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %31, %33, %16
  %36 = phi ptr [ %17, %16 ], [ %32, %31 ], [ %34, %33 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %13, i16 noundef signext 4, ptr noundef null, ptr noundef %36) #8
          to label %37 unwind label %38

37:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

38:                                               ; preds = %35, %25, %18
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %168

40:                                               ; preds = %2
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #8
  br i1 %41, label %42, label %70

42:                                               ; preds = %40
  %43 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %44 = load ptr, ptr %3, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %65

48:                                               ; preds = %42
  %49 = load ptr, ptr %44, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %44) #8
          to label %53 unwind label %68

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %3, align 8, !tbaa !41
  %57 = load ptr, ptr %56, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56) #8
          to label %61 unwind label %68

61:                                               ; preds = %55
  %62 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %60) #8
  br label %65

63:                                               ; preds = %53
  %64 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %61, %63, %46
  %66 = phi ptr [ %47, %46 ], [ %62, %61 ], [ %64, %63 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %43, i16 noundef signext 7, ptr noundef null, ptr noundef %66) #8
          to label %67 unwind label %68

67:                                               ; preds = %65
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

68:                                               ; preds = %65, %55, %48
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %168

70:                                               ; preds = %40
  %71 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %9) #8
  br i1 %71, label %72, label %100

72:                                               ; preds = %70
  %73 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %74 = load ptr, ptr %3, align 8, !tbaa !41
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %95

78:                                               ; preds = %72
  %79 = load ptr, ptr %74, align 8, !tbaa !38
  %80 = getelementptr inbounds ptr, ptr %79, i64 12
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %74) #8
          to label %83 unwind label %98

83:                                               ; preds = %78
  %84 = icmp eq ptr %82, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %3, align 8, !tbaa !41
  %87 = load ptr, ptr %86, align 8, !tbaa !38
  %88 = getelementptr inbounds ptr, ptr %87, i64 12
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %86) #8
          to label %91 unwind label %98

91:                                               ; preds = %85
  %92 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %90) #8
  br label %95

93:                                               ; preds = %83
  %94 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %95

95:                                               ; preds = %91, %93, %76
  %96 = phi ptr [ %77, %76 ], [ %92, %91 ], [ %94, %93 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %73, i16 noundef signext 10, ptr noundef null, ptr noundef %96) #8
          to label %97 unwind label %98

97:                                               ; preds = %95
  tail call void @__cxa_throw(ptr nonnull %73, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

98:                                               ; preds = %95, %85, %78
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %168

100:                                              ; preds = %70
  %101 = load ptr, ptr %3, align 8, !tbaa !41
  store ptr %101, ptr %9, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %9, i1 noundef zeroext true) #8
  %102 = load ptr, ptr %1, align 8, !tbaa !38
  %103 = getelementptr inbounds ptr, ptr %102, i64 22
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %106 = load ptr, ptr %1, align 8, !tbaa !38
  %107 = getelementptr inbounds ptr, ptr %106, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br label %110

110:                                              ; preds = %100, %147
  %111 = phi i64 [ 0, %100 ], [ %148, %147 ]
  %112 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !53
  %114 = icmp eq ptr %113, null
  br i1 %114, label %147, label %115

115:                                              ; preds = %110
  %116 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %113) #8
  %117 = trunc i64 %116 to i32
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = and i64 %116, 4294967295
  br label %121

121:                                              ; preds = %119, %144
  %122 = phi i64 [ 0, %119 ], [ %145, %144 ]
  %123 = load ptr, ptr %112, align 8, !tbaa !53
  %124 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %123, i64 noundef %122) #8
  %125 = load ptr, ptr %124, align 8, !tbaa !38
  %126 = getelementptr inbounds ptr, ptr %125, i64 22
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(8) %124) #8
  %129 = load ptr, ptr %124, align 8, !tbaa !38
  %130 = getelementptr inbounds ptr, ptr %129, i64 24
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %124) #8
  %133 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %128, ptr noundef %105) #8
  br i1 %133, label %134, label %144

134:                                              ; preds = %121
  %135 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %109, ptr noundef %132) #8
  br i1 %135, label %150, label %136

136:                                              ; preds = %134
  %137 = icmp eq ptr %132, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = load ptr, ptr %124, align 8, !tbaa !38
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %124) #8
  %143 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %109, ptr noundef %142) #8
  br i1 %143, label %150, label %144

144:                                              ; preds = %121, %136, %138
  %145 = add nuw nsw i64 %122, 1
  %146 = icmp eq i64 %145, %120
  br i1 %146, label %147, label %121, !llvm.loop !111

147:                                              ; preds = %144, %115, %110
  %148 = add nuw nsw i64 %111, 1
  %149 = icmp eq i64 %148, 193
  br i1 %149, label %161, label %110, !llvm.loop !112

150:                                              ; preds = %134, %138
  %151 = load ptr, ptr %112, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %151, ptr noundef nonnull %1, i64 noundef %122) #8
  %152 = load ptr, ptr %3, align 8, !tbaa !41
  %153 = load ptr, ptr %152, align 8, !tbaa !38
  %154 = getelementptr inbounds ptr, ptr %153, i64 12
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(8) %152) #8
  %157 = icmp eq ptr %156, null
  %158 = getelementptr inbounds i8, ptr %156, i64 24
  %159 = select i1 %157, ptr null, ptr %158
  %160 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %124) #8
  store ptr %159, ptr %160, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %160, i1 noundef zeroext false) #8
  br label %166

161:                                              ; preds = %147
  %162 = load ptr, ptr %0, align 8, !tbaa !38
  %163 = getelementptr inbounds ptr, ptr %162, i64 2
  %164 = load ptr, ptr %163, align 8
  %165 = tail call noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1) #8
  br label %166

166:                                              ; preds = %150, %161
  %167 = phi ptr [ %165, %161 ], [ %124, %150 ]
  ret ptr %167

168:                                              ; preds = %98, %68, %38
  %169 = phi ptr [ %73, %98 ], [ %43, %68 ], [ %13, %38 ]
  %170 = phi { ptr, i32 } [ %99, %98 ], [ %69, %68 ], [ %39, %38 ]
  tail call void @__cxa_free_exception(ptr %169) #11
  resume { ptr, i32 } %170
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl17removeNamedItemNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) #8
  br i1 %4, label %5, label %34

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %8, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
          to label %17 unwind label %32

17:                                               ; preds = %12
  %18 = icmp eq ptr %16, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %7, align 8, !tbaa !41
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20) #8
          to label %25 unwind label %32

25:                                               ; preds = %19
  %26 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %24) #8
  br label %29

27:                                               ; preds = %17
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %29

29:                                               ; preds = %25, %27, %10
  %30 = phi ptr [ %11, %10 ], [ %26, %25 ], [ %28, %27 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %30) #8
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

32:                                               ; preds = %29, %19, %12
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %115

34:                                               ; preds = %3, %71
  %35 = phi i64 [ %72, %71 ], [ 0, %3 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = icmp eq ptr %37, null
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = tail call noundef i64 @_ZN11xercesc_2_713DOMNodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %37) #8
  %41 = trunc i64 %40 to i32
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = and i64 %40, 4294967295
  br label %45

45:                                               ; preds = %43, %68
  %46 = phi i64 [ 0, %43 ], [ %69, %68 ]
  %47 = load ptr, ptr %36, align 8, !tbaa !53
  %48 = tail call noundef ptr @_ZN11xercesc_2_713DOMNodeVector9elementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %46) #8
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 22
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %48) #8
  %53 = load ptr, ptr %48, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 24
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %48) #8
  %57 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %52, ptr noundef %1) #8
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %56) #8
  br i1 %59, label %103, label %60

60:                                               ; preds = %58
  %61 = icmp eq ptr %56, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = load ptr, ptr %48, align 8, !tbaa !38
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %48) #8
  %67 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef %66) #8
  br i1 %67, label %103, label %68

68:                                               ; preds = %45, %60, %62
  %69 = add nuw nsw i64 %46, 1
  %70 = icmp eq i64 %69, %44
  br i1 %70, label %71, label %45, !llvm.loop !113

71:                                               ; preds = %68, %39, %34
  %72 = add nuw nsw i64 %35, 1
  %73 = icmp eq i64 %72, 193
  br i1 %73, label %74, label %34, !llvm.loop !114

74:                                               ; preds = %71
  %75 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %76 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %98

81:                                               ; preds = %74
  %82 = load ptr, ptr %77, align 8, !tbaa !38
  %83 = getelementptr inbounds ptr, ptr %82, i64 12
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %77) #8
          to label %86 unwind label %101

86:                                               ; preds = %81
  %87 = icmp eq ptr %85, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %76, align 8, !tbaa !41
  %90 = load ptr, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds ptr, ptr %90, i64 12
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89) #8
          to label %94 unwind label %101

94:                                               ; preds = %88
  %95 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %93) #8
  br label %98

96:                                               ; preds = %86
  %97 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %98

98:                                               ; preds = %94, %96, %79
  %99 = phi ptr [ %80, %79 ], [ %95, %94 ], [ %97, %96 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %75, i16 noundef signext 8, ptr noundef null, ptr noundef %99) #8
          to label %100 unwind label %101

100:                                              ; preds = %98
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

101:                                              ; preds = %98, %88, %81
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %115

103:                                              ; preds = %62, %58
  %104 = load ptr, ptr %36, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %104, i64 noundef %46) #8
  %105 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !41
  %107 = load ptr, ptr %106, align 8, !tbaa !38
  %108 = getelementptr inbounds ptr, ptr %107, i64 12
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %106) #8
  %111 = icmp eq ptr %110, null
  %112 = getelementptr inbounds i8, ptr %110, i64 24
  %113 = select i1 %111, ptr null, ptr %112
  %114 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %48) #8
  store ptr %113, ptr %114, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %114, i1 noundef zeroext false) #8
  ret ptr %48

115:                                              ; preds = %101, %32
  %116 = phi ptr [ %75, %101 ], [ %6, %32 ]
  %117 = phi { ptr, i32 } [ %102, %101 ], [ %33, %32 ]
  tail call void @__cxa_free_exception(ptr %116) #11
  resume { ptr, i32 } %117
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNamedNodeMapD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #5

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !45, i64 1552}
!42 = !{!"_ZTSN11xercesc_2_719DOMNamedNodeMapImplE", !43, i64 0, !44, i64 8, !45, i64 1552}
!43 = !{!"_ZTSN11xercesc_2_715DOMNamedNodeMapE"}
!44 = !{!"omnipotent char", !40, i64 0}
!45 = !{!"any pointer", !44, i64 0}
!46 = !{!"function_entry_count", i64 1100}
!47 = !{!"DOMNamedNodeMapImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!48 = !{!"function_entry_count", i64 3150}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !45, i64 0, !51, i64 8}
!51 = !{!"short", !44, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!45, !45, i64 0}
!54 = !{!50, !45, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = !{!"function_entry_count", i64 2815}
!59 = !{!"function_entry_count", i64 6322}
!60 = !{!61, !62, i64 16}
!61 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !45, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"long", !44, i64 0}
!63 = !{!"function_entry_count", i64 10264}
!64 = !{!"branch_weights", i32 10265, i32 1}
!65 = !{!61, !45, i64 0}
!66 = !{!"function_entry_count", i64 1950}
!67 = !{!"branch_weights", i32 1951, i32 1}
!68 = !{!"function_entry_count", i64 1850}
!69 = !{!"branch_weights", i32 1851, i32 1}
!70 = distinct !{!70, !56}
!71 = distinct !{!71, !56}
!72 = distinct !{!72, !56}
!73 = !{!"function_entry_count", i64 4646679}
!74 = !{!"branch_weights", i32 1, i32 4646680}
!75 = !{!"branch_weights", i32 1216534, i32 3430147}
!76 = !{!"branch_weights", i32 1, i32 3430146}
!77 = !{!"branch_weights", i32 3430146, i32 42249130}
!78 = distinct !{!78, !56}
!79 = !{!"function_entry_count", i64 1231717351}
!80 = !{!"branch_weights", i32 621, i32 -1469098093}
!81 = !{!"branch_weights", i32 408901017, i32 1}
!82 = !{!"branch_weights", i32 267, i32 4}
!83 = !{!"branch_weights", i32 1, i32 4}
!84 = !{!"branch_weights", i32 156, i32 112}
!85 = !{!"branch_weights", i32 1, i32 112}
!86 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!87 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!88 = distinct !{!88, !56}
!89 = distinct !{!89, !56}
!90 = !{!"function_entry_count", i64 2954}
!91 = !{!92, !45, i64 280}
!92 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !93, i64 0, !50, i64 32, !98, i64 48, !45, i64 80, !45, i64 88, !45, i64 96, !101, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !102, i64 136, !45, i64 176, !45, i64 184, !45, i64 192, !62, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !104, i64 288, !101, i64 292}
!93 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !94, i64 0, !95, i64 8, !96, i64 16, !97, i64 24}
!94 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!95 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!96 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!97 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!98 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !45, i64 0, !45, i64 8, !99, i64 16}
!99 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !100, i64 0, !45, i64 8}
!100 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!101 = !{!"bool", !44, i64 0}
!102 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !103, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !104, i64 32, !104, i64 36}
!103 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!104 = !{!"int", !44, i64 0}
!105 = distinct !{!105, !56}
!106 = !{!"function_entry_count", i64 2562}
!107 = distinct !{!107, !56}
!108 = distinct !{!108, !56}
!109 = distinct !{!109, !56}
!110 = distinct !{!110, !56}
!111 = distinct !{!111, !56}
!112 = distinct !{!112, !56}
!113 = distinct !{!113, !56}
!114 = distinct !{!114, !56}
