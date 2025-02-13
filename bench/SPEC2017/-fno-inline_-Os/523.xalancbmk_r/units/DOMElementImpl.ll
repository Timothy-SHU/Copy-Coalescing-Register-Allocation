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

$_ZN11xercesc_2_710DOMElementC2Ev = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_710DOMElementC2ERKS0_ = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZNK11xercesc_2_76XMLUri10getUriTextEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_710DOMElementD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_710DOMElementE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_710DOMElementE = comdat any

$_ZTVN11xercesc_2_710DOMElementE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

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
@_ZTVN11xercesc_2_710DOMElementE = linkonce_odr dso_local unnamed_addr constant { [62 x ptr] } { [62 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DOMElementE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_710DOMElementD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_714DOMElementImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_714DOMElementImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b
@_ZN11xercesc_2_714DOMElementImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_714DOMElementImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  tail call void @_ZN11xercesc_2_710DOMElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #13
          to label %8 unwind label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #13
          to label %10 unwind label %42

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
          to label %12 unwind label %44

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #13
          to label %16 unwind label %46

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %15, ptr %17, align 8, !tbaa !59
  %18 = load ptr, ptr %0, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 65
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %21 unwind label %46

21:                                               ; preds = %16
  %22 = load ptr, ptr %14, align 8, !tbaa !71
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr %0, align 8, !tbaa !56
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  br i1 %23, label %27, label %48, !prof !72

27:                                               ; preds = %21
  %28 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %29 unwind label %46

29:                                               ; preds = %27
  %30 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %28) #13
          to label %31 unwind label %46

31:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %30, ptr noundef nonnull %0) #13
          to label %32 unwind label %46

32:                                               ; preds = %31
  store ptr %30, ptr %14, align 8, !tbaa !71
  %33 = load ptr, ptr %0, align 8, !tbaa !56
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %37 unwind label %46

37:                                               ; preds = %32
  %38 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %36) #13
          to label %39 unwind label %46

39:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %38, ptr noundef nonnull %0) #13
          to label %54 unwind label %46

40:                                               ; preds = %3
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %60

42:                                               ; preds = %8
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %58

44:                                               ; preds = %10
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %56

46:                                               ; preds = %52, %50, %48, %39, %37, %32, %31, %29, %27, %16, %12
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #14
  br label %56

48:                                               ; preds = %21
  %49 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %50 unwind label %46

50:                                               ; preds = %48
  %51 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %49) #13
          to label %52 unwind label %46

52:                                               ; preds = %50
  %53 = load ptr, ptr %14, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %51, ptr noundef nonnull %0, ptr noundef %53) #13
          to label %54 unwind label %46

54:                                               ; preds = %52, %39
  %55 = phi ptr [ %38, %39 ], [ %51, %52 ]
  store ptr %55, ptr %13, align 8, !tbaa !73
  ret void

56:                                               ; preds = %46, %44
  %57 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %43, %42 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #14
  br label %60

60:                                               ; preds = %58, %40
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %41, %40 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMElementC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [62 x ptr] }, ptr @_ZTVN11xercesc_2_710DOMElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !74 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_710DOMElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !56
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %9 unwind label %29

9:                                                ; preds = %3
  %10 = icmp eq ptr %8, null
  %11 = getelementptr inbounds i8, ptr %8, i64 24
  %12 = select i1 %10, ptr null, ptr %11
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %12) #13
          to label %13 unwind label %29

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %1, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %19 unwind label %31

19:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %18) #13
          to label %20 unwind label %31

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #13
          to label %22 unwind label %33

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %26, ptr %27, align 8, !tbaa !59
  br i1 %2, label %28, label %37

28:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull %1) #13
          to label %37 unwind label %35

29:                                               ; preds = %9, %3
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %112

31:                                               ; preds = %19, %13
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %110

33:                                               ; preds = %20
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %108

35:                                               ; preds = %104, %102, %97, %92, %90, %85, %78, %67, %62, %55, %49, %44, %37, %28
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #14
  br label %108

37:                                               ; preds = %28, %22
  %38 = load ptr, ptr %1, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 11
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %42 unwind label %35

42:                                               ; preds = %37
  %43 = icmp eq ptr %41, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %1, align 8, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %45, i64 11
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %49 unwind label %35

