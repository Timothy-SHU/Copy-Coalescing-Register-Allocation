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

$_ZTSN11xercesc_2_715DOMNamedNodeMapE = comdat any

$_ZTIN11xercesc_2_715DOMNamedNodeMapE = comdat any

@_ZTVN11xercesc_2_719DOMNamedNodeMapImplE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMNamedNodeMapImplE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD0Ev, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl12setNamedItemEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl4itemEm, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl12getNamedItemEPKt, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl9getLengthEv, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl15removeNamedItemEPKt, ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl14getNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl14setNamedItemNSEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl17removeNamedItemNSEPKtS2_, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl8cloneMapEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl11setReadOnlyEbb] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMNamedNodeMapImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMNamedNodeMapImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNamedNodeMapE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNamedNodeMapE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNamedNodeMapE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMNamedNodeMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMNamedNodeMapImplE, ptr @_ZTIN11xercesc_2_715DOMNamedNodeMapE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_719DOMNamedNodeMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplC2EPNS_7DOMNodeE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %4, i8 0, i64 1544, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(1560) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNamedNodeMapImpl8readOnlyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !43
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !46
  %7 = and i16 %6, %5
  %8 = icmp ne i16 %7, 0
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl8cloneMapEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %4, i64 noundef 1560)
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %7, i8 0, i64 1544, i1 false)
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2
  %9 = xor i16 %8, -1
  %10 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2
  br label %12

11:                                               ; preds = %54
  ret ptr %5

12:                                               ; preds = %2, %54
  %13 = phi i64 [ 0, %2 ], [ %55, %54 ]
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %15, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !48
  %20 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %4, i64 noundef 24)
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %4, i64 noundef %19)
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %5, i64 0, i32 1, i64 %13
  store ptr %20, ptr %21, align 8, !tbaa !47
  %22 = icmp eq i64 %19, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %17, %33
  %24 = phi i64 [ %52, %33 ], [ 0, %17 ]
  %25 = load ptr, ptr %14, align 8, !tbaa !47
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !48
  %28 = icmp ugt i64 %27, %24
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load ptr, ptr %25, align 8, !tbaa !51
  %31 = getelementptr inbounds ptr, ptr %30, i64 %24
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  br label %33

33:                                               ; preds = %23, %29
  %34 = phi ptr [ %32, %29 ], [ null, %23 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 13
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, i1 noundef zeroext true)
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %38, i64 0, i32 1
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %34, i64 0, i32 1, i32 1
  %41 = load i16, ptr %40, align 8, !tbaa !43
  %42 = and i16 %8, %41
  %43 = icmp eq i16 %42, 0
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %38, i64 0, i32 1, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !43
  %46 = or i16 %45, %8
  %47 = and i16 %45, %9
  %48 = select i1 %43, i16 %47, i16 %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %38, i64 0, i32 1, i32 1
  store i16 %48, ptr %49, align 8, !tbaa !43
  store ptr %1, ptr %39, align 8, !tbaa !52
  %50 = or i16 %10, %48
  store i16 %50, ptr %49, align 8, !tbaa !43
  %51 = load ptr, ptr %21, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef %38)
  %52 = add nuw i64 %24, 1
  %53 = icmp eq i64 %52, %19
  br i1 %53, label %54, label %23, !llvm.loop !53

54:                                               ; preds = %33, %17, %12
  %55 = add nuw nsw i64 %13, 1
  %56 = icmp eq i64 %55, 193
  br i1 %56, label %11, label %12, !llvm.loop !56
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #7

declare void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_719DOMNamedNodeMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0) unnamed_addr #5 align 2 !prof !34 {
  br label %3

2:                                                ; preds = %12
  ret i64 %14

3:                                                ; preds = %1, %12
  %4 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %5 = phi i64 [ 0, %1 ], [ %14, %12 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %7, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !48
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i64 [ %11, %9 ], [ 0, %3 ]
  %14 = add i64 %13, %5
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, 193
  br i1 %16, label %2, label %3, !llvm.loop !57
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, i64 noundef %1) unnamed_addr #5 align 2 !prof !34 {
  br label %3

