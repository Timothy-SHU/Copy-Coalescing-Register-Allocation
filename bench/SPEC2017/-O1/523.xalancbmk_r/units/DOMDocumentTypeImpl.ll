; ModuleID = 'DOMDocumentTypeImpl.cpp'
source_filename = "DOMDocumentTypeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMDocumentTypeImpl" = type <{ %"class.xercesc_2_7::DOMDocumentType", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::DOMDocumentType" = type { %"class.xercesc_2_7::DOMNode" }
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
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }

$_ZTSN11xercesc_2_715DOMDocumentTypeE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_715DOMDocumentTypeE = comdat any

@_ZN11xercesc_2_7L15documentCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_719DOMDocumentTypeImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMDocumentTypeImplE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev, ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD0Ev, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLastChildEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getAttributesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9cloneNodeEb, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl9normalizeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9getPrefixEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getTextContentEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl7releaseEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl7getNameEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getEntitiesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNotationsEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getPublicIdEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getSystemIdEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl17getInternalSubsetEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setPublicIdEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setSystemIdEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl17setInternalSubsetEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl16setOwnerDocumentEPNS_11DOMDocumentE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getElementsEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setReadOnlyEbb] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMDocumentTypeImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMDocumentTypeImplE\00", align 1
@_ZTSN11xercesc_2_715DOMDocumentTypeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMDocumentTypeE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMDocumentTypeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMDocumentTypeE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMDocumentTypeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMDocumentTypeImplE, ptr @_ZTIN11xercesc_2_715DOMDocumentTypeE }, align 8
@_ZN11xercesc_2_7L9sDocumentE = internal global ptr null, align 8
@_ZZN11xercesc_2_7L16gDocTypeDocumentEvE8gCoreStr = internal constant [5 x i16] [i16 67, i16 111, i16 114, i16 101, i16 0], align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp, ptr null }]

@_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtb
@_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtS4_S4_b
@_ZN11xercesc_2_719DOMDocumentTypeImplC1ERKS0_bb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb
@_ZN11xercesc_2_719DOMDocumentTypeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = zext i1 %3 to i8
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = select i1 %7, ptr null, ptr %8
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef %9)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %1)
          to label %11 unwind label %29

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %13 unwind label %31

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %14, i8 0, i64 57, i1 false)
  store i8 %5, ptr %17, align 1, !tbaa !41
  br i1 %7, label %35, label %18

18:                                               ; preds = %13
  %19 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2)
          to label %20 unwind label %33

20:                                               ; preds = %18
  store ptr %19, ptr %14, align 8, !tbaa !54
  %21 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %22 unwind label %33

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %21, ptr noundef nonnull %0)
          to label %23 unwind label %33

23:                                               ; preds = %22
  store ptr %21, ptr %15, align 8, !tbaa !55
  %24 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %25 unwind label %33

25:                                               ; preds = %23
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %24, ptr noundef nonnull %0)
          to label %26 unwind label %33

26:                                               ; preds = %25
  store ptr %24, ptr %16, align 8, !tbaa !56
  %27 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %28 unwind label %33

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %27, ptr noundef nonnull %0)
          to label %50 unwind label %33

29:                                               ; preds = %4
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %58

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %55

33:                                               ; preds = %26, %23, %20, %28, %25, %22, %18
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %53

35:                                               ; preds = %13
  %36 = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
          to label %37 unwind label %48

37:                                               ; preds = %35
  %38 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef %2)
          to label %39 unwind label %48

39:                                               ; preds = %37
  store ptr %38, ptr %14, align 8, !tbaa !54
  %40 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %36, i64 noundef 1560)
          to label %41 unwind label %48

41:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %40, ptr noundef nonnull %0)
          to label %42 unwind label %48

42:                                               ; preds = %41
  store ptr %40, ptr %15, align 8, !tbaa !55
  %43 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %36, i64 noundef 1560)
          to label %44 unwind label %48

44:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %43, ptr noundef nonnull %0)
          to label %45 unwind label %48

45:                                               ; preds = %44
  store ptr %43, ptr %16, align 8, !tbaa !56
  %46 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %36, i64 noundef 1560)
          to label %47 unwind label %48

47:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %46, ptr noundef nonnull %0)
          to label %50 unwind label %48

48:                                               ; preds = %45, %42, %39, %47, %44, %41, %37, %35
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %53

50:                                               ; preds = %47, %28
  %51 = phi ptr [ %27, %28 ], [ %46, %47 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !57
  ret void

53:                                               ; preds = %48, %33
  %54 = phi { ptr, i32 } [ %34, %33 ], [ %49, %48 ]
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #10
  br label %55

55:                                               ; preds = %53, %31
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %32, %31 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #10
  br label %58

58:                                               ; preds = %55, %29
  %59 = phi { ptr, i32 } [ %56, %55 ], [ %30, %29 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #10
  resume { ptr, i32 } %59
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() unnamed_addr #2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !58
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = tail call noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef nonnull @_ZZN11xercesc_2_7L16gDocTypeDocumentEvE8gCoreStr)
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  %6 = load ptr, ptr %4, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5)
  %10 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L9sDocumentE, ptr noundef %9, ptr noundef null)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %9, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %9, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %19

18:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15documentCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L14reinitDocumentEv)
  br label %19

19:                                               ; preds = %18, %14, %12, %0
  %20 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !58
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %7 = alloca [4000 x i16], align 16
  %8 = zext i1 %5 to i8
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds i8, ptr %1, i64 24
  %12 = select i1 %10, ptr null, ptr %11
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %9, ptr noundef %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %1)
          to label %14 unwind label %45

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %16 unwind label %47

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %17, i8 0, i64 57, i1 false)
  store i8 %8, ptr %22, align 1, !tbaa !41
  %23 = invoke noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2)
          to label %24 unwind label %49

24:                                               ; preds = %16
  %25 = icmp slt i32 %23, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %24
  %27 = tail call ptr @__cxa_allocate_exception(i64 40) #10
  %28 = load ptr, ptr %0, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %32 unwind label %51

32:                                               ; preds = %26
  %33 = icmp eq ptr %31, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %39 unwind label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %38, i64 0, i32 25
  br label %41

41:                                               ; preds = %32, %39
  %42 = phi ptr [ %40, %39 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %32 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %27, i16 noundef signext 14, ptr noundef null, ptr noundef %43)
          to label %44 unwind label %51

44:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
          to label %223 unwind label %49

45:                                               ; preds = %6
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %221

47:                                               ; preds = %14
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %218

49:                                               ; preds = %44, %16
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %216

51:                                               ; preds = %41, %34, %26
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #10
  br label %216

53:                                               ; preds = %24
  %54 = icmp eq i32 %23, 0
  br i1 %54, label %176, label %55

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %7) #10
  %56 = icmp sgt i32 %23, 3998
  br i1 %56, label %57, label %83

57:                                               ; preds = %55
  %58 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  %59 = icmp eq ptr %2, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = load i16, ptr %2, align 2, !tbaa !59
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %65, %63 ], [ %2, %60 ]
  %65 = getelementptr inbounds i16, ptr %64, i64 1
  %66 = load i16, ptr %65, align 2, !tbaa !59
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %63, !llvm.loop !60

68:                                               ; preds = %63
  %69 = ptrtoint ptr %65 to i64
  %70 = ptrtoint ptr %2 to i64
  %71 = sub i64 %69, %70
  %72 = and i64 %71, -2
  br label %73

73:                                               ; preds = %57, %60, %68
  %74 = phi i64 [ %72, %68 ], [ 0, %60 ], [ 0, %57 ]
  %75 = add i64 %74, 2
  %76 = and i64 %75, 8589934590
  %77 = load ptr, ptr %58, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %58, i64 noundef %76)
          to label %83 unwind label %81

81:                                               ; preds = %162, %168, %138, %117, %92, %89, %83, %73
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %174

83:                                               ; preds = %73, %55
  %84 = phi ptr [ %7, %55 ], [ %80, %73 ]
  %85 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %84, ptr noundef %2, i32 noundef %23)
          to label %86 unwind label %81

86:                                               ; preds = %83
  %87 = zext nneg i32 %23 to i64
  %88 = getelementptr inbounds i16, ptr %84, i64 %87
  store i16 0, ptr %88, align 2, !tbaa !59
  br i1 %10, label %117, label %89

89:                                               ; preds = %86
  %90 = invoke noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %84)
          to label %91 unwind label %81

91:                                               ; preds = %89
  br i1 %90, label %92, label %97

92:                                               ; preds = %91
  %93 = getelementptr inbounds i16, ptr %2, i64 %87
  %94 = getelementptr inbounds i16, ptr %93, i64 1
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef nonnull %94)
          to label %96 unwind label %81

96:                                               ; preds = %92
  br i1 %95, label %167, label %97

97:                                               ; preds = %96, %91
  %98 = call ptr @__cxa_allocate_exception(i64 40) #10
  %99 = load ptr, ptr %0, align 8, !tbaa !38
  %100 = getelementptr inbounds ptr, ptr %99, i64 12
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %103 unwind label %115

103:                                              ; preds = %97
  %104 = icmp eq ptr %102, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr %0, align 8, !tbaa !38
  %107 = getelementptr inbounds ptr, ptr %106, i64 12
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %110 unwind label %115

110:                                              ; preds = %105
  %111 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %109, i64 0, i32 25
  br label %112

112:                                              ; preds = %103, %110
  %113 = phi ptr [ %111, %110 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %103 ]
  %114 = load ptr, ptr %113, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %98, i16 noundef signext 14, ptr noundef null, ptr noundef %114)
          to label %162 unwind label %115

