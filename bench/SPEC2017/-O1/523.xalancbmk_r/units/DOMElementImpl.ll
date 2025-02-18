; ModuleID = 'DOMElementImpl.cpp'
source_filename = "DOMElementImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMTypeInfoImpl" = type { %"class.xercesc_2_7::DOMTypeInfo", %"class.xercesc_2_7::DOMPSVITypeInfo", i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMTypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMPSVITypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
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
%"class.xercesc_2_7::XMLUri" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_710DOMElementE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_710DOMElementE = comdat any

@_ZTVN11xercesc_2_714DOMElementImplE = dso_local unnamed_addr constant { [68 x ptr] } { [68 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DOMElementImplE, ptr @_ZN11xercesc_2_714DOMElementImplD2Ev, ptr @_ZN11xercesc_2_714DOMElementImplD0Ev, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_714DOMElementImpl9cloneNodeEb, ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl9normalizeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_714DOMElementImpl9getPrefixEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getLocalNameEv, ptr @_ZN11xercesc_2_714DOMElementImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv, ptr @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl7releaseEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_, ptr @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv, ptr @_ZN11xercesc_2_714DOMElementImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv] }, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@__const._ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv.xmlBaseString = private unnamed_addr constant [9 x i16] [i16 120, i16 109, i16 108, i16 58, i16 98, i16 97, i16 115, i16 101, i16 0], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZTSN11xercesc_2_714DOMElementImplE = dso_local constant [32 x i8] c"N11xercesc_2_714DOMElementImplE\00", align 1
@_ZTSN11xercesc_2_710DOMElementE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710DOMElementE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_710DOMElementE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DOMElementE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_714DOMElementImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DOMElementImplE, ptr @_ZTIN11xercesc_2_710DOMElementE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_714DOMElementImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b
@_ZN11xercesc_2_714DOMElementImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMElementImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6, !prof !55
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1)
          to label %9 unwind label %39, !prof !56

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %11 unwind label %41, !prof !56

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %14 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2)
          to label %15 unwind label %43, !prof !56

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %14, ptr %16, align 8, !tbaa !57
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 65
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %20 unwind label %43, !prof !69

20:                                               ; preds = %15
  %21 = load ptr, ptr %13, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %0, align 8, !tbaa !52
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  br i1 %22, label %26, label %45, !prof !56

26:                                               ; preds = %20
  %27 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %28 unwind label %43, !prof !71

28:                                               ; preds = %26
  %29 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %27, i64 noundef 32)
          to label %30 unwind label %43, !prof !56

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %29, ptr noundef nonnull %0)
          to label %31 unwind label %43, !prof !56

31:                                               ; preds = %30
  store ptr %29, ptr %13, align 8, !tbaa !70
  %32 = load ptr, ptr %0, align 8, !tbaa !52
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %36 unwind label %43, !prof !71

36:                                               ; preds = %31
  %37 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %35, i64 noundef 32)
          to label %38 unwind label %43, !prof !56

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %37, ptr noundef nonnull %0)
          to label %51 unwind label %43, !prof !56

39:                                               ; preds = %3
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %56

41:                                               ; preds = %9
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %53

43:                                               ; preds = %47, %36, %28, %49, %45, %38, %31, %30, %26, %15, %11
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  br label %53

45:                                               ; preds = %20
  %46 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %47 unwind label %43

47:                                               ; preds = %45
  %48 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %46, i64 noundef 32)
          to label %49 unwind label %43

49:                                               ; preds = %47
  %50 = load ptr, ptr %13, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %48, ptr noundef nonnull %0, ptr noundef %50)
          to label %51 unwind label %43

51:                                               ; preds = %38, %49
  %52 = phi ptr [ %48, %49 ], [ %37, %38 ]
  store ptr %52, ptr %12, align 8, !tbaa !72
  ret void

53:                                               ; preds = %43, %41
  %54 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %55) #15
  br label %56

56:                                               ; preds = %53, %39
  %57 = phi { ptr, i32 } [ %54, %53 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #15
  resume { ptr, i32 } %57
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !52
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds i8, ptr %8, i64 24
  %11 = select i1 %9, ptr null, ptr %10
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %11)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %1, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %17 unwind label %27

17:                                               ; preds = %3
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %16)
          to label %18 unwind label %27

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %20 unwind label %29

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %24, ptr %25, align 8, !tbaa !57
  br i1 %2, label %26, label %33

26:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %1)
          to label %33 unwind label %31

