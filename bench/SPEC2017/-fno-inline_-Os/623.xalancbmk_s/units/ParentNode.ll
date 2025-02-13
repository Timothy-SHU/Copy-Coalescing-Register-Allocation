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
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_710ParentNodeD0Ev = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

$_ZN11xercesc_2_78NodeImpl7isOwnedEb = comdat any

$_ZN11xercesc_2_78NodeImpl12isFirstChildEb = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_710ParentNodeE = dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710ParentNodeE, ptr @_ZN11xercesc_2_79ChildNodeD2Ev, ptr @_ZN11xercesc_2_710ParentNodeD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710ParentNodeE = dso_local constant [28 x i8] c"N11xercesc_2_710ParentNodeE\00", align 1
@_ZTIN11xercesc_2_79ChildNodeE = external constant ptr
@_ZTIN11xercesc_2_710ParentNodeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710ParentNodeE, ptr @_ZTIN11xercesc_2_79ChildNodeE }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710ParentNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !36
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = icmp slt i32 %4, %1
  br i1 %11, label %12, label %21

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %15, %12 ], [ %4, %10 ]
  %14 = phi ptr [ %17, %12 ], [ %8, %10 ]
  %15 = add nsw i32 %13, 1
  %16 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp sge i32 %15, %1
  %19 = icmp eq ptr %17, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %51, label %12, !llvm.loop !48

21:                                               ; preds = %10
  %22 = icmp sgt i32 %4, %1
  br i1 %22, label %23, label %52

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %30, %23 ], [ %8, %21 ]
  %25 = phi i32 [ %31, %23 ], [ %4, %21 ]
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %3, align 8, !tbaa !36
  %27 = load ptr, ptr %24, align 8, !tbaa !50
  %28 = getelementptr inbounds ptr, ptr %27, i64 28
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(48) %24) #13
  store ptr %30, ptr %7, align 8, !tbaa !52
  %31 = load i32, ptr %3, align 8, !tbaa !36
  %32 = icmp sle i32 %31, %1
  %33 = icmp eq ptr %30, null
  %34 = or i1 %32, %33
  br i1 %34, label %52, label %23, !llvm.loop !53

35:                                               ; preds = %6, %2
  %36 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr %37, ptr %38, align 8, !tbaa !52
  %39 = icmp sgt i32 %1, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35, %44
  %41 = phi i32 [ %47, %44 ], [ 0, %35 ]
  %42 = phi ptr [ %46, %44 ], [ %37, %35 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  store ptr %46, ptr %38, align 8, !tbaa !52
  %47 = add nuw nsw i32 %41, 1
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %40, !llvm.loop !55

49:                                               ; preds = %40, %44, %35
  %50 = phi i32 [ 0, %35 ], [ %1, %44 ], [ %41, %40 ]
  store i32 %50, ptr %3, align 8, !tbaa !36
  br label %52

51:                                               ; preds = %12
  store i32 %15, ptr %3, align 8, !tbaa !36
  store ptr %17, ptr %7, align 8, !tbaa !52
  br label %52

52:                                               ; preds = %23, %51, %49, %21
  %53 = phi ptr [ %7, %21 ], [ %38, %49 ], [ %7, %51 ], [ %7, %23 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  ret ptr %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #4 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp eq i32 %7, -1
  %9 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 true, i1 %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, i32 0, i32 %7
  %16 = select i1 %12, ptr %14, ptr %10
  store i32 %15, ptr %2, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %5 ]
  %20 = phi i32 [ %21, %18 ], [ %15, %5 ]
  %21 = add nsw i32 %20, 1
  %22 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !57

25:                                               ; preds = %18
  store i32 %21, ptr %2, align 8, !tbaa !56
  br label %26

26:                                               ; preds = %5, %25, %1
  %27 = phi i32 [ %15, %5 ], [ %21, %25 ], [ %3, %1 ]
  ret i32 %27
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(84) %0) unnamed_addr #5 align 2 !prof !35 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #7 align 2 !prof !35 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_710ParentNode9lastChildEv(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %11) #13
  %13 = load ptr, ptr %1, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef zeroext i1 %15(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  br i1 %16, label %17, label %63

17:                                               ; preds = %3
  br i1 %12, label %18, label %45

18:                                               ; preds = %17
  %19 = load ptr, ptr %1, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %18, %39
  %25 = phi ptr [ %43, %39 ], [ %22, %18 ]
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %25) #13
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #13
          to label %29 unwind label %33

29:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %28, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %32 unwind label %30

30:                                               ; preds = %29
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %37

32:                                               ; preds = %29
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %35

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %37

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %238