115:                                              ; preds = %112, %105, %97
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %98) #10
  br label %174

117:                                              ; preds = %86
  %118 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %84, i32 noundef %23)
          to label %119 unwind label %81

119:                                              ; preds = %117
  br i1 %118, label %120, label %144

120:                                              ; preds = %119
  %121 = getelementptr inbounds i16, ptr %2, i64 %87
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %2, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = load i16, ptr %2, align 2, !tbaa !59
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124, %127
  %128 = phi ptr [ %129, %127 ], [ %2, %124 ]
  %129 = getelementptr inbounds i16, ptr %128, i64 1
  %130 = load i16, ptr %129, align 2, !tbaa !59
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %127, !llvm.loop !60

132:                                              ; preds = %127
  %133 = ptrtoint ptr %129 to i64
  %134 = ptrtoint ptr %2 to i64
  %135 = sub i64 %133, %134
  %136 = lshr exact i64 %135, 1
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %120, %124, %132
  %139 = phi i32 [ %137, %132 ], [ 0, %124 ], [ 0, %120 ]
  %140 = xor i32 %23, -1
  %141 = add i32 %139, %140
  %142 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef nonnull %122, i32 noundef %141)
          to label %143 unwind label %81

143:                                              ; preds = %138
  br i1 %142, label %167, label %144

144:                                              ; preds = %143, %119
  %145 = call ptr @__cxa_allocate_exception(i64 40) #10
  %146 = load ptr, ptr %0, align 8, !tbaa !38
  %147 = getelementptr inbounds ptr, ptr %146, i64 12
  %148 = load ptr, ptr %147, align 8
  %149 = invoke noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %150 unwind label %165

150:                                              ; preds = %144
  %151 = icmp eq ptr %149, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %0, align 8, !tbaa !38
  %154 = getelementptr inbounds ptr, ptr %153, i64 12
  %155 = load ptr, ptr %154, align 8
  %156 = invoke noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %157 unwind label %165

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %156, i64 0, i32 25
  br label %159

159:                                              ; preds = %150, %157
  %160 = phi ptr [ %158, %157 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %150 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %145, i16 noundef signext 14, ptr noundef null, ptr noundef %161)
          to label %162 unwind label %165

162:                                              ; preds = %159, %112
  %163 = phi ptr [ %98, %112 ], [ %145, %159 ]
  invoke void @__cxa_throw(ptr nonnull %163, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
          to label %164 unwind label %81

164:                                              ; preds = %162
  unreachable

165:                                              ; preds = %159, %152, %144
  %166 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %145) #10
  br label %174

167:                                              ; preds = %143, %96
  br i1 %56, label %168, label %173

168:                                              ; preds = %167
  %169 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !58
  %170 = load ptr, ptr %169, align 8, !tbaa !38
  %171 = getelementptr inbounds ptr, ptr %170, i64 3
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %84)
          to label %173 unwind label %81

173:                                              ; preds = %168, %167
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #10
  br label %176

174:                                              ; preds = %165, %115, %81
  %175 = phi { ptr, i32 } [ %82, %81 ], [ %116, %115 ], [ %166, %165 ]
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #10
  br label %216

176:                                              ; preds = %53, %173
  br i1 %10, label %194, label %177

177:                                              ; preds = %176
  %178 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %3)
          to label %179 unwind label %192

179:                                              ; preds = %177
  store ptr %178, ptr %20, align 8, !tbaa !63
  %180 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %4)
          to label %181 unwind label %192

181:                                              ; preds = %179
  store ptr %180, ptr %21, align 8, !tbaa !64
  %182 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2)
          to label %183 unwind label %192

183:                                              ; preds = %181
  store ptr %182, ptr %17, align 8, !tbaa !54
  %184 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %185 unwind label %192

185:                                              ; preds = %183
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %184, ptr noundef nonnull %0)
          to label %186 unwind label %192

186:                                              ; preds = %185
  store ptr %184, ptr %18, align 8, !tbaa !55
  %187 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %188 unwind label %192

188:                                              ; preds = %186
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %187, ptr noundef nonnull %0)
          to label %189 unwind label %192

189:                                              ; preds = %188
  store ptr %187, ptr %19, align 8, !tbaa !56
  %190 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef 1560)
          to label %191 unwind label %192

191:                                              ; preds = %189
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %190, ptr noundef nonnull %0)
          to label %213 unwind label %192

192:                                              ; preds = %189, %186, %183, %191, %188, %185, %181, %179, %177
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %216

194:                                              ; preds = %176
  %195 = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
          to label %196 unwind label %211

196:                                              ; preds = %194
  %197 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %195, ptr noundef %3)
          to label %198 unwind label %211

198:                                              ; preds = %196
  store ptr %197, ptr %20, align 8, !tbaa !63
  %199 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %195, ptr noundef %4)
          to label %200 unwind label %211