27:                                               ; preds = %17, %3
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %114

29:                                               ; preds = %18
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %111

31:                                               ; preds = %104, %99, %84, %106, %102, %101, %97, %86, %79, %72, %63, %58, %51, %45, %40, %33, %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #15
  br label %111

33:                                               ; preds = %26, %20
  %34 = load ptr, ptr %1, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 11
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %1, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 11
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %45 unwind label %31

45:                                               ; preds = %40
  %46 = load ptr, ptr %44, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 11
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(25) %44, ptr noundef nonnull %0)
          to label %50 unwind label %31

50:                                               ; preds = %45
  store ptr %49, ptr %21, align 8, !tbaa !72
  br label %51

51:                                               ; preds = %50, %38
  %52 = load ptr, ptr %1, align 8, !tbaa !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 63
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %56 unwind label %31

56:                                               ; preds = %51
  %57 = icmp eq ptr %55, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %1, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 63
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %63 unwind label %31

63:                                               ; preds = %58
  %64 = load ptr, ptr %62, align 8, !tbaa !52
  %65 = getelementptr inbounds ptr, ptr %64, i64 11
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(25) %62, ptr noundef nonnull %0)
          to label %68 unwind label %31

68:                                               ; preds = %63
  store ptr %67, ptr %22, align 8, !tbaa !70
  br label %69

69:                                               ; preds = %68, %56
  %70 = load ptr, ptr %22, align 8, !tbaa !70
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 8, !tbaa !52
  %74 = getelementptr inbounds ptr, ptr %73, i64 65
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %76 unwind label %31

76:                                               ; preds = %72, %69
  %77 = load ptr, ptr %22, align 8, !tbaa !70
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load ptr, ptr %0, align 8, !tbaa !52
  %81 = getelementptr inbounds ptr, ptr %80, i64 12
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %84 unwind label %31

84:                                               ; preds = %79
  %85 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %83, i64 noundef 32)
          to label %86 unwind label %31

86:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %85, ptr noundef nonnull %0)
          to label %87 unwind label %31

87:                                               ; preds = %86
  store ptr %85, ptr %22, align 8, !tbaa !70
  br label %88

88:                                               ; preds = %87, %76
  %89 = load ptr, ptr %21, align 8, !tbaa !72
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load ptr, ptr %22, align 8, !tbaa !70
  %93 = icmp eq ptr %92, null
  %94 = load ptr, ptr %0, align 8, !tbaa !52
  %95 = getelementptr inbounds ptr, ptr %94, i64 12
  %96 = load ptr, ptr %95, align 8
  br i1 %93, label %97, label %102

97:                                               ; preds = %91
  %98 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %99 unwind label %31

99:                                               ; preds = %97
  %100 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %98, i64 noundef 32)
          to label %101 unwind label %31

101:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %100, ptr noundef nonnull %0)
          to label %108 unwind label %31

102:                                              ; preds = %91
  %103 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %104 unwind label %31

104:                                              ; preds = %102
  %105 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %103, i64 noundef 32)
          to label %106 unwind label %31

106:                                              ; preds = %104
  %107 = load ptr, ptr %22, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %105, ptr noundef nonnull %0, ptr noundef %107)
          to label %108 unwind label %31

108:                                              ; preds = %106, %101
  %109 = phi ptr [ %100, %101 ], [ %105, %106 ]
  store ptr %109, ptr %21, align 8, !tbaa !72
  br label %110

110:                                              ; preds = %108, %88
  ret void

111:                                              ; preds = %31, %29
  %112 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  %113 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %113) #15
  br label %114

114:                                              ; preds = %111, %27
  %115 = phi { ptr, i32 } [ %112, %111 ], [ %28, %27 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #15
  resume { ptr, i32 } %115
}

declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !73 {
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !73 {
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %6, i64 noundef 96, i32 noundef 6)
  tail call void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7)
  ret ptr %7
}

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !74 {
  ret i16 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef %1), !prof !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !77

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8), !prof !78
  br label %15

15:                                               ; preds = %2, %10
  %16 = phi ptr [ %14, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef %1), !prof !80
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #9 align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %7
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  resume { ptr, i32 } %28

29:                                               ; preds = %2
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds ptr, ptr %32, i64 14
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(25) %31, ptr noundef %1)
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = zext nneg i32 %35 to i64
  %39 = load ptr, ptr %30, align 8, !tbaa !72
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = getelementptr inbounds ptr, ptr %40, i64 16
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(25) %39, i64 noundef %38)
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 51
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(72) %43)
  %47 = load ptr, ptr %43, align 8, !tbaa !52
  %48 = getelementptr inbounds ptr, ptr %47, i64 39
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(8) %43)
  br label %50