37:                                               ; preds = %30, %33
  %38 = phi { ptr, i32 } [ %34, %33 ], [ %31, %30 ]
  call void @__cxa_free_exception(ptr %28) #14
  br label %238

39:                                               ; preds = %24
  %40 = load ptr, ptr %25, align 8, !tbaa !50
  %41 = getelementptr inbounds ptr, ptr %40, i64 22
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(26) %25) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %24, !llvm.loop !59

45:                                               ; preds = %39, %18, %17
  %46 = load ptr, ptr %1, align 8, !tbaa !50
  %47 = getelementptr inbounds ptr, ptr %46, i64 30
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef zeroext i1 %48(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  br i1 %49, label %50, label %237

50:                                               ; preds = %45, %50
  %51 = load ptr, ptr %1, align 8, !tbaa !50
  %52 = getelementptr inbounds ptr, ptr %51, i64 20
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  %55 = load ptr, ptr %0, align 8, !tbaa !50
  %56 = getelementptr inbounds ptr, ptr %55, i64 31
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %54, ptr noundef %2) #13
  %59 = load ptr, ptr %1, align 8, !tbaa !50
  %60 = getelementptr inbounds ptr, ptr %59, i64 30
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  br i1 %62, label %50, label %237, !llvm.loop !60

63:                                               ; preds = %3
  %64 = icmp eq ptr %2, %1
  br i1 %64, label %237, label %65

65:                                               ; preds = %63
  br i1 %12, label %66, label %156

66:                                               ; preds = %65
  %67 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #13
  br i1 %67, label %68, label %80

68:                                               ; preds = %66
  %69 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #13
          to label %70 unwind label %74

70:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %69, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
          to label %73 unwind label %71

71:                                               ; preds = %70
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %78

73:                                               ; preds = %70
  invoke void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %76

74:                                               ; preds = %68
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %78

76:                                               ; preds = %73
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %238

78:                                               ; preds = %71, %74
  %79 = phi { ptr, i32 } [ %75, %74 ], [ %72, %71 ]
  call void @__cxa_free_exception(ptr %69) #14
  br label %238

80:                                               ; preds = %66
  %81 = load ptr, ptr %1, align 8, !tbaa !50
  %82 = getelementptr inbounds ptr, ptr %81, i64 26
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  %85 = load ptr, ptr %10, align 8, !tbaa !58
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %80
  %88 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #13
          to label %89 unwind label %93

89:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %88, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
          to label %92 unwind label %90

90:                                               ; preds = %89
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %97

92:                                               ; preds = %89
  invoke void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %95

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %97

95:                                               ; preds = %92
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %238

97:                                               ; preds = %90, %93
  %98 = phi { ptr, i32 } [ %94, %93 ], [ %91, %90 ]
  call void @__cxa_free_exception(ptr %88) #14
  br label %238

99:                                               ; preds = %80
  %100 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef nonnull %0, ptr noundef nonnull %1) #13
  br i1 %100, label %113, label %101

101:                                              ; preds = %99
  %102 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #13
          to label %103 unwind label %107

103:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %102, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
          to label %106 unwind label %104

104:                                              ; preds = %103
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %111

106:                                              ; preds = %103
  invoke void @__cxa_throw(ptr nonnull %102, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %109

107:                                              ; preds = %101
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %111

109:                                              ; preds = %106
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %238

111:                                              ; preds = %104, %107
  %112 = phi { ptr, i32 } [ %108, %107 ], [ %105, %104 ]
  call void @__cxa_free_exception(ptr %102) #14
  br label %238

113:                                              ; preds = %99
  %114 = icmp eq ptr %2, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %116, %113
  br label %135

116:                                              ; preds = %113
  %117 = load ptr, ptr %2, align 8, !tbaa !50
  %118 = getelementptr inbounds ptr, ptr %117, i64 27
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(26) %2) #13
  %121 = icmp eq ptr %120, %0
  br i1 %121, label %115, label %122

122:                                              ; preds = %116
  %123 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #13
          to label %124 unwind label %128

124:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %123, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %127 unwind label %125

125:                                              ; preds = %124
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %132

127:                                              ; preds = %124
  invoke void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %130

128:                                              ; preds = %122
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %132

130:                                              ; preds = %127
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %238

132:                                              ; preds = %125, %128
  %133 = phi { ptr, i32 } [ %129, %128 ], [ %126, %125 ]
  call void @__cxa_free_exception(ptr %123) #14
  br label %238

134:                                              ; preds = %135
  br i1 %137, label %156, label %144