200:                                              ; preds = %198
  store ptr %199, ptr %21, align 8, !tbaa !64
  %201 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %195, ptr noundef %2)
          to label %202 unwind label %211

202:                                              ; preds = %200
  store ptr %201, ptr %17, align 8, !tbaa !54
  %203 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %195, i64 noundef 1560)
          to label %204 unwind label %211

204:                                              ; preds = %202
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %203, ptr noundef nonnull %0)
          to label %205 unwind label %211

205:                                              ; preds = %204
  store ptr %203, ptr %18, align 8, !tbaa !55
  %206 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %195, i64 noundef 1560)
          to label %207 unwind label %211

207:                                              ; preds = %205
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %206, ptr noundef nonnull %0)
          to label %208 unwind label %211

208:                                              ; preds = %207
  store ptr %206, ptr %19, align 8, !tbaa !56
  %209 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %195, i64 noundef 1560)
          to label %210 unwind label %211

210:                                              ; preds = %208
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %209, ptr noundef nonnull %0)
          to label %213 unwind label %211

211:                                              ; preds = %208, %205, %202, %210, %207, %204, %200, %198, %196, %194
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %216

213:                                              ; preds = %210, %191
  %214 = phi ptr [ %190, %191 ], [ %209, %210 ]
  %215 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %214, ptr %215, align 8, !tbaa !57
  ret void

216:                                              ; preds = %211, %192, %174, %51, %49
  %217 = phi { ptr, i32 } [ %50, %49 ], [ %52, %51 ], [ %193, %192 ], [ %212, %211 ], [ %175, %174 ]
  call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #10
  br label %218

218:                                              ; preds = %216, %47
  %219 = phi { ptr, i32 } [ %217, %216 ], [ %48, %47 ]
  %220 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2, i32 2
  call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %220) #10
  br label %221

221:                                              ; preds = %218, %45
  %222 = phi { ptr, i32 } [ %219, %218 ], [ %46, %45 ]
  call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %9) #10
  resume { ptr, i32 } %222

223:                                              ; preds = %44
  unreachable
}

declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(130) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(10) %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %10 unwind label %37

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %13 unwind label %39

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i64 56, i1 false)
  %22 = load i8, ptr %21, align 8, !tbaa !65, !range !66, !noundef !67
  store i8 %22, ptr %20, align 8, !tbaa !65
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  store i8 %5, ptr %23, align 1, !tbaa !41
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  store ptr %25, ptr %14, align 8, !tbaa !54
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  store ptr %27, ptr %17, align 8, !tbaa !63
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  store ptr %29, ptr %18, align 8, !tbaa !64
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  store ptr %31, ptr %19, align 8, !tbaa !68
  %32 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %6)
          to label %33 unwind label %41

33:                                               ; preds = %13
  %34 = icmp ne ptr %32, null
  %35 = and i1 %34, %3
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %1)
          to label %43 unwind label %41

37:                                               ; preds = %4
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %69

39:                                               ; preds = %10
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %66

41:                                               ; preds = %57, %50, %43, %36, %13
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #10
  br label %66

43:                                               ; preds = %36, %33
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(1560) %45, ptr noundef nonnull %0)
          to label %50 unwind label %41

50:                                               ; preds = %43
  store ptr %49, ptr %15, align 8, !tbaa !55
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds ptr, ptr %53, i64 10
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(1560) %52, ptr noundef nonnull %0)
          to label %57 unwind label %41

57:                                               ; preds = %50
  store ptr %56, ptr %16, align 8, !tbaa !56
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = load ptr, ptr %59, align 8, !tbaa !38
  %61 = getelementptr inbounds ptr, ptr %60, i64 10
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(1560) %59, ptr noundef nonnull %0)
          to label %64 unwind label %41

64:                                               ; preds = %57
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %63, ptr %65, align 8, !tbaa !57
  ret void

66:                                               ; preds = %41, %39
  %67 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  %68 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %68) #10
  br label %69

69:                                               ; preds = %66, %37
  %70 = phi { ptr, i32 } [ %67, %66 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #10
  resume { ptr, i32 } %70
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #1

declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %7, i64 noundef 136, i32 noundef 5)
  br label %12

9:                                                ; preds = %2
  %10 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef 136, i32 noundef 5)
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %8, %6 ]
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb(ptr noundef nonnull align 8 dereferenceable(130) %13, ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext false, i1 noundef zeroext %1)
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %3, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %13)
  ret ptr %13
}

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %1)
  br label %42

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %12)
  store ptr %13, ptr %11, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %15)
  store ptr %16, ptr %14, align 8, !tbaa !64
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %18)
  store ptr %19, ptr %17, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %21)
  store ptr %22, ptr %20, align 8, !tbaa !54
  tail call void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull %1)
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %1)
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 10
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(1560) %25, ptr noundef nonnull %0)
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(1560) %31, ptr noundef nonnull %0)
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 10
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(1560) %37, ptr noundef nonnull %0)
  store ptr %29, ptr %24, align 8, !tbaa !55
  store ptr %35, ptr %30, align 8, !tbaa !56
  store ptr %41, ptr %36, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %8, %10, %6
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i16 10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getEntitiesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getElementsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 11
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1560) %6, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 11
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(1560) %14, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl17getInternalSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) local_unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 8, !tbaa !65, !range !66, !noundef !67
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5)
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  br i1 %7, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5)
  br label %13