3:                                                ; preds = %2, %27
  %4 = phi ptr [ undef, %2 ], [ %29, %27 ]
  %5 = phi i64 [ 0, %2 ], [ %30, %27 ]
  %6 = phi i64 [ 0, %2 ], [ %28, %27 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %8, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !48
  %13 = icmp ugt i64 %6, %1
  %14 = add i64 %12, %6
  %15 = icmp ule i64 %14, %1
  %16 = or i1 %13, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = sub i64 %1, %6
  %19 = icmp ugt i64 %12, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 8, !tbaa !51
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %10, %20, %17
  %25 = phi i64 [ %6, %17 ], [ %6, %20 ], [ %14, %10 ]
  %26 = phi ptr [ null, %17 ], [ %23, %20 ], [ %4, %10 ]
  br i1 %16, label %27, label %32

27:                                               ; preds = %24, %3
  %28 = phi i64 [ %6, %3 ], [ %25, %24 ]
  %29 = phi ptr [ %4, %3 ], [ %26, %24 ]
  %30 = add nuw nsw i64 %5, 1
  %31 = icmp eq i64 %30, 193
  br i1 %31, label %32, label %3, !llvm.loop !58

32:                                               ; preds = %27, %24
  %33 = phi ptr [ %26, %24 ], [ null, %27 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl12getNamedItemEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef readonly %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !46
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = zext i16 %5 to i32
  %9 = getelementptr inbounds i16, ptr %1, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !46
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7, %12
  %13 = phi i16 [ %22, %12 ], [ %10, %7 ]
  %14 = phi ptr [ %21, %12 ], [ %9, %7 ]
  %15 = phi i32 [ %20, %12 ], [ %8, %7 ]
  %16 = mul i32 %15, 38
  %17 = lshr i32 %15, 24
  %18 = add i32 %16, %17
  %19 = zext i16 %13 to i32
  %20 = add i32 %18, %19
  %21 = getelementptr inbounds i16, ptr %14, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !46
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %12, !llvm.loop !59

24:                                               ; preds = %12, %7
  %25 = phi i32 [ %8, %7 ], [ %20, %12 ]
  %26 = urem i32 %25, 193
  %27 = zext nneg i32 %26 to i64
  br label %28

28:                                               ; preds = %2, %4, %24
  %29 = phi i64 [ %27, %24 ], [ 0, %4 ], [ 0, %2 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %86, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %31, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = and i64 %35, 4294967295
  br label %43

40:                                               ; preds = %83
  %41 = add nuw nsw i64 %44, 1
  %42 = icmp eq i64 %41, %39
  br i1 %42, label %86, label %43, !llvm.loop !60

43:                                               ; preds = %38, %40
  %44 = phi i64 [ 0, %38 ], [ %41, %40 ]
  %45 = phi ptr [ undef, %38 ], [ %85, %40 ]
  %46 = load ptr, ptr %30, align 8, !tbaa !47
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !48
  %49 = icmp ugt i64 %48, %44
  tail call void @llvm.assume(i1 %49)
  %50 = load ptr, ptr %46, align 8, !tbaa !51
  %51 = getelementptr inbounds ptr, ptr %50, i64 %44
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52)
  %57 = icmp eq ptr %56, null
  %58 = or i1 %3, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %43
  %60 = load i16, ptr %1, align 2, !tbaa !46
  %61 = load i16, ptr %56, align 2, !tbaa !46
  %62 = icmp eq i16 %60, %61
  br i1 %62, label %72, label %83

63:                                               ; preds = %43
  br i1 %3, label %67, label %64

64:                                               ; preds = %63
  %65 = load i16, ptr %1, align 2, !tbaa !46
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64, %63
  br i1 %57, label %71, label %68

68:                                               ; preds = %67
  %69 = load i16, ptr %56, align 2, !tbaa !46
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68, %67
  br label %83

72:                                               ; preds = %59, %77
  %73 = phi i16 [ %80, %77 ], [ %60, %59 ]
  %74 = phi ptr [ %79, %77 ], [ %56, %59 ]
  %75 = phi ptr [ %78, %77 ], [ %1, %59 ]
  %76 = icmp eq i16 %73, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds i16, ptr %75, i64 1
  %79 = getelementptr inbounds i16, ptr %74, i64 1
  %80 = load i16, ptr %78, align 2, !tbaa !46
  %81 = load i16, ptr %79, align 2, !tbaa !46
  %82 = icmp eq i16 %80, %81
  br i1 %82, label %72, label %83, !llvm.loop !61

83:                                               ; preds = %72, %77, %59, %64, %68, %71
  %84 = phi i1 [ true, %71 ], [ false, %68 ], [ false, %64 ], [ false, %59 ], [ %76, %77 ], [ %76, %72 ]
  %85 = select i1 %84, ptr %52, ptr %45
  br i1 %84, label %86, label %40

86:                                               ; preds = %40, %83, %33, %28
  %87 = phi ptr [ null, %28 ], [ null, %33 ], [ %85, %83 ], [ null, %40 ]
  ret ptr %87
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl15removeNamedItemEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef readonly %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !43
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !46
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %12 = load ptr, ptr %3, align 8, !tbaa !38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %19 unwind label %33

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %3, align 8, !tbaa !38
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %27 unwind label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %26, i64 0, i32 25
  br label %29

29:                                               ; preds = %19, %10, %27
  %30 = phi ptr [ %28, %27 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %10 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %19 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %31)
          to label %32 unwind label %33

32:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

33:                                               ; preds = %29, %21, %14
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %190

35:                                               ; preds = %2
  %36 = icmp eq ptr %1, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %35
  %38 = load i16, ptr %1, align 2, !tbaa !46
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = zext i16 %38 to i32
  %42 = getelementptr inbounds i16, ptr %1, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !46
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40, %45
  %46 = phi i16 [ %55, %45 ], [ %43, %40 ]
  %47 = phi ptr [ %54, %45 ], [ %42, %40 ]
  %48 = phi i32 [ %53, %45 ], [ %41, %40 ]
  %49 = mul i32 %48, 38
  %50 = lshr i32 %48, 24
  %51 = add i32 %49, %50
  %52 = zext i16 %46 to i32
  %53 = add i32 %51, %52
  %54 = getelementptr inbounds i16, ptr %47, i64 1
  %55 = load i16, ptr %54, align 2, !tbaa !46
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %45, !llvm.loop !59

57:                                               ; preds = %45, %40
  %58 = phi i32 [ %41, %40 ], [ %53, %45 ]
  %59 = urem i32 %58, 193
  %60 = zext nneg i32 %59 to i64
  br label %61

61:                                               ; preds = %35, %37, %57
  %62 = phi i64 [ %60, %57 ], [ 0, %37 ], [ 0, %35 ]
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %61
  %67 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %68 = load ptr, ptr %3, align 8, !tbaa !38
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 12
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %75 unwind label %89

75:                                               ; preds = %70
  %76 = icmp eq ptr %74, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %3, align 8, !tbaa !38
  %79 = load ptr, ptr %78, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 12
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %83 unwind label %89

83:                                               ; preds = %77
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %82, i64 0, i32 25
  br label %85

85:                                               ; preds = %75, %66, %83
  %86 = phi ptr [ %84, %83 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %66 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %75 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %67, i16 noundef signext 8, ptr noundef null, ptr noundef %87)
          to label %88 unwind label %89

88:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

89:                                               ; preds = %85, %77, %70
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %190

91:                                               ; preds = %61
  %92 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %64, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !48
  %94 = trunc i64 %93 to i32
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %164

96:                                               ; preds = %91
  %97 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2
  %98 = xor i16 %97, -1
  %99 = and i64 %93, 4294967295
  br label %103

100:                                              ; preds = %162
  %101 = add nuw nsw i64 %104, 1
  %102 = icmp eq i64 %101, %99
  br i1 %102, label %164, label %103, !llvm.loop !62

103:                                              ; preds = %96, %100
  %104 = phi i64 [ 0, %96 ], [ %101, %100 ]
  %105 = phi ptr [ undef, %96 ], [ %163, %100 ]
  %106 = load ptr, ptr %63, align 8, !tbaa !47
  %107 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !48
  %109 = icmp ugt i64 %108, %104
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load ptr, ptr %106, align 8, !tbaa !51
  %112 = getelementptr inbounds ptr, ptr %111, i64 %104
  %113 = load ptr, ptr %112, align 8, !tbaa !47
  br label %114

114:                                              ; preds = %103, %110
  %115 = phi ptr [ %113, %110 ], [ null, %103 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !35
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %115)
  %120 = icmp eq ptr %119, null
  %121 = or i1 %36, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %114
  %123 = load i16, ptr %1, align 2, !tbaa !46
  %124 = load i16, ptr %119, align 2, !tbaa !46
  %125 = icmp eq i16 %123, %124
  br i1 %125, label %135, label %146

126:                                              ; preds = %114
  br i1 %36, label %130, label %127

127:                                              ; preds = %126
  %128 = load i16, ptr %1, align 2, !tbaa !46
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %127, %126
  br i1 %120, label %134, label %131

131:                                              ; preds = %130
  %132 = load i16, ptr %119, align 2, !tbaa !46
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131, %130
  br label %146

135:                                              ; preds = %122, %140
  %136 = phi i16 [ %143, %140 ], [ %123, %122 ]
  %137 = phi ptr [ %142, %140 ], [ %119, %122 ]
  %138 = phi ptr [ %141, %140 ], [ %1, %122 ]
  %139 = icmp eq i16 %136, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds i16, ptr %138, i64 1
  %142 = getelementptr inbounds i16, ptr %137, i64 1
  %143 = load i16, ptr %141, align 2, !tbaa !46
  %144 = load i16, ptr %142, align 2, !tbaa !46
  %145 = icmp eq i16 %143, %144
  br i1 %145, label %135, label %146, !llvm.loop !61

146:                                              ; preds = %135, %140, %122, %127, %131, %134
  %147 = phi i1 [ true, %134 ], [ false, %131 ], [ false, %127 ], [ false, %122 ], [ %139, %140 ], [ %139, %135 ]
  br i1 %147, label %148, label %162

148:                                              ; preds = %146
  %149 = load ptr, ptr %63, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %149, i64 noundef %104)
  %150 = load ptr, ptr %3, align 8, !tbaa !38
  %151 = load ptr, ptr %150, align 8, !tbaa !35
  %152 = getelementptr inbounds ptr, ptr %151, i64 12
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(8) %150)
  %155 = icmp eq ptr %154, null
  %156 = getelementptr inbounds i8, ptr %154, i64 24
  %157 = select i1 %155, ptr null, ptr %156
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %115, i64 0, i32 1
  store ptr %157, ptr %158, align 8, !tbaa !52
  %159 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %115, i64 0, i32 1, i32 1
  %160 = load i16, ptr %159, align 8, !tbaa !43
  %161 = and i16 %160, %98
  store i16 %161, ptr %159, align 8, !tbaa !43
  br label %162

