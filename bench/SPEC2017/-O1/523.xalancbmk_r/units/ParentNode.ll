; ModuleID = 'ParentNode.cpp'
source_filename = "ParentNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_710ParentNodeD0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_710ParentNodeE = dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710ParentNodeE, ptr @_ZN11xercesc_2_79ChildNodeD2Ev, ptr @_ZN11xercesc_2_710ParentNodeD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710ParentNodeE = dso_local constant [28 x i8] c"N11xercesc_2_710ParentNodeE\00", align 1
@_ZTIN11xercesc_2_79ChildNodeE = external constant ptr
@_ZTIN11xercesc_2_710ParentNodeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710ParentNodeE, ptr @_ZTIN11xercesc_2_79ChildNodeE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_710ParentNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !49
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  store i32 -1, ptr %7, align 8, !tbaa !51
  ret void
}

declare void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_710ParentNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  store i32 -1, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  store i32 -1, ptr %9, align 8, !tbaa !51
  ret void
}

declare void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(26) %10, i1 noundef zeroext true)
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %14)
  %19 = load ptr, ptr %10, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %10)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %9, !llvm.loop !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %5, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 45
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(26) %9, ptr noundef %1)
  %13 = load ptr, ptr %9, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 22
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %9)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %7, label %8, !llvm.loop !55
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(84) %0) unnamed_addr #4 align 2 !prof !34 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode9lastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) local_unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode9lastChildEPNS_9ChildNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = icmp eq i32 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 true, i1 %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, i32 0, i32 %7
  %16 = select i1 %12, ptr %14, ptr %10
  store i32 %15, ptr %2, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %5 ]
  %20 = phi i32 [ %21, %18 ], [ %15, %5 ]
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !58

25:                                               ; preds = %18
  store i32 %21, ptr %2, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %5, %25, %1
  %27 = load i32, ptr %2, align 8, !tbaa !49
  ret i32 %27
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %11, i64 0, i32 10
  %13 = load i8, ptr %12, align 4, !tbaa !59, !range !62, !noundef !63
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %1, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  br i1 %14, label %47, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %1, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 20
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %20, %41
  %27 = phi ptr [ %45, %41 ], [ %24, %20 ]
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %27)
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %31 unwind label %33

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %30, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %32 unwind label %35

32:                                               ; preds = %31
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %268 unwind label %35

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %38

35:                                               ; preds = %32, %31
  %36 = phi i1 [ false, %32 ], [ true, %31 ]
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i1 [ %36, %35 ], [ true, %33 ]
  %40 = phi { ptr, i32 } [ %37, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %39, label %263, label %266

41:                                               ; preds = %26
  %42 = load ptr, ptr %27, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 22
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(26) %27)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %26, !llvm.loop !64

47:                                               ; preds = %41, %20, %19
  %48 = load ptr, ptr %1, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 30
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %51, label %52, label %262

52:                                               ; preds = %47, %52
  %53 = load ptr, ptr %1, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 20
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %57 = load ptr, ptr %0, align 8, !tbaa !35
  %58 = getelementptr inbounds ptr, ptr %57, i64 31
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %56, ptr noundef %2)
  %61 = load ptr, ptr %1, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 30
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %64, label %52, label %262, !llvm.loop !65

65:                                               ; preds = %3
  %66 = icmp eq ptr %2, %1
  br i1 %66, label %262, label %67

67:                                               ; preds = %65
  br i1 %14, label %167, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %70 = load i16, ptr %69, align 8, !tbaa !66
  %71 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !67
  %72 = and i16 %71, %70
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %76 unwind label %79

76:                                               ; preds = %74
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %75, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %77 unwind label %81

77:                                               ; preds = %76
  invoke void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %78 unwind label %81

78:                                               ; preds = %77
  unreachable

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %84