50:                                               ; preds = %37, %29
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %117

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = load ptr, ptr %1, align 8, !tbaa !52
  br i1 %34, label %46, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds ptr, ptr %37, i64 22
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %42 = load ptr, ptr %36, align 8, !tbaa !52
  %43 = getelementptr inbounds ptr, ptr %42, i64 15
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(25) %36, ptr noundef %41, ptr noundef nonnull %33)
  br label %54

46:                                               ; preds = %29
  %47 = getelementptr inbounds ptr, ptr %37, i64 40
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %50 = load ptr, ptr %36, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 14
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef i32 %52(ptr noundef nonnull align 8 dereferenceable(25) %36, ptr noundef %49)
  br label %54

54:                                               ; preds = %46, %38
  %55 = phi i32 [ %45, %38 ], [ %53, %46 ]
  %56 = sext i32 %55 to i64
  %57 = icmp sgt i32 %55, -1
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !72
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(25) %60, i64 noundef %56)
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load ptr, ptr %59, align 8, !tbaa !72
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = getelementptr inbounds ptr, ptr %68, i64 16
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(25) %67, i64 noundef %56)
  %72 = load ptr, ptr %1, align 8, !tbaa !52
  %73 = getelementptr inbounds ptr, ptr %72, i64 51
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(72) %1)
  ret ptr %64

75:                                               ; preds = %58
  %76 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %77 = load ptr, ptr %0, align 8, !tbaa !52
  %78 = getelementptr inbounds ptr, ptr %77, i64 12
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %81 unwind label %94

81:                                               ; preds = %75
  %82 = icmp eq ptr %80, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %0, align 8, !tbaa !52
  %85 = getelementptr inbounds ptr, ptr %84, i64 12
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %88 unwind label %94

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %87, i64 0, i32 25
  br label %90

90:                                               ; preds = %81, %88
  %91 = phi ptr [ %89, %88 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %81 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %76, i16 noundef signext 8, ptr noundef null, ptr noundef %92)
          to label %93 unwind label %94

93:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

94:                                               ; preds = %90, %83, %75
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %117

96:                                               ; preds = %54
  %97 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %98 = load ptr, ptr %0, align 8, !tbaa !52
  %99 = getelementptr inbounds ptr, ptr %98, i64 12
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %102 unwind label %115

102:                                              ; preds = %96
  %103 = icmp eq ptr %101, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %0, align 8, !tbaa !52
  %106 = getelementptr inbounds ptr, ptr %105, i64 12
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %109 unwind label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %108, i64 0, i32 25
  br label %111

111:                                              ; preds = %102, %109
  %112 = phi ptr [ %110, %109 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %102 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %97, i16 noundef signext 8, ptr noundef null, ptr noundef %113)
          to label %114 unwind label %115

114:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

115:                                              ; preds = %111, %104, %96
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %117

117:                                              ; preds = %94, %115, %27
  %118 = phi ptr [ %76, %94 ], [ %97, %115 ], [ %9, %27 ]
  %119 = phi { ptr, i32 } [ %95, %94 ], [ %116, %115 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %118) #15
  resume { ptr, i32 } %119
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %8 = and i16 %7, %6
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %16 unwind label %29

16:                                               ; preds = %10
  %17 = icmp eq ptr %15, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %23 unwind label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %22, i64 0, i32 25
  br label %25

25:                                               ; preds = %16, %23
  %26 = phi ptr [ %24, %23 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %16 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %11, i16 noundef signext 7, ptr noundef null, ptr noundef %27)
          to label %28 unwind label %29

28:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

29:                                               ; preds = %25, %18, %10
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #15
  resume { ptr, i32 } %30

31:                                               ; preds = %3
  %32 = load ptr, ptr %0, align 8, !tbaa !52
  %33 = getelementptr inbounds ptr, ptr %32, i64 42
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %4)
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %1)
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(25) %44, ptr noundef %42)
  br label %49

49:                                               ; preds = %37, %31
  %50 = phi ptr [ %35, %31 ], [ %42, %37 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = getelementptr inbounds ptr, ptr %51, i64 19
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %2)
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %60

29:                                               ; preds = %2
  %30 = load ptr, ptr %0, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 42
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %37 = load ptr, ptr %0, align 8, !tbaa !52
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %41 unwind label %54