49:                                               ; preds = %44
  %50 = load ptr, ptr %48, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 11
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(25) %48, ptr noundef nonnull %0) #13
          to label %54 unwind label %35

54:                                               ; preds = %49
  store ptr %53, ptr %23, align 8, !tbaa !73
  br label %55

55:                                               ; preds = %54, %42
  %56 = load ptr, ptr %1, align 8, !tbaa !56
  %57 = getelementptr inbounds ptr, ptr %56, i64 63
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %60 unwind label %35

60:                                               ; preds = %55
  %61 = icmp eq ptr %59, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %1, align 8, !tbaa !56
  %64 = getelementptr inbounds ptr, ptr %63, i64 63
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(96) %1) #13
          to label %67 unwind label %35

67:                                               ; preds = %62
  %68 = load ptr, ptr %66, align 8, !tbaa !56
  %69 = getelementptr inbounds ptr, ptr %68, i64 11
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(25) %66, ptr noundef nonnull %0) #13
          to label %72 unwind label %35

72:                                               ; preds = %67
  store ptr %71, ptr %24, align 8, !tbaa !71
  br label %75

73:                                               ; preds = %60
  %74 = load ptr, ptr %24, align 8, !tbaa !71
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi ptr [ %74, %73 ], [ %71, %72 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load ptr, ptr %0, align 8, !tbaa !56
  %80 = getelementptr inbounds ptr, ptr %79, i64 65
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %82 unwind label %35

82:                                               ; preds = %78
  %83 = load ptr, ptr %24, align 8, !tbaa !71
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load ptr, ptr %0, align 8, !tbaa !56
  %87 = getelementptr inbounds ptr, ptr %86, i64 12
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %90 unwind label %35

90:                                               ; preds = %85
  %91 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %89) #13
          to label %92 unwind label %35

92:                                               ; preds = %90
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(25) %91, ptr noundef nonnull %0) #13
          to label %93 unwind label %35

93:                                               ; preds = %92
  store ptr %91, ptr %24, align 8, !tbaa !71
  br label %94

94:                                               ; preds = %75, %93, %82
  %95 = load ptr, ptr %23, align 8, !tbaa !73
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load ptr, ptr %0, align 8, !tbaa !56
  %99 = getelementptr inbounds ptr, ptr %98, i64 12
  %100 = load ptr, ptr %99, align 8
  %101 = invoke noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %102 unwind label %35

102:                                              ; preds = %97
  %103 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %101) #13
          to label %104 unwind label %35

104:                                              ; preds = %102
  %105 = load ptr, ptr %24, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %103, ptr noundef nonnull %0, ptr noundef %105) #13
          to label %106 unwind label %35

106:                                              ; preds = %104
  store ptr %103, ptr %23, align 8, !tbaa !73
  br label %107

107:                                              ; preds = %106, %94
  ret void

108:                                              ; preds = %35, %33
  %109 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #14
  br label %110

110:                                              ; preds = %108, %31
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %32, %31 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #14
  br label %112

112:                                              ; preds = %110, %29
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %30, %29 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [62 x ptr] }, ptr @_ZTVN11xercesc_2_710DOMElementE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [68 x ptr] }, ptr @_ZTVN11xercesc_2_714DOMElementImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #14
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImplD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 96, ptr noundef %6, i32 noundef 6) #13
  tail call void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !76 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !77 {
  ret i16 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !79

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !56
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  br label %15

15:                                               ; preds = %2, %10
  %16 = phi ptr [ %14, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !80 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef %1) #13
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef nonnull %0, ptr noundef %1) #13
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %26

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 14
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(25) %29, ptr noundef %1) #13
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = zext nneg i32 %33 to i64
  %37 = load ptr, ptr %28, align 8, !tbaa !73
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(25) %37, i64 noundef %36) #13
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 51
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(72) %41) #13
  %45 = load ptr, ptr %41, align 8, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %45, i64 39
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %41) #13
  br label %48

48:                                               ; preds = %35, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !84
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !85
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef returned %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %117

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = load ptr, ptr %1, align 8, !tbaa !56
  br i1 %32, label %44, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds ptr, ptr %35, i64 22
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %40 = load ptr, ptr %34, align 8, !tbaa !56
  %41 = getelementptr inbounds ptr, ptr %40, i64 15
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(25) %34, ptr noundef %39, ptr noundef nonnull %31) #13
  br label %52

