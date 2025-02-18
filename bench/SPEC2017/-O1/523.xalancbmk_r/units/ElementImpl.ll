; ModuleID = 'ElementImpl.cpp'
source_filename = "ElementImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::ElementImpl" = type { %"class.xercesc_2_7::ParentNode.base", %"class.xercesc_2_7::DOMString", ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

@_ZN11xercesc_2_7L18emptyStringCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_711ElementImplE = dso_local unnamed_addr constant { [81 x ptr] } { [81 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ElementImplE, ptr @_ZN11xercesc_2_711ElementImplD2Ev, ptr @_ZN11xercesc_2_711ElementImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_711ElementImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_711ElementImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_711ElementImpl11getNodeNameEv, ptr @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl13hasAttributesEv, ptr @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv, ptr @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl10getTagNameEv, ptr @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv, ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj, ptr @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv, ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb, ptr @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv, ptr @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN11xercesc_2_7L12gEmptyStringE = internal global ptr null, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711ElementImplE = dso_local constant [29 x i8] c"N11xercesc_2_711ElementImplE\00", align 1
@_ZTIN11xercesc_2_710ParentNodeE = external constant ptr
@_ZTIN11xercesc_2_711ElementImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ElementImplE, ptr @_ZTIN11xercesc_2_710ParentNodeE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ElementImpl.cpp, ptr null }]

@_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_711ElementImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_711ElementImplC2ERKS0_b
@_ZN11xercesc_2_711ElementImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711ElementImplD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %17

7:                                                ; preds = %6
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %9 unwind label %19

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !41
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 78
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %14 unwind label %23

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %7
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %25

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  resume { ptr, i32 } %28
}

declare void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1)
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %17

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %8 unwind label %19

8:                                                ; preds = %6
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %10 unwind label %21

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !41
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 78
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %15 unwind label %25

15:                                               ; preds = %10
  br i1 %2, label %16, label %27

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %27 unwind label %25

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %50

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %48

25:                                               ; preds = %40, %38, %34, %16, %10
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %48

27:                                               ; preds = %16, %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %11, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %38 unwind label %25

38:                                               ; preds = %34
  %39 = load ptr, ptr %11, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %39)
          to label %40 unwind label %25

40:                                               ; preds = %38, %31
  %41 = load ptr, ptr %28, align 8, !tbaa !41
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 17
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(33) %41, ptr noundef nonnull %0)
          to label %46 unwind label %25

46:                                               ; preds = %40
  store ptr %45, ptr %11, align 8, !tbaa !41
  br label %47

47:                                               ; preds = %46, %27
  ret void

48:                                               ; preds = %25, %23
  %49 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %50

50:                                               ; preds = %48, %17
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  resume { ptr, i32 } %51
}

declare void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(26)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %9 unwind label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %10)
          to label %11 unwind label %13

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #9
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  ret void

13:                                               ; preds = %9, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %8)
  invoke void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #9
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

declare void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl11getNodeNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !37 {
  ret i16 1
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ %11, %7 ], [ null, %3 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L12gEmptyStringE, ptr noundef nonnull @_ZN11xercesc_2_711ElementImpl17reinitElementImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L18emptyStringCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 49
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %13)
  br label %21

21:                                               ; preds = %17, %15
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl17reinitElementImplEv() #4 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L12gEmptyStringE, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #9
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L12gEmptyStringE, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #7 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %8)
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %9, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #9
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl10getTagNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13isElementImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !37 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 4, !tbaa !57, !range !58, !noundef !59
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !60
  %14 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %15 = and i16 %14, %13
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %19 unwind label %21

19:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %18, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %20 unwind label %23

20:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %52 unwind label %23

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %26

23:                                               ; preds = %20, %19
  %24 = phi i1 [ false, %20 ], [ true, %19 ]
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi { ptr, i32 } [ %25, %23 ], [ %22, %21 ]
  %28 = phi i1 [ %24, %23 ], [ true, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  call void @__cxa_free_exception(ptr %18) #9
  br label %51

30:                                               ; preds = %11, %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %31, align 8, !tbaa !41
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 9
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(33) %41, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %46 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %38, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !62
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %38)
  br label %50

50:                                               ; preds = %34, %49, %40, %30
  ret void

51:                                               ; preds = %26, %29
  resume { ptr, i32 } %27

