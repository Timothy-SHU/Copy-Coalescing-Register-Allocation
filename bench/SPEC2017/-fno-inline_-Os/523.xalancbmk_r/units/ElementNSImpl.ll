; ModuleID = 'ElementNSImpl.cpp'
source_filename = "ElementNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ElementNSImpl" = type { %"class.xercesc_2_7::ElementImpl", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::ElementImpl" = type { %"class.xercesc_2_7::ParentNode.base", %"class.xercesc_2_7::DOMString", ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

$_ZN11xercesc_2_713ElementNSImplD2Ev = comdat any

$_ZN11xercesc_2_713ElementNSImplD0Ev = comdat any

@_ZTVN11xercesc_2_713ElementNSImplE = dso_local unnamed_addr constant { [81 x ptr] } { [81 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713ElementNSImplE, ptr @_ZN11xercesc_2_713ElementNSImplD2Ev, ptr @_ZN11xercesc_2_713ElementNSImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_711ElementImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_713ElementNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_711ElementImpl11getNodeNameEv, ptr @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_713ElementNSImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_713ElementNSImpl9getPrefixEv, ptr @_ZN11xercesc_2_713ElementNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_713ElementNSImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl13hasAttributesEv, ptr @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv, ptr @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl10getTagNameEv, ptr @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE, ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv, ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj, ptr @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv, ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb, ptr @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv, ptr @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713ElementNSImplE = dso_local constant [31 x i8] c"N11xercesc_2_713ElementNSImplE\00", align 1
@_ZTIN11xercesc_2_711ElementImplE = external constant ptr
@_ZTIN11xercesc_2_713ElementNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713ElementNSImplE, ptr @_ZTIN11xercesc_2_711ElementImplE }, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_
@_ZN11xercesc_2_713ElementNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_713ElementNSImplC2ERKS0_b

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #5
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #5
          to label %11 unwind label %16

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
          to label %12 unwind label %29

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
          to label %14 unwind label %31

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %15 unwind label %33

15:                                               ; preds = %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #5
          to label %18 unwind label %35

18:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %19 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %20 unwind label %39

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
          to label %21 unwind label %41

21:                                               ; preds = %20
  %22 = icmp slt i32 %19, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %21
  %24 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #5
          to label %25 unwind label %43

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %7) #5
          to label %28 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %47

28:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %109 unwind label %45

29:                                               ; preds = %4
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %107

31:                                               ; preds = %12
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %105

33:                                               ; preds = %14
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %37

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %103

39:                                               ; preds = %18
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %103

41:                                               ; preds = %20
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %101

43:                                               ; preds = %23
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %47

45:                                               ; preds = %28
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %99

47:                                               ; preds = %26, %43
  %48 = phi { ptr, i32 } [ %44, %43 ], [ %27, %26 ]
  call void @__cxa_free_exception(ptr %24) #7
  br label %99

49:                                               ; preds = %21
  %50 = icmp eq i32 %19, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #5
          to label %53 unwind label %55

53:                                               ; preds = %51
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %16) #5
          to label %81 unwind label %55

55:                                               ; preds = %53, %51
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %99

57:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0, i32 noundef %19) #5
          to label %58 unwind label %69

58:                                               ; preds = %57
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #5
          to label %60 unwind label %71

60:                                               ; preds = %58
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  %61 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #5
          to label %62 unwind label %75

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %19, 1
  %64 = xor i32 %19, -1
  %65 = add i32 %61, %64
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %63, i32 noundef %65) #5
          to label %66 unwind label %75

66:                                               ; preds = %62
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %9) #5
          to label %68 unwind label %77

68:                                               ; preds = %66
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %81

69:                                               ; preds = %57
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %58
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %99

75:                                               ; preds = %62, %60
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %79

77:                                               ; preds = %66
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %99

81:                                               ; preds = %53, %68
  %82 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef signext 1) #5
          to label %83 unwind label %91

83:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  %84 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef null) #5
          to label %85 unwind label %93

85:                                               ; preds = %83
  br i1 %84, label %86, label %87

86:                                               ; preds = %85
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #5
          to label %88 unwind label %93

87:                                               ; preds = %85
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %82) #5
          to label %88 unwind label %93