41:                                               ; preds = %35
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %48 unwind label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %47, i64 0, i32 25
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %49, %48 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %36, i16 noundef signext 8, ptr noundef null, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

54:                                               ; preds = %50, %43, %35
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %60

56:                                               ; preds = %29
  %57 = load ptr, ptr %33, align 8, !tbaa !52
  %58 = getelementptr inbounds ptr, ptr %57, i64 50
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(72) %33)
  ret void

60:                                               ; preds = %54, %27
  %61 = phi ptr [ %36, %54 ], [ %9, %27 ]
  %62 = phi { ptr, i32 } [ %55, %54 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %61) #15
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %7 = and i16 %6, %5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %15 unwind label %28

15:                                               ; preds = %9
  %16 = icmp eq ptr %14, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %22 unwind label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %21, i64 0, i32 25
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi ptr [ %23, %22 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %15 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 7, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

28:                                               ; preds = %24, %17, %9
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %61

30:                                               ; preds = %3
  %31 = load ptr, ptr %0, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 51
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %38 = load ptr, ptr %0, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %42 unwind label %55

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !52
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %49 unwind label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %48, i64 0, i32 25
  br label %51

51:                                               ; preds = %42, %49
  %52 = phi ptr [ %50, %49 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %42 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 8, ptr noundef null, ptr noundef %53)
          to label %54 unwind label %55

54:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

55:                                               ; preds = %51, %44, %36
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %61

57:                                               ; preds = %30
  %58 = load ptr, ptr %34, align 8, !tbaa !52
  %59 = getelementptr inbounds ptr, ptr %58, i64 50
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(72) %34)
  ret void

61:                                               ; preds = %55, %28
  %62 = phi ptr [ %37, %55 ], [ %10, %28 ]
  %63 = phi { ptr, i32 } [ %56, %55 ], [ %29, %28 ]
  tail call void @__cxa_free_exception(ptr %62) #15
  resume { ptr, i32 } %63
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %84

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr %1, align 8, !tbaa !52
  br i1 %34, label %48, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds ptr, ptr %35, i64 22
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %40 = load ptr, ptr %1, align 8, !tbaa !52
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 51
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %39, ptr noundef %43)
  br label %56

48:                                               ; preds = %29
  %49 = getelementptr inbounds ptr, ptr %35, i64 40
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %52 = load ptr, ptr %0, align 8, !tbaa !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 42
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %51)
  br label %56

56:                                               ; preds = %48, %36
  %57 = phi ptr [ %47, %36 ], [ %55, %48 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %61 = load ptr, ptr %0, align 8, !tbaa !52
  %62 = getelementptr inbounds ptr, ptr %61, i64 12
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %65 unwind label %78

65:                                               ; preds = %59
  %66 = icmp eq ptr %64, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 8, !tbaa !52
  %69 = getelementptr inbounds ptr, ptr %68, i64 12
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %72 unwind label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %71, i64 0, i32 25
  br label %74

74:                                               ; preds = %65, %72
  %75 = phi ptr [ %73, %72 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %65 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %60, i16 noundef signext 8, ptr noundef null, ptr noundef %76)
          to label %77 unwind label %78

77:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

78:                                               ; preds = %74, %67, %59
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %84

80:                                               ; preds = %56
  %81 = load ptr, ptr %57, align 8, !tbaa !52
  %82 = getelementptr inbounds ptr, ptr %81, i64 50
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(72) %57)
  ret void

84:                                               ; preds = %78, %27
  %85 = phi ptr [ %60, %78 ], [ %9, %27 ]
  %86 = phi { ptr, i32 } [ %79, %78 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %85) #15
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %63

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %37 = load ptr, ptr %0, align 8, !tbaa !52
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %41 unwind label %54

41:                                               ; preds = %35
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %48 unwind label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %47, i64 0, i32 25
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %49, %48 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %36, i16 noundef signext 4, ptr noundef null, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

54:                                               ; preds = %50, %43, %35
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %63

56:                                               ; preds = %29
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(25) %58, ptr noundef nonnull %1)
  ret ptr %62

63:                                               ; preds = %54, %27
  %64 = phi ptr [ %36, %54 ], [ %9, %27 ]
  %65 = phi { ptr, i32 } [ %55, %54 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %64) #15
  resume { ptr, i32 } %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds ptr, ptr %7, i64 17
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(25) %6, i1 noundef zeroext %1, i1 noundef zeroext true)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %1, ptr noundef %2)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %12, i64 42
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %16