52:                                               ; preds = %20
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %10, i64 0, i32 10
  %12 = load i8, ptr %11, align 4, !tbaa !57, !range !58, !noundef !59
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !60
  %17 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %18 = and i16 %17, %16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %22 unwind label %25

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %27

23:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %24 unwind label %27

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %23, %22
  %28 = phi i1 [ false, %23 ], [ true, %22 ]
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi { ptr, i32 } [ %29, %27 ], [ %26, %25 ]
  %32 = phi i1 [ %28, %27 ], [ true, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %32, label %33, label %78

33:                                               ; preds = %30
  call void @__cxa_free_exception(ptr %21) #9
  br label %78

34:                                               ; preds = %14, %2
  %35 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = icmp eq ptr %36, null
  br i1 %37, label %76, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %39 = load ptr, ptr %1, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 47
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %42 = load ptr, ptr %36, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 6
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %46 unwind label %58

46:                                               ; preds = %38
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %47 = icmp eq ptr %45, %1
  br i1 %47, label %48, label %62

48:                                               ; preds = %46
  %49 = load ptr, ptr %35, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %50 = load ptr, ptr %1, align 8, !tbaa !38
  %51 = getelementptr inbounds ptr, ptr %50, i64 47
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %53 = load ptr, ptr %49, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 9
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(33) %49, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %57 unwind label %60

57:                                               ; preds = %48
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %76

58:                                               ; preds = %38
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %78

60:                                               ; preds = %48
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %78

62:                                               ; preds = %46
  %63 = call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %64 unwind label %67

64:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %63, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %65 unwind label %69

65:                                               ; preds = %64
  invoke void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %66 unwind label %69

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %72

69:                                               ; preds = %65, %64
  %70 = phi i1 [ false, %65 ], [ true, %64 ]
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi { ptr, i32 } [ %71, %69 ], [ %68, %67 ]
  %74 = phi i1 [ %70, %69 ], [ true, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  call void @__cxa_free_exception(ptr %63) #9
  br label %78

76:                                               ; preds = %34, %57
  %77 = phi ptr [ %45, %57 ], [ null, %34 ]
  ret ptr %77

78:                                               ; preds = %58, %60, %75, %72, %30, %33
  %79 = phi { ptr, i32 } [ %31, %33 ], [ %31, %30 ], [ %61, %60 ], [ %73, %75 ], [ %73, %72 ], [ %59, %58 ]
  resume { ptr, i32 } %79
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 10
  %10 = load i8, ptr %9, align 4, !tbaa !57, !range !58, !noundef !59
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !60
  %15 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %16 = and i16 %15, %14
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %20 unwind label %22

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %21 unwind label %24

21:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %71 unwind label %24

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %27

24:                                               ; preds = %21, %20
  %25 = phi i1 [ false, %21 ], [ true, %20 ]
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi { ptr, i32 } [ %26, %24 ], [ %23, %22 ]
  %29 = phi i1 [ %25, %24 ], [ true, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  call void @__cxa_free_exception(ptr %19) #9
  br label %69

31:                                               ; preds = %12, %3
  %32 = load ptr, ptr %0, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 48
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 26
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %46 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %45, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %47)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %48, ptr noundef nonnull %0, ptr noundef null)
          to label %49 unwind label %50

49:                                               ; preds = %41
  store ptr %48, ptr %38, align 8, !tbaa !41
  br label %52

50:                                               ; preds = %41
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #9
  br label %69

52:                                               ; preds = %49, %37
  %53 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = getelementptr inbounds ptr, ptr %55, i64 47
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(168) %54, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = load ptr, ptr %38, align 8, !tbaa !41
  %60 = load ptr, ptr %59, align 8, !tbaa !38
  %61 = getelementptr inbounds ptr, ptr %60, i64 10
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef %58)
  br label %64

64:                                               ; preds = %52, %31
  %65 = phi ptr [ %35, %31 ], [ %58, %52 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !38
  %67 = getelementptr inbounds ptr, ptr %66, i64 34
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %65

69:                                               ; preds = %27, %30, %50
  %70 = phi { ptr, i32 } [ %28, %30 ], [ %28, %27 ], [ %51, %50 ]
  resume { ptr, i32 } %70

71:                                               ; preds = %21
  unreachable
}

declare void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 4, !tbaa !57, !range !58, !noundef !59
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !60
  %16 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %17 = and i16 %16, %15
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %21 unwind label %24

21:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %20, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %22 unwind label %26

22:                                               ; preds = %21
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %23 unwind label %26

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %29