11:                                               ; preds = %4
  %12 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef nonnull %1)
  store ptr %15, ptr %8, align 8, !tbaa !63
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %1)
  store ptr %13, ptr %12, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl17setInternalSubsetEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3)
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv()
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %1)
  store ptr %13, ptr %12, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !69
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !59
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !59
  %10 = and i16 %9, %4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  %14 = load i8, ptr %13, align 1, !tbaa !41, !range !66, !noundef !67
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  br label %77

20:                                               ; preds = %8
  %21 = tail call ptr @__cxa_allocate_exception(i64 40) #10
  %22 = load ptr, ptr %0, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %26 unwind label %39

26:                                               ; preds = %20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %33 unwind label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %32, i64 0, i32 25
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %34, %33 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %26 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %21, i16 noundef signext 15, ptr noundef null, ptr noundef %37)
          to label %38 unwind label %39

38:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

39:                                               ; preds = %35, %28, %20
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %78

41:                                               ; preds = %1
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  %43 = load i8, ptr %42, align 1, !tbaa !41, !range !66, !noundef !67
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null)
  %46 = load ptr, ptr %0, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  br label %77

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 8, !tbaa !38
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %53, ptr noundef nonnull %0, i32 noundef 5)
  br label %77

56:                                               ; preds = %49
  %57 = tail call ptr @__cxa_allocate_exception(i64 40) #10
  %58 = load ptr, ptr %0, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 12
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %62 unwind label %75

62:                                               ; preds = %56
  %63 = icmp eq ptr %61, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %0, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 12
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(130) %0)
          to label %69 unwind label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %68, i64 0, i32 25
  br label %71

71:                                               ; preds = %62, %69
  %72 = phi ptr [ %70, %69 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %62 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %57, i16 noundef signext 15, ptr noundef null, ptr noundef %73)
          to label %74 unwind label %75

74:                                               ; preds = %71
  tail call void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

75:                                               ; preds = %71, %64, %56
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %78

77:                                               ; preds = %45, %55, %16, %12
  ret void

78:                                               ; preds = %75, %39
  %79 = phi ptr [ %57, %75 ], [ %21, %39 ]
  %80 = phi { ptr, i32 } [ %76, %75 ], [ %40, %39 ]
  tail call void @__cxa_free_exception(ptr %79) #10
  resume { ptr, i32 } %80
}

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMDocumentTypeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1)
  br i1 %6, label %266, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %8, ptr noundef %1)
  br i1 %9, label %10, label %266

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 43
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 43
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %266

22:                                               ; preds = %10
  %23 = load ptr, ptr %0, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 43
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %27 = load ptr, ptr %1, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 43
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = icmp eq ptr %26, null
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load i16, ptr %26, align 2, !tbaa !59
  %36 = load i16, ptr %30, align 2, !tbaa !59
  %37 = icmp eq i16 %35, %36
  br i1 %37, label %46, label %266

38:                                               ; preds = %22
  br i1 %31, label %42, label %39

39:                                               ; preds = %38
  %40 = load i16, ptr %26, align 2, !tbaa !59
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %266

42:                                               ; preds = %39, %38
  br i1 %32, label %57, label %43

43:                                               ; preds = %42
  %44 = load i16, ptr %30, align 2, !tbaa !59
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %266

46:                                               ; preds = %34, %51
  %47 = phi i16 [ %54, %51 ], [ %35, %34 ]
  %48 = phi ptr [ %53, %51 ], [ %30, %34 ]
  %49 = phi ptr [ %52, %51 ], [ %26, %34 ]
  %50 = icmp eq i16 %47, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i16, ptr %49, i64 1
  %53 = getelementptr inbounds i16, ptr %48, i64 1
  %54 = load i16, ptr %52, align 2, !tbaa !59
  %55 = load i16, ptr %53, align 2, !tbaa !59
  %56 = icmp eq i16 %54, %55
  br i1 %56, label %46, label %266, !llvm.loop !71

57:                                               ; preds = %46, %43, %42, %16
  %58 = load ptr, ptr %0, align 8, !tbaa !38
  %59 = getelementptr inbounds ptr, ptr %58, i64 44
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load ptr, ptr %1, align 8, !tbaa !38
  %65 = getelementptr inbounds ptr, ptr %64, i64 44
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %266