44:                                               ; preds = %27
  %45 = getelementptr inbounds ptr, ptr %35, i64 40
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %48 = load ptr, ptr %34, align 8, !tbaa !56
  %49 = getelementptr inbounds ptr, ptr %48, i64 14
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef i32 %50(ptr noundef nonnull align 8 dereferenceable(25) %34, ptr noundef %47) #13
  br label %52

52:                                               ; preds = %44, %36
  %53 = phi i32 [ %43, %36 ], [ %51, %44 ]
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i32 %53, -1
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(25) %58, i64 noundef %54) #13
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load ptr, ptr %57, align 8, !tbaa !73
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  %67 = getelementptr inbounds ptr, ptr %66, i64 16
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(25) %65, i64 noundef %54) #13
  %70 = load ptr, ptr %1, align 8, !tbaa !56
  %71 = getelementptr inbounds ptr, ptr %70, i64 51
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  ret ptr %1

73:                                               ; preds = %56
  %74 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %75 = load ptr, ptr %0, align 8, !tbaa !56
  %76 = getelementptr inbounds ptr, ptr %75, i64 12
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %79 unwind label %93

79:                                               ; preds = %73
  %80 = icmp eq ptr %78, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %0, align 8, !tbaa !56
  %83 = getelementptr inbounds ptr, ptr %82, i64 12
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %86 unwind label %93

86:                                               ; preds = %81
  %87 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %85) #13
  br label %90

88:                                               ; preds = %79
  %89 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %87, %86 ], [ %89, %88 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %74, i16 noundef signext 8, ptr noundef null, ptr noundef %91) #13
          to label %92 unwind label %93

92:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

93:                                               ; preds = %90, %81, %73
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %117

95:                                               ; preds = %52
  %96 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %97 = load ptr, ptr %0, align 8, !tbaa !56
  %98 = getelementptr inbounds ptr, ptr %97, i64 12
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %101 unwind label %115

101:                                              ; preds = %95
  %102 = icmp eq ptr %100, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %0, align 8, !tbaa !56
  %105 = getelementptr inbounds ptr, ptr %104, i64 12
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %108 unwind label %115

108:                                              ; preds = %103
  %109 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %107) #13
  br label %112

110:                                              ; preds = %101
  %111 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %109, %108 ], [ %111, %110 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %96, i16 noundef signext 8, ptr noundef null, ptr noundef %113) #13
          to label %114 unwind label %115

114:                                              ; preds = %112
  tail call void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

115:                                              ; preds = %112, %103, %95
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %117

117:                                              ; preds = %93, %115, %25
  %118 = phi ptr [ %74, %93 ], [ %96, %115 ], [ %6, %25 ]
  %119 = phi { ptr, i32 } [ %94, %93 ], [ %116, %115 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %118) #16
  resume { ptr, i32 } %119
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #13
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #13
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %24) #13
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %27

28:                                               ; preds = %3
  %29 = load ptr, ptr %0, align 8, !tbaa !56
  %30 = getelementptr inbounds ptr, ptr %29, i64 42
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #13
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = getelementptr inbounds ptr, ptr %36, i64 9
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef %1) #13
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(25) %41, ptr noundef %39) #13
  br label %46

46:                                               ; preds = %34, %28
  %47 = phi ptr [ %32, %28 ], [ %39, %34 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = getelementptr inbounds ptr, ptr %48, i64 19
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %59

27:                                               ; preds = %2
  %28 = load ptr, ptr %0, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 42
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %35 = load ptr, ptr %0, align 8, !tbaa !56
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %39 unwind label %53

39:                                               ; preds = %33
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %45) #13
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %34, i16 noundef signext 8, ptr noundef null, ptr noundef %51) #13
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

53:                                               ; preds = %50, %41, %33
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %59

55:                                               ; preds = %27
  %56 = load ptr, ptr %31, align 8, !tbaa !56
  %57 = getelementptr inbounds ptr, ptr %56, i64 50
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(72) %31) #13
  ret void

59:                                               ; preds = %53, %25
  %60 = phi ptr [ %34, %53 ], [ %6, %25 ]
  %61 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %60) #16
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #13
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #13
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %24) #13
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %60