26:                                               ; preds = %22, %21
  %27 = phi i1 [ false, %22 ], [ true, %21 ]
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi { ptr, i32 } [ %28, %26 ], [ %25, %24 ]
  %31 = phi i1 [ %27, %26 ], [ true, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  call void @__cxa_free_exception(ptr %20) #9
  br label %84

33:                                               ; preds = %13, %2
  %34 = load ptr, ptr %1, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %40 unwind label %43

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %39, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %41 unwind label %45

41:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %42 unwind label %45

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %41, %40
  %46 = phi i1 [ false, %41 ], [ true, %40 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  %50 = phi i1 [ %46, %45 ], [ true, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %39) #9
  br label %84

52:                                               ; preds = %33
  %53 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 26
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %61 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %60, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  %63 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %62)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %63, ptr noundef nonnull %0, ptr noundef null)
          to label %64 unwind label %65

64:                                               ; preds = %56
  store ptr %63, ptr %53, align 8, !tbaa !41
  br label %67

65:                                               ; preds = %56
  %66 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %63, ptr noundef %62) #9
  br label %84

67:                                               ; preds = %64, %52
  %68 = load ptr, ptr %53, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %69 = load ptr, ptr %1, align 8, !tbaa !38
  %70 = getelementptr inbounds ptr, ptr %69, i64 47
  %71 = load ptr, ptr %70, align 8
  call void %71(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %72 = load ptr, ptr %68, align 8, !tbaa !38
  %73 = getelementptr inbounds ptr, ptr %72, i64 6
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %76 unwind label %82

76:                                               ; preds = %67
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %77 = load ptr, ptr %53, align 8, !tbaa !41
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 10
  %80 = load ptr, ptr %79, align 8
  %81 = call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull %1)
  ret ptr %75

82:                                               ; preds = %67
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %84

84:                                               ; preds = %48, %51, %29, %32, %82, %65
  %85 = phi { ptr, i32 } [ %30, %32 ], [ %30, %29 ], [ %83, %82 ], [ %66, %65 ], [ %49, %51 ], [ %49, %48 ]
  resume { ptr, i32 } %85
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

declare void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  br label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 49
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %14)
  br label %21

21:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 4, !tbaa !57, !range !58, !noundef !59
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !60
  %16 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %17 = and i16 %16, %15
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %21 unwind label %23

21:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %20, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %22 unwind label %25

22:                                               ; preds = %21
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %71 unwind label %25

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %28

25:                                               ; preds = %22, %21
  %26 = phi i1 [ false, %22 ], [ true, %21 ]
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i1 [ %26, %25 ], [ true, %23 ]
  %30 = phi { ptr, i32 } [ %27, %25 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br i1 %29, label %31, label %69

31:                                               ; preds = %28
  call void @__cxa_free_exception(ptr %20) #9
  br label %69

32:                                               ; preds = %13, %4
  %33 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = load ptr, ptr %34, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 71
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(168) %34, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 34
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %42 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load ptr, ptr %0, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 26
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %50 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %51)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %52, ptr noundef nonnull %0, ptr noundef null)
          to label %53 unwind label %54

53:                                               ; preds = %45
  store ptr %52, ptr %42, align 8, !tbaa !41
  br label %56

54:                                               ; preds = %45
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %51) #9
  br label %69

56:                                               ; preds = %53, %32
  %57 = load ptr, ptr %42, align 8, !tbaa !41
  %58 = load ptr, ptr %57, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 10
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull %38)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %61, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %61)
  br label %68

68:                                               ; preds = %63, %67, %56
  ret ptr %38

69:                                               ; preds = %28, %31, %54
  %70 = phi { ptr, i32 } [ %30, %31 ], [ %30, %28 ], [ %55, %54 ]
  resume { ptr, i32 } %70

71:                                               ; preds = %22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %8, i64 0, i32 10
  %10 = load i8, ptr %9, align 4, !tbaa !57, !range !58, !noundef !59
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !60
  %15 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %16 = and i16 %15, %14
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %20 unwind label %22

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %21 unwind label %24

21:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %53 unwind label %24

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %27

24:                                               ; preds = %21, %20
  %25 = phi i1 [ false, %21 ], [ true, %20 ]
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi { ptr, i32 } [ %26, %24 ], [ %23, %22 ]
  %29 = phi i1 [ %25, %24 ], [ true, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  call void @__cxa_free_exception(ptr %19) #9
  br label %52

31:                                               ; preds = %12, %3
  %32 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %32, align 8, !tbaa !41
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds ptr, ptr %43, i64 15
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(33) %42, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %39, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !62
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %39)
  br label %51

