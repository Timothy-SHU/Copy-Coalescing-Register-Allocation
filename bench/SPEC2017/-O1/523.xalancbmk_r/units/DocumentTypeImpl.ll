; ModuleID = 'DocumentTypeImpl.cpp'
source_filename = "DocumentTypeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentTypeImpl" = type <{ %"class.xercesc_2_7::ParentNode.base", [4 x i8], %"class.xercesc_2_7::DOMString", ptr, ptr, ptr, %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString", i8, [7 x i8] }>
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_716DocumentTypeImplE = dso_local unnamed_addr constant { [59 x ptr] } { [59 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716DocumentTypeImplE, ptr @_ZN11xercesc_2_716DocumentTypeImplD2Ev, ptr @_ZN11xercesc_2_716DocumentTypeImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_716DocumentTypeImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getNodeNameEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_710ParentNode16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716DocumentTypeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11setPublicIdERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716DocumentTypeImpl11setSystemIdERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716DocumentTypeImpl17setInternalSubsetERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getEntitiesEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl7getNameEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl12getNotationsEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getElementsEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getPublicIdEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl11getSystemIdEv, ptr @_ZN11xercesc_2_716DocumentTypeImpl17getInternalSubsetEv] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716DocumentTypeImplE = dso_local constant [34 x i8] c"N11xercesc_2_716DocumentTypeImplE\00", align 1
@_ZTIN11xercesc_2_710ParentNodeE = external constant ptr
@_ZTIN11xercesc_2_716DocumentTypeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DocumentTypeImplE, ptr @_ZTIN11xercesc_2_710ParentNodeE }, align 8

@_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DocumentTypeImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DocumentTypeImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_S5_
@_ZN11xercesc_2_716DocumentTypeImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_716DocumentTypeImplC2ERKS0_b
@_ZN11xercesc_2_716DocumentTypeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716DocumentTypeImplD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTVN11xercesc_2_716DocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %29

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %8 unwind label %31

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %10 unwind label %33

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %12 unwind label %35

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %14 unwind label %37

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %16 unwind label %39

16:                                               ; preds = %14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %17 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %18 unwind label %43

18:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull %0)
          to label %19 unwind label %45

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  store ptr %17, ptr %20, align 8, !tbaa !51
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %22 unwind label %43

22:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull %0)
          to label %23 unwind label %47

23:                                               ; preds = %22
  %24 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  store ptr %21, ptr %24, align 8, !tbaa !52
  %25 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %26 unwind label %43

26:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull %0)
          to label %27 unwind label %49

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 5
  store ptr %25, ptr %28, align 8, !tbaa !53
  ret void

29:                                               ; preds = %3
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %59

31:                                               ; preds = %6
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %57

33:                                               ; preds = %8
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %55

35:                                               ; preds = %10
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %53

37:                                               ; preds = %12
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %14
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %51

43:                                               ; preds = %23, %19, %16
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %51

45:                                               ; preds = %18
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %17) #8
  br label %51

47:                                               ; preds = %22
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %21) #8
  br label %51

49:                                               ; preds = %26
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %25) #8
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %41
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %44, %43 ], [ %48, %47 ], [ %46, %45 ], [ %42, %41 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  br label %53

53:                                               ; preds = %51, %35
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  br label %55

55:                                               ; preds = %53, %33
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %57

57:                                               ; preds = %55, %31
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #8
  resume { ptr, i32 } %60
}

declare void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTVN11xercesc_2_716DocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %29

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 7
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %13 unwind label %31

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0)
          to label %15 unwind label %33

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 9
  store i8 0, ptr %16, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %17 unwind label %35

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %19 unwind label %37

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %20 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %21 unwind label %41

21:                                               ; preds = %19
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  %24 = call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %25 unwind label %43

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %26 unwind label %45

26:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %81 unwind label %45

27:                                               ; preds = %5
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %79

29:                                               ; preds = %9
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %77

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %75

33:                                               ; preds = %13
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %73

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %71

41:                                               ; preds = %59, %55, %52, %19
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %71

43:                                               ; preds = %23
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %26, %25
  %46 = phi i1 [ false, %26 ], [ true, %25 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  %50 = phi i1 [ %46, %45 ], [ true, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %24) #8
  br label %71

52:                                               ; preds = %21
  %53 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %54 unwind label %41

54:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull %0)
          to label %55 unwind label %65

55:                                               ; preds = %54
  %56 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  store ptr %53, ptr %56, align 8, !tbaa !51
  %57 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %58 unwind label %41

58:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull %0)
          to label %59 unwind label %67

59:                                               ; preds = %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  store ptr %57, ptr %60, align 8, !tbaa !52
  %61 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
          to label %62 unwind label %41

62:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull %0)
          to label %63 unwind label %69

63:                                               ; preds = %62
  %64 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 5
  store ptr %61, ptr %64, align 8, !tbaa !53
  ret void

65:                                               ; preds = %54
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %53) #8
  br label %71

67:                                               ; preds = %58
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %57) #8
  br label %71

69:                                               ; preds = %62
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %61) #8
  br label %71

