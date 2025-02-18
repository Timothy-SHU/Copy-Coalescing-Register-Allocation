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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
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
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #5
  resume { ptr, i32 } %21
}

declare void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_711ElementImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %27

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %29

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %15 unwind label %31

15:                                               ; preds = %14
  %16 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %18 unwind label %33

18:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  %19 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %20 unwind label %37

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %21 unwind label %39

21:                                               ; preds = %20
  %22 = icmp slt i32 %19, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %21
  %24 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %25 unwind label %41

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %26 unwind label %43

26:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %110 unwind label %43

27:                                               ; preds = %4
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %108

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %106

31:                                               ; preds = %14
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %15
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %104

37:                                               ; preds = %18
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %104

39:                                               ; preds = %20
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %102

41:                                               ; preds = %23
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %26, %25
  %44 = phi i1 [ false, %26 ], [ true, %25 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br i1 %48, label %49, label %100

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %24) #5
  br label %100

50:                                               ; preds = %21
  %51 = icmp eq i32 %19, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %54 unwind label %56

54:                                               ; preds = %52
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %82 unwind label %56

56:                                               ; preds = %54, %52
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %100

58:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0, i32 noundef %19)
          to label %59 unwind label %70

59:                                               ; preds = %58
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %61 unwind label %72

61:                                               ; preds = %59
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %62 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %63 unwind label %76

63:                                               ; preds = %61
  %64 = add nuw nsw i32 %19, 1
  %65 = xor i32 %19, -1
  %66 = add i32 %62, %65
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %64, i32 noundef %66)
          to label %67 unwind label %76

67:                                               ; preds = %63
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %69 unwind label %78

69:                                               ; preds = %67
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %82

70:                                               ; preds = %58
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %74

72:                                               ; preds = %59
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %100

76:                                               ; preds = %63, %61
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %80

78:                                               ; preds = %67
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %100

82:                                               ; preds = %54, %69
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef signext 1)
          to label %84 unwind label %92

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  %85 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef null)
          to label %86 unwind label %94

86:                                               ; preds = %84
  br i1 %85, label %87, label %88

87:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0)
          to label %89 unwind label %94

88:                                               ; preds = %86
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %83)
          to label %89 unwind label %94

89:                                               ; preds = %88, %87
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %91 unwind label %96

91:                                               ; preds = %89
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret void

92:                                               ; preds = %82
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %100

94:                                               ; preds = %88, %87, %84
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %89
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %100

100:                                              ; preds = %92, %98, %46, %49, %80, %74, %56
  %101 = phi { ptr, i32 } [ %47, %49 ], [ %47, %46 ], [ %57, %56 ], [ %81, %80 ], [ %75, %74 ], [ %99, %98 ], [ %93, %92 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %102

102:                                              ; preds = %100, %39
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br label %104

104:                                              ; preds = %37, %102, %35
  %105 = phi { ptr, i32 } [ %36, %35 ], [ %103, %102 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  br label %106

106:                                              ; preds = %104, %29
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  br label %108

108:                                              ; preds = %106, %27
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #5
  resume { ptr, i32 } %109

110:                                              ; preds = %26
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %20

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %13 unwind label %24

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %14 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %28

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %17 unwind label %30

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
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
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %34

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %27, %26 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #5
  resume { ptr, i32 } %39
}

declare void @_ZN11xercesc_2_711ElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713ElementNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(84) %0)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %8)
  invoke void @_ZN11xercesc_2_713ElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %9

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #5
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl9getPrefixEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  br label %8

7:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef %4)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713ElementNSImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  invoke void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4)
          to label %12 unwind label %29

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %14, i64 0, i32 10
  %16 = load i8, ptr %15, align 4, !tbaa !51, !range !52, !noundef !53
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %85, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !55
  %22 = and i16 %21, %20
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %26 unwind label %33

26:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %25, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %27 unwind label %35

27:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %28 unwind label %35

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %2
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %173