28:                                               ; preds = %3
  %29 = load ptr, ptr %0, align 8, !tbaa !56
  %30 = getelementptr inbounds ptr, ptr %29, i64 51
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %36 = load ptr, ptr %0, align 8, !tbaa !56
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %40 unwind label %54

40:                                               ; preds = %34
  %41 = icmp eq ptr %39, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %0, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %47 unwind label %54

47:                                               ; preds = %42
  %48 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %46) #13
  br label %51

49:                                               ; preds = %40
  %50 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %35, i16 noundef signext 8, ptr noundef null, ptr noundef %52) #13
          to label %53 unwind label %54

53:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

54:                                               ; preds = %51, %42, %34
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %60

56:                                               ; preds = %28
  %57 = load ptr, ptr %32, align 8, !tbaa !56
  %58 = getelementptr inbounds ptr, ptr %57, i64 50
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(72) %32) #13
  ret void

60:                                               ; preds = %54, %26
  %61 = phi ptr [ %35, %54 ], [ %7, %26 ]
  %62 = phi { ptr, i32 } [ %55, %54 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %61) #16
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %83

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = icmp eq ptr %31, null
  %33 = load ptr, ptr %1, align 8, !tbaa !56
  br i1 %32, label %46, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds ptr, ptr %33, i64 22
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %38 = load ptr, ptr %1, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 24
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 51
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %37, ptr noundef %41) #13
  br label %54

46:                                               ; preds = %27
  %47 = getelementptr inbounds ptr, ptr %33, i64 40
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %50 = load ptr, ptr %0, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 42
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %49) #13
  br label %54

54:                                               ; preds = %46, %34
  %55 = phi ptr [ %45, %34 ], [ %53, %46 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %59 = load ptr, ptr %0, align 8, !tbaa !56
  %60 = getelementptr inbounds ptr, ptr %59, i64 12
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %63 unwind label %77

63:                                               ; preds = %57
  %64 = icmp eq ptr %62, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 8, !tbaa !56
  %67 = getelementptr inbounds ptr, ptr %66, i64 12
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %70 unwind label %77

70:                                               ; preds = %65
  %71 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %69) #13
  br label %74

72:                                               ; preds = %63
  %73 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi ptr [ %71, %70 ], [ %73, %72 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %58, i16 noundef signext 8, ptr noundef null, ptr noundef %75) #13
          to label %76 unwind label %77

76:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

77:                                               ; preds = %74, %65, %57
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %83

79:                                               ; preds = %54
  %80 = load ptr, ptr %55, align 8, !tbaa !56
  %81 = getelementptr inbounds ptr, ptr %80, i64 50
  %82 = load ptr, ptr %81, align 8
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(72) %55) #13
  ret void

83:                                               ; preds = %77, %25
  %84 = phi ptr [ %58, %77 ], [ %6, %25 ]
  %85 = phi { ptr, i32 } [ %78, %77 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %84) #16
  resume { ptr, i32 } %85
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %62

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef signext i16 %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %35 = load ptr, ptr %0, align 8, !tbaa !56
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %39 unwind label %53

39:                                               ; preds = %33
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %45) #13
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %34, i16 noundef signext 4, ptr noundef null, ptr noundef %51) #13
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

53:                                               ; preds = %50, %41, %33
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %62

55:                                               ; preds = %27
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !73
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(25) %57, ptr noundef nonnull %1) #13
  ret ptr %61

62:                                               ; preds = %53, %25
  %63 = phi ptr [ %34, %53 ], [ %6, %25 ]
  %64 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %63) #16
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext %1, i1 noundef zeroext %2) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 17
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(25) %6, i1 noundef zeroext %1, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %1, ptr noundef %2) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %9, align 8, !tbaa !56
  %13 = getelementptr inbounds ptr, ptr %12, i64 42
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %16

16:                                               ; preds = %3, %11
  %17 = phi ptr [ %15, %11 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 12
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %13 unwind label %27

13:                                               ; preds = %7
  %14 = icmp eq ptr %12, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !56
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %20 unwind label %27

20:                                               ; preds = %15
  %21 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %19) #13
  br label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 7, ptr noundef null, ptr noundef %25) #13
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

27:                                               ; preds = %24, %15, %7
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %28