162:                                              ; preds = %146, %148
  %163 = phi ptr [ %115, %148 ], [ %105, %146 ]
  br i1 %147, label %189, label %100

164:                                              ; preds = %100, %91
  %165 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %166 = load ptr, ptr %3, align 8, !tbaa !38
  %167 = icmp eq ptr %166, null
  br i1 %167, label %183, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %166, align 8, !tbaa !35
  %170 = getelementptr inbounds ptr, ptr %169, i64 12
  %171 = load ptr, ptr %170, align 8
  %172 = invoke noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(8) %166)
          to label %173 unwind label %187

173:                                              ; preds = %168
  %174 = icmp eq ptr %172, null
  br i1 %174, label %183, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr %3, align 8, !tbaa !38
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  %178 = getelementptr inbounds ptr, ptr %177, i64 12
  %179 = load ptr, ptr %178, align 8
  %180 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(8) %176)
          to label %181 unwind label %187

181:                                              ; preds = %175
  %182 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %180, i64 0, i32 25
  br label %183

183:                                              ; preds = %173, %164, %181
  %184 = phi ptr [ %182, %181 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %164 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %173 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %165, i16 noundef signext 8, ptr noundef null, ptr noundef %185)
          to label %186 unwind label %187

186:                                              ; preds = %183
  tail call void @__cxa_throw(ptr nonnull %165, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

187:                                              ; preds = %183, %175, %168
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %190

189:                                              ; preds = %162
  ret ptr %163

190:                                              ; preds = %89, %187, %33
  %191 = phi ptr [ %67, %89 ], [ %165, %187 ], [ %11, %33 ]
  %192 = phi { ptr, i32 } [ %90, %89 ], [ %188, %187 ], [ %34, %33 ]
  tail call void @__cxa_free_exception(ptr %191) #11
  resume { ptr, i32 } %192
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl12setNamedItemEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9)
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %14 = load ptr, ptr %3, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %21 unwind label %35

21:                                               ; preds = %16
  %22 = icmp eq ptr %20, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8, !tbaa !38
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %29 unwind label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %28, i64 0, i32 25
  br label %31

31:                                               ; preds = %21, %12, %29
  %32 = phi ptr [ %30, %29 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %12 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %21 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %13, i16 noundef signext 4, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

35:                                               ; preds = %31, %23, %16
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %229

37:                                               ; preds = %2
  %38 = load ptr, ptr %3, align 8, !tbaa !38
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %38, i64 0, i32 1, i32 1
  %40 = load i16, ptr %39, align 8, !tbaa !43
  %41 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !46
  %42 = and i16 %41, %40
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %46 = load ptr, ptr %3, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %53 unwind label %67

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %3, align 8, !tbaa !38
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %61 unwind label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %60, i64 0, i32 25
  br label %63

63:                                               ; preds = %53, %44, %61
  %64 = phi ptr [ %62, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %44 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %53 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 7, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

67:                                               ; preds = %63, %55, %48
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %229

69:                                               ; preds = %37
  %70 = load ptr, ptr %1, align 8, !tbaa !35
  %71 = getelementptr inbounds ptr, ptr %70, i64 4
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef signext i16 %72(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %74 = icmp eq i16 %73, 2
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %77 = load i16, ptr %76, align 8, !tbaa !43
  %78 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !46
  %79 = and i16 %78, %77
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %110, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %9, align 8, !tbaa !52
  %83 = load ptr, ptr %3, align 8, !tbaa !38
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %110, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %87 = load ptr, ptr %3, align 8, !tbaa !38
  %88 = icmp eq ptr %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 8, !tbaa !35
  %91 = getelementptr inbounds ptr, ptr %90, i64 12
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %94 unwind label %108

94:                                               ; preds = %89
  %95 = icmp eq ptr %93, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %94
  %97 = load ptr, ptr %3, align 8, !tbaa !38
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = getelementptr inbounds ptr, ptr %98, i64 12
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %97)
          to label %102 unwind label %108

102:                                              ; preds = %96
  %103 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %101, i64 0, i32 25
  br label %104

104:                                              ; preds = %94, %85, %102
  %105 = phi ptr [ %103, %102 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %85 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %94 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %86, i16 noundef signext 10, ptr noundef null, ptr noundef %106)
          to label %107 unwind label %108

107:                                              ; preds = %104
  tail call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

108:                                              ; preds = %104, %96, %89
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %229

110:                                              ; preds = %81, %75, %69
  %111 = load ptr, ptr %3, align 8, !tbaa !38
  store ptr %111, ptr %9, align 8, !tbaa !52
  %112 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %113 = load i16, ptr %112, align 8, !tbaa !43
  %114 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !46
  %115 = or i16 %114, %113
  store i16 %115, ptr %112, align 8, !tbaa !43
  %116 = load ptr, ptr %1, align 8, !tbaa !35
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %145, label %121

121:                                              ; preds = %110
  %122 = load i16, ptr %119, align 2, !tbaa !46
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %145, label %124

124:                                              ; preds = %121
  %125 = zext i16 %122 to i32
  %126 = getelementptr inbounds i16, ptr %119, i64 1
  %127 = load i16, ptr %126, align 2, !tbaa !46
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124, %129
  %130 = phi i16 [ %139, %129 ], [ %127, %124 ]
  %131 = phi ptr [ %138, %129 ], [ %126, %124 ]
  %132 = phi i32 [ %137, %129 ], [ %125, %124 ]
  %133 = mul i32 %132, 38
  %134 = lshr i32 %132, 24
  %135 = add i32 %133, %134
  %136 = zext i16 %130 to i32
  %137 = add i32 %135, %136
  %138 = getelementptr inbounds i16, ptr %131, i64 1
  %139 = load i16, ptr %138, align 2, !tbaa !46
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %129, !llvm.loop !59

141:                                              ; preds = %129, %124
  %142 = phi i32 [ %125, %124 ], [ %137, %129 ]
  %143 = urem i32 %142, 193
  %144 = zext nneg i32 %143 to i64
  br label %145

145:                                              ; preds = %110, %121, %141
  %146 = phi i64 [ %144, %141 ], [ 0, %121 ], [ 0, %110 ]
  %147 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !47
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %8, i64 noundef 24)
  tail call void @_ZN11xercesc_2_713DOMNodeVectorC1EPNS_11DOMDocumentEm(ptr noundef nonnull align 8 dereferenceable(24) %151, ptr noundef nonnull %8, i64 noundef 3)
  store ptr %151, ptr %147, align 8, !tbaa !47
  br label %152

152:                                              ; preds = %150, %145
  %153 = load ptr, ptr %147, align 8, !tbaa !47
  %154 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %153, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !48
  %156 = trunc i64 %155 to i32
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %225

158:                                              ; preds = %152
  %159 = xor i16 %114, -1
  %160 = and i64 %155, 4294967295
  br label %164

161:                                              ; preds = %223
  %162 = add nuw nsw i64 %165, 1
  %163 = icmp eq i64 %162, %160
  br i1 %163, label %225, label %164, !llvm.loop !63

164:                                              ; preds = %158, %161
  %165 = phi i64 [ 0, %158 ], [ %162, %161 ]
  %166 = phi ptr [ undef, %158 ], [ %224, %161 ]
  %167 = load ptr, ptr %147, align 8, !tbaa !47
  %168 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %167, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !48
  %170 = icmp ugt i64 %169, %165
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load ptr, ptr %167, align 8, !tbaa !51
  %173 = getelementptr inbounds ptr, ptr %172, i64 %165
  %174 = load ptr, ptr %173, align 8, !tbaa !47
  br label %175

175:                                              ; preds = %164, %171
  %176 = phi ptr [ %174, %171 ], [ null, %164 ]
  %177 = load ptr, ptr %176, align 8, !tbaa !35
  %178 = getelementptr inbounds ptr, ptr %177, i64 2
  %179 = load ptr, ptr %178, align 8
  %180 = tail call noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(8) %176)
  %181 = icmp eq ptr %180, null
  %182 = or i1 %120, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %175
  %184 = load i16, ptr %119, align 2, !tbaa !46
  %185 = load i16, ptr %180, align 2, !tbaa !46
  %186 = icmp eq i16 %184, %185
  br i1 %186, label %196, label %207