81:                                               ; preds = %77, %76
  %82 = phi i1 [ false, %77 ], [ true, %76 ]
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i1 [ %82, %81 ], [ true, %79 ]
  %86 = phi { ptr, i32 } [ %83, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br i1 %85, label %263, label %266

87:                                               ; preds = %68
  %88 = load ptr, ptr %1, align 8, !tbaa !35
  %89 = getelementptr inbounds ptr, ptr %88, i64 26
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %92 = load ptr, ptr %10, align 8, !tbaa !38
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %107, label %94

94:                                               ; preds = %87
  %95 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %96 unwind label %99

96:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %95, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %97 unwind label %101

97:                                               ; preds = %96
  invoke void @__cxa_throw(ptr nonnull %95, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %98 unwind label %101

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %94
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %104

101:                                              ; preds = %97, %96
  %102 = phi i1 [ false, %97 ], [ true, %96 ]
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i1 [ %102, %101 ], [ true, %99 ]
  %106 = phi { ptr, i32 } [ %103, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br i1 %105, label %263, label %266

107:                                              ; preds = %87
  %108 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %108, label %122, label %109

109:                                              ; preds = %107
  %110 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %111 unwind label %114

111:                                              ; preds = %109
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %110, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %112 unwind label %116

112:                                              ; preds = %111
  invoke void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %113 unwind label %116

113:                                              ; preds = %112
  unreachable

114:                                              ; preds = %109
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %119

116:                                              ; preds = %112, %111
  %117 = phi i1 [ false, %112 ], [ true, %111 ]
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i1 [ %117, %116 ], [ true, %114 ]
  %121 = phi { ptr, i32 } [ %118, %116 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br i1 %120, label %263, label %266

122:                                              ; preds = %107
  %123 = icmp eq ptr %2, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %125, %122
  br label %145

125:                                              ; preds = %122
  %126 = load ptr, ptr %2, align 8, !tbaa !35
  %127 = getelementptr inbounds ptr, ptr %126, i64 27
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(26) %2)
  %130 = icmp eq ptr %129, %0
  br i1 %130, label %124, label %131

131:                                              ; preds = %125
  %132 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %133 unwind label %136

133:                                              ; preds = %131
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %132, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %134 unwind label %138

134:                                              ; preds = %133
  invoke void @__cxa_throw(ptr nonnull %132, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %135 unwind label %138

135:                                              ; preds = %134
  unreachable

136:                                              ; preds = %131
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %141

138:                                              ; preds = %134, %133
  %139 = phi i1 [ false, %134 ], [ true, %133 ]
  %140 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  br label %141

141:                                              ; preds = %138, %136
  %142 = phi i1 [ %139, %138 ], [ true, %136 ]
  %143 = phi { ptr, i32 } [ %140, %138 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br i1 %142, label %263, label %266

144:                                              ; preds = %145
  br i1 %147, label %167, label %154

145:                                              ; preds = %124, %145
  %146 = phi ptr [ %151, %145 ], [ %0, %124 ]
  %147 = icmp ne ptr %146, %1
  %148 = load ptr, ptr %146, align 8, !tbaa !35
  %149 = getelementptr inbounds ptr, ptr %148, i64 27
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(26) %146)
  %152 = icmp ne ptr %151, null
  %153 = and i1 %147, %152
  br i1 %153, label %145, label %144, !llvm.loop !68

154:                                              ; preds = %144
  %155 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %156 unwind label %159

156:                                              ; preds = %154
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %155, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %157 unwind label %161

157:                                              ; preds = %156
  invoke void @__cxa_throw(ptr nonnull %155, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %158 unwind label %161

158:                                              ; preds = %157
  unreachable

159:                                              ; preds = %154
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %164

161:                                              ; preds = %157, %156
  %162 = phi i1 [ false, %157 ], [ true, %156 ]
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %164

164:                                              ; preds = %161, %159
  %165 = phi i1 [ %162, %161 ], [ true, %159 ]
  %166 = phi { ptr, i32 } [ %163, %161 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br i1 %165, label %263, label %266

167:                                              ; preds = %144, %67
  %168 = load ptr, ptr %1, align 8, !tbaa !35
  %169 = getelementptr inbounds ptr, ptr %168, i64 27
  %170 = load ptr, ptr %169, align 8
  %171 = tail call noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %172 = icmp eq ptr %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = load ptr, ptr %171, align 8, !tbaa !35
  %175 = getelementptr inbounds ptr, ptr %174, i64 32
  %176 = load ptr, ptr %175, align 8
  %177 = tail call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(26) %171, ptr noundef nonnull %1)
  br label %178

178:                                              ; preds = %173, %167
  %179 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %0, ptr %179, align 8, !tbaa !69
  %180 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %181 = load i16, ptr %180, align 8, !tbaa !66
  %182 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !67
  %183 = or i16 %182, %181
  store i16 %183, ptr %180, align 8, !tbaa !66
  %184 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !48
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %178
  store ptr %1, ptr %184, align 8, !tbaa !48
  %188 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !67
  %189 = or i16 %188, %183
  store i16 %189, ptr %180, align 8, !tbaa !66
  %190 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %1, ptr %190, align 8, !tbaa !56
  br label %218

191:                                              ; preds = %178
  %192 = icmp eq ptr %2, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  %194 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %185, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !56
  %196 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %195, i64 0, i32 2
  store ptr %1, ptr %196, align 8, !tbaa !57
  %197 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %195, ptr %197, align 8, !tbaa !56
  store ptr %1, ptr %194, align 8, !tbaa !56
  br label %218

198:                                              ; preds = %191
  %199 = icmp eq ptr %185, %2
  br i1 %199, label %200, label %212

200:                                              ; preds = %198
  %201 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %185, i64 0, i32 3
  %202 = load i16, ptr %201, align 8, !tbaa !66
  %203 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !67
  %204 = xor i16 %203, -1
  %205 = and i16 %202, %204
  store i16 %205, ptr %201, align 8, !tbaa !66
  %206 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %185, ptr %206, align 8, !tbaa !57
  %207 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %185, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !56
  %209 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %208, ptr %209, align 8, !tbaa !56
  store ptr %1, ptr %207, align 8, !tbaa !56
  store ptr %1, ptr %184, align 8, !tbaa !48
  %210 = load i16, ptr %180, align 8, !tbaa !66
  %211 = or i16 %210, %203
  store i16 %211, ptr %180, align 8, !tbaa !66
  br label %218

212:                                              ; preds = %198
  %213 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %2, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !56
  %215 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  store ptr %2, ptr %215, align 8, !tbaa !57
  %216 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %214, i64 0, i32 2
  store ptr %1, ptr %216, align 8, !tbaa !57
  store ptr %1, ptr %213, align 8, !tbaa !56
  %217 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %214, ptr %217, align 8, !tbaa !56
  br label %218

218:                                              ; preds = %193, %212, %200, %187
  %219 = load ptr, ptr %0, align 8, !tbaa !35
  %220 = getelementptr inbounds ptr, ptr %219, i64 14
  %221 = load ptr, ptr %220, align 8
  tail call void %221(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %222 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %223 = load i32, ptr %222, align 8, !tbaa !49
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %227, label %225

225:                                              ; preds = %218
  %226 = add nuw nsw i32 %223, 1
  store i32 %226, ptr %222, align 8, !tbaa !49
  br label %227

227:                                              ; preds = %225, %218
  %228 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %229 = load i32, ptr %228, align 8, !tbaa !51
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %237, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !50
  %234 = icmp eq ptr %233, %2
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store ptr %1, ptr %232, align 8, !tbaa !50
  br label %237

236:                                              ; preds = %231
  store i32 -1, ptr %228, align 8, !tbaa !51
  br label %237

237:                                              ; preds = %235, %236, %227
  %238 = load ptr, ptr %0, align 8, !tbaa !35
  %239 = getelementptr inbounds ptr, ptr %238, i64 26
  %240 = load ptr, ptr %239, align 8
  %241 = tail call noundef ptr %240(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %242 = icmp eq ptr %241, null
  br i1 %242, label %262, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %0, align 8, !tbaa !35
  %245 = getelementptr inbounds ptr, ptr %244, i64 26
  %246 = load ptr, ptr %245, align 8
  %247 = tail call noundef ptr %246(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %248 = load ptr, ptr %247, align 8, !tbaa !35
  %249 = getelementptr inbounds ptr, ptr %248, i64 65
  %250 = load ptr, ptr %249, align 8
  %251 = tail call noundef ptr %250(ptr noundef nonnull align 8 dereferenceable(168) %247)
  %252 = icmp eq ptr %251, null
  br i1 %252, label %262, label %253

253:                                              ; preds = %243
  %254 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %251, i64 0, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !70
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %253, %257
  %258 = phi i32 [ %260, %257 ], [ 0, %253 ]
  %259 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %251, i32 noundef %258)
  tail call void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %259, ptr noundef nonnull %1)
  %260 = add nuw i32 %258, 1
  %261 = icmp eq i32 %260, %255
  br i1 %261, label %262, label %257, !llvm.loop !72

262:                                              ; preds = %257, %52, %253, %47, %237, %243, %65
  ret ptr %1

263:                                              ; preds = %164, %141, %119, %104, %84, %38
  %264 = phi ptr [ %30, %38 ], [ %75, %84 ], [ %95, %104 ], [ %110, %119 ], [ %132, %141 ], [ %155, %164 ]
  %265 = phi { ptr, i32 } [ %40, %38 ], [ %86, %84 ], [ %106, %104 ], [ %121, %119 ], [ %143, %141 ], [ %166, %164 ]
  call void @__cxa_free_exception(ptr %264) #13
  br label %266

266:                                              ; preds = %263, %164, %38, %141, %119, %104, %84
  %267 = phi { ptr, i32 } [ %86, %84 ], [ %106, %104 ], [ %143, %141 ], [ %121, %119 ], [ %40, %38 ], [ %166, %164 ], [ %265, %263 ]
  resume { ptr, i32 } %267

268:                                              ; preds = %32
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  ret ptr %18
}

declare void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = icmp slt i32 %4, %1
  br i1 %11, label %12, label %27

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8, !tbaa !51
  %14 = load ptr, ptr %7, align 8
  %15 = icmp sge i32 %13, %1
  %16 = icmp eq ptr %14, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %64, label %18

18:                                               ; preds = %12, %18
  %19 = phi i32 [ %21, %18 ], [ %13, %12 ]
  %20 = phi ptr [ %23, %18 ], [ %14, %12 ]
  %21 = add nsw i32 %19, 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = icmp sge i32 %21, %1
  %25 = icmp eq ptr %23, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %63, label %18, !llvm.loop !76

27:                                               ; preds = %10
  %28 = icmp sgt i32 %4, %1
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  %30 = load i32, ptr %3, align 8, !tbaa !51
  %31 = icmp sle i32 %30, %1
  %32 = load ptr, ptr %7, align 8
  %33 = icmp eq ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %64, label %35

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %42, %35 ], [ %32, %29 ]
  %37 = phi i32 [ %43, %35 ], [ %30, %29 ]
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %3, align 8, !tbaa !51
  %39 = load ptr, ptr %36, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 28
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(48) %36)
  store ptr %42, ptr %7, align 8, !tbaa !50
  %43 = load i32, ptr %3, align 8, !tbaa !51
  %44 = icmp sle i32 %43, %1
  %45 = icmp eq ptr %42, null
  %46 = or i1 %44, %45
  br i1 %46, label %64, label %35, !llvm.loop !77

47:                                               ; preds = %6, %2
  %48 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !50
  %51 = icmp sgt i32 %1, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47, %56
  %53 = phi i32 [ %59, %56 ], [ 0, %47 ]
  %54 = phi ptr [ %58, %56 ], [ %49, %47 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  store ptr %58, ptr %50, align 8, !tbaa !50
  %59 = add nuw nsw i32 %53, 1
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %61, label %52, !llvm.loop !78

61:                                               ; preds = %52, %56, %47
  %62 = phi i32 [ 0, %47 ], [ %53, %52 ], [ %1, %56 ]
  store i32 %62, ptr %3, align 8, !tbaa !51
  br label %64

63:                                               ; preds = %18
  store i32 %21, ptr %3, align 8, !tbaa !51
  store ptr %23, ptr %7, align 8, !tbaa !50
  br label %64

64:                                               ; preds = %35, %29, %12, %63, %61, %27
  %65 = phi ptr [ %7, %27 ], [ %50, %61 ], [ %7, %63 ], [ %7, %12 ], [ %7, %29 ], [ %7, %35 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  ret ptr %66
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef returned %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 10
  %8 = load i8, ptr %7, align 4, !tbaa !59, !range !62, !noundef !63
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !66
  %13 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !67
  %14 = and i16 %13, %12
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %18 unwind label %20

18:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %17, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %22

19:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %147 unwind label %22

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %19, %18
  %23 = phi i1 [ false, %19 ], [ true, %18 ]
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i1 [ %23, %22 ], [ true, %20 ]
  %27 = phi { ptr, i32 } [ %24, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %26, label %142, label %145

28:                                               ; preds = %10
  %29 = icmp eq ptr %1, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 27
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %49, label %36

36:                                               ; preds = %30, %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %37, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i1 [ %44, %43 ], [ true, %41 ]
  %48 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %47, label %142, label %145

49:                                               ; preds = %30, %2
  %50 = load ptr, ptr %0, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 26
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %0, align 8, !tbaa !35
  %57 = getelementptr inbounds ptr, ptr %56, i64 26
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = getelementptr inbounds ptr, ptr %60, i64 65
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(168) %59)
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !70
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65, %75
  %70 = phi i32 [ %76, %75 ], [ 0, %65 ]
  %71 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %63, i32 noundef %70)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %63, i32 noundef %70)
  tail call void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef %1)
  br label %75

75:                                               ; preds = %69, %73
  %76 = add nuw i32 %70, 1
  %77 = icmp eq i32 %76, %67
  br i1 %77, label %78, label %69, !llvm.loop !79

78:                                               ; preds = %75, %65, %55, %49
  %79 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !49
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = add nsw i32 %80, -1
  store i32 %83, ptr %79, align 8, !tbaa !49
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !51
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = icmp eq ptr %90, %1
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = add nsw i32 %86, -1
  store i32 %93, ptr %85, align 8, !tbaa !51
  %94 = load ptr, ptr %1, align 8, !tbaa !35
  %95 = getelementptr inbounds ptr, ptr %94, i64 28
  %96 = load ptr, ptr %95, align 8
  %97 = tail call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(48) %1)
  store ptr %97, ptr %89, align 8, !tbaa !50
  br label %99

98:                                               ; preds = %88
  store i32 -1, ptr %85, align 8, !tbaa !51
  br label %99

99:                                               ; preds = %92, %98, %84
  %100 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !48
  %102 = icmp eq ptr %101, %1
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %105 = load i16, ptr %104, align 8, !tbaa !66
  %106 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !67
  %107 = xor i16 %106, -1
  %108 = and i16 %105, %107
  store i16 %108, ptr %104, align 8, !tbaa !66
  %109 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !57
  store ptr %110, ptr %100, align 8, !tbaa !48
  %111 = icmp eq ptr %110, null
  br i1 %111, label %130, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %110, i64 0, i32 3
  %114 = load i16, ptr %113, align 8, !tbaa !66
  %115 = or i16 %114, %106
  store i16 %115, ptr %113, align 8, !tbaa !66
  %116 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !56
  br label %126

118:                                              ; preds = %99
  %119 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !56
  %121 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !57
  %123 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %120, i64 0, i32 2
  store ptr %122, ptr %123, align 8, !tbaa !57
  %124 = icmp eq ptr %122, null
  %125 = select i1 %124, ptr %101, ptr %122
  br label %126

126:                                              ; preds = %118, %112
  %127 = phi ptr [ %110, %112 ], [ %125, %118 ]
  %128 = phi ptr [ %117, %112 ], [ %120, %118 ]
  %129 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %127, i64 0, i32 1
  store ptr %128, ptr %129, align 8, !tbaa !56
  br label %130

130:                                              ; preds = %126, %103
  %131 = load ptr, ptr %5, align 8, !tbaa !38
  %132 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !69
  %133 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %134 = load i16, ptr %133, align 8, !tbaa !66
  %135 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !67
  %136 = xor i16 %135, -1
  %137 = and i16 %134, %136
  store i16 %137, ptr %133, align 8, !tbaa !66
  %138 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  %139 = load ptr, ptr %0, align 8, !tbaa !35
  %140 = getelementptr inbounds ptr, ptr %139, i64 14
  %141 = load ptr, ptr %140, align 8
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(26) %0)
  ret ptr %1