69:                                               ; preds = %57
  %70 = load ptr, ptr %0, align 8, !tbaa !38
  %71 = getelementptr inbounds ptr, ptr %70, i64 44
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %74 = load ptr, ptr %1, align 8, !tbaa !38
  %75 = getelementptr inbounds ptr, ptr %74, i64 44
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %78 = icmp eq ptr %73, null
  %79 = icmp eq ptr %77, null
  %80 = or i1 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %69
  %82 = load i16, ptr %73, align 2, !tbaa !59
  %83 = load i16, ptr %77, align 2, !tbaa !59
  %84 = icmp eq i16 %82, %83
  br i1 %84, label %93, label %266

85:                                               ; preds = %69
  br i1 %78, label %89, label %86

86:                                               ; preds = %85
  %87 = load i16, ptr %73, align 2, !tbaa !59
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %266

89:                                               ; preds = %86, %85
  br i1 %79, label %104, label %90

90:                                               ; preds = %89
  %91 = load i16, ptr %77, align 2, !tbaa !59
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %104, label %266

93:                                               ; preds = %81, %98
  %94 = phi i16 [ %101, %98 ], [ %82, %81 ]
  %95 = phi ptr [ %100, %98 ], [ %77, %81 ]
  %96 = phi ptr [ %99, %98 ], [ %73, %81 ]
  %97 = icmp eq i16 %94, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds i16, ptr %96, i64 1
  %100 = getelementptr inbounds i16, ptr %95, i64 1
  %101 = load i16, ptr %99, align 2, !tbaa !59
  %102 = load i16, ptr %100, align 2, !tbaa !59
  %103 = icmp eq i16 %101, %102
  br i1 %103, label %93, label %266, !llvm.loop !71

104:                                              ; preds = %93, %90, %89, %63
  %105 = load ptr, ptr %0, align 8, !tbaa !38
  %106 = getelementptr inbounds ptr, ptr %105, i64 45
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load ptr, ptr %1, align 8, !tbaa !38
  %112 = getelementptr inbounds ptr, ptr %111, i64 45
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %151, label %266

116:                                              ; preds = %104
  %117 = load ptr, ptr %0, align 8, !tbaa !38
  %118 = getelementptr inbounds ptr, ptr %117, i64 45
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %121 = load ptr, ptr %1, align 8, !tbaa !38
  %122 = getelementptr inbounds ptr, ptr %121, i64 45
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %125 = icmp eq ptr %120, null
  %126 = icmp eq ptr %124, null
  %127 = or i1 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %116
  %129 = load i16, ptr %120, align 2, !tbaa !59
  %130 = load i16, ptr %124, align 2, !tbaa !59
  %131 = icmp eq i16 %129, %130
  br i1 %131, label %140, label %266

132:                                              ; preds = %116
  br i1 %125, label %136, label %133

133:                                              ; preds = %132
  %134 = load i16, ptr %120, align 2, !tbaa !59
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %266

136:                                              ; preds = %133, %132
  br i1 %126, label %151, label %137

137:                                              ; preds = %136
  %138 = load i16, ptr %124, align 2, !tbaa !59
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %151, label %266

140:                                              ; preds = %128, %145
  %141 = phi i16 [ %148, %145 ], [ %129, %128 ]
  %142 = phi ptr [ %147, %145 ], [ %124, %128 ]
  %143 = phi ptr [ %146, %145 ], [ %120, %128 ]
  %144 = icmp eq i16 %141, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds i16, ptr %143, i64 1
  %147 = getelementptr inbounds i16, ptr %142, i64 1
  %148 = load i16, ptr %146, align 2, !tbaa !59
  %149 = load i16, ptr %147, align 2, !tbaa !59
  %150 = icmp eq i16 %148, %149
  br i1 %150, label %140, label %266, !llvm.loop !71

