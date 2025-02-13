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
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L18emptyStringCleanupE) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %7 unwind label %17

7:                                                ; preds = %6
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %9 unwind label %19

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !38
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 78
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
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
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %25

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #11
  resume { ptr, i32 } %28
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1) #9
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %6 unwind label %17

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #9
          to label %8 unwind label %19

8:                                                ; preds = %6
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %10 unwind label %21

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !38
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 78
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
          to label %15 unwind label %25

15:                                               ; preds = %10
  br i1 %2, label %16, label %27

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %27 unwind label %25

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %52

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %50

25:                                               ; preds = %42, %38, %34, %16, %10
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %50

27:                                               ; preds = %16, %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %11, align 8, !tbaa !38
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(32) %32) #9
          to label %38 unwind label %25

38:                                               ; preds = %34
  %39 = load ptr, ptr %11, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %39) #9
          to label %40 unwind label %25

40:                                               ; preds = %38
  %41 = load ptr, ptr %28, align 8, !tbaa !38
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi ptr [ %41, %40 ], [ %29, %31 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 17
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(33) %43, ptr noundef nonnull %0) #9
          to label %48 unwind label %25

48:                                               ; preds = %42
  store ptr %47, ptr %11, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %48, %27
  ret void

50:                                               ; preds = %25, %23
  %51 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  br label %52

52:                                               ; preds = %50, %17
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #11
  resume { ptr, i32 } %53
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(26)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_711ElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #9
          to label %9 unwind label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %10) #9
          to label %11 unwind label %13

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #11
  ret void

13:                                               ; preds = %9, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImplD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #9
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %7) #9
  invoke void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #11
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl11getNodeNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !34 {
  ret i16 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3, %7
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L12gEmptyStringE, ptr noundef nonnull @_ZN11xercesc_2_711ElementImpl17reinitElementImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L18emptyStringCleanupE) #9
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #9
  br label %19

15:                                               ; preds = %7
  %16 = load ptr, ptr %11, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 49
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %11) #9
  br label %19

19:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl17reinitElementImplEv() #5 align 2 !prof !34 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L12gEmptyStringE, align 8, !tbaa !53
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #11
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L12gEmptyStringE, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %10, %6 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #8 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #9
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %7) #9
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %8, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #11
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl10getTagNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13isElementImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %7) #9
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %13 unwind label %17

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %16 unwind label %14

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %21

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %46 unwind label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %44

21:                                               ; preds = %14, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %12) #10
  br label %44

23:                                               ; preds = %9, %2
  %24 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %24, align 8, !tbaa !38
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 9
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(33) %34, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %39 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %31, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !54
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %31) #9
  br label %43

43:                                               ; preds = %27, %42, %33, %23
  ret void

44:                                               ; preds = %19, %21
  %45 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !55, !range !56, !noundef !57
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !58
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !59
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %10) #9
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %70 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %68

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #10
  br label %68

26:                                               ; preds = %12, %2
  %27 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 47
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  %34 = load ptr, ptr %28, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %38 unwind label %50

38:                                               ; preds = %30
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %39 = icmp eq ptr %37, %1
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = load ptr, ptr %27, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %42 = load ptr, ptr %1, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 47
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  %45 = load ptr, ptr %41, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 9
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(33) %41, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %49 unwind label %52

49:                                               ; preds = %40
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %66

50:                                               ; preds = %30
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %68

52:                                               ; preds = %40
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %68

54:                                               ; preds = %38
  %55 = call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #9
          to label %56 unwind label %60

56:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %55, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %59 unwind label %57

57:                                               ; preds = %56
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %64

59:                                               ; preds = %56
  invoke void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %70 unwind label %62

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %64

62:                                               ; preds = %59
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %68

64:                                               ; preds = %57, %60
  %65 = phi { ptr, i32 } [ %61, %60 ], [ %58, %57 ]
  call void @__cxa_free_exception(ptr %55) #10
  br label %68

66:                                               ; preds = %26, %49
  %67 = phi ptr [ %1, %49 ], [ null, %26 ]
  ret ptr %67