29:                                               ; preds = %4
  %30 = load ptr, ptr %0, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 51
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = getelementptr inbounds ptr, ptr %37, i64 17
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %1, ptr noundef %2) #13
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(25) %42, ptr noundef %40) #13
  br label %47

47:                                               ; preds = %35, %29
  %48 = phi ptr [ %33, %29 ], [ %40, %35 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds ptr, ptr %49, i64 19
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #13
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #13
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %24) #13
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %27

28:                                               ; preds = %3
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 15
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(25) %30, ptr noundef %1, ptr noundef %2) #13
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = zext nneg i32 %34 to i64
  %38 = load ptr, ptr %29, align 8, !tbaa !73
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  %40 = getelementptr inbounds ptr, ptr %39, i64 16
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(25) %38, i64 noundef %37) #13
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 39
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %42) #13
  br label %46

46:                                               ; preds = %36, %28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %1, ptr noundef %2) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27, !prof !99

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %66

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !56
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %59, label %37, !prof !100

37:                                               ; preds = %27
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %39 = load ptr, ptr %0, align 8, !tbaa !56
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %43 unwind label %57

43:                                               ; preds = %37
  %44 = icmp eq ptr %42, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %50 unwind label %57

50:                                               ; preds = %45
  %51 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %49) #13
  br label %54

52:                                               ; preds = %43
  %53 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 4, ptr noundef null, ptr noundef %55) #13
          to label %56 unwind label %57

56:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

57:                                               ; preds = %54, %45, %37
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %66

59:                                               ; preds = %27
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = getelementptr inbounds ptr, ptr %62, i64 8
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(25) %61, ptr noundef nonnull %1) #13
  ret ptr %65

66:                                               ; preds = %57, %25
  %67 = phi ptr [ %38, %57 ], [ %6, %25 ]
  %68 = phi { ptr, i32 } [ %58, %57 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %67) #16
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %8 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getDeepNodeListEPKNS_7DOMNodeEPKtS5_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i64 %8(ptr noundef nonnull align 8 dereferenceable(25) %3) #13
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 42
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #13
  %7 = icmp ne ptr %6, null
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds ptr, ptr %4, i64 51
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #13
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !55 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds ptr, ptr %2, i64 12
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %5, null
  %10 = or i1 %9, %8
  br i1 %10, label %48, label %11, !prof !102

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 8, !tbaa !56
  %13 = getelementptr inbounds ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17, !prof !72

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 50
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(130) %21) #13
  %26 = load ptr, ptr %0, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %30 = load ptr, ptr %25, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %29) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %17
  %36 = load ptr, ptr %33, align 8, !tbaa !56
  %37 = getelementptr inbounds ptr, ptr %36, i64 11
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %33) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %46 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 32, ptr noundef %45) #13
  tail call void @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %46, ptr noundef nonnull %0, ptr noundef nonnull %39) #13
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !71
  br label %48

48:                                               ; preds = %17, %35, %41, %1, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %67

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef signext i16 %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %35 = load ptr, ptr %0, align 8, !tbaa !56
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %39 unwind label %53

39:                                               ; preds = %33
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %45) #13
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %34, i16 noundef signext 4, ptr noundef null, ptr noundef %51) #13
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

53:                                               ; preds = %50, %41, %33
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %67

55:                                               ; preds = %27
  %56 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(25) %57, ptr noundef nonnull %1) #13
  %62 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !73
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(25) %63, i1 noundef zeroext true) #13
  ret ptr %61

67:                                               ; preds = %53, %25
  %68 = phi ptr [ %34, %53 ], [ %6, %25 ]
  %69 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %68) #16
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %71

27:                                               ; preds = %2
  %28 = load ptr, ptr %1, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !56
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %59, label %37

37:                                               ; preds = %27
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %39 = load ptr, ptr %0, align 8, !tbaa !56
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %43 unwind label %57

43:                                               ; preds = %37
  %44 = icmp eq ptr %42, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %50 unwind label %57

50:                                               ; preds = %45
  %51 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %49) #13
  br label %54

52:                                               ; preds = %43
  %53 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 4, ptr noundef null, ptr noundef %55) #13
          to label %56 unwind label %57

56:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

57:                                               ; preds = %54, %45, %37
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %71