16:                                               ; preds = %3, %11
  %17 = phi ptr [ %15, %11 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %3 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %9 = and i16 %8, %7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #15
  resume { ptr, i32 } %31

32:                                               ; preds = %4
  %33 = load ptr, ptr %0, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 51
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5)
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef %1, ptr noundef %2)
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 8
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(25) %45, ptr noundef %43)
  br label %50

50:                                               ; preds = %38, %32
  %51 = phi ptr [ %36, %32 ], [ %43, %38 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds ptr, ptr %52, i64 19
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !82
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %7 = and i16 %6, %5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %15 unwind label %28

15:                                               ; preds = %9
  %16 = icmp eq ptr %14, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %22 unwind label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %21, i64 0, i32 25
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi ptr [ %23, %22 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %15 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 7, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

28:                                               ; preds = %24, %17, %9
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  resume { ptr, i32 } %29

30:                                               ; preds = %3
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 15
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef i32 %35(ptr noundef nonnull align 8 dereferenceable(25) %32, ptr noundef %1, ptr noundef %2)
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = zext nneg i32 %36 to i64
  %40 = load ptr, ptr %31, align 8, !tbaa !72
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 16
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(25) %40, i64 noundef %39)
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = getelementptr inbounds ptr, ptr %45, i64 39
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %44)
  br label %48

48:                                               ; preds = %38, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %1, ptr noundef %2)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8, !prof !86

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %67

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !87
  %34 = load ptr, ptr %0, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 12
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(96) %0), !prof !88
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %60, label %39, !prof !86

39:                                               ; preds = %29
  %40 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %41 = load ptr, ptr %0, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 12
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %45 unwind label %58

45:                                               ; preds = %39
  %46 = icmp eq ptr %44, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %0, align 8, !tbaa !52
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %52 unwind label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %51, i64 0, i32 25
  br label %54

54:                                               ; preds = %45, %52
  %55 = phi ptr [ %53, %52 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %45 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %40, i16 noundef signext 4, ptr noundef null, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

58:                                               ; preds = %54, %47, %39
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %67

60:                                               ; preds = %29
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds ptr, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(25) %62, ptr noundef nonnull %1), !prof !89
  ret ptr %66

67:                                               ; preds = %58, %27
  %68 = phi ptr [ %40, %58 ], [ %9, %27 ]
  %69 = phi { ptr, i32 } [ %59, %58 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %68) #15
  resume { ptr, i32 } %69
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  ret ptr %8
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !52
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i64 %8(ptr noundef nonnull align 8 dereferenceable(25) %3)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 42
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  %7 = icmp ne ptr %6, null
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds ptr, ptr %4, i64 51
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !51 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds ptr, ptr %2, i64 12
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(96) %0), !prof !71
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %5, null
  %10 = or i1 %9, %8
  br i1 %10, label %50, label %11, !prof !55

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %5), !prof !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17, !prof !56

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 50
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(130) %21)
  %26 = load ptr, ptr %0, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %30 = load ptr, ptr %25, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %29)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %17
  %36 = load ptr, ptr %33, align 8, !tbaa !52
  %37 = getelementptr inbounds ptr, ptr %36, i64 11
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %33)
  br label %40

40:                                               ; preds = %17, %35
  %41 = phi ptr [ %39, %35 ], [ null, %17 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %48 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %47, i64 noundef 32)
  tail call void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %48, ptr noundef nonnull %0, ptr noundef nonnull %41)
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !70
  br label %50

50:                                               ; preds = %40, %43, %1, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %68

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef signext i16 %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %37 = load ptr, ptr %0, align 8, !tbaa !52
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %41 unwind label %54

41:                                               ; preds = %35
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %48 unwind label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %47, i64 0, i32 25
  br label %50

50:                                               ; preds = %41, %48
  %51 = phi ptr [ %49, %48 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %41 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %36, i16 noundef signext 4, ptr noundef null, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

54:                                               ; preds = %50, %43, %35
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %68

56:                                               ; preds = %29
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(25) %58, ptr noundef nonnull %1)
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  %66 = getelementptr inbounds ptr, ptr %65, i64 13
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(25) %64, i1 noundef zeroext true)
  ret ptr %62

68:                                               ; preds = %54, %27
  %69 = phi ptr [ %36, %54 ], [ %9, %27 ]
  %70 = phi { ptr, i32 } [ %55, %54 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %69) #15
  resume { ptr, i32 } %70
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %72