68:                                               ; preds = %62, %22, %50, %52, %64, %24
  %69 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %53, %52 ], [ %65, %64 ], [ %63, %62 ], [ %51, %50 ]
  resume { ptr, i32 } %69

70:                                               ; preds = %59, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #9
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %63 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %61

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #10
  br label %61

24:                                               ; preds = %10, %3
  %25 = load ptr, ptr %0, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 48
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !35
  %36 = getelementptr inbounds ptr, ptr %35, i64 26
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %39 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %38) #9
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %39) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %40, ptr noundef nonnull %0, ptr noundef null) #9
          to label %41 unwind label %42

41:                                               ; preds = %34
  store ptr %40, ptr %31, align 8, !tbaa !38
  br label %44

42:                                               ; preds = %34
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #11
  br label %61

44:                                               ; preds = %41, %30
  %45 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 47
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(168) %46, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %51 = load ptr, ptr %31, align 8, !tbaa !38
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef %50) #9
  br label %56

56:                                               ; preds = %44, %24
  %57 = phi ptr [ %28, %24 ], [ %50, %44 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 34
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret ptr %57

61:                                               ; preds = %20, %22, %42
  %62 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ], [ %43, %42 ]
  resume { ptr, i32 } %62

63:                                               ; preds = %17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %9) #9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %15 unwind label %19

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %18 unwind label %16

16:                                               ; preds = %15
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %23

18:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %75 unwind label %21

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %73

23:                                               ; preds = %16, %19
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %17, %16 ]
  call void @__cxa_free_exception(ptr %14) #10
  br label %73

25:                                               ; preds = %11, %2
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 6
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %32 unwind label %36

32:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %31, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %35 unwind label %33

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %40

35:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %75 unwind label %38

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %73

40:                                               ; preds = %33, %36
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %31) #10
  br label %73

42:                                               ; preds = %25
  %43 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 26
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %51 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %50) #9
  %52 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %51) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %52, ptr noundef nonnull %0, ptr noundef null) #9
          to label %53 unwind label %54

53:                                               ; preds = %46
  store ptr %52, ptr %43, align 8, !tbaa !38
  br label %56

54:                                               ; preds = %46
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %52, ptr noundef %51) #11
  br label %73

56:                                               ; preds = %53, %42
  %57 = phi ptr [ %52, %53 ], [ %44, %42 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %58 = load ptr, ptr %1, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 47
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  %61 = load ptr, ptr %57, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 6
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %65 unwind label %71

65:                                               ; preds = %56
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %66 = load ptr, ptr %43, align 8, !tbaa !38
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 10
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull %1) #9
  ret ptr %64

71:                                               ; preds = %56
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %73

73:                                               ; preds = %38, %21, %40, %23, %71, %54
  %74 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ], [ %72, %71 ], [ %55, %54 ], [ %41, %40 ], [ %39, %38 ]
  resume { ptr, i32 } %74

75:                                               ; preds = %35, %18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %1, i1 noundef zeroext true) #9
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4, %8
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #9
  br label %19

15:                                               ; preds = %8
  %16 = load ptr, ptr %12, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 49
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %12) #9
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %9) #9
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #9
          to label %15 unwind label %19

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
          to label %18 unwind label %16

16:                                               ; preds = %15
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %23

18:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %63 unwind label %21

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %61

23:                                               ; preds = %16, %19
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %17, %16 ]
  call void @__cxa_free_exception(ptr %14) #10
  br label %61

25:                                               ; preds = %11, %4
  %26 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 71
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(168) %27, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 34
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %35 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load ptr, ptr %0, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 26
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %43 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %42) #9
  %44 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %43) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %44, ptr noundef nonnull %0, ptr noundef null) #9
          to label %45 unwind label %46

45:                                               ; preds = %38
  store ptr %44, ptr %35, align 8, !tbaa !38
  br label %48

46:                                               ; preds = %38
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #11
  br label %61