59:                                               ; preds = %27
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = getelementptr inbounds ptr, ptr %62, i64 8
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(25) %61, ptr noundef nonnull %1) #13
  %66 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  %69 = getelementptr inbounds ptr, ptr %68, i64 13
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(25) %67, i1 noundef zeroext true) #13
  ret ptr %65

71:                                               ; preds = %57, %25
  %72 = phi ptr [ %38, %57 ], [ %6, %25 ]
  %73 = phi { ptr, i32 } [ %58, %57 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %72) #16
  resume { ptr, i32 } %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #13
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #13
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !56
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 6) #13
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %38 = load ptr, ptr %0, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #13
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #13
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #17
  unreachable

56:                                               ; preds = %53, %44, %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi ptr [ %37, %56 ], [ %7, %26 ]
  %60 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %59) #16
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !84
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !85
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !84
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !85
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = alloca [9 x i16], align 16
  %3 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %4 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 31
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %2, ptr noundef nonnull align 16 dereferenceable(18) @__const._ZNK11xercesc_2_714DOMElementImpl10getBaseURIEv.xmlBaseString, i64 18, i1 false)
  %15 = load ptr, ptr %12, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull %2) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 8, !tbaa !56
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %20
  %27 = load i16, ptr %24, align 2, !tbaa !85
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #16
  %30 = load ptr, ptr %0, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %34 unwind label %53

34:                                               ; preds = %29
  %35 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %33) #13
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %10, ptr noundef %35) #13
          to label %36 unwind label %53

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #16
  %37 = load ptr, ptr %0, align 8, !tbaa !56
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %41 unwind label %55

41:                                               ; preds = %36
  %42 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %40) #13
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %3, ptr noundef nonnull %24, ptr noundef %42) #13
          to label %43 unwind label %55

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
          to label %48 unwind label %57

48:                                               ; preds = %43
  %49 = invoke noundef ptr @_ZNK11xercesc_2_76XMLUri10getUriTextEv(ptr noundef nonnull align 8 dereferenceable(88) %4) #13
          to label %50 unwind label %57

50:                                               ; preds = %48
  %51 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %47, ptr noundef %49) #13
          to label %52 unwind label %57

52:                                               ; preds = %50
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #16
  br label %74

53:                                               ; preds = %34, %29
  %54 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %61

55:                                               ; preds = %41, %36
  %56 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %59

57:                                               ; preds = %50, %48, %43
  %58 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #14
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %54, %53 ]
  %63 = extractvalue { ptr, i32 } %62, 1
  %64 = extractvalue { ptr, i32 } %62, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #16
  %65 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %66 = icmp eq i32 %63, %65
  %67 = call ptr @__cxa_begin_catch(ptr %64) #16
  br i1 %66, label %68, label %69

68:                                               ; preds = %61
  invoke void @__cxa_rethrow() #17
          to label %81 unwind label %70

69:                                               ; preds = %61
  call void @__cxa_end_catch()
  br label %74

70:                                               ; preds = %68
  %71 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %72 unwind label %78

72:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #16
  resume { ptr, i32 } %71

73:                                               ; preds = %14, %26, %20
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #16
  br label %76

74:                                               ; preds = %69, %52
  %75 = phi ptr [ %51, %52 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #16
  br label %76

76:                                               ; preds = %1, %73, %74
  %77 = phi ptr [ %75, %74 ], [ %10, %73 ], [ %10, %1 ]
  ret ptr %77

78:                                               ; preds = %70
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #18
  unreachable

81:                                               ; preds = %68
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri10getUriTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #13
  %6 = load ptr, ptr %2, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !75 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i16 %4
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #13
  br i1 %6, label %91, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %8, ptr noundef %1) #13
  br i1 %9, label %10, label %91

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = getelementptr inbounds ptr, ptr %11, i64 26
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %15 = load ptr, ptr %1, align 8, !tbaa !56
  %16 = getelementptr inbounds ptr, ptr %15, i64 26
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %19 = xor i1 %14, %18
  br i1 %19, label %91, label %20

20:                                               ; preds = %10
  br i1 %14, label %21, label %88