142:                                              ; preds = %46, %25
  %143 = phi ptr [ %17, %25 ], [ %37, %46 ]
  %144 = phi { ptr, i32 } [ %27, %25 ], [ %48, %46 ]
  call void @__cxa_free_exception(ptr %143) #13
  br label %145

145:                                              ; preds = %142, %46, %25
  %146 = phi { ptr, i32 } [ %27, %25 ], [ %48, %46 ], [ %144, %142 ]
  resume { ptr, i32 } %146

147:                                              ; preds = %19
  unreachable
}

declare void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 31
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %2)
  br label %14

14:                                               ; preds = %9, %3
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %2, i1 %6, i1 false
  br i1 %7, label %8, label %22

8:                                                ; preds = %3, %18
  %9 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(26) %9)
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 35
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(26) %9, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %18

18:                                               ; preds = %8, %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !80

22:                                               ; preds = %18, %3
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %55
  %6 = phi ptr [ %56, %55 ], [ %3, %1 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(26) %6)
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(26) %6)
  br i1 %19, label %46, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(26) %8)
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load ptr, ptr %8, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(26) %8)
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %8, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 49
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr %33(ptr noundef nonnull align 8 dereferenceable(56) %8)
  %35 = load ptr, ptr %6, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 47
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %34)
  %38 = load ptr, ptr %0, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 32
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %8)
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %8, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %8)
  br label %55