151:                                              ; preds = %140, %137, %136, %110
  %152 = load ptr, ptr %0, align 8, !tbaa !38
  %153 = getelementptr inbounds ptr, ptr %152, i64 42
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %156 = icmp eq ptr %155, null
  %157 = load ptr, ptr %1, align 8, !tbaa !38
  %158 = getelementptr inbounds ptr, ptr %157, i64 42
  %159 = load ptr, ptr %158, align 8
  %160 = tail call noundef ptr %159(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %161 = icmp eq ptr %160, null
  br i1 %156, label %206, label %162

162:                                              ; preds = %151
  br i1 %161, label %266, label %163

163:                                              ; preds = %162
  %164 = load ptr, ptr %0, align 8, !tbaa !38
  %165 = getelementptr inbounds ptr, ptr %164, i64 42
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %168 = load ptr, ptr %1, align 8, !tbaa !38
  %169 = getelementptr inbounds ptr, ptr %168, i64 42
  %170 = load ptr, ptr %169, align 8
  %171 = tail call noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %172 = load ptr, ptr %167, align 8, !tbaa !38
  %173 = getelementptr inbounds ptr, ptr %172, i64 5
  %174 = load ptr, ptr %173, align 8
  %175 = tail call noundef i64 %174(ptr noundef nonnull align 8 dereferenceable(8) %167)
  %176 = load ptr, ptr %171, align 8, !tbaa !38
  %177 = getelementptr inbounds ptr, ptr %176, i64 5
  %178 = load ptr, ptr %177, align 8
  %179 = tail call noundef i64 %178(ptr noundef nonnull align 8 dereferenceable(8) %171)
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %266

181:                                              ; preds = %163
  %182 = icmp eq i64 %175, 0
  br i1 %182, label %207, label %186

183:                                              ; preds = %201
  %184 = add nuw i64 %187, 1
  %185 = icmp eq i64 %184, %175
  br i1 %185, label %207, label %186, !llvm.loop !72

186:                                              ; preds = %181, %183
  %187 = phi i64 [ %184, %183 ], [ 0, %181 ]
  %188 = load ptr, ptr %167, align 8, !tbaa !38
  %189 = getelementptr inbounds ptr, ptr %188, i64 3
  %190 = load ptr, ptr %189, align 8
  %191 = tail call noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(8) %167, i64 noundef %187)
  %192 = load ptr, ptr %191, align 8, !tbaa !38
  %193 = getelementptr inbounds ptr, ptr %192, i64 2
  %194 = load ptr, ptr %193, align 8
  %195 = tail call noundef ptr %194(ptr noundef nonnull align 8 dereferenceable(8) %191)
  %196 = load ptr, ptr %171, align 8, !tbaa !38
  %197 = getelementptr inbounds ptr, ptr %196, i64 4
  %198 = load ptr, ptr %197, align 8
  %199 = tail call noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %171, ptr noundef %195)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %266, label %201

201:                                              ; preds = %186
  %202 = load ptr, ptr %191, align 8, !tbaa !38
  %203 = getelementptr inbounds ptr, ptr %202, i64 28
  %204 = load ptr, ptr %203, align 8
  %205 = tail call noundef zeroext i1 %204(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef nonnull %199)
  br i1 %205, label %183, label %266

206:                                              ; preds = %151
  br i1 %161, label %207, label %266

207:                                              ; preds = %183, %181, %206
  %208 = load ptr, ptr %0, align 8, !tbaa !38
  %209 = getelementptr inbounds ptr, ptr %208, i64 41
  %210 = load ptr, ptr %209, align 8
  %211 = tail call noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %212 = icmp eq ptr %211, null
  %213 = load ptr, ptr %1, align 8, !tbaa !38
  %214 = getelementptr inbounds ptr, ptr %213, i64 41
  %215 = load ptr, ptr %214, align 8
  %216 = tail call noundef ptr %215(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %217 = icmp eq ptr %216, null
  br i1 %212, label %262, label %218

218:                                              ; preds = %207
  br i1 %217, label %266, label %219

219:                                              ; preds = %218
  %220 = load ptr, ptr %0, align 8, !tbaa !38
  %221 = getelementptr inbounds ptr, ptr %220, i64 41
  %222 = load ptr, ptr %221, align 8
  %223 = tail call noundef ptr %222(ptr noundef nonnull align 8 dereferenceable(130) %0)
  %224 = load ptr, ptr %1, align 8, !tbaa !38
  %225 = getelementptr inbounds ptr, ptr %224, i64 41
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %228 = load ptr, ptr %223, align 8, !tbaa !38
  %229 = getelementptr inbounds ptr, ptr %228, i64 5
  %230 = load ptr, ptr %229, align 8
  %231 = tail call noundef i64 %230(ptr noundef nonnull align 8 dereferenceable(8) %223)
  %232 = load ptr, ptr %227, align 8, !tbaa !38
  %233 = getelementptr inbounds ptr, ptr %232, i64 5
  %234 = load ptr, ptr %233, align 8
  %235 = tail call noundef i64 %234(ptr noundef nonnull align 8 dereferenceable(8) %227)
  %236 = icmp eq i64 %231, %235
  br i1 %236, label %237, label %266

237:                                              ; preds = %219
  %238 = icmp eq i64 %231, 0
  br i1 %238, label %263, label %242

239:                                              ; preds = %257
  %240 = add nuw i64 %243, 1
  %241 = icmp eq i64 %240, %231
  br i1 %241, label %263, label %242, !llvm.loop !73

242:                                              ; preds = %237, %239
  %243 = phi i64 [ %240, %239 ], [ 0, %237 ]
  %244 = load ptr, ptr %223, align 8, !tbaa !38
  %245 = getelementptr inbounds ptr, ptr %244, i64 3
  %246 = load ptr, ptr %245, align 8
  %247 = tail call noundef ptr %246(ptr noundef nonnull align 8 dereferenceable(8) %223, i64 noundef %243)
  %248 = load ptr, ptr %247, align 8, !tbaa !38
  %249 = getelementptr inbounds ptr, ptr %248, i64 2
  %250 = load ptr, ptr %249, align 8
  %251 = tail call noundef ptr %250(ptr noundef nonnull align 8 dereferenceable(8) %247)
  %252 = load ptr, ptr %227, align 8, !tbaa !38
  %253 = getelementptr inbounds ptr, ptr %252, i64 4
  %254 = load ptr, ptr %253, align 8
  %255 = tail call noundef ptr %254(ptr noundef nonnull align 8 dereferenceable(8) %227, ptr noundef %251)
  %256 = icmp eq ptr %255, null
  br i1 %256, label %266, label %257

257:                                              ; preds = %242
  %258 = load ptr, ptr %247, align 8, !tbaa !38
  %259 = getelementptr inbounds ptr, ptr %258, i64 28
  %260 = load ptr, ptr %259, align 8
  %261 = tail call noundef zeroext i1 %260(ptr noundef nonnull align 8 dereferenceable(8) %247, ptr noundef nonnull %255)
  br i1 %261, label %239, label %266

262:                                              ; preds = %207
  br i1 %217, label %263, label %266

263:                                              ; preds = %239, %237, %262
  %264 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %265 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %264, ptr noundef nonnull %1)
  br label %266