135:                                              ; preds = %115, %135
  %136 = phi ptr [ %141, %135 ], [ %0, %115 ]
  %137 = icmp ne ptr %136, %1
  %138 = load ptr, ptr %136, align 8, !tbaa !50
  %139 = getelementptr inbounds ptr, ptr %138, i64 27
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(26) %136) #13
  %142 = icmp ne ptr %141, null
  %143 = and i1 %137, %142
  br i1 %143, label %135, label %134, !llvm.loop !61

144:                                              ; preds = %134
  %145 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #13
          to label %146 unwind label %150

146:                                              ; preds = %144
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %145, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %9) #13
          to label %149 unwind label %147

147:                                              ; preds = %146
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %154

149:                                              ; preds = %146
  invoke void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %240 unwind label %152

150:                                              ; preds = %144
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %154

152:                                              ; preds = %149
  %153 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %238

154:                                              ; preds = %147, %150
  %155 = phi { ptr, i32 } [ %151, %150 ], [ %148, %147 ]
  call void @__cxa_free_exception(ptr %145) #14
  br label %238

156:                                              ; preds = %134, %65
  %157 = load ptr, ptr %1, align 8, !tbaa !50
  %158 = getelementptr inbounds ptr, ptr %157, i64 27
  %159 = load ptr, ptr %158, align 8
  %160 = tail call noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %160, align 8, !tbaa !50
  %164 = getelementptr inbounds ptr, ptr %163, i64 32
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(26) %160, ptr noundef nonnull %1) #13
  br label %167

167:                                              ; preds = %162, %156
  %168 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %0, ptr %168, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #13
  %169 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !54
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  store ptr %1, ptr %169, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #13
  %173 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %1, ptr %173, align 8, !tbaa !63
  br label %194

174:                                              ; preds = %167
  %175 = icmp eq ptr %2, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %170, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !63
  %179 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %178, i64 0, i32 2
  store ptr %1, ptr %179, align 8, !tbaa !47
  %180 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %178, ptr %180, align 8, !tbaa !63
  store ptr %1, ptr %177, align 8, !tbaa !63
  br label %194

181:                                              ; preds = %174
  %182 = icmp eq ptr %170, %2
  %183 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  br i1 %182, label %184, label %189

184:                                              ; preds = %181
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %2, i1 noundef zeroext false) #13
  %185 = load ptr, ptr %169, align 8, !tbaa !54
  store ptr %185, ptr %183, align 8, !tbaa !47
  %186 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  %188 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %187, ptr %188, align 8, !tbaa !63
  store ptr %1, ptr %186, align 8, !tbaa !63
  store ptr %1, ptr %169, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #13
  br label %194

189:                                              ; preds = %181
  %190 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %2, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !63
  store ptr %2, ptr %183, align 8, !tbaa !47
  %192 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %191, i64 0, i32 2
  store ptr %1, ptr %192, align 8, !tbaa !47
  store ptr %1, ptr %190, align 8, !tbaa !63
  %193 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  store ptr %191, ptr %193, align 8, !tbaa !63
  br label %194

194:                                              ; preds = %176, %189, %184, %172
  %195 = load ptr, ptr %0, align 8, !tbaa !50
  %196 = getelementptr inbounds ptr, ptr %195, i64 14
  %197 = load ptr, ptr %196, align 8
  tail call void %197(ptr noundef nonnull align 8 dereferenceable(26) %0) #13
  %198 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %199 = load i32, ptr %198, align 8, !tbaa !56
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %203, label %201

201:                                              ; preds = %194
  %202 = add nuw nsw i32 %199, 1
  store i32 %202, ptr %198, align 8, !tbaa !56
  br label %203

203:                                              ; preds = %201, %194
  %204 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %205 = load i32, ptr %204, align 8, !tbaa !36
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %213, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !52
  %210 = icmp eq ptr %209, %2
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store ptr %1, ptr %208, align 8, !tbaa !52
  br label %213

212:                                              ; preds = %207
  store i32 -1, ptr %204, align 8, !tbaa !36
  br label %213

213:                                              ; preds = %211, %212, %203
  %214 = load ptr, ptr %0, align 8, !tbaa !50
  %215 = getelementptr inbounds ptr, ptr %214, i64 26
  %216 = load ptr, ptr %215, align 8
  %217 = tail call noundef ptr %216(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  %218 = icmp eq ptr %217, null
  br i1 %218, label %237, label %219

219:                                              ; preds = %213
  %220 = load ptr, ptr %0, align 8, !tbaa !50
  %221 = getelementptr inbounds ptr, ptr %220, i64 26
  %222 = load ptr, ptr %221, align 8
  %223 = tail call noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  %224 = load ptr, ptr %223, align 8, !tbaa !50
  %225 = getelementptr inbounds ptr, ptr %224, i64 65
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(168) %223) #13
  %228 = icmp eq ptr %227, null
  br i1 %228, label %237, label %229