46:                                               ; preds = %25, %20, %15, %10, %5
  %47 = load ptr, ptr %6, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 11
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(26) %6)
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr %6, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 38
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %55

55:                                               ; preds = %30, %45, %51, %46
  %56 = phi ptr [ %8, %51 ], [ %8, %46 ], [ %6, %45 ], [ %6, %30 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !82

58:                                               ; preds = %55, %1
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710ParentNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  tail call void @llvm.trap() #15
  unreachable
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

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
!38 = !{!39, !46, i64 48}
!39 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !40, i64 0, !46, i64 48, !46, i64 56, !44, i64 64, !46, i64 72, !44, i64 80}
!40 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !41, i64 0, !46, i64 32, !46, i64 40}
!41 = !{!"_ZTSN11xercesc_2_78NodeImplE", !42, i64 0, !46, i64 16, !47, i64 24}
!42 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !43, i64 0}
!43 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !44, i64 8}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !37, i64 0}
!46 = !{!"any pointer", !45, i64 0}
!47 = !{!"short", !45, i64 0}
!48 = !{!39, !46, i64 56}
!49 = !{!39, !44, i64 64}
!50 = !{!39, !46, i64 72}
!51 = !{!39, !44, i64 80}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!40, !46, i64 32}
!57 = !{!40, !46, i64 40}
!58 = distinct !{!58, !53, !54}
!59 = !{!60, !61, i64 156}
!60 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !39, i64 0, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !44, i64 152, !61, i64 156, !46, i64 160}
!61 = !{!"bool", !45, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = distinct !{!64, !53, !54}
!65 = distinct !{!65, !53, !54}
!66 = !{!41, !47, i64 24}
!67 = !{!47, !47, i64 0}
!68 = distinct !{!68, !53, !54}
!69 = !{!41, !46, i64 16}
!70 = !{!71, !44, i64 12}
!71 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !61, i64 8, !44, i64 12, !44, i64 16, !46, i64 24, !46, i64 32}
!72 = distinct !{!72, !53, !54}
!73 = !{!71, !46, i64 32}
!74 = !{!71, !46, i64 24}
!75 = !{!46, !46, i64 0}
!76 = distinct !{!76, !53, !54}
!77 = distinct !{!77, !53, !54}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
!80 = distinct !{!80, !53, !54}
!81 = !{!43, !44, i64 8}
!82 = distinct !{!82, !53, !54}
!83 = !{!84, !46, i64 40}
!84 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !85, i64 8, !46, i64 16, !44, i64 24, !46, i64 32, !46, i64 40}
!85 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