88:                                               ; preds = %87, %86
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10) #5
          to label %90 unwind label %95

90:                                               ; preds = %88
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret void

91:                                               ; preds = %81
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %99

93:                                               ; preds = %87, %86, %83
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %97

95:                                               ; preds = %88
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %99

99:                                               ; preds = %45, %91, %97, %47, %79, %73, %55
  %100 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ], [ %56, %55 ], [ %80, %79 ], [ %74, %73 ], [ %98, %97 ], [ %92, %91 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %101

101:                                              ; preds = %99, %41
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %103

103:                                              ; preds = %39, %101, %37
  %104 = phi { ptr, i32 } [ %38, %37 ], [ %102, %101 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #6
  br label %105

105:                                              ; preds = %103, %31
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  br label %107

107:                                              ; preds = %105, %29
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  resume { ptr, i32 } %108

109:                                              ; preds = %28
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) #5
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
          to label %7 unwind label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
          to label %9 unwind label %20

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %10) #5
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #5
          to label %13 unwind label %24

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %14 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %14) #5
          to label %15 unwind label %28

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #5
          to label %17 unwind label %30

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %38

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %36

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %34

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %27, %26 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713ElementNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0) #5
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #5
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %7) #5
  invoke void @_ZN11xercesc_2_713ElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1) #5
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #6
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl9getPrefixEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #5
  br label %8

7:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef %4) #5
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  invoke void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4) #5
          to label %12 unwind label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %14) #5
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #5
  br i1 %17, label %18, label %34

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #5
          to label %20 unwind label %28

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5) #5
          to label %23 unwind label %21

21:                                               ; preds = %20
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %32

23:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %157 unwind label %30

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %155

26:                                               ; preds = %90, %87, %80, %76, %73, %57, %42, %37, %34
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %153

28:                                               ; preds = %18
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %32

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %153

32:                                               ; preds = %21, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %22, %21 ]
  call void @__cxa_free_exception(ptr %19) #7
  br label %153

34:                                               ; preds = %16
  %35 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #5
          to label %36 unwind label %26

36:                                               ; preds = %34
  br i1 %35, label %37, label %57

37:                                               ; preds = %36
  %38 = load ptr, ptr %0, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 26
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(84) %0) #5
          to label %42 unwind label %26

42:                                               ; preds = %37
  %43 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %41, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %44 unwind label %26

44:                                               ; preds = %42
  br i1 %43, label %57, label %45

45:                                               ; preds = %44
  %46 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0) #5
          to label %47 unwind label %51

47:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %46, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %6) #5
          to label %50 unwind label %48

48:                                               ; preds = %47
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %55

50:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %157 unwind label %53

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %55

53:                                               ; preds = %50
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %153

55:                                               ; preds = %48, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %49, %48 ]
  call void @__cxa_free_exception(ptr %46) #7
  br label %153

57:                                               ; preds = %44, %36
  %58 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  %59 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef null) #5
          to label %60 unwind label %26

60:                                               ; preds = %57
  br i1 %59, label %61, label %73

61:                                               ; preds = %60
  %62 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #5
          to label %63 unwind label %67

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %62, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %7) #5
          to label %66 unwind label %64

64:                                               ; preds = %63
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %71

66:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %157 unwind label %69

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %71

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %153

71:                                               ; preds = %64, %67
  %72 = phi { ptr, i32 } [ %68, %67 ], [ %65, %64 ]
  call void @__cxa_free_exception(ptr %62) #7
  br label %153

73:                                               ; preds = %60, %12
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #5
          to label %75 unwind label %26

75:                                               ; preds = %73
  br i1 %74, label %80, label %76

76:                                               ; preds = %75
  %77 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %78 unwind label %26

78:                                               ; preds = %76
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 8 dereferenceable(8) %81) #5
          to label %142 unwind label %26

84:                                               ; preds = %78
  %85 = load ptr, ptr %13, align 8, !tbaa !50
  %86 = call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %85) #5
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %89 unwind label %26

89:                                               ; preds = %87
  br i1 %88, label %90, label %106

90:                                               ; preds = %89
  %91 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  %92 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull align 8 dereferenceable(8) %4) #5
          to label %93 unwind label %26