31:                                               ; preds = %104, %101, %92, %88, %85, %67, %50, %45, %42
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %171

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %38

35:                                               ; preds = %27, %26
  %36 = phi i1 [ false, %27 ], [ true, %26 ]
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %37, %35 ], [ %34, %33 ]
  %40 = phi i1 [ %36, %35 ], [ true, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  br i1 %40, label %41, label %171

41:                                               ; preds = %38
  call void @__cxa_free_exception(ptr %25) #5
  br label %171

42:                                               ; preds = %18
  %43 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %44 unwind label %31

44:                                               ; preds = %42
  br i1 %43, label %45, label %67

45:                                               ; preds = %44
  %46 = load ptr, ptr %0, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 26
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(84) %0)
          to label %50 unwind label %31

50:                                               ; preds = %45
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %49, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %52 unwind label %31

52:                                               ; preds = %50
  br i1 %51, label %67, label %53

53:                                               ; preds = %52
  %54 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0)
          to label %55 unwind label %58

55:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %54, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %56 unwind label %60

56:                                               ; preds = %55
  invoke void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %57 unwind label %60

57:                                               ; preds = %56
  unreachable

58:                                               ; preds = %53
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %63

60:                                               ; preds = %56, %55
  %61 = phi i1 [ false, %56 ], [ true, %55 ]
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi { ptr, i32 } [ %62, %60 ], [ %59, %58 ]
  %65 = phi i1 [ %61, %60 ], [ true, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  br i1 %65, label %66, label %171

66:                                               ; preds = %63
  call void @__cxa_free_exception(ptr %54) #5
  br label %171

67:                                               ; preds = %52, %44
  %68 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  %69 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef null)
          to label %70 unwind label %31

70:                                               ; preds = %67
  br i1 %69, label %71, label %85

71:                                               ; preds = %70
  %72 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %73 unwind label %76

73:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %72, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %74 unwind label %78