187:                                              ; preds = %175
  br i1 %120, label %191, label %188

188:                                              ; preds = %187
  %189 = load i16, ptr %119, align 2, !tbaa !46
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %188, %187
  br i1 %181, label %195, label %192

192:                                              ; preds = %191
  %193 = load i16, ptr %180, align 2, !tbaa !46
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192, %191
  br label %207

196:                                              ; preds = %183, %201
  %197 = phi i16 [ %204, %201 ], [ %184, %183 ]
  %198 = phi ptr [ %203, %201 ], [ %180, %183 ]
  %199 = phi ptr [ %202, %201 ], [ %119, %183 ]
  %200 = icmp eq i16 %197, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds i16, ptr %199, i64 1
  %203 = getelementptr inbounds i16, ptr %198, i64 1
  %204 = load i16, ptr %202, align 2, !tbaa !46
  %205 = load i16, ptr %203, align 2, !tbaa !46
  %206 = icmp eq i16 %204, %205
  br i1 %206, label %196, label %207, !llvm.loop !61

207:                                              ; preds = %196, %201, %183, %188, %192, %195
  %208 = phi i1 [ true, %195 ], [ false, %192 ], [ false, %188 ], [ false, %183 ], [ %200, %201 ], [ %200, %196 ]
  br i1 %208, label %209, label %223

209:                                              ; preds = %207
  %210 = load ptr, ptr %147, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %210, ptr noundef nonnull %1, i64 noundef %165)
  %211 = load ptr, ptr %3, align 8, !tbaa !38
  %212 = load ptr, ptr %211, align 8, !tbaa !35
  %213 = getelementptr inbounds ptr, ptr %212, i64 12
  %214 = load ptr, ptr %213, align 8
  %215 = tail call noundef ptr %214(ptr noundef nonnull align 8 dereferenceable(8) %211)
  %216 = icmp eq ptr %215, null
  %217 = getelementptr inbounds i8, ptr %215, i64 24
  %218 = select i1 %216, ptr null, ptr %217
  %219 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %176, i64 0, i32 1
  store ptr %218, ptr %219, align 8, !tbaa !52
  %220 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %176, i64 0, i32 1, i32 1
  %221 = load i16, ptr %220, align 8, !tbaa !43
  %222 = and i16 %221, %159
  store i16 %222, ptr %220, align 8, !tbaa !43
  br label %223

223:                                              ; preds = %207, %209
  %224 = phi ptr [ %176, %209 ], [ %166, %207 ]
  br i1 %208, label %227, label %161

225:                                              ; preds = %161, %152
  %226 = load ptr, ptr %147, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector10addElementEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(24) %226, ptr noundef nonnull %1)
  br label %227

227:                                              ; preds = %223, %225
  %228 = phi ptr [ null, %225 ], [ %224, %223 ]
  ret ptr %228

229:                                              ; preds = %108, %67, %35
  %230 = phi ptr [ %86, %108 ], [ %45, %67 ], [ %13, %35 ]
  %231 = phi { ptr, i32 } [ %109, %108 ], [ %68, %67 ], [ %36, %35 ]
  tail call void @__cxa_free_exception(ptr %230) #11
  resume { ptr, i32 } %231
}