229:                                              ; preds = %219
  %230 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %227) #13
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %229, %232
  %233 = phi i32 [ %235, %232 ], [ 0, %229 ]
  %234 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %227, i32 noundef %233) #13
  tail call void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %234, ptr noundef nonnull %1) #13
  %235 = add nuw i32 %233, 1
  %236 = icmp eq i32 %235, %230
  br i1 %236, label %237, label %232, !llvm.loop !64

237:                                              ; preds = %232, %50, %229, %45, %213, %219, %63
  ret ptr %1

238:                                              ; preds = %152, %130, %109, %95, %76, %35, %154, %37, %132, %111, %97, %78
  %239 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ], [ %98, %97 ], [ %96, %95 ], [ %133, %132 ], [ %131, %130 ], [ %112, %111 ], [ %110, %109 ], [ %38, %37 ], [ %36, %35 ], [ %155, %154 ], [ %153, %152 ]
  resume { ptr, i32 } %239

240:                                              ; preds = %149, %127, %106, %92, %73, %32
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef returned %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #13
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #13
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #13
          to label %12 unwind label %16

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
          to label %15 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %20

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %124 unwind label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %122

20:                                               ; preds = %13, %16
  %21 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  call void @__cxa_free_exception(ptr %11) #14
  br label %122

22:                                               ; preds = %8
  %23 = icmp eq ptr %1, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %1, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 27
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24, %22
  %31 = tail call ptr @__cxa_allocate_exception(i64 24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #13
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %31, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %124 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %122

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #14
  br label %122

42:                                               ; preds = %24, %2
  %43 = load ptr, ptr %0, align 8, !tbaa !50
  %44 = getelementptr inbounds ptr, ptr %43, i64 26
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %0, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 26
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = getelementptr inbounds ptr, ptr %53, i64 65
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(168) %52) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %48
  %59 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %56) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58, %67
  %62 = phi i32 [ %68, %67 ], [ 0, %58 ]
  %63 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %62) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %62) #13
  tail call void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef %1) #13
  br label %67

67:                                               ; preds = %61, %65
  %68 = add nuw i32 %62, 1
  %69 = icmp eq i32 %68, %59
  br i1 %69, label %70, label %61, !llvm.loop !65

70:                                               ; preds = %67, %48, %58, %42
  %71 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !56
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = add nsw i32 %72, -1
  store i32 %75, ptr %71, align 8, !tbaa !56
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !36
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = add nsw i32 %78, -1
  store i32 %85, ptr %77, align 8, !tbaa !36
  %86 = load ptr, ptr %1, align 8, !tbaa !50
  %87 = getelementptr inbounds ptr, ptr %86, i64 28
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr %89, ptr %81, align 8, !tbaa !52
  br label %91

90:                                               ; preds = %80
  store i32 -1, ptr %77, align 8, !tbaa !36
  br label %91

91:                                               ; preds = %84, %90, %76
  %92 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext false) #13
  %96 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  store ptr %97, ptr %92, align 8, !tbaa !54
  %98 = icmp eq ptr %97, null
  br i1 %98, label %115, label %99

99:                                               ; preds = %95
  tail call void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %97, i1 noundef zeroext true) #13
  %100 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !63
  %102 = load ptr, ptr %92, align 8, !tbaa !54
  br label %111

103:                                              ; preds = %91
  %104 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !63
  %106 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !47
  %108 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %105, i64 0, i32 2
  store ptr %107, ptr %108, align 8, !tbaa !47
  %109 = icmp eq ptr %107, null
  %110 = select i1 %109, ptr %93, ptr %107
  br label %111

111:                                              ; preds = %103, %99
  %112 = phi ptr [ %102, %99 ], [ %110, %103 ]
  %113 = phi ptr [ %101, %99 ], [ %105, %103 ]
  %114 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %112, i64 0, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !63
  br label %115

115:                                              ; preds = %111, %95
  %116 = load ptr, ptr %5, align 8, !tbaa !58
  %117 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext false) #13
  %118 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %119 = load ptr, ptr %0, align 8, !tbaa !50
  %120 = getelementptr inbounds ptr, ptr %119, i64 14
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(26) %0) #13
  ret ptr %1

122:                                              ; preds = %38, %18, %40, %20
  %123 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ], [ %41, %40 ], [ %39, %38 ]
  resume { ptr, i32 } %123

124:                                              ; preds = %35, %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #3 align 2 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 31
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef %2) #13
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %2) #13
  br label %14