93:                                               ; preds = %90
  br i1 %92, label %106, label %94

94:                                               ; preds = %93
  %95 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #5
          to label %96 unwind label %100

96:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %95, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8) #5
          to label %99 unwind label %97

97:                                               ; preds = %96
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %104

99:                                               ; preds = %96
  invoke void @__cxa_throw(ptr nonnull %95, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %157 unwind label %102

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %104

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %153

104:                                              ; preds = %97, %100
  %105 = phi { ptr, i32 } [ %101, %100 ], [ %98, %97 ]
  call void @__cxa_free_exception(ptr %95) #7
  br label %153

106:                                              ; preds = %93, %89, %84
  %107 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %108 unwind label %115

108:                                              ; preds = %106
  %109 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #5
          to label %110 unwind label %117

110:                                              ; preds = %108, %119
  %111 = phi ptr [ %121, %119 ], [ %107, %108 ]
  %112 = phi i32 [ %120, %119 ], [ %109, %108 ]
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 58) #5
          to label %136 unwind label %143

115:                                              ; preds = %106
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %153

117:                                              ; preds = %108
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %153

119:                                              ; preds = %110
  %120 = add nsw i32 %112, -1
  %121 = getelementptr inbounds i16, ptr %111, i64 1
  %122 = load i16, ptr %111, align 2, !tbaa !51
  %123 = icmp eq i16 %122, 58
  br i1 %123, label %124, label %110, !llvm.loop !52

124:                                              ; preds = %119
  %125 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #5
          to label %126 unwind label %130

126:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %125, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9) #5
          to label %129 unwind label %127

127:                                              ; preds = %126
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %134

129:                                              ; preds = %126
  invoke void @__cxa_throw(ptr nonnull %125, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %157 unwind label %132

130:                                              ; preds = %124
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %134

132:                                              ; preds = %129
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %153

134:                                              ; preds = %127, %130
  %135 = phi { ptr, i32 } [ %131, %130 ], [ %128, %127 ]
  call void @__cxa_free_exception(ptr %125) #7
  br label %153

136:                                              ; preds = %114
  %137 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %137) #5
          to label %138 unwind label %145

138:                                              ; preds = %136
  %139 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %140 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef nonnull align 8 dereferenceable(8) %10) #5
          to label %141 unwind label %147

141:                                              ; preds = %138
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %142

142:                                              ; preds = %80, %141
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

143:                                              ; preds = %114
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %151

145:                                              ; preds = %136
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %149

147:                                              ; preds = %138
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #6
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %146, %145 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
  br label %151

151:                                              ; preds = %149, %143
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %153

153:                                              ; preds = %132, %102, %69, %53, %30, %115, %151, %134, %117, %104, %71, %55, %32, %26
  %154 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ], [ %72, %71 ], [ %70, %69 ], [ %27, %26 ], [ %105, %104 ], [ %103, %102 ], [ %56, %55 ], [ %54, %53 ], [ %152, %151 ], [ %116, %115 ], [ %135, %134 ], [ %133, %132 ], [ %118, %117 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
  br label %155

155:                                              ; preds = %153, %24
  %156 = phi { ptr, i32 } [ %154, %153 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %156

157:                                              ; preds = %129, %99, %66, %50, %23
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !54, !range !55, !noundef !56
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !57
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !51
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ElementNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ElementNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_713ElementNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
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
declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

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
declare noundef ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl11getNodeNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef signext i16 @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

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
declare void @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl10getTagNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!38 = !{!39, !47, i64 160}
!39 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !40, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !45, i64 152, !49, i64 156, !47, i64 160}
!40 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !41, i64 0, !47, i64 48, !47, i64 56, !45, i64 64, !47, i64 72, !45, i64 80}
!41 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !42, i64 0, !47, i64 32, !47, i64 40}
!42 = !{!"_ZTSN11xercesc_2_78NodeImplE", !43, i64 0, !47, i64 16, !48, i64 24}
!43 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !45, i64 8}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !37, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"short", !46, i64 0}
!49 = !{!"bool", !46, i64 0}
!50 = !{!40, !47, i64 48}
!51 = !{!48, !48, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!39, !49, i64 156}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!42, !48, i64 24}