29:                                               ; preds = %2
  %30 = load ptr, ptr %1, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %34 = load ptr, ptr %0, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 12
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %60, label %39

39:                                               ; preds = %29
  %40 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %41 = load ptr, ptr %0, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 12
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %45 unwind label %58

45:                                               ; preds = %39
  %46 = icmp eq ptr %44, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %0, align 8, !tbaa !52
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %52 unwind label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %51, i64 0, i32 25
  br label %54

54:                                               ; preds = %45, %52
  %55 = phi ptr [ %53, %52 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %45 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %40, i16 noundef signext 4, ptr noundef null, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

58:                                               ; preds = %54, %47, %39
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %72

60:                                               ; preds = %29
  %61 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = getelementptr inbounds ptr, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(25) %62, ptr noundef nonnull %1)
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = getelementptr inbounds ptr, ptr %69, i64 13
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(25) %68, i1 noundef zeroext true)
  ret ptr %66

72:                                               ; preds = %58, %27
  %73 = phi ptr [ %40, %58 ], [ %9, %27 ]
  %74 = phi { ptr, i32 } [ %59, %58 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %73) #15
  resume { ptr, i32 } %74
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !83
  %9 = and i16 %8, %3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !52
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 15, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %7, %1
  %33 = load ptr, ptr %0, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %39, i32 noundef 3, ptr noundef null, ptr noundef null)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef nonnull %0, i32 noundef 6)
  ret void

41:                                               ; preds = %32
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #15
  %43 = load ptr, ptr %0, align 8, !tbaa !52
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %47 unwind label %60

47:                                               ; preds = %41
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %53, i64 0, i32 25
  br label %56

56:                                               ; preds = %47, %54
  %57 = phi ptr [ %55, %54 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 15, ptr noundef null, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

60:                                               ; preds = %56, %49, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %42, %60 ], [ %12, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #15
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = alloca [9 x i16], align 16
  %3 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %4 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds ptr, ptr %7, i64 31
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %2, ptr noundef nonnull align 16 dereferenceable(18) @__const._ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv.xmlBaseString, i64 18, i1 false)
  %15 = load ptr, ptr %12, align 8, !tbaa !52
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull %2)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %79, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 8, !tbaa !52
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %79, label %26

26:                                               ; preds = %20
  %27 = load i16, ptr %24, align 2, !tbaa !83
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #15
  %30 = load ptr, ptr %0, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %34 unwind label %59

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %33, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %10, ptr noundef %36)
          to label %37 unwind label %59

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #15
  %38 = load ptr, ptr %0, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %42 unwind label %61

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %41, i64 0, i32 25
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %3, ptr noundef nonnull %24, ptr noundef %44)
          to label %45 unwind label %61

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %50 unwind label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %4, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %55 unwind label %63

55:                                               ; preds = %54, %50
  %56 = load ptr, ptr %51, align 8, !tbaa !103
  %57 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %49, ptr noundef %56)
          to label %58 unwind label %63

58:                                               ; preds = %55
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  br label %79

59:                                               ; preds = %34, %29
  %60 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %67

61:                                               ; preds = %42, %37
  %62 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %65

63:                                               ; preds = %54, %55, %45
  %64 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #15
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #15
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %60, %59 ]
  %69 = extractvalue { ptr, i32 } %68, 1
  %70 = extractvalue { ptr, i32 } %68, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #15
  %71 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %72 = icmp eq i32 %69, %71
  %73 = call ptr @__cxa_begin_catch(ptr %70) #15
  br i1 %72, label %74, label %75

74:                                               ; preds = %67
  invoke void @__cxa_rethrow() #17
          to label %88 unwind label %76

75:                                               ; preds = %67
  call void @__cxa_end_catch()
  br label %79

76:                                               ; preds = %74
  %77 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %78 unwind label %85

78:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #15
  resume { ptr, i32 } %77