21:                                               ; preds = %20
  %22 = load ptr, ptr %0, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %26 = load ptr, ptr %1, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %30 = load ptr, ptr %25, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i64 %32(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  %34 = load ptr, ptr %29, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i64 %36(ptr noundef nonnull align 8 dereferenceable(8) %29) #13
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %21
  %40 = icmp eq i64 %33, 0
  br i1 %40, label %88, label %41

41:                                               ; preds = %39, %85
  %42 = phi i64 [ %86, %85 ], [ 0, %39 ]
  %43 = load ptr, ptr %25, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %42) #13
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds ptr, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %46) #13
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %46, align 8, !tbaa !56
  br i1 %51, label %53, label %67

53:                                               ; preds = %41
  %54 = getelementptr inbounds ptr, ptr %52, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %46) #13
  %57 = load ptr, ptr %29, align 8, !tbaa !56
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %56) #13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %91, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %46, align 8, !tbaa !56
  %64 = getelementptr inbounds ptr, ptr %63, i64 28
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %60) #13
  br i1 %66, label %85, label %91

67:                                               ; preds = %41
  %68 = getelementptr inbounds ptr, ptr %52, i64 22
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %46) #13
  %71 = load ptr, ptr %46, align 8, !tbaa !56
  %72 = getelementptr inbounds ptr, ptr %71, i64 24
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %46) #13
  %75 = load ptr, ptr %29, align 8, !tbaa !56
  %76 = getelementptr inbounds ptr, ptr %75, i64 7
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %70, ptr noundef %74) #13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %67
  %81 = load ptr, ptr %46, align 8, !tbaa !56
  %82 = getelementptr inbounds ptr, ptr %81, i64 28
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %78) #13
  br i1 %84, label %85, label %91

85:                                               ; preds = %80, %62
  %86 = add nuw i64 %42, 1
  %87 = icmp eq i64 %86, %33
  br i1 %87, label %88, label %41, !llvm.loop !112

88:                                               ; preds = %85, %39, %20
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  %90 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull %1) #13
  br label %91

91:                                               ; preds = %53, %62, %67, %80, %88, %10, %21, %7, %2
  %92 = phi i1 [ true, %2 ], [ false, %7 ], [ %90, %88 ], [ false, %10 ], [ false, %21 ], [ false, %80 ], [ false, %67 ], [ false, %62 ], [ false, %53 ]
  ret i1 %92
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_714DOMElementImpl6renameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !75 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i16, ptr %1, align 2, !tbaa !85
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9, %3
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef %2) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = load ptr, ptr %0, align 8, !tbaa !56
  %18 = getelementptr inbounds ptr, ptr %17, i64 63
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef %20) #13
  br label %74

21:                                               ; preds = %9
  %22 = load ptr, ptr %7, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 16
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %1, ptr noundef %2) #13
  %26 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %27 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %25) #13
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293) %7, ptr noundef nonnull %26, ptr noundef nonnull %27) #13
  %28 = load ptr, ptr %0, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 5
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !56
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %36 = icmp eq ptr %31, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load ptr, ptr %31, align 8, !tbaa !56
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %0) #13
  br label %42

42:                                               ; preds = %37, %21
  %43 = load ptr, ptr %0, align 8, !tbaa !56
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %42, %48
  %49 = phi ptr [ %61, %48 ], [ %46, %42 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !56
  %51 = getelementptr inbounds ptr, ptr %50, i64 16
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %49) #13
  %54 = load ptr, ptr %25, align 8, !tbaa !56
  %55 = getelementptr inbounds ptr, ptr %54, i64 17
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(96) %25, ptr noundef nonnull %49) #13
  %58 = load ptr, ptr %0, align 8, !tbaa !56
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !114

63:                                               ; preds = %48, %42
  br i1 %36, label %69, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %31, align 8, !tbaa !56
  %66 = getelementptr inbounds ptr, ptr %65, i64 14
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %25, ptr noundef %35) #13
  br label %69

69:                                               ; preds = %64, %63
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %25, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25) %71, ptr noundef %73) #13
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %27, i32 noundef 4, ptr noundef nonnull %0, ptr noundef %25) #13
  br label %74