14:                                               ; preds = %9, %3
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %2, i1 %6, i1 false
  br i1 %7, label %8, label %22

8:                                                ; preds = %3, %18
  %9 = phi ptr [ %20, %18 ], [ %5, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(26) %9) #13
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 8, !tbaa !50
  %16 = getelementptr inbounds ptr, ptr %15, i64 35
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(26) %9, i1 noundef zeroext %1, i1 noundef zeroext true) #13
  br label %18

18:                                               ; preds = %8, %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !67

22:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %55
  %6 = phi ptr [ %56, %55 ], [ %3, %1 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 13
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(26) %6) #13
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(26) %6) #13
  br i1 %19, label %46, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(26) %8) #13
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load ptr, ptr %8, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(26) %8) #13
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %8, align 8, !tbaa !50
  %32 = getelementptr inbounds ptr, ptr %31, i64 49
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr %33(ptr noundef nonnull align 8 dereferenceable(56) %8) #13
  %35 = load ptr, ptr %6, align 8, !tbaa !50
  %36 = getelementptr inbounds ptr, ptr %35, i64 47
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %34) #13
  %38 = load ptr, ptr %0, align 8, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %38, i64 32
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %8) #13
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %8, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !68
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %30
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %8) #13
  br label %55

46:                                               ; preds = %25, %20, %15, %10, %5
  %47 = load ptr, ptr %6, align 8, !tbaa !50
  %48 = getelementptr inbounds ptr, ptr %47, i64 11
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(26) %6) #13
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr %6, align 8, !tbaa !50
  %53 = getelementptr inbounds ptr, ptr %52, i64 38
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(26) %6) #13
  br label %55

55:                                               ; preds = %30, %45, %51, %46
  %56 = phi ptr [ %8, %51 ], [ %8, %46 ], [ %6, %45 ], [ %6, %30 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !69

58:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %5, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 45
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(26) %9, ptr noundef %1) #13
  %13 = load ptr, ptr %9, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 22
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %9) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %7, label %8, !llvm.loop !70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) unnamed_addr #6 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #13
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_710ParentNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr null, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  store i32 -1, ptr %7, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) unnamed_addr #3 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_710ParentNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 3
  store i32 -1, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 6
  store i32 -1, ptr %9, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 20
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(26) %10, i1 noundef zeroext true) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !50
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %14) #13
  %19 = load ptr, ptr %10, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 22
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %10) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %9, !llvm.loop !71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710ParentNode9lastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0) local_unnamed_addr #7 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710ParentNode9lastChildEPNS_9ChildNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !72, !range !75, !noundef !76
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !78
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !78
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl12isFirstChildEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE, align 2, !tbaa !78
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !79
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl26updateRangeForInsertedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImpl25updateRangeForDeletedNodeEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !42, i64 80}
!37 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !38, i64 0, !45, i64 48, !45, i64 56, !42, i64 64, !45, i64 72, !42, i64 80}
!38 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !39, i64 0, !45, i64 32, !45, i64 40}
!39 = !{!"_ZTSN11xercesc_2_78NodeImplE", !40, i64 0, !45, i64 16, !46, i64 24}
!40 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !42, i64 8}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"any pointer", !43, i64 0}
!46 = !{!"short", !43, i64 0}
!47 = !{!38, !45, i64 40}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !44, i64 0}
!52 = !{!37, !45, i64 72}
!53 = distinct !{!53, !49}
!54 = !{!37, !45, i64 56}
!55 = distinct !{!55, !49}
!56 = !{!37, !42, i64 64}
!57 = distinct !{!57, !49}
!58 = !{!37, !45, i64 48}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!39, !45, i64 16}
!63 = !{!38, !45, i64 32}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = !{!45, !45, i64 0}
!67 = distinct !{!67, !49}
!68 = !{!41, !42, i64 8}
!69 = distinct !{!69, !49}
!70 = distinct !{!70, !49}
!71 = distinct !{!71, !49}
!72 = !{!73, !74, i64 156}
!73 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !37, i64 0, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !42, i64 152, !74, i64 156, !45, i64 160}
!74 = !{!"bool", !43, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!39, !46, i64 24}
!78 = !{!46, !46, i64 0}
!79 = !{!80, !42, i64 12}
!80 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !74, i64 8, !42, i64 12, !42, i64 16, !45, i64 24, !45, i64 32}
!81 = !{!80, !45, i64 32}
!82 = !{!80, !45, i64 24}
!83 = !{!84, !45, i64 40}
!84 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !85, i64 8, !45, i64 16, !42, i64 24, !45, i64 32, !45, i64 40}
!85 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