79:                                               ; preds = %75, %58, %26, %20, %14
  %80 = phi i1 [ true, %14 ], [ false, %58 ], [ false, %75 ], [ true, %26 ], [ true, %20 ]
  %81 = phi ptr [ undef, %14 ], [ %57, %58 ], [ null, %75 ], [ undef, %26 ], [ undef, %20 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #15
  br i1 %80, label %82, label %83

82:                                               ; preds = %79, %1
  br label %83

83:                                               ; preds = %79, %82
  %84 = phi ptr [ %10, %82 ], [ %81, %79 ]
  ret ptr %84

85:                                               ; preds = %76
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #18
  unreachable

88:                                               ; preds = %74
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !73 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !105 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #9 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !73 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  br i1 %6, label %91, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %8, ptr noundef %1)
  br i1 %9, label %10, label %91

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = getelementptr inbounds ptr, ptr %11, i64 26
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %15 = load ptr, ptr %1, align 8, !tbaa !52
  %16 = getelementptr inbounds ptr, ptr %15, i64 26
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %19 = xor i1 %14, %18
  br i1 %19, label %91, label %20

20:                                               ; preds = %10
  br i1 %14, label %21, label %88

21:                                               ; preds = %20
  %22 = load ptr, ptr %0, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %26 = load ptr, ptr %1, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %30 = load ptr, ptr %25, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i64 %32(ptr noundef nonnull align 8 dereferenceable(8) %25)
  %34 = load ptr, ptr %29, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i64 %36(ptr noundef nonnull align 8 dereferenceable(8) %29)
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %21
  %40 = icmp eq i64 %33, 0
  br i1 %40, label %88, label %41

41:                                               ; preds = %39, %85
  %42 = phi i64 [ %86, %85 ], [ 0, %39 ]
  %43 = load ptr, ptr %25, align 8, !tbaa !52
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %42)
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = getelementptr inbounds ptr, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %46, align 8, !tbaa !52
  br i1 %51, label %53, label %67

53:                                               ; preds = %41
  %54 = getelementptr inbounds ptr, ptr %52, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %57 = load ptr, ptr %29, align 8, !tbaa !52
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %56)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %91, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %46, align 8, !tbaa !52
  %64 = getelementptr inbounds ptr, ptr %63, i64 28
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %60)
  br i1 %66, label %85, label %91

67:                                               ; preds = %41
  %68 = getelementptr inbounds ptr, ptr %52, i64 22
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %71 = load ptr, ptr %46, align 8, !tbaa !52
  %72 = getelementptr inbounds ptr, ptr %71, i64 24
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %46)
  %75 = load ptr, ptr %29, align 8, !tbaa !52
  %76 = getelementptr inbounds ptr, ptr %75, i64 7
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %70, ptr noundef %74)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %67
  %81 = load ptr, ptr %46, align 8, !tbaa !52
  %82 = getelementptr inbounds ptr, ptr %81, i64 28
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %78)
  br i1 %84, label %85, label %91

85:                                               ; preds = %80, %62
  %86 = add nuw i64 %42, 1
  %87 = icmp eq i64 %86, %33
  br i1 %87, label %88, label %41, !llvm.loop !111

88:                                               ; preds = %85, %39, %20
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %90 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull %1)
  br label %91

91:                                               ; preds = %62, %53, %67, %80, %88, %10, %21, %7, %2
  %92 = phi i1 [ true, %2 ], [ false, %7 ], [ %90, %88 ], [ false, %10 ], [ false, %21 ], [ false, %80 ], [ false, %67 ], [ false, %53 ], [ false, %62 ]
  ret i1 %92
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl6renameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !73 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i16, ptr %1, align 2, !tbaa !83
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9, %3
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef %2)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 63
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef %20)
  br label %74

21:                                               ; preds = %9
  %22 = load ptr, ptr %7, align 8, !tbaa !52
  %23 = getelementptr inbounds ptr, ptr %22, i64 16
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %1, ptr noundef %2)
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %25, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %26, ptr noundef nonnull %27)
  %28 = load ptr, ptr %0, align 8, !tbaa !52
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %32 = load ptr, ptr %0, align 8, !tbaa !52
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %36 = icmp eq ptr %31, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load ptr, ptr %31, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %0)
  br label %42

42:                                               ; preds = %37, %21
  %43 = load ptr, ptr %0, align 8, !tbaa !52
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %42, %48
  %49 = phi ptr [ %61, %48 ], [ %46, %42 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 16
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %49)
  %54 = load ptr, ptr %25, align 8, !tbaa !52
  %55 = getelementptr inbounds ptr, ptr %54, i64 17
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(96) %25, ptr noundef nonnull %49)
  %58 = load ptr, ptr %0, align 8, !tbaa !52
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !114

63:                                               ; preds = %48, %42
  br i1 %36, label %69, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %31, align 8, !tbaa !52
  %66 = getelementptr inbounds ptr, ptr %65, i64 14
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %25, ptr noundef %35)
  br label %69