declare void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMNamedNodeMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 !prof !34 {
  br i1 %2, label %4, label %34

4:                                                ; preds = %3, %31
  %5 = phi i64 [ %32, %31 ], [ 0, %3 ]
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %7, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !48
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = and i64 %11, 4294967295
  br label %16

16:                                               ; preds = %14, %26
  %17 = phi i64 [ 0, %14 ], [ %29, %26 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !47
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = icmp ugt i64 %20, %17
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 8, !tbaa !51
  %24 = getelementptr inbounds ptr, ptr %23, i64 %17
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  br label %26

26:                                               ; preds = %16, %22
  %27 = phi ptr [ %25, %22 ], [ null, %16 ]
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %27, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %28, i1 noundef zeroext %1, i1 noundef zeroext true)
  %29 = add nuw nsw i64 %17, 1
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %16, !llvm.loop !64

31:                                               ; preds = %26, %9, %4
  %32 = add nuw nsw i64 %5, 1
  %33 = icmp eq i64 %32, 193
  br i1 %33, label %34, label %4, !llvm.loop !65

34:                                               ; preds = %31, %3
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMNamedNodeMapImpl14getNamedItemNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #6 align 2 !prof !34 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  br label %6

6:                                                ; preds = %3, %135
  %7 = phi i64 [ 0, %3 ], [ %137, %135 ]
  %8 = phi ptr [ undef, %3 ], [ %136, %135 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %135, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %10, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !48
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %12
  %18 = and i64 %14, 4294967295
  br label %19

19:                                               ; preds = %17, %128
  %20 = phi i64 [ 0, %17 ], [ %129, %128 ]
  %21 = phi ptr [ %8, %17 ], [ %127, %128 ]
  %22 = load ptr, ptr %9, align 8, !tbaa !47
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !48
  %25 = icmp ugt i64 %24, %20
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load ptr, ptr %22, align 8, !tbaa !51
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %29, %26 ], [ null, %19 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 22
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %36 = load ptr, ptr %31, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 24
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %40 = icmp eq ptr %35, null
  %41 = or i1 %4, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i16, ptr %35, align 2, !tbaa !46
  %44 = load i16, ptr %1, align 2, !tbaa !46
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %54, label %125

46:                                               ; preds = %30
  br i1 %40, label %50, label %47

47:                                               ; preds = %46
  %48 = load i16, ptr %35, align 2, !tbaa !46
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %125

50:                                               ; preds = %47, %46
  br i1 %4, label %65, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %1, align 2, !tbaa !46
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %125

54:                                               ; preds = %42, %59
  %55 = phi i16 [ %62, %59 ], [ %43, %42 ]
  %56 = phi ptr [ %61, %59 ], [ %1, %42 ]
  %57 = phi ptr [ %60, %59 ], [ %35, %42 ]
  %58 = icmp eq i16 %55, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = load i16, ptr %60, align 2, !tbaa !46
  %63 = load i16, ptr %61, align 2, !tbaa !46
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %54, label %125, !llvm.loop !61

65:                                               ; preds = %54, %51, %50
  %66 = icmp eq ptr %39, null
  %67 = or i1 %5, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i16, ptr %2, align 2, !tbaa !46
  %70 = load i16, ptr %39, align 2, !tbaa !46
  %71 = icmp eq i16 %69, %70
  br i1 %71, label %82, label %93

72:                                               ; preds = %65
  br i1 %5, label %76, label %73

73:                                               ; preds = %72
  %74 = load i16, ptr %2, align 2, !tbaa !46
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %73, %72
  br i1 %66, label %125, label %77

77:                                               ; preds = %76
  %78 = load i16, ptr %39, align 2, !tbaa !46
  %79 = icmp eq i16 %78, 0
  %80 = zext i1 %79 to i32
  %81 = select i1 %79, ptr %31, ptr %21
  br label %125

82:                                               ; preds = %68, %87
  %83 = phi i16 [ %90, %87 ], [ %69, %68 ]
  %84 = phi ptr [ %89, %87 ], [ %39, %68 ]
  %85 = phi ptr [ %88, %87 ], [ %2, %68 ]
  %86 = icmp eq i16 %83, 0
  br i1 %86, label %125, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds i16, ptr %85, i64 1
  %89 = getelementptr inbounds i16, ptr %84, i64 1
  %90 = load i16, ptr %88, align 2, !tbaa !46
  %91 = load i16, ptr %89, align 2, !tbaa !46
  %92 = icmp eq i16 %90, %91
  br i1 %92, label %82, label %93, !llvm.loop !61

93:                                               ; preds = %87, %68, %73
  br i1 %66, label %94, label %125

94:                                               ; preds = %93
  %95 = load ptr, ptr %31, align 8, !tbaa !35
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %99 = icmp eq ptr %98, null
  %100 = or i1 %5, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = load i16, ptr %2, align 2, !tbaa !46
  %103 = load i16, ptr %98, align 2, !tbaa !46
  %104 = icmp eq i16 %102, %103
  br i1 %104, label %114, label %125

105:                                              ; preds = %94
  br i1 %5, label %109, label %106

106:                                              ; preds = %105
  %107 = load i16, ptr %2, align 2, !tbaa !46
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %106, %105
  br i1 %99, label %113, label %110

110:                                              ; preds = %109
  %111 = load i16, ptr %98, align 2, !tbaa !46
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110, %109
  br label %125

114:                                              ; preds = %101, %119
  %115 = phi i16 [ %122, %119 ], [ %102, %101 ]
  %116 = phi ptr [ %121, %119 ], [ %98, %101 ]
  %117 = phi ptr [ %120, %119 ], [ %2, %101 ]
  %118 = icmp eq i16 %115, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds i16, ptr %117, i64 1
  %121 = getelementptr inbounds i16, ptr %116, i64 1
  %122 = load i16, ptr %120, align 2, !tbaa !46
  %123 = load i16, ptr %121, align 2, !tbaa !46
  %124 = icmp eq i16 %122, %123
  br i1 %124, label %114, label %125, !llvm.loop !61

125:                                              ; preds = %59, %82, %114, %119, %42, %101, %76, %77, %113, %93, %106, %110, %51, %47
  %126 = phi i32 [ 7, %47 ], [ 7, %51 ], [ 0, %110 ], [ 0, %106 ], [ 0, %93 ], [ 1, %113 ], [ %80, %77 ], [ 1, %76 ], [ 0, %101 ], [ 7, %42 ], [ 0, %119 ], [ 1, %114 ], [ 1, %82 ], [ 7, %59 ]
  %127 = phi ptr [ %21, %47 ], [ %21, %51 ], [ %21, %110 ], [ %21, %106 ], [ %21, %93 ], [ %31, %113 ], [ %81, %77 ], [ %31, %76 ], [ %21, %101 ], [ %21, %42 ], [ %21, %119 ], [ %31, %114 ], [ %31, %82 ], [ %21, %59 ]
  switch i32 %126, label %131 [
    i32 0, label %128
    i32 7, label %128
  ]

128:                                              ; preds = %125, %125
  %129 = add nuw nsw i64 %20, 1
  %130 = icmp eq i64 %129, %18
  br i1 %130, label %131, label %19, !llvm.loop !66

131:                                              ; preds = %125, %128, %12
  %132 = phi i32 [ 0, %12 ], [ %126, %125 ], [ 0, %128 ]
  %133 = phi ptr [ %8, %12 ], [ %127, %128 ], [ %127, %125 ]
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131, %6
  %136 = phi ptr [ %8, %6 ], [ %133, %131 ]
  %137 = add nuw nsw i64 %7, 1
  %138 = icmp eq i64 %137, 193
  br i1 %138, label %139, label %6, !llvm.loop !67

139:                                              ; preds = %135, %131
  %140 = phi ptr [ %133, %131 ], [ null, %135 ]
  ret ptr %140
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl14setNamedItemNSEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %9)
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %14 = load ptr, ptr %3, align 8, !tbaa !38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %21 unwind label %35

21:                                               ; preds = %16
  %22 = icmp eq ptr %20, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8, !tbaa !38
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %29 unwind label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %28, i64 0, i32 25
  br label %31

31:                                               ; preds = %21, %12, %29
  %32 = phi ptr [ %30, %29 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %12 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %21 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %13, i16 noundef signext 4, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

35:                                               ; preds = %31, %23, %16
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %269

37:                                               ; preds = %2
  %38 = load ptr, ptr %3, align 8, !tbaa !38
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %38, i64 0, i32 1, i32 1
  %40 = load i16, ptr %39, align 8, !tbaa !43
  %41 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !46
  %42 = and i16 %41, %40
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %46 = load ptr, ptr %3, align 8, !tbaa !38
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %53 unwind label %67

53:                                               ; preds = %48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = load ptr, ptr %3, align 8, !tbaa !38
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 12
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %61 unwind label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %60, i64 0, i32 25
  br label %63

63:                                               ; preds = %53, %44, %61
  %64 = phi ptr [ %62, %61 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %44 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %53 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 7, ptr noundef null, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

67:                                               ; preds = %63, %55, %48
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %269

69:                                               ; preds = %37
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 1, i32 1
  %71 = load i16, ptr %70, align 8, !tbaa !43
  %72 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !46
  %73 = and i16 %72, %71
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %69
  %76 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %77 = load ptr, ptr %3, align 8, !tbaa !38
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %77, align 8, !tbaa !35
  %81 = getelementptr inbounds ptr, ptr %80, i64 12
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %84 unwind label %98

84:                                               ; preds = %79
  %85 = icmp eq ptr %83, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %84
  %87 = load ptr, ptr %3, align 8, !tbaa !38
  %88 = load ptr, ptr %87, align 8, !tbaa !35
  %89 = getelementptr inbounds ptr, ptr %88, i64 12
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %92 unwind label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %91, i64 0, i32 25
  br label %94

94:                                               ; preds = %84, %75, %92
  %95 = phi ptr [ %93, %92 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %75 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %84 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %76, i16 noundef signext 10, ptr noundef null, ptr noundef %96)
          to label %97 unwind label %98

97:                                               ; preds = %94
  tail call void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

98:                                               ; preds = %94, %86, %79
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %269

100:                                              ; preds = %69
  store ptr %38, ptr %9, align 8, !tbaa !52
  %101 = or i16 %72, %71
  store i16 %101, ptr %70, align 8, !tbaa !43
  %102 = load ptr, ptr %1, align 8, !tbaa !35
  %103 = getelementptr inbounds ptr, ptr %102, i64 22
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %106 = load ptr, ptr %1, align 8, !tbaa !35
  %107 = getelementptr inbounds ptr, ptr %106, i64 24
  %108 = load ptr, ptr %107, align 8
  %109 = tail call noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %110 = icmp eq ptr %105, null
  %111 = icmp eq ptr %109, null
  %112 = xor i16 %72, -1
  br label %113

113:                                              ; preds = %100, %254
  %114 = phi i64 [ 0, %100 ], [ %256, %254 ]
  %115 = phi i1 [ false, %100 ], [ %257, %254 ]
  %116 = phi ptr [ undef, %100 ], [ %255, %254 ]
  %117 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %114
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %254, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %118, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !48
  %123 = trunc i64 %122 to i32
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %250

125:                                              ; preds = %120
  %126 = and i64 %122, 4294967295
  br label %127

127:                                              ; preds = %125, %247
  %128 = phi i64 [ 0, %125 ], [ %248, %247 ]
  %129 = phi ptr [ %116, %125 ], [ %246, %247 ]
  %130 = load ptr, ptr %117, align 8, !tbaa !47
  %131 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %130, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !48
  %133 = icmp ugt i64 %132, %128
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load ptr, ptr %130, align 8, !tbaa !51
  %136 = getelementptr inbounds ptr, ptr %135, i64 %128
  %137 = load ptr, ptr %136, align 8, !tbaa !47
  br label %138

138:                                              ; preds = %127, %134
  %139 = phi ptr [ %137, %134 ], [ null, %127 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  %141 = getelementptr inbounds ptr, ptr %140, i64 22
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %139)
  %144 = load ptr, ptr %139, align 8, !tbaa !35
  %145 = getelementptr inbounds ptr, ptr %144, i64 24
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(8) %139)
  %148 = icmp eq ptr %143, null
  %149 = or i1 %110, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %138
  %151 = load i16, ptr %143, align 2, !tbaa !46
  %152 = load i16, ptr %105, align 2, !tbaa !46
  %153 = icmp eq i16 %151, %152
  br i1 %153, label %162, label %244

154:                                              ; preds = %138
  br i1 %148, label %158, label %155

155:                                              ; preds = %154
  %156 = load i16, ptr %143, align 2, !tbaa !46
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %158, label %244

158:                                              ; preds = %155, %154
  br i1 %110, label %173, label %159

159:                                              ; preds = %158
  %160 = load i16, ptr %105, align 2, !tbaa !46
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %173, label %244

162:                                              ; preds = %150, %167
  %163 = phi i16 [ %170, %167 ], [ %151, %150 ]
  %164 = phi ptr [ %169, %167 ], [ %105, %150 ]
  %165 = phi ptr [ %168, %167 ], [ %143, %150 ]
  %166 = icmp eq i16 %163, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds i16, ptr %165, i64 1
  %169 = getelementptr inbounds i16, ptr %164, i64 1
  %170 = load i16, ptr %168, align 2, !tbaa !46
  %171 = load i16, ptr %169, align 2, !tbaa !46
  %172 = icmp eq i16 %170, %171
  br i1 %172, label %162, label %244, !llvm.loop !61

173:                                              ; preds = %162, %159, %158
  %174 = icmp eq ptr %147, null
  %175 = or i1 %111, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = load i16, ptr %109, align 2, !tbaa !46
  %178 = load i16, ptr %147, align 2, !tbaa !46
  %179 = icmp eq i16 %177, %178
  br i1 %179, label %188, label %199

180:                                              ; preds = %173
  br i1 %111, label %184, label %181

181:                                              ; preds = %180
  %182 = load i16, ptr %109, align 2, !tbaa !46
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181, %180
  br i1 %174, label %230, label %185

185:                                              ; preds = %184
  %186 = load i16, ptr %147, align 2, !tbaa !46
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %230, label %199

188:                                              ; preds = %176, %193
  %189 = phi i16 [ %196, %193 ], [ %177, %176 ]
  %190 = phi ptr [ %195, %193 ], [ %147, %176 ]
  %191 = phi ptr [ %194, %193 ], [ %109, %176 ]
  %192 = icmp eq i16 %189, 0
  br i1 %192, label %230, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds i16, ptr %191, i64 1
  %195 = getelementptr inbounds i16, ptr %190, i64 1
  %196 = load i16, ptr %194, align 2, !tbaa !46
  %197 = load i16, ptr %195, align 2, !tbaa !46
  %198 = icmp eq i16 %196, %197
  br i1 %198, label %188, label %199, !llvm.loop !61

199:                                              ; preds = %193, %176, %185, %181
  br i1 %174, label %200, label %244

200:                                              ; preds = %199
  %201 = load ptr, ptr %139, align 8, !tbaa !35
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  %203 = load ptr, ptr %202, align 8
  %204 = tail call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %139)
  %205 = icmp eq ptr %204, null
  %206 = or i1 %111, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %200
  %208 = load i16, ptr %109, align 2, !tbaa !46
  %209 = load i16, ptr %204, align 2, !tbaa !46
  %210 = icmp eq i16 %208, %209
  br i1 %210, label %219, label %244

211:                                              ; preds = %200
  br i1 %111, label %215, label %212

212:                                              ; preds = %211
  %213 = load i16, ptr %109, align 2, !tbaa !46
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %244

215:                                              ; preds = %212, %211
  br i1 %205, label %230, label %216

216:                                              ; preds = %215
  %217 = load i16, ptr %204, align 2, !tbaa !46
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %230, label %244

219:                                              ; preds = %207, %224
  %220 = phi i16 [ %227, %224 ], [ %208, %207 ]
  %221 = phi ptr [ %226, %224 ], [ %204, %207 ]
  %222 = phi ptr [ %225, %224 ], [ %109, %207 ]
  %223 = icmp eq i16 %220, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds i16, ptr %222, i64 1
  %226 = getelementptr inbounds i16, ptr %221, i64 1
  %227 = load i16, ptr %225, align 2, !tbaa !46
  %228 = load i16, ptr %226, align 2, !tbaa !46
  %229 = icmp eq i16 %227, %228
  br i1 %229, label %219, label %244, !llvm.loop !61

230:                                              ; preds = %188, %219, %216, %215, %185, %184
  %231 = load ptr, ptr %117, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector12setElementAtEPNS_7DOMNodeEm(ptr noundef nonnull align 8 dereferenceable(24) %231, ptr noundef nonnull %1, i64 noundef %128)
  %232 = load ptr, ptr %3, align 8, !tbaa !38
  %233 = load ptr, ptr %232, align 8, !tbaa !35
  %234 = getelementptr inbounds ptr, ptr %233, i64 12
  %235 = load ptr, ptr %234, align 8
  %236 = tail call noundef ptr %235(ptr noundef nonnull align 8 dereferenceable(8) %232)
  %237 = icmp eq ptr %236, null
  %238 = getelementptr inbounds i8, ptr %236, i64 24
  %239 = select i1 %237, ptr null, ptr %238
  %240 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %139, i64 0, i32 1
  store ptr %239, ptr %240, align 8, !tbaa !52
  %241 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %139, i64 0, i32 1, i32 1
  %242 = load i16, ptr %241, align 8, !tbaa !43
  %243 = and i16 %242, %112
  store i16 %243, ptr %241, align 8, !tbaa !43
  br label %244

244:                                              ; preds = %167, %224, %150, %207, %216, %212, %159, %155, %199, %230
  %245 = phi i32 [ 1, %230 ], [ 0, %199 ], [ 7, %155 ], [ 7, %159 ], [ 0, %212 ], [ 0, %216 ], [ 0, %207 ], [ 7, %150 ], [ 0, %224 ], [ 7, %167 ]
  %246 = phi ptr [ %139, %230 ], [ %129, %199 ], [ %129, %155 ], [ %129, %159 ], [ %129, %212 ], [ %129, %216 ], [ %129, %207 ], [ %129, %150 ], [ %129, %224 ], [ %129, %167 ]
  switch i32 %245, label %250 [
    i32 0, label %247
    i32 7, label %247
  ]

247:                                              ; preds = %244, %244
  %248 = add nuw nsw i64 %128, 1
  %249 = icmp eq i64 %248, %126
  br i1 %249, label %250, label %127, !llvm.loop !68

250:                                              ; preds = %244, %247, %120
  %251 = phi i32 [ 0, %120 ], [ %245, %244 ], [ 0, %247 ]
  %252 = phi ptr [ %116, %120 ], [ %246, %247 ], [ %246, %244 ]
  %253 = icmp eq i32 %251, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %250, %113
  %255 = phi ptr [ %116, %113 ], [ %252, %250 ]
  %256 = add nuw nsw i64 %114, 1
  %257 = icmp ugt i64 %114, 191
  %258 = icmp eq i64 %256, 193
  br i1 %258, label %259, label %113, !llvm.loop !69

259:                                              ; preds = %254, %250
  %260 = phi i1 [ %257, %254 ], [ %115, %250 ]
  %261 = phi ptr [ %255, %254 ], [ %252, %250 ]
  br i1 %260, label %262, label %267

262:                                              ; preds = %259
  %263 = load ptr, ptr %0, align 8, !tbaa !35
  %264 = getelementptr inbounds ptr, ptr %263, i64 2
  %265 = load ptr, ptr %264, align 8
  %266 = tail call noundef ptr %265(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull %1)
  br label %267

267:                                              ; preds = %259, %262
  %268 = phi ptr [ %266, %262 ], [ %261, %259 ]
  ret ptr %268

269:                                              ; preds = %98, %67, %35
  %270 = phi ptr [ %76, %98 ], [ %45, %67 ], [ %13, %35 ]
  %271 = phi { ptr, i32 } [ %99, %98 ], [ %68, %67 ], [ %36, %35 ]
  tail call void @__cxa_free_exception(ptr %270) #11
  resume { ptr, i32 } %271
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNamedNodeMapImpl17removeNamedItemNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1560) %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %5, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !43
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !46
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = icmp eq ptr %1, null
  %13 = icmp eq ptr %2, null
  %14 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2
  %15 = xor i16 %14, -1
  br label %41