71:                                               ; preds = %48, %51, %69, %67, %65, %41, %39
  %72 = phi { ptr, i32 } [ %49, %51 ], [ %49, %48 ], [ %70, %69 ], [ %42, %41 ], [ %68, %67 ], [ %66, %65 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  br label %73

73:                                               ; preds = %71, %33
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #8
  br label %75

75:                                               ; preds = %73, %31
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br label %77

77:                                               ; preds = %75, %29
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %79

79:                                               ; preds = %77, %27
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #8
  resume { ptr, i32 } %80

81:                                               ; preds = %26
  unreachable
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(84) %1)
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTVN11xercesc_2_716DocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 6
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %23

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %25

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %27

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %16 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %29

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %19 unwind label %31

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %2, label %20, label %37

20:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %37 unwind label %35

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %103

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %101

25:                                               ; preds = %11
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %99

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %97

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %95

35:                                               ; preds = %52, %44, %37, %20
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %95

37:                                               ; preds = %20, %19
  %38 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !51
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %0)
          to label %44 unwind label %35

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  store ptr %43, ptr %45, align 8, !tbaa !51
  %46 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull %0)
          to label %52 unwind label %35

52:                                               ; preds = %44
  %53 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  store ptr %51, ptr %53, align 8, !tbaa !52
  %54 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = load ptr, ptr %55, align 8, !tbaa !35
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull %0)
          to label %60 unwind label %35

60:                                               ; preds = %52
  %61 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 5
  store ptr %59, ptr %61, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %62 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 6
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %63 unwind label %77

63:                                               ; preds = %60
  %64 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %65 unwind label %79

65:                                               ; preds = %63
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %66 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 7
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %67 unwind label %83

67:                                               ; preds = %65
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %69 unwind label %85

69:                                               ; preds = %67
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %70 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 8
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %71 unwind label %89

71:                                               ; preds = %69
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %73 unwind label %91

73:                                               ; preds = %71
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  %74 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 9
  %75 = load i8, ptr %74, align 8, !tbaa !38, !range !54, !noundef !55
  %76 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 9
  store i8 %75, ptr %76, align 8, !tbaa !38
  ret void

77:                                               ; preds = %60
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %63
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %95

83:                                               ; preds = %65
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %87

85:                                               ; preds = %67
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %95

89:                                               ; preds = %69
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %93

91:                                               ; preds = %71
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %95

95:                                               ; preds = %93, %87, %81, %35, %33
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %88, %87 ], [ %82, %81 ], [ %36, %35 ], [ %34, %33 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  br label %97

97:                                               ; preds = %95, %27
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #8
  br label %99

99:                                               ; preds = %97, %25
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br label %101

101:                                              ; preds = %99, %23
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  br label %103

103:                                              ; preds = %101, %21
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #8
  resume { ptr, i32 } %104
}

declare void @_ZN11xercesc_2_710ParentNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode13cloneChildrenERKNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(26)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTVN11xercesc_2_716DocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %9 unwind label %36

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %10)
          to label %11 unwind label %36

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %19 unwind label %36

19:                                               ; preds = %15
  %20 = load ptr, ptr %12, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %20)
          to label %21 unwind label %36

21:                                               ; preds = %11, %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %29 unwind label %36

29:                                               ; preds = %25
  %30 = load ptr, ptr %22, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %30)
          to label %31 unwind label %36

31:                                               ; preds = %21, %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #8
  %33 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 7
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33) #8
  %34 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34) #8
  %35 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35) #8
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #8
  ret void

36:                                               ; preds = %29, %25, %19, %15, %9, %5
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_716DocumentTypeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DocumentTypeImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(145) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 152)
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(145) %3, ptr noundef nonnull align 8 dereferenceable(145) %0, i1 noundef zeroext %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11getNodeNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_716DocumentTypeImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i16 10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DocumentTypeImpl11getEntitiesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(145) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DocumentTypeImpl11getElementsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(145) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl7getNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DocumentTypeImpl12getNotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(145) %0) unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isDocumentTypeImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(145) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 11
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext %1, i1 noundef zeroext true)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 11
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext %1, i1 noundef zeroext true)
  ret void
}

declare void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11getPublicIdEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 6
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11getSystemIdEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 7
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl17getInternalSubsetEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(145) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %1, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(145) %0) local_unnamed_addr #7 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 9
  %3 = load i8, ptr %2, align 8, !tbaa !38, !range !54, !noundef !55
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11setPublicIdERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 6
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %10

8:                                                ; preds = %5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %9

9:                                                ; preds = %2, %8
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  resume { ptr, i32 } %11
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl11setSystemIdERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 7
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %10

8:                                                ; preds = %5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %9

9:                                                ; preds = %2, %8
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DocumentTypeImpl17setInternalSubsetERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %0, i64 0, i32 8
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %10

8:                                                ; preds = %5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %9

9:                                                ; preds = %2, %8
  ret void

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  resume { ptr, i32 } %11
}

declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

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

declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

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
!38 = !{!39, !50, i64 144}
!39 = !{!"_ZTSN11xercesc_2_716DocumentTypeImplE", !40, i64 0, !49, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !50, i64 144}
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
!50 = !{!"bool", !46, i64 0}
!51 = !{!39, !47, i64 96}
!52 = !{!39, !47, i64 104}
!53 = !{!39, !47, i64 112}
!54 = !{i8 0, i8 2}
!55 = !{}