51:                                               ; preds = %35, %50, %41, %31
  ret void

52:                                               ; preds = %27, %30
  resume { ptr, i32 } %28

53:                                               ; preds = %21
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %10, i64 0, i32 10
  %12 = load i8, ptr %11, align 4, !tbaa !57, !range !58, !noundef !59
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !60
  %17 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !61
  %18 = and i16 %17, %16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %22 unwind label %25

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %27

23:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %24 unwind label %27

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %23, %22
  %28 = phi i1 [ false, %23 ], [ true, %22 ]
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi { ptr, i32 } [ %29, %27 ], [ %26, %25 ]
  %32 = phi i1 [ %28, %27 ], [ true, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %32, label %33, label %98

33:                                               ; preds = %30
  call void @__cxa_free_exception(ptr %21) #9
  br label %98

34:                                               ; preds = %14
  %35 = load ptr, ptr %1, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 26
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %39 = load ptr, ptr %0, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 26
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %34
  %45 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %46 unwind label %49

46:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %45, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %47 unwind label %51

47:                                               ; preds = %46
  invoke void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %48 unwind label %51

48:                                               ; preds = %47
  unreachable

49:                                               ; preds = %44
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %54

51:                                               ; preds = %47, %46
  %52 = phi i1 [ false, %47 ], [ true, %46 ]
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi { ptr, i32 } [ %53, %51 ], [ %50, %49 ]
  %56 = phi i1 [ %52, %51 ], [ true, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  call void @__cxa_free_exception(ptr %45) #9
  br label %98

58:                                               ; preds = %34, %2
  %59 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8, !tbaa !38
  %64 = getelementptr inbounds ptr, ptr %63, i64 26
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %67 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %66, i64 0, i32 11
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %68)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %69, ptr noundef nonnull %0, ptr noundef null)
          to label %70 unwind label %71

70:                                               ; preds = %62
  store ptr %69, ptr %59, align 8, !tbaa !41
  br label %73

71:                                               ; preds = %62
  %72 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %69, ptr noundef %68) #9
  br label %98

73:                                               ; preds = %70, %58
  %74 = load ptr, ptr %59, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %75 = load ptr, ptr %1, align 8, !tbaa !38
  %76 = getelementptr inbounds ptr, ptr %75, i64 40
  %77 = load ptr, ptr %76, align 8
  call void %77(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %78 = load ptr, ptr %1, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 42
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %81 unwind label %92

81:                                               ; preds = %73
  %82 = load ptr, ptr %74, align 8, !tbaa !38
  %83 = getelementptr inbounds ptr, ptr %82, i64 13
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %86 unwind label %94

86:                                               ; preds = %81
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %87 = load ptr, ptr %59, align 8, !tbaa !41
  %88 = load ptr, ptr %87, align 8, !tbaa !38
  %89 = getelementptr inbounds ptr, ptr %88, i64 14
  %90 = load ptr, ptr %89, align 8
  %91 = call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull %1)
  ret ptr %85

92:                                               ; preds = %73
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %96

94:                                               ; preds = %81
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %98

98:                                               ; preds = %54, %57, %30, %33, %96, %71
  %99 = phi { ptr, i32 } [ %31, %33 ], [ %31, %30 ], [ %55, %57 ], [ %55, %54 ], [ %97, %96 ], [ %72, %71 ]
  resume { ptr, i32 } %99
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %9)
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %10, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret ptr %10

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #9
  resume { ptr, i32 } %13
}

declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13hasAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp ne ptr %6, null
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 58
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %1)
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi i32 [ %16, %8 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 18
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(32) %11)
  br label %16

16:                                               ; preds = %1, %7
  %17 = phi i32 [ %15, %7 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %1)
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 18
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(32) %11)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %11 unwind label %13

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %15

12:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %32 unwind label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %18