16:                                               ; preds = %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %18 = load ptr, ptr %4, align 8, !tbaa !38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 12
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %25 unwind label %39

25:                                               ; preds = %20
  %26 = icmp eq ptr %24, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %4, align 8, !tbaa !38
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %33 unwind label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %32, i64 0, i32 25
  br label %35

35:                                               ; preds = %25, %16, %33
  %36 = phi ptr [ %34, %33 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %16 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %25 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %17, i16 noundef signext 7, ptr noundef null, ptr noundef %37)
          to label %38 unwind label %39

38:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

39:                                               ; preds = %35, %27, %20
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %216

41:                                               ; preds = %11, %182
  %42 = phi i64 [ 0, %11 ], [ %184, %182 ]
  %43 = phi i1 [ false, %11 ], [ %185, %182 ]
  %44 = phi ptr [ undef, %11 ], [ %183, %182 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMNamedNodeMapImpl", ptr %0, i64 0, i32 1, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %182, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %46, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !48
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %178

53:                                               ; preds = %48
  %54 = and i64 %50, 4294967295
  br label %55

55:                                               ; preds = %53, %175
  %56 = phi i64 [ 0, %53 ], [ %176, %175 ]
  %57 = phi ptr [ %44, %53 ], [ %174, %175 ]
  %58 = load ptr, ptr %45, align 8, !tbaa !47
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeVector", ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !48
  %61 = icmp ugt i64 %60, %56
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load ptr, ptr %58, align 8, !tbaa !51
  %64 = getelementptr inbounds ptr, ptr %63, i64 %56
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  br label %66

66:                                               ; preds = %55, %62
  %67 = phi ptr [ %65, %62 ], [ null, %55 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = getelementptr inbounds ptr, ptr %68, i64 22
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %67)
  %72 = load ptr, ptr %67, align 8, !tbaa !35
  %73 = getelementptr inbounds ptr, ptr %72, i64 24
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %67)
  %76 = icmp eq ptr %71, null
  %77 = or i1 %12, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = load i16, ptr %71, align 2, !tbaa !46
  %80 = load i16, ptr %1, align 2, !tbaa !46
  %81 = icmp eq i16 %79, %80
  br i1 %81, label %90, label %172