48:                                               ; preds = %45, %25
  %49 = phi ptr [ %44, %45 ], [ %36, %25 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 10
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull %31) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %53, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %53) #9
  br label %60

60:                                               ; preds = %55, %59, %48
  ret ptr %31

61:                                               ; preds = %21, %23, %46
  %62 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ], [ %47, %46 ]
  resume { ptr, i32 } %62

63:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #9
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %14 unwind label %18

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %17 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %22

17:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %47 unwind label %20

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %45

22:                                               ; preds = %15, %18
  %23 = phi { ptr, i32 } [ %19, %18 ], [ %16, %15 ]
  call void @__cxa_free_exception(ptr %13) #10
  br label %45

24:                                               ; preds = %10, %3
  %25 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 13
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %25, align 8, !tbaa !38
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 15
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(33) %35, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %32, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %32) #9
  br label %44

44:                                               ; preds = %28, %43, %34, %24
  ret void

45:                                               ; preds = %20, %22
  %46 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ]
  resume { ptr, i32 } %46

47:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 13
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %11, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %10) #9
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #9
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %16 unwind label %20

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %15, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %19 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %24

19:                                               ; preds = %16
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %89 unwind label %22

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %87

24:                                               ; preds = %17, %20
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %18, %17 ]
  call void @__cxa_free_exception(ptr %15) #10
  br label %87

26:                                               ; preds = %12
  %27 = load ptr, ptr %1, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 26
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
  %31 = load ptr, ptr %0, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 26
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %38 unwind label %42

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %37, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %41 unwind label %39

39:                                               ; preds = %38
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %46

41:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %89 unwind label %44

42:                                               ; preds = %36
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %87

46:                                               ; preds = %39, %42
  %47 = phi { ptr, i32 } [ %43, %42 ], [ %40, %39 ]
  call void @__cxa_free_exception(ptr %37) #10
  br label %87

48:                                               ; preds = %26, %2
  %49 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 26
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %57 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %56) #9
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %57) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %58, ptr noundef nonnull %0, ptr noundef null) #9
          to label %59 unwind label %60

59:                                               ; preds = %52
  store ptr %58, ptr %49, align 8, !tbaa !38
  br label %62

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #11
  br label %87

62:                                               ; preds = %59, %48
  %63 = phi ptr [ %58, %59 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %64 = load ptr, ptr %1, align 8, !tbaa !35
  %65 = getelementptr inbounds ptr, ptr %64, i64 40
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %67 = load ptr, ptr %1, align 8, !tbaa !35
  %68 = getelementptr inbounds ptr, ptr %67, i64 42
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1) #9
          to label %70 unwind label %81

70:                                               ; preds = %62
  %71 = load ptr, ptr %63, align 8, !tbaa !35
  %72 = getelementptr inbounds ptr, ptr %71, i64 13
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9
          to label %75 unwind label %83

75:                                               ; preds = %70
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %76 = load ptr, ptr %49, align 8, !tbaa !38
  %77 = load ptr, ptr %76, align 8, !tbaa !35
  %78 = getelementptr inbounds ptr, ptr %77, i64 14
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull %1) #9
  ret ptr %74

81:                                               ; preds = %62
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %70
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %87

87:                                               ; preds = %44, %22, %46, %24, %85, %60
  %88 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ], [ %47, %46 ], [ %45, %44 ], [ %86, %85 ], [ %61, %60 ]
  resume { ptr, i32 } %88

89:                                               ; preds = %41, %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %8 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %7) #9
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %8) #9
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %9, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %10 unwind label %11

10:                                               ; preds = %3
  ret ptr %9

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #11
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13hasAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #9
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 48
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %7 = icmp ne ptr %6, null
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 58
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %1) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %1) #9
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi i32 [ %16, %8 ], [ -1, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 18
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(32) %11) #9
  br label %16

16:                                               ; preds = %1, %7
  %17 = phi i32 [ %15, %7 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %1) #9
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %16, %8 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 18
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(32) %11) #9
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #9
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %32 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %30

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #10
  br label %30