266:                                              ; preds = %51, %98, %145, %201, %186, %257, %242, %34, %81, %128, %137, %133, %90, %86, %43, %39, %263, %16, %63, %110, %162, %206, %218, %262, %163, %219, %7, %2
  %267 = phi i1 [ true, %2 ], [ false, %7 ], [ %265, %263 ], [ false, %16 ], [ false, %63 ], [ false, %110 ], [ false, %162 ], [ false, %206 ], [ false, %218 ], [ false, %262 ], [ false, %163 ], [ false, %219 ], [ false, %39 ], [ false, %43 ], [ false, %86 ], [ false, %90 ], [ false, %133 ], [ false, %137 ], [ false, %128 ], [ false, %81 ], [ false, %34 ], [ false, %242 ], [ false, %257 ], [ false, %186 ], [ false, %201 ], [ false, %145 ], [ false, %98 ], [ false, %51 ]
  ret i1 %267
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !59
  %6 = load i16, ptr @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE, align 2, !tbaa !59
  %7 = icmp eq i16 %5, %6
  br i1 %7, label %11, label %22

8:                                                ; preds = %2
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE, align 2, !tbaa !59
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %25, label %22

11:                                               ; preds = %4, %16
  %12 = phi i16 [ %19, %16 ], [ %5, %4 ]
  %13 = phi ptr [ %18, %16 ], [ @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE, %4 ]
  %14 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %15 = icmp eq i16 %12, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i16, ptr %14, i64 1
  %18 = getelementptr inbounds i16, ptr %13, i64 1
  %19 = load i16, ptr %17, align 2, !tbaa !59
  %20 = load i16, ptr %18, align 2, !tbaa !59
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %11, label %22, !llvm.loop !71

22:                                               ; preds = %16, %4, %8
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %24 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %23, ptr noundef %1)
  br label %25

25:                                               ; preds = %11, %8, %22
  %26 = phi ptr [ %24, %22 ], [ %0, %8 ], [ %0, %11 ]
  ret ptr %26
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN11xercesc_2_7L14reinitDocumentEv() #2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !58
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 39
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4)
  store ptr null, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !58
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp() #8 section ".text.startup" !prof !74 !PGOFuncName !75 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15documentCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

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
!35 = !{ptr @_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !53, i64 129}
!42 = !{!"_ZTSN11xercesc_2_719DOMDocumentTypeImplE", !43, i64 0, !45, i64 8, !49, i64 24, !52, i64 56, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !53, i64 128, !53, i64 129}
!43 = !{!"_ZTSN11xercesc_2_715DOMDocumentTypeE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!45 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !46, i64 0, !48, i64 8}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !40, i64 0}
!48 = !{!"short", !47, i64 0}
!49 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !46, i64 0, !46, i64 8, !50, i64 16}
!50 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !51, i64 0, !46, i64 8}
!51 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!52 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !46, i64 0, !46, i64 8}
!53 = !{!"bool", !47, i64 0}
!54 = !{!42, !46, i64 72}
!55 = !{!42, !46, i64 80}
!56 = !{!42, !46, i64 88}
!57 = !{!42, !46, i64 96}
!58 = !{!46, !46, i64 0}
!59 = !{!48, !48, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!42, !46, i64 104}
!64 = !{!42, !46, i64 112}
!65 = !{!42, !53, i64 128}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!42, !46, i64 120}
!69 = !{!45, !48, i64 8}
!70 = !{!42, !46, i64 24}
!71 = distinct !{!71, !61, !62}
!72 = distinct !{!72, !61, !62}
!73 = distinct !{!73, !61, !62}
!74 = !{!"function_entry_count", i64 1}
!75 = !{!"DOMDocumentTypeImpl.cpp;_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp"}