82:                                               ; preds = %66
  br i1 %76, label %86, label %83

83:                                               ; preds = %82
  %84 = load i16, ptr %71, align 2, !tbaa !46
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %172

86:                                               ; preds = %83, %82
  br i1 %12, label %101, label %87

87:                                               ; preds = %86
  %88 = load i16, ptr %1, align 2, !tbaa !46
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %172

90:                                               ; preds = %78, %95
  %91 = phi i16 [ %98, %95 ], [ %79, %78 ]
  %92 = phi ptr [ %97, %95 ], [ %1, %78 ]
  %93 = phi ptr [ %96, %95 ], [ %71, %78 ]
  %94 = icmp eq i16 %91, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds i16, ptr %93, i64 1
  %97 = getelementptr inbounds i16, ptr %92, i64 1
  %98 = load i16, ptr %96, align 2, !tbaa !46
  %99 = load i16, ptr %97, align 2, !tbaa !46
  %100 = icmp eq i16 %98, %99
  br i1 %100, label %90, label %172, !llvm.loop !61

101:                                              ; preds = %90, %87, %86
  %102 = icmp eq ptr %75, null
  %103 = or i1 %13, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i16, ptr %2, align 2, !tbaa !46
  %106 = load i16, ptr %75, align 2, !tbaa !46
  %107 = icmp eq i16 %105, %106
  br i1 %107, label %116, label %127

108:                                              ; preds = %101
  br i1 %13, label %112, label %109

109:                                              ; preds = %108
  %110 = load i16, ptr %2, align 2, !tbaa !46
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109, %108
  br i1 %102, label %158, label %113

113:                                              ; preds = %112
  %114 = load i16, ptr %75, align 2, !tbaa !46
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %158, label %127

116:                                              ; preds = %104, %121
  %117 = phi i16 [ %124, %121 ], [ %105, %104 ]
  %118 = phi ptr [ %123, %121 ], [ %75, %104 ]
  %119 = phi ptr [ %122, %121 ], [ %2, %104 ]
  %120 = icmp eq i16 %117, 0
  br i1 %120, label %158, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds i16, ptr %119, i64 1
  %123 = getelementptr inbounds i16, ptr %118, i64 1
  %124 = load i16, ptr %122, align 2, !tbaa !46
  %125 = load i16, ptr %123, align 2, !tbaa !46
  %126 = icmp eq i16 %124, %125
  br i1 %126, label %116, label %127, !llvm.loop !61