74:                                               ; preds = %69, %12
  %75 = phi ptr [ %25, %69 ], [ %0, %12 ]
  ret ptr %75
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #7 !prof !75 !PGOFuncName !115 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMAttrMapImpl23moveSpecifiedAttributesEPS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_714DOMElementImpl11getTypeInfoEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !116 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !117 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DOMElementD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!54}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!35 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_710DOMElementC2Ev, i64 550}
!36 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 550}
!37 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 550}
!38 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_712DOMChildNodeC1Ev, i64 550}
!39 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 550}
!40 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, i64 1099}
!41 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeE, i64 1098}
!42 = !{ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_714DOMAttrMapImplC1EPNS_7DOMNodeEPKS0_, i64 1}
!43 = !{ptr @_ZN11xercesc_2_710DOMElementC2Ev, ptr @_ZN11xercesc_2_77DOMNodeC2Ev, i64 550}
!44 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!45 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!46 = !{ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv, i64 650}
!47 = !{ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @__cxa_allocate_exception, i64 2}
!48 = !{ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @__cxa_free_exception, i64 2}
!49 = !{ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, i64 549}
!50 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv, i64 719}
!51 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv, i64 825}
!52 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE, i64 612}
!53 = !{ptr @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv, ptr @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv, i64 550}
!54 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!55 = !{!"function_entry_count", i64 550}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !58, i64 0}
!58 = !{!"Simple C++ TBAA"}
!59 = !{!60, !64, i64 88}
!60 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !61, i64 0, !63, i64 8, !67, i64 24, !70, i64 56, !64, i64 72, !64, i64 80, !64, i64 88}
!61 = !{!"_ZTSN11xercesc_2_710DOMElementE", !62, i64 0}
!62 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !64, i64 0, !66, i64 8}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !58, i64 0}
!66 = !{!"short", !65, i64 0}
!67 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !64, i64 0, !64, i64 8, !68, i64 16}
!68 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !69, i64 0, !64, i64 8}
!69 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!70 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !64, i64 0, !64, i64 8}
!71 = !{!60, !64, i64 80}
!72 = !{!"branch_weights", i32 551, i32 1}
!73 = !{!60, !64, i64 72}
!74 = !{!"function_entry_count", i64 2815}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!"function_entry_count", i64 1300}
!77 = !{!"function_entry_count", i64 2821}
!78 = !{!"function_entry_count", i64 3031}
!79 = !{!"branch_weights", i32 14, i32 3019}
!80 = !{!"function_entry_count", i64 2007}
!81 = !{!"function_entry_count", i64 551}
!82 = !{!64, !64, i64 0}
!83 = !{!"function_entry_count", i64 3150}
!84 = !{!63, !66, i64 8}
!85 = !{!66, !66, i64 0}
!86 = !{!"function_entry_count", i64 2954}
!87 = !{!88, !64, i64 280}
!88 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !89, i64 0, !63, i64 32, !67, i64 48, !64, i64 80, !64, i64 88, !64, i64 96, !93, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !94, i64 136, !64, i64 176, !64, i64 184, !64, i64 192, !97, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !64, i64 240, !64, i64 248, !64, i64 256, !64, i64 264, !64, i64 272, !64, i64 280, !96, i64 288, !93, i64 292}
!89 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !90, i64 0, !91, i64 8, !92, i64 16, !62, i64 24}
!90 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!91 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!92 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!93 = !{!"bool", !65, i64 0}
!94 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !95, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !96, i64 32, !96, i64 36}
!95 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!96 = !{!"int", !65, i64 0}
!97 = !{!"long", !65, i64 0}
!98 = !{!"function_entry_count", i64 650}
!99 = !{!"branch_weights", i32 1, i32 651}
!100 = !{!"branch_weights", i32 651, i32 1}
!101 = !{!60, !64, i64 8}
!102 = !{!"branch_weights", i32 1103, i32 303601}
!103 = !{!"function_entry_count", i64 2562}
!104 = !{!105, !64, i64 72}
!105 = !{!"_ZTSN11xercesc_2_76XMLUriE", !95, i64 0, !96, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80}
!106 = !{!"function_entry_count", i64 549}
!107 = !{!"function_entry_count", i64 719}
!108 = !{!"function_entry_count", i64 825}
!109 = !{!"function_entry_count", i64 4050}
!110 = !{!60, !64, i64 24}
!111 = !{!"function_entry_count", i64 612}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.mustprogress"}
!114 = distinct !{!114, !113}
!115 = !{!"DOMElementImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!116 = !{!"function_entry_count", i64 1851}
!117 = !{!"function_entry_count", i64 1}