21:                                               ; preds = %2
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 18
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 9
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  ret ptr %29

30:                                               ; preds = %17, %19
  %31 = phi { ptr, i32 } [ %18, %17 ], [ %20, %19 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  br label %22

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 26
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %16 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %15) #9
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %16) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %17, ptr noundef nonnull %0) #9
          to label %18 unwind label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !38
  br label %22

20:                                               ; preds = %11
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #11
  resume { ptr, i32 } %21

22:                                               ; preds = %8, %18
  %23 = phi ptr [ %10, %8 ], [ %17, %18 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 10
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %1) #9
  ret ptr %27
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext %1, i1 noundef zeroext %2) #9
  br label %17

17:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi i32 [ %17, %9 ], [ -1, %3 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 13
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  br label %18

18:                                               ; preds = %3, %9
  %19 = phi ptr [ %17, %9 ], [ null, %3 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %13 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %12) #9
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %13) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %14, ptr noundef nonnull %0) #9
          to label %15 unwind label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !38
  br label %19

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %15, %2
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 18
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 14
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %1) #9
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #9
          to label %12 unwind label %16

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4) #9
          to label %15 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %20

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #13
          to label %33 unwind label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %31

20:                                               ; preds = %13, %16
  %21 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  call void @__cxa_free_exception(ptr %11) #10
  br label %31

22:                                               ; preds = %3
  %23 = load ptr, ptr %0, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 18
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 15
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  ret ptr %30

31:                                               ; preds = %18, %20
  %32 = phi { ptr, i32 } [ %19, %18 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 16
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %1) #9
  br label %16

16:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::DOMString", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 60
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(168) %16) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %16, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 60
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(168) %16) #9
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 53
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(145) %26) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %31 = load ptr, ptr %0, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 23
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %34 = load ptr, ptr %30, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %2) #9
          to label %38 unwind label %45

38:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %39 = icmp eq ptr %37, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %37, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 18
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(26) %37) #9
  br label %47

45:                                               ; preds = %22
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  resume { ptr, i32 } %46

47:                                               ; preds = %12, %38, %40, %1, %6
  %48 = phi ptr [ null, %6 ], [ null, %1 ], [ null, %12 ], [ %44, %40 ], [ null, %38 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 26
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 60
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %15) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(33) %23) #11
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %0, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 77
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %0, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 26
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(84) %0) #9
  %40 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %39) #9
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40) #9
  invoke void @_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %41, ptr noundef nonnull %0, ptr noundef nonnull %33) #9
          to label %42 unwind label %43

42:                                               ; preds = %35
  store ptr %41, ptr %22, align 8, !tbaa !38
  br label %45

43:                                               ; preds = %35
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #11
  resume { ptr, i32 } %44

45:                                               ; preds = %29, %42, %1, %5, %11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_ElementImpl.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

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
!38 = !{!39, !47, i64 96}
!39 = !{!"_ZTSN11xercesc_2_711ElementImplE", !40, i64 0, !49, i64 88, !47, i64 96}
!40 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !41, i64 0, !47, i64 48, !47, i64 56, !45, i64 64, !47, i64 72, !45, i64 80}
!41 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !42, i64 0, !47, i64 32, !47, i64 40}
!42 = !{!"_ZTSN11xercesc_2_78NodeImplE", !43, i64 0, !47, i64 16, !48, i64 24}
!43 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !45, i64 8}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !37, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"short", !46, i64 0}
!49 = !{!"_ZTSN11xercesc_2_79DOMStringE", !47, i64 0}
!50 = !{!51, !47, i64 160}
!51 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !40, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !45, i64 152, !52, i64 156, !47, i64 160}
!52 = !{!"bool", !46, i64 0}
!53 = !{!47, !47, i64 0}
!54 = !{!44, !45, i64 8}
!55 = !{!51, !52, i64 156}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!42, !48, i64 24}
!59 = !{!48, !48, i64 0}
!60 = !{!40, !47, i64 48}
!61 = !{!42, !47, i64 16}