127:                                              ; preds = %121, %104, %113, %109
  br i1 %102, label %128, label %172

128:                                              ; preds = %127
  %129 = load ptr, ptr %67, align 8, !tbaa !35
  %130 = getelementptr inbounds ptr, ptr %129, i64 2
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %67)
  %133 = icmp eq ptr %132, null
  %134 = or i1 %13, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i16, ptr %2, align 2, !tbaa !46
  %137 = load i16, ptr %132, align 2, !tbaa !46
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %147, label %172

139:                                              ; preds = %128
  br i1 %13, label %143, label %140

140:                                              ; preds = %139
  %141 = load i16, ptr %2, align 2, !tbaa !46
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %140, %139
  br i1 %133, label %158, label %144

144:                                              ; preds = %143
  %145 = load i16, ptr %132, align 2, !tbaa !46
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %158, label %172

147:                                              ; preds = %135, %152
  %148 = phi i16 [ %155, %152 ], [ %136, %135 ]
  %149 = phi ptr [ %154, %152 ], [ %132, %135 ]
  %150 = phi ptr [ %153, %152 ], [ %2, %135 ]
  %151 = icmp eq i16 %148, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds i16, ptr %150, i64 1
  %154 = getelementptr inbounds i16, ptr %149, i64 1
  %155 = load i16, ptr %153, align 2, !tbaa !46
  %156 = load i16, ptr %154, align 2, !tbaa !46
  %157 = icmp eq i16 %155, %156
  br i1 %157, label %147, label %172, !llvm.loop !61

158:                                              ; preds = %116, %147, %144, %143, %113, %112
  %159 = load ptr, ptr %45, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_713DOMNodeVector15removeElementAtEm(ptr noundef nonnull align 8 dereferenceable(24) %159, i64 noundef %56)
  %160 = load ptr, ptr %4, align 8, !tbaa !38
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = getelementptr inbounds ptr, ptr %161, i64 12
  %163 = load ptr, ptr %162, align 8
  %164 = tail call noundef ptr %163(ptr noundef nonnull align 8 dereferenceable(8) %160)
  %165 = icmp eq ptr %164, null
  %166 = getelementptr inbounds i8, ptr %164, i64 24
  %167 = select i1 %165, ptr null, ptr %166
  %168 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %67, i64 0, i32 1
  store ptr %167, ptr %168, align 8, !tbaa !52
  %169 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %67, i64 0, i32 1, i32 1
  %170 = load i16, ptr %169, align 8, !tbaa !43
  %171 = and i16 %170, %15
  store i16 %171, ptr %169, align 8, !tbaa !43
  br label %172

172:                                              ; preds = %95, %152, %78, %135, %144, %140, %87, %83, %127, %158
  %173 = phi i32 [ 1, %158 ], [ 0, %127 ], [ 7, %83 ], [ 7, %87 ], [ 0, %140 ], [ 0, %144 ], [ 0, %135 ], [ 7, %78 ], [ 0, %152 ], [ 7, %95 ]
  %174 = phi ptr [ %67, %158 ], [ %57, %127 ], [ %57, %83 ], [ %57, %87 ], [ %57, %140 ], [ %57, %144 ], [ %57, %135 ], [ %57, %78 ], [ %57, %152 ], [ %57, %95 ]
  switch i32 %173, label %178 [
    i32 0, label %175
    i32 7, label %175
  ]

175:                                              ; preds = %172, %172
  %176 = add nuw nsw i64 %56, 1
  %177 = icmp eq i64 %176, %54
  br i1 %177, label %178, label %55, !llvm.loop !70

178:                                              ; preds = %172, %175, %48
  %179 = phi i32 [ 0, %48 ], [ %173, %172 ], [ 0, %175 ]
  %180 = phi ptr [ %44, %48 ], [ %174, %175 ], [ %174, %172 ]
  %181 = icmp eq i32 %179, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178, %41
  %183 = phi ptr [ %44, %41 ], [ %180, %178 ]
  %184 = add nuw nsw i64 %42, 1
  %185 = icmp ugt i64 %42, 191
  %186 = icmp eq i64 %184, 193
  br i1 %186, label %187, label %41, !llvm.loop !71

187:                                              ; preds = %182, %178
  %188 = phi i1 [ %185, %182 ], [ %43, %178 ]
  %189 = phi ptr [ %183, %182 ], [ %180, %178 ]
  br i1 %188, label %190, label %215

190:                                              ; preds = %187
  %191 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %192 = load ptr, ptr %4, align 8, !tbaa !38
  %193 = icmp eq ptr %192, null
  br i1 %193, label %209, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %192, align 8, !tbaa !35
  %196 = getelementptr inbounds ptr, ptr %195, i64 12
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(8) %192)
          to label %199 unwind label %213

199:                                              ; preds = %194
  %200 = icmp eq ptr %198, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %199
  %202 = load ptr, ptr %4, align 8, !tbaa !38
  %203 = load ptr, ptr %202, align 8, !tbaa !35
  %204 = getelementptr inbounds ptr, ptr %203, i64 12
  %205 = load ptr, ptr %204, align 8
  %206 = invoke noundef ptr %205(ptr noundef nonnull align 8 dereferenceable(8) %202)
          to label %207 unwind label %213

207:                                              ; preds = %201
  %208 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %206, i64 0, i32 25
  br label %209

209:                                              ; preds = %199, %190, %207
  %210 = phi ptr [ %208, %207 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %190 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %199 ]
  %211 = load ptr, ptr %210, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %191, i16 noundef signext 8, ptr noundef null, ptr noundef %211)
          to label %212 unwind label %213

212:                                              ; preds = %209
  tail call void @__cxa_throw(ptr nonnull %191, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

213:                                              ; preds = %209, %201, %194
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %216

215:                                              ; preds = %187
  ret ptr %189

216:                                              ; preds = %213, %39
  %217 = phi ptr [ %191, %213 ], [ %17, %39 ]
  %218 = phi { ptr, i32 } [ %214, %213 ], [ %40, %39 ]
  tail call void @__cxa_free_exception(ptr %217) #11
  resume { ptr, i32 } %218
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

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
!38 = !{!39, !42, i64 1552}
!39 = !{!"_ZTSN11xercesc_2_719DOMNamedNodeMapImplE", !40, i64 0, !41, i64 8, !42, i64 1552}
!40 = !{!"_ZTSN11xercesc_2_715DOMNamedNodeMapE"}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"any pointer", !41, i64 0}
!43 = !{!44, !45, i64 8}
!44 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !42, i64 0, !45, i64 8}
!45 = !{!"short", !41, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!49, !50, i64 16}
!49 = !{!"_ZTSN11xercesc_2_713DOMNodeVectorE", !42, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"long", !41, i64 0}
!51 = !{!49, !42, i64 0}
!52 = !{!44, !42, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = distinct !{!57, !54, !55}
!58 = distinct !{!58, !54, !55}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = distinct !{!62, !54, !55}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = distinct !{!67, !54, !55}
!68 = distinct !{!68, !54, !55}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