69:                                               ; preds = %64, %63
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %25, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25) %71, ptr noundef %73)
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %27, i32 noundef 4, ptr noundef nonnull %0, ptr noundef %25)
  br label %74

74:                                               ; preds = %69, %12
  %75 = phi ptr [ %25, %69 ], [ %0, %12 ]
  ret ptr %75
}

declare void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714DOMElementImpl11getTypeInfoEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !73 {
  ret ptr @_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nosync nounwind memory(none) }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 550}
!36 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 550}
!37 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_712DOMChildNodeC1Ev, i64 550}
!38 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 550}
!39 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv, i64 550}
!40 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, i64 1100}
!41 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 1100}
!42 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE, i64 1100}
!43 = !{ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, i64 650}
!44 = !{ptr @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, i64 550}
!45 = !{ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, i64 549}
!46 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv, i64 719}
!47 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv, i64 825}
!48 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE, i64 612}
!49 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv, ptr @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv, i64 550}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 550}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"branch_weights", i32 0, i32 550}
!56 = !{!"branch_weights", i32 550, i32 0}
!57 = !{!58, !62, i64 88}
!58 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !59, i64 0, !61, i64 8, !65, i64 24, !68, i64 56, !62, i64 72, !62, i64 80, !62, i64 88}
!59 = !{!"_ZTSN11xercesc_2_710DOMElementE", !60, i64 0}
!60 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!61 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !62, i64 0, !64, i64 8}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !54, i64 0}
!64 = !{!"short", !63, i64 0}
!65 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !62, i64 0, !62, i64 8, !66, i64 16}
!66 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !67, i64 0, !62, i64 8}
!67 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!68 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !62, i64 0, !62, i64 8}
!69 = !{!"VP", i32 0, i64 550, i64 -5629180720150276584, i64 550}
!70 = !{!58, !62, i64 80}
!71 = !{!"VP", i32 0, i64 550, i64 -436814257186127076, i64 550}
!72 = !{!58, !62, i64 72}
!73 = !{!"function_entry_count", i64 0}
!74 = !{!"function_entry_count", i64 2821}
!75 = !{!"function_entry_count", i64 3031}
!76 = !{!"VP", i32 0, i64 3031, i64 -3032527289878320216, i64 3031}
!77 = !{!"branch_weights", i32 13, i32 3018}
!78 = !{!"VP", i32 0, i64 3018, i64 339751397936306462, i64 3018}
!79 = !{!"function_entry_count", i64 2007}
!80 = !{!"VP", i32 0, i64 2007, i64 -3032527289878320216, i64 2007}
!81 = !{!"function_entry_count", i64 551}
!82 = !{!61, !64, i64 8}
!83 = !{!64, !64, i64 0}
!84 = !{!62, !62, i64 0}
!85 = !{!"function_entry_count", i64 650}
!86 = !{!"branch_weights", i32 650, i32 0}
!87 = !{!"VP", i32 0, i64 650, i64 -8144646246772247977, i64 650}
!88 = !{!"VP", i32 0, i64 650, i64 -436814257186127076, i64 650}
!89 = !{!"VP", i32 0, i64 650, i64 -7969112069740541312, i64 650}
!90 = !{!58, !62, i64 8}
!91 = !{!"VP", i32 0, i64 550, i64 7017322298521258984, i64 550}
!92 = !{!93, !62, i64 280}
!93 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !94, i64 0, !61, i64 32, !65, i64 48, !62, i64 80, !62, i64 88, !62, i64 96, !98, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !99, i64 136, !62, i64 176, !62, i64 184, !62, i64 192, !102, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !62, i64 240, !62, i64 248, !62, i64 256, !62, i64 264, !62, i64 272, !62, i64 280, !101, i64 288, !98, i64 292}
!94 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !95, i64 0, !96, i64 8, !97, i64 16, !60, i64 24}
!95 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!96 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!97 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!98 = !{!"bool", !63, i64 0}
!99 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !100, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !101, i64 32, !101, i64 36}
!100 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!101 = !{!"int", !63, i64 0}
!102 = !{!"long", !63, i64 0}
!103 = !{!104, !62, i64 72}
!104 = !{!"_ZTSN11xercesc_2_76XMLUriE", !100, i64 0, !101, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80}
!105 = !{!"function_entry_count", i64 549}
!106 = !{!"function_entry_count", i64 719}
!107 = !{!"function_entry_count", i64 825}
!108 = !{!"function_entry_count", i64 4050}
!109 = !{!58, !62, i64 24}
!110 = !{!"function_entry_count", i64 612}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !112, !113}