15:                                               ; preds = %12, %11
  %16 = phi i1 [ false, %12 ], [ true, %11 ]
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %17, %15 ], [ %14, %13 ]
  %20 = phi i1 [ %16, %15 ], [ true, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  call void @__cxa_free_exception(ptr %10) #9
  br label %31

22:                                               ; preds = %2
  %23 = load ptr, ptr %0, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 18
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %30

31:                                               ; preds = %18, %21
  resume { ptr, i32 } %19

32:                                               ; preds = %12
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %15, ptr noundef nonnull %0)
          to label %16 unwind label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr %15, ptr %17, align 8, !tbaa !41
  br label %20

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #9
  resume { ptr, i32 } %19

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %1)
  ret ptr %26
}

declare void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext %1, i1 noundef zeroext %2)
  br label %17

17:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i32 [ %17, %9 ], [ -1, %3 ]
  ret i32 %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi ptr [ %17, %9 ], [ null, %3 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %15, ptr noundef nonnull %0)
          to label %16 unwind label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr %15, ptr %17, align 8, !tbaa !41
  br label %20

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #9
  resume { ptr, i32 } %19

20:                                               ; preds = %16, %2
  %21 = load ptr, ptr %0, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 18
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 14
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef %1)
  ret ptr %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %12 unwind label %14

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %13 unwind label %16

13:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #11
          to label %33 unwind label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %13, %12
  %17 = phi i1 [ false, %13 ], [ true, %12 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %18, %16 ], [ %15, %14 ]
  %21 = phi i1 [ %17, %16 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  call void @__cxa_free_exception(ptr %11) #9
  br label %32

23:                                               ; preds = %3
  %24 = load ptr, ptr %0, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 18
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 15
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %31

32:                                               ; preds = %19, %22
  resume { ptr, i32 } %20

33:                                               ; preds = %13
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 16
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %1)
  br label %16

16:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 60
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(168) %16)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %16, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 60
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(168) %16)
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 53
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(145) %26)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %31 = load ptr, ptr %0, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 23
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %0)
  %34 = load ptr, ptr %30, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %38 unwind label %45

38:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %39 = icmp eq ptr %37, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %37, align 8, !tbaa !38
  %42 = getelementptr inbounds ptr, ptr %41, i64 18
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(26) %37)
  br label %47

45:                                               ; preds = %22
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  resume { ptr, i32 } %46

47:                                               ; preds = %12, %38, %40, %1, %6
  %48 = phi ptr [ null, %6 ], [ null, %1 ], [ null, %12 ], [ %44, %40 ], [ null, %38 ]
  ret ptr %48
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 26
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 60
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %15)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(33) %23) #9
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %0, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 77
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds ptr, ptr %36, i64 26
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %41)
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %42, ptr noundef nonnull %0, ptr noundef nonnull %33)
          to label %43 unwind label %44

43:                                               ; preds = %35
  store ptr %42, ptr %22, align 8, !tbaa !41
  br label %46

44:                                               ; preds = %35
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %42, ptr noundef %41) #9
  resume { ptr, i32 } %45

46:                                               ; preds = %29, %43, %1, %5, %11
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #0

declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #0

declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ElementImpl.cpp() #8 section ".text.startup" !prof !65 !PGOFuncName !66 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L18emptyStringCleanupE)
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_ElementImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !50, i64 96}
!42 = !{!"_ZTSN11xercesc_2_711ElementImplE", !43, i64 0, !52, i64 88, !50, i64 96}
!43 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !44, i64 0, !50, i64 48, !50, i64 56, !48, i64 64, !50, i64 72, !48, i64 80}
!44 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !45, i64 0, !50, i64 32, !50, i64 40}
!45 = !{!"_ZTSN11xercesc_2_78NodeImplE", !46, i64 0, !50, i64 16, !51, i64 24}
!46 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !47, i64 0}
!47 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !48, i64 8}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !40, i64 0}
!50 = !{!"any pointer", !49, i64 0}
!51 = !{!"short", !49, i64 0}
!52 = !{!"_ZTSN11xercesc_2_79DOMStringE", !50, i64 0}
!53 = !{!54, !50, i64 160}
!54 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !43, i64 0, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !48, i64 152, !55, i64 156, !50, i64 160}
!55 = !{!"bool", !49, i64 0}
!56 = !{!50, !50, i64 0}
!57 = !{!54, !55, i64 156}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!45, !51, i64 24}
!61 = !{!51, !51, i64 0}
!62 = !{!47, !48, i64 8}
!63 = !{!43, !50, i64 48}
!64 = !{!45, !50, i64 16}
!65 = !{!"function_entry_count", i64 1}
!66 = !{!"ElementImpl.cpp;_GLOBAL__sub_I_ElementImpl.cpp"}