74:                                               ; preds = %73
  invoke void @__cxa_throw(ptr nonnull %72, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %75 unwind label %78

75:                                               ; preds = %74
  unreachable

76:                                               ; preds = %71
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %81

78:                                               ; preds = %74, %73
  %79 = phi i1 [ false, %74 ], [ true, %73 ]
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi { ptr, i32 } [ %80, %78 ], [ %77, %76 ]
  %83 = phi i1 [ %79, %78 ], [ true, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  br i1 %83, label %84, label %171

84:                                               ; preds = %81
  call void @__cxa_free_exception(ptr %72) #5
  br label %171

85:                                               ; preds = %70, %12
  %86 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %87 unwind label %31

87:                                               ; preds = %85
  br i1 %86, label %92, label %88

88:                                               ; preds = %87
  %89 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %90 unwind label %31

90:                                               ; preds = %88
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %90, %87
  %93 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  %94 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %95 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %160 unwind label %31

96:                                               ; preds = %90
  %97 = load ptr, ptr %13, align 8, !tbaa !50
  %98 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %97, i64 0, i32 10
  %99 = load i8, ptr %98, align 4, !tbaa !51, !range !52, !noundef !53
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %96
  %102 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %103 unwind label %31

103:                                              ; preds = %101
  br i1 %102, label %104, label %122

104:                                              ; preds = %103
  %105 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  %106 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %107 unwind label %31

107:                                              ; preds = %104
  br i1 %106, label %122, label %108

108:                                              ; preds = %107
  %109 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %110 unwind label %113

110:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %109, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %111 unwind label %115

111:                                              ; preds = %110
  invoke void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %112 unwind label %115

112:                                              ; preds = %111
  unreachable

113:                                              ; preds = %108
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %118

115:                                              ; preds = %111, %110
  %116 = phi i1 [ false, %111 ], [ true, %110 ]
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi { ptr, i32 } [ %117, %115 ], [ %114, %113 ]
  %120 = phi i1 [ %116, %115 ], [ true, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br i1 %120, label %121, label %171

121:                                              ; preds = %118
  call void @__cxa_free_exception(ptr %109) #5
  br label %171

122:                                              ; preds = %107, %103, %96
  %123 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %124 unwind label %131

124:                                              ; preds = %122
  %125 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %126 unwind label %133

126:                                              ; preds = %124, %135
  %127 = phi ptr [ %137, %135 ], [ %123, %124 ]
  %128 = phi i32 [ %136, %135 ], [ %125, %124 ]
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 58)
          to label %154 unwind label %161

131:                                              ; preds = %122
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %171

133:                                              ; preds = %124
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %171

135:                                              ; preds = %126
  %136 = add nsw i32 %128, -1
  %137 = getelementptr inbounds i16, ptr %127, i64 1
  %138 = load i16, ptr %127, align 2, !tbaa !55
  %139 = icmp eq i16 %138, 58
  br i1 %139, label %140, label %126, !llvm.loop !56

140:                                              ; preds = %135
  %141 = call ptr @__cxa_allocate_exception(i64 24) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %142 unwind label %145

142:                                              ; preds = %140
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %141, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %143 unwind label %147

143:                                              ; preds = %142
  invoke void @__cxa_throw(ptr nonnull %141, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #6
          to label %144 unwind label %147

144:                                              ; preds = %143
  unreachable

145:                                              ; preds = %140
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %150

147:                                              ; preds = %143, %142
  %148 = phi i1 [ false, %143 ], [ true, %142 ]
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi { ptr, i32 } [ %149, %147 ], [ %146, %145 ]
  %152 = phi i1 [ %148, %147 ], [ true, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br i1 %152, label %153, label %171

153:                                              ; preds = %150
  call void @__cxa_free_exception(ptr %141) #5
  br label %171

154:                                              ; preds = %130
  %155 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %155)
          to label %156 unwind label %163

156:                                              ; preds = %154
  %157 = getelementptr inbounds %"class.xercesc_2_7::ElementImpl", ptr %0, i64 0, i32 1
  %158 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %159 unwind label %165

159:                                              ; preds = %156
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %160

160:                                              ; preds = %92, %159
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void

161:                                              ; preds = %130
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %169

163:                                              ; preds = %154
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %156
  %166 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  br label %169

169:                                              ; preds = %167, %161
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %171

171:                                              ; preds = %131, %169, %150, %153, %133, %118, %121, %81, %84, %63, %66, %38, %41, %31
  %172 = phi { ptr, i32 } [ %39, %41 ], [ %39, %38 ], [ %82, %84 ], [ %82, %81 ], [ %32, %31 ], [ %119, %121 ], [ %119, %118 ], [ %64, %66 ], [ %64, %63 ], [ %170, %169 ], [ %132, %131 ], [ %151, %153 ], [ %151, %150 ], [ %134, %133 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %173

173:                                              ; preds = %171, %29
  %174 = phi { ptr, i32 } [ %172, %171 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  resume { ptr, i32 } %174
}

declare void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ElementNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #5
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ElementNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [81 x ptr] }, ptr @_ZTVN11xercesc_2_713ElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  tail call void @_ZN11xercesc_2_711ElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl11getNodeNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare noundef signext i16 @_ZN11xercesc_2_711ElementImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl12getAttributeERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl16getAttributeNodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl10getTagNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl15removeAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl19removeAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl12setAttributeERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl16setAttributeNodeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl14getAttributeNSERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl14setAttributeNSERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl17removeAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl18getAttributeNodeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl18setAttributeNodeNSEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl12hasAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_711ElementImpl14hasAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl12NNM_cloneMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_711ElementImpl13NNM_getLengthEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl8NNM_itemEj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl13NNM_removeAllEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl19NNM_removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl16NNM_setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl15NNM_setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_711ElementImpl17NNM_findNamePointERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl18NNM_setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl21NNM_removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl20NNM_setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_711ElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!51 = !{!39, !49, i64 156}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!42, !48, i64 24}
!55 = !{!48, !48, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
