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

$_ZN11xercesc_2_715DOMDocumentTypeC2Ev = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_715DOMDocumentTypeD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZTSN11xercesc_2_715DOMDocumentTypeE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_715DOMDocumentTypeE = comdat any

$_ZTVN11xercesc_2_715DOMDocumentTypeE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_719DOMDocumentTypeImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMDocumentTypeImplE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev, ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD0Ev, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLastChildEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getAttributesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9cloneNodeEb, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl9normalizeEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9getPrefixEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getTextContentEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl7releaseEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl7getNameEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getEntitiesEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNotationsEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getPublicIdEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getSystemIdEv, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl17getInternalSubsetEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setPublicIdEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setSystemIdEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl17setInternalSubsetEPKt, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl16setOwnerDocumentEPNS_11DOMDocumentE, ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getElementsEv, ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setReadOnlyEbb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMDocumentTypeImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMDocumentTypeImplE\00", align 1
@_ZTSN11xercesc_2_715DOMDocumentTypeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMDocumentTypeE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMDocumentTypeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMDocumentTypeE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMDocumentTypeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMDocumentTypeImplE, ptr @_ZTIN11xercesc_2_715DOMDocumentTypeE }, align 8
@_ZN11xercesc_2_7L15documentCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_715DOMDocumentTypeE = linkonce_odr dso_local unnamed_addr constant { [48 x ptr] } { [48 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMDocumentTypeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_715DOMDocumentTypeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_7L9sDocumentE = internal global ptr null, align 8
@_ZZN11xercesc_2_7L16gDocTypeDocumentEvE8gCoreStr = internal constant [5 x i16] [i16 67, i16 111, i16 114, i16 101, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp, ptr null }]

@_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtb
@_ZN11xercesc_2_719DOMDocumentTypeImplC1EPNS_11DOMDocumentEPKtS4_S4_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtS4_S4_b
@_ZN11xercesc_2_719DOMDocumentTypeImplC1ERKS0_bb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb
@_ZN11xercesc_2_719DOMDocumentTypeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !39 {
  ret i16 10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  %8 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef %7, i32 noundef 5) #13
  br label %12

9:                                                ; preds = %2
  %10 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
  %11 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef nonnull %10, i32 noundef 5) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %8, %6 ]
  tail call void @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb(ptr noundef nonnull align 8 dereferenceable(130) %13, ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext false, i1 noundef zeroext %1) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %14, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %13) #13
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) #13
  br i1 %6, label %191, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %8, ptr noundef %1) #13
  br i1 %9, label %10, label %191

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !55
  %12 = getelementptr inbounds ptr, ptr %11, i64 43
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !55
  %18 = getelementptr inbounds ptr, ptr %17, i64 43
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %191

22:                                               ; preds = %10
  %23 = load ptr, ptr %0, align 8, !tbaa !55
  %24 = getelementptr inbounds ptr, ptr %23, i64 43
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %27 = load ptr, ptr %1, align 8, !tbaa !55
  %28 = getelementptr inbounds ptr, ptr %27, i64 43
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %26, ptr noundef %30) #13
  br i1 %31, label %32, label %191

32:                                               ; preds = %22, %16
  %33 = load ptr, ptr %0, align 8, !tbaa !55
  %34 = getelementptr inbounds ptr, ptr %33, i64 44
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %1, align 8, !tbaa !55
  %40 = getelementptr inbounds ptr, ptr %39, i64 44
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %191

44:                                               ; preds = %32
  %45 = load ptr, ptr %0, align 8, !tbaa !55
  %46 = getelementptr inbounds ptr, ptr %45, i64 44
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %49 = load ptr, ptr %1, align 8, !tbaa !55
  %50 = getelementptr inbounds ptr, ptr %49, i64 44
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %53 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %48, ptr noundef %52) #13
  br i1 %53, label %54, label %191

54:                                               ; preds = %44, %38
  %55 = load ptr, ptr %0, align 8, !tbaa !55
  %56 = getelementptr inbounds ptr, ptr %55, i64 45
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load ptr, ptr %1, align 8, !tbaa !55
  %62 = getelementptr inbounds ptr, ptr %61, i64 45
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %191

66:                                               ; preds = %54
  %67 = load ptr, ptr %0, align 8, !tbaa !55
  %68 = getelementptr inbounds ptr, ptr %67, i64 45
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %71 = load ptr, ptr %1, align 8, !tbaa !55
  %72 = getelementptr inbounds ptr, ptr %71, i64 45
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %70, ptr noundef %74) #13
  br i1 %75, label %76, label %191

76:                                               ; preds = %66, %60
  %77 = load ptr, ptr %0, align 8, !tbaa !55
  %78 = getelementptr inbounds ptr, ptr %77, i64 42
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %81 = icmp eq ptr %80, null
  %82 = load ptr, ptr %1, align 8, !tbaa !55
  %83 = getelementptr inbounds ptr, ptr %82, i64 42
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %86 = icmp eq ptr %85, null
  br i1 %81, label %131, label %87

87:                                               ; preds = %76
  br i1 %86, label %191, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %0, align 8, !tbaa !55
  %90 = getelementptr inbounds ptr, ptr %89, i64 42
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %93 = load ptr, ptr %1, align 8, !tbaa !55
  %94 = getelementptr inbounds ptr, ptr %93, i64 42
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %97 = load ptr, ptr %92, align 8, !tbaa !55
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef i64 %99(ptr noundef nonnull align 8 dereferenceable(8) %92) #13
  %101 = load ptr, ptr %96, align 8, !tbaa !55
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef i64 %103(ptr noundef nonnull align 8 dereferenceable(8) %96) #13
  %105 = icmp eq i64 %100, %104
  br i1 %105, label %106, label %191

106:                                              ; preds = %88
  %107 = icmp eq i64 %100, 0
  br i1 %107, label %132, label %111

108:                                              ; preds = %126
  %109 = add nuw i64 %112, 1
  %110 = icmp eq i64 %109, %100
  br i1 %110, label %132, label %111, !llvm.loop !57

111:                                              ; preds = %106, %108
  %112 = phi i64 [ %109, %108 ], [ 0, %106 ]
  %113 = load ptr, ptr %92, align 8, !tbaa !55
  %114 = getelementptr inbounds ptr, ptr %113, i64 3
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %92, i64 noundef %112) #13
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(8) %116) #13
  %121 = load ptr, ptr %96, align 8, !tbaa !55
  %122 = getelementptr inbounds ptr, ptr %121, i64 4
  %123 = load ptr, ptr %122, align 8
  %124 = tail call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %120) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %191, label %126

126:                                              ; preds = %111
  %127 = load ptr, ptr %116, align 8, !tbaa !55
  %128 = getelementptr inbounds ptr, ptr %127, i64 28
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef zeroext i1 %129(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull %124) #13
  br i1 %130, label %108, label %191

131:                                              ; preds = %76
  br i1 %86, label %132, label %191

132:                                              ; preds = %108, %106, %131
  %133 = load ptr, ptr %0, align 8, !tbaa !55
  %134 = getelementptr inbounds ptr, ptr %133, i64 41
  %135 = load ptr, ptr %134, align 8
  %136 = tail call noundef ptr %135(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %137 = icmp eq ptr %136, null
  %138 = load ptr, ptr %1, align 8, !tbaa !55
  %139 = getelementptr inbounds ptr, ptr %138, i64 41
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %142 = icmp eq ptr %141, null
  br i1 %137, label %187, label %143

143:                                              ; preds = %132
  br i1 %142, label %191, label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %0, align 8, !tbaa !55
  %146 = getelementptr inbounds ptr, ptr %145, i64 41
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %149 = load ptr, ptr %1, align 8, !tbaa !55
  %150 = getelementptr inbounds ptr, ptr %149, i64 41
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %153 = load ptr, ptr %148, align 8, !tbaa !55
  %154 = getelementptr inbounds ptr, ptr %153, i64 5
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef i64 %155(ptr noundef nonnull align 8 dereferenceable(8) %148) #13
  %157 = load ptr, ptr %152, align 8, !tbaa !55
  %158 = getelementptr inbounds ptr, ptr %157, i64 5
  %159 = load ptr, ptr %158, align 8
  %160 = tail call noundef i64 %159(ptr noundef nonnull align 8 dereferenceable(8) %152) #13
  %161 = icmp eq i64 %156, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %144
  %163 = icmp eq i64 %156, 0
  br i1 %163, label %188, label %167

164:                                              ; preds = %182
  %165 = add nuw i64 %168, 1
  %166 = icmp eq i64 %165, %156
  br i1 %166, label %188, label %167, !llvm.loop !59

167:                                              ; preds = %162, %164
  %168 = phi i64 [ %165, %164 ], [ 0, %162 ]
  %169 = load ptr, ptr %148, align 8, !tbaa !55
  %170 = getelementptr inbounds ptr, ptr %169, i64 3
  %171 = load ptr, ptr %170, align 8
  %172 = tail call noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(8) %148, i64 noundef %168) #13
  %173 = load ptr, ptr %172, align 8, !tbaa !55
  %174 = getelementptr inbounds ptr, ptr %173, i64 2
  %175 = load ptr, ptr %174, align 8
  %176 = tail call noundef ptr %175(ptr noundef nonnull align 8 dereferenceable(8) %172) #13
  %177 = load ptr, ptr %152, align 8, !tbaa !55
  %178 = getelementptr inbounds ptr, ptr %177, i64 4
  %179 = load ptr, ptr %178, align 8
  %180 = tail call noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %176) #13
  %181 = icmp eq ptr %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %167
  %183 = load ptr, ptr %172, align 8, !tbaa !55
  %184 = getelementptr inbounds ptr, ptr %183, i64 28
  %185 = load ptr, ptr %184, align 8
  %186 = tail call noundef zeroext i1 %185(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef nonnull %180) #13
  br i1 %186, label %164, label %191

187:                                              ; preds = %132
  br i1 %142, label %188, label %191

188:                                              ; preds = %164, %162, %187
  %189 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %190 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %189, ptr noundef nonnull %1) #13
  br label %191

191:                                              ; preds = %126, %111, %182, %167, %188, %16, %22, %38, %44, %60, %66, %87, %131, %143, %187, %88, %144, %7, %2
  %192 = phi i1 [ true, %2 ], [ false, %7 ], [ %190, %188 ], [ false, %16 ], [ false, %22 ], [ false, %38 ], [ false, %44 ], [ false, %60 ], [ false, %66 ], [ false, %87 ], [ false, %131 ], [ false, %143 ], [ false, %187 ], [ false, %88 ], [ false, %144 ], [ false, %167 ], [ false, %182 ], [ false, %111 ], [ false, %126 ]
  ret i1 %192
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !39 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMDocumentTypeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i16 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMDocumentTypeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni37fgXercescInterfaceDOMDocumentTypeImplE) #13
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1) #13
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ %0, %2 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  %8 = load i8, ptr %7, align 1, !tbaa !60, !range !61, !noundef !62
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !55
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  br label %73

14:                                               ; preds = %4
  %15 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %16 = load ptr, ptr %0, align 8, !tbaa !55
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %20 unwind label %34

20:                                               ; preds = %14
  %21 = icmp eq ptr %19, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8, !tbaa !55
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %27 unwind label %34

27:                                               ; preds = %22
  %28 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %26) #13
  br label %31

29:                                               ; preds = %20
  %30 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %15, i16 noundef signext 15, ptr noundef null, ptr noundef %32) #13
          to label %33 unwind label %34

33:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

34:                                               ; preds = %31, %22, %14
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %74

36:                                               ; preds = %1
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  %38 = load i8, ptr %37, align 1, !tbaa !60, !range !61, !noundef !62
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #13
  %41 = load ptr, ptr %0, align 8, !tbaa !55
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  br label %73

44:                                               ; preds = %36
  %45 = load ptr, ptr %0, align 8, !tbaa !55
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #13
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %48, ptr noundef nonnull %0, i32 noundef 5) #13
  br label %73

51:                                               ; preds = %44
  %52 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %53 = load ptr, ptr %0, align 8, !tbaa !55
  %54 = getelementptr inbounds ptr, ptr %53, i64 12
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %57 unwind label %71

57:                                               ; preds = %51
  %58 = icmp eq ptr %56, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %0, align 8, !tbaa !55
  %61 = getelementptr inbounds ptr, ptr %60, i64 12
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %64 unwind label %71

64:                                               ; preds = %59
  %65 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %63) #13
  br label %68

66:                                               ; preds = %57
  %67 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %65, %64 ], [ %67, %66 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %52, i16 noundef signext 15, ptr noundef null, ptr noundef %69) #13
          to label %70 unwind label %71

70:                                               ; preds = %68
  tail call void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

71:                                               ; preds = %68, %59, %51
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %74

73:                                               ; preds = %40, %50, %10, %6
  ret void

74:                                               ; preds = %71, %34
  %75 = phi ptr [ %52, %71 ], [ %15, %34 ]
  %76 = phi { ptr, i32 } [ %72, %71 ], [ %35, %34 ]
  tail call void @__cxa_free_exception(ptr %75) #14
  resume { ptr, i32 } %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getEntitiesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl12getNotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl17getInternalSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %6 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  br i1 %7, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  br label %13

11:                                               ; preds = %4
  %12 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %14, ptr noundef nonnull %1) #13
  store ptr %15, ptr %8, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %1) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  store ptr %12, ptr %13, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl17setInternalSubsetEPKt(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br label %10

8:                                                ; preds = %2
  %9 = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %1) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  store ptr %12, ptr %13, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10) %7, ptr noundef %1) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1) #13
  br label %44

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %13) #13
  store ptr %14, ptr %12, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %16) #13
  store ptr %17, ptr %15, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %19) #13
  store ptr %20, ptr %18, align 8, !tbaa !68
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %22) #13
  store ptr %23, ptr %21, align 8, !tbaa !40
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10) %24, ptr noundef nonnull %1) #13
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull %1) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(1560) %27, ptr noundef nonnull %0) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(1560) %33, ptr noundef nonnull %0) #13
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(1560) %39, ptr noundef nonnull %0) #13
  store ptr %31, ptr %26, align 8, !tbaa !64
  store ptr %37, ptr %32, align 8, !tbaa !65
  store ptr %43, ptr %38, align 8, !tbaa !69
  br label %44

44:                                               ; preds = %9, %11, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMDocumentTypeImpl11getElementsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(130) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext %1, i1 noundef zeroext %2) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !55
  %10 = getelementptr inbounds ptr, ptr %9, i64 11
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1560) %6, i1 noundef zeroext %1, i1 noundef zeroext true) #13
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !55
  %18 = getelementptr inbounds ptr, ptr %17, i64 11
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(1560) %14, i1 noundef zeroext %1, i1 noundef zeroext true) #13
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15documentCleanupE) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_715DOMDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds i8, ptr %1, i64 24
  %9 = select i1 %7, ptr null, ptr %8
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef %9) #13
          to label %10 unwind label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %1) #13
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
          to label %14 unwind label %34

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %15, i8 0, i64 57, i1 false)
  store i8 %5, ptr %18, align 1, !tbaa !60
  br i1 %7, label %38, label %19

19:                                               ; preds = %14
  %20 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #13
          to label %21 unwind label %36

21:                                               ; preds = %19
  store ptr %20, ptr %15, align 8, !tbaa !40
  %22 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %23 unwind label %36

23:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %22, ptr noundef nonnull %0) #13
          to label %24 unwind label %36

24:                                               ; preds = %23
  store ptr %22, ptr %16, align 8, !tbaa !64
  %25 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %26 unwind label %36

26:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %25, ptr noundef nonnull %0) #13
          to label %27 unwind label %36

27:                                               ; preds = %26
  store ptr %25, ptr %17, align 8, !tbaa !65
  %28 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %29 unwind label %36

29:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %28, ptr noundef nonnull %0) #13
          to label %53 unwind label %36

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %60

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %58

36:                                               ; preds = %29, %27, %26, %24, %23, %21, %19
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %56

38:                                               ; preds = %14
  %39 = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
          to label %40 unwind label %51

40:                                               ; preds = %38
  %41 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %39, ptr noundef %2) #13
          to label %42 unwind label %51

42:                                               ; preds = %40
  store ptr %41, ptr %15, align 8, !tbaa !40
  %43 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %39) #13
          to label %44 unwind label %51

44:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %43, ptr noundef nonnull %0) #13
          to label %45 unwind label %51

45:                                               ; preds = %44
  store ptr %43, ptr %16, align 8, !tbaa !64
  %46 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %39) #13
          to label %47 unwind label %51

47:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %46, ptr noundef nonnull %0) #13
          to label %48 unwind label %51

48:                                               ; preds = %47
  store ptr %46, ptr %17, align 8, !tbaa !65
  %49 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %39) #13
          to label %50 unwind label %51

50:                                               ; preds = %48
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %49, ptr noundef nonnull %0) #13
          to label %53 unwind label %51

51:                                               ; preds = %50, %48, %47, %45, %44, %42, %40, %38
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %56

53:                                               ; preds = %50, %29
  %54 = phi ptr [ %28, %29 ], [ %49, %50 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %54, ptr %55, align 8, !tbaa !69
  ret void

56:                                               ; preds = %51, %36
  %57 = phi { ptr, i32 } [ %37, %36 ], [ %52, %51 ]
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #11
  br label %58

58:                                               ; preds = %56, %34
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #11
  br label %60

60:                                               ; preds = %58, %32
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %33, %32 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #11
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [48 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMDocumentTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !70 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() unnamed_addr #2 !prof !39 !PGOFuncName !71 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !63
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = tail call noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef nonnull @_ZZN11xercesc_2_7L16gDocTypeDocumentEvE8gCoreStr) #13
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  %6 = load ptr, ptr %4, align 8, !tbaa !55
  %7 = getelementptr inbounds ptr, ptr %6, i64 9
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) #13
  %10 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_7L9sDocumentE, ptr noundef %9, ptr noundef null) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %9, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %9, align 8, !tbaa !55
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  br label %19

18:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15documentCleanupE, ptr noundef nonnull @_ZN11xercesc_2_7L14reinitDocumentEv) #13
  br label %19

19:                                               ; preds = %18, %14, %12, %0
  %20 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !63
  ret ptr %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !73 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMDocumentTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_725DOMImplementationRegistry20getDOMImplementationEPKt(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN11xercesc_2_7L14reinitDocumentEv() #2 !prof !39 !PGOFuncName !74 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !63
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds ptr, ptr %5, i64 39
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  store ptr null, ptr @_ZN11xercesc_2_7L9sDocumentE, align 8, !tbaa !63
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2EPNS_11DOMDocumentEPKtS4_S4_b(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %7 = alloca [4000 x i16], align 16
  %8 = zext i1 %5 to i8
  tail call void @_ZN11xercesc_2_715DOMDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds i8, ptr %1, i64 24
  %12 = select i1 %10, ptr null, ptr %11
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %9, ptr noundef %12) #13
          to label %13 unwind label %47

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %1) #13
          to label %15 unwind label %49

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #13
          to label %17 unwind label %51

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 9
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %18, i8 0, i64 57, i1 false)
  store i8 %8, ptr %23, align 1, !tbaa !60
  %24 = invoke noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2) #13
          to label %25 unwind label %53

25:                                               ; preds = %17
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %25
  %28 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %29 = load ptr, ptr %0, align 8, !tbaa !55
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %33 unwind label %55

33:                                               ; preds = %27
  %34 = icmp eq ptr %32, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !55
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %40 unwind label %55

40:                                               ; preds = %35
  %41 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %39) #13
  br label %44

42:                                               ; preds = %33
  %43 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %41, %40 ], [ %43, %42 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %28, i16 noundef signext 14, ptr noundef null, ptr noundef %45) #13
          to label %46 unwind label %55

46:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
          to label %200 unwind label %53

47:                                               ; preds = %6
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %198

49:                                               ; preds = %13
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %196

51:                                               ; preds = %15
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %194

53:                                               ; preds = %46, %17
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %192

55:                                               ; preds = %44, %35, %27
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #14
  br label %192

57:                                               ; preds = %25
  %58 = icmp eq i32 %24, 0
  br i1 %58, label %152, label %59

59:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %7) #14
  %60 = icmp ugt i32 %24, 3998
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  %63 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #13
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 1
  %67 = load ptr, ptr %62, align 8, !tbaa !55
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef %66) #13
          to label %73 unwind label %71

71:                                               ; preds = %138, %144, %111, %108, %82, %79, %73, %61
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %150

73:                                               ; preds = %59, %61
  %74 = phi ptr [ %70, %61 ], [ %7, %59 ]
  %75 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %74, ptr noundef %2, i32 noundef %24) #13
          to label %76 unwind label %71

76:                                               ; preds = %73
  %77 = zext nneg i32 %24 to i64
  %78 = getelementptr inbounds i16, ptr %74, i64 %77
  store i16 0, ptr %78, align 2, !tbaa !75
  br i1 %10, label %108, label %79

79:                                               ; preds = %76
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef nonnull %74) #13
          to label %81 unwind label %71

81:                                               ; preds = %79
  br i1 %80, label %82, label %87

82:                                               ; preds = %81
  %83 = getelementptr inbounds i16, ptr %2, i64 %77
  %84 = getelementptr inbounds i16, ptr %83, i64 1
  %85 = invoke noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef nonnull %84) #13
          to label %86 unwind label %71

86:                                               ; preds = %82
  br i1 %85, label %143, label %87

87:                                               ; preds = %86, %81
  %88 = call ptr @__cxa_allocate_exception(i64 40) #14
  %89 = load ptr, ptr %0, align 8, !tbaa !55
  %90 = getelementptr inbounds ptr, ptr %89, i64 12
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %93 unwind label %106

93:                                               ; preds = %87
  %94 = icmp eq ptr %92, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %0, align 8, !tbaa !55
  %97 = getelementptr inbounds ptr, ptr %96, i64 12
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %100 unwind label %106

100:                                              ; preds = %95
  %101 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %99) #13
  br label %104

102:                                              ; preds = %93
  %103 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi ptr [ %101, %100 ], [ %103, %102 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %88, i16 noundef signext 14, ptr noundef null, ptr noundef %105) #13
          to label %138 unwind label %106

106:                                              ; preds = %104, %95, %87
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %88) #14
  br label %150

108:                                              ; preds = %76
  %109 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef nonnull %74, i32 noundef %24) #13
          to label %110 unwind label %71

110:                                              ; preds = %108
  br i1 %109, label %111, label %119

111:                                              ; preds = %110
  %112 = getelementptr inbounds i16, ptr %2, i64 %77
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #13
  %115 = xor i32 %24, -1
  %116 = add i32 %114, %115
  %117 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef nonnull %113, i32 noundef %116) #13
          to label %118 unwind label %71

118:                                              ; preds = %111
  br i1 %117, label %143, label %119

119:                                              ; preds = %118, %110
  %120 = call ptr @__cxa_allocate_exception(i64 40) #14
  %121 = load ptr, ptr %0, align 8, !tbaa !55
  %122 = getelementptr inbounds ptr, ptr %121, i64 12
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %125 unwind label %141

125:                                              ; preds = %119
  %126 = icmp eq ptr %124, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %0, align 8, !tbaa !55
  %129 = getelementptr inbounds ptr, ptr %128, i64 12
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(130) %0) #13
          to label %132 unwind label %141

132:                                              ; preds = %127
  %133 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %131) #13
  br label %136

134:                                              ; preds = %125
  %135 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi ptr [ %133, %132 ], [ %135, %134 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %120, i16 noundef signext 14, ptr noundef null, ptr noundef %137) #13
          to label %138 unwind label %141

138:                                              ; preds = %136, %104
  %139 = phi ptr [ %88, %104 ], [ %120, %136 ]
  invoke void @__cxa_throw(ptr nonnull %139, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
          to label %140 unwind label %71

140:                                              ; preds = %138
  unreachable

141:                                              ; preds = %136, %127, %119
  %142 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %120) #14
  br label %150

143:                                              ; preds = %118, %86
  br i1 %60, label %144, label %149

144:                                              ; preds = %143
  %145 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !63
  %146 = load ptr, ptr %145, align 8, !tbaa !55
  %147 = getelementptr inbounds ptr, ptr %146, i64 3
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef nonnull %74) #13
          to label %149 unwind label %71

149:                                              ; preds = %144, %143
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #14
  br label %152

150:                                              ; preds = %141, %106, %71
  %151 = phi { ptr, i32 } [ %72, %71 ], [ %107, %106 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %7) #14
  br label %192

152:                                              ; preds = %57, %149
  br i1 %10, label %170, label %153

153:                                              ; preds = %152
  %154 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %3) #13
          to label %155 unwind label %168

155:                                              ; preds = %153
  store ptr %154, ptr %21, align 8, !tbaa !66
  %156 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %4) #13
          to label %157 unwind label %168

157:                                              ; preds = %155
  store ptr %156, ptr %22, align 8, !tbaa !67
  %158 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #13
          to label %159 unwind label %168

159:                                              ; preds = %157
  store ptr %158, ptr %18, align 8, !tbaa !40
  %160 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %161 unwind label %168

161:                                              ; preds = %159
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %160, ptr noundef nonnull %0) #13
          to label %162 unwind label %168

162:                                              ; preds = %161
  store ptr %160, ptr %19, align 8, !tbaa !64
  %163 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %164 unwind label %168

164:                                              ; preds = %162
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %163, ptr noundef nonnull %0) #13
          to label %165 unwind label %168

165:                                              ; preds = %164
  store ptr %163, ptr %20, align 8, !tbaa !65
  %166 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %1) #13
          to label %167 unwind label %168

167:                                              ; preds = %165
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %166, ptr noundef nonnull %0) #13
          to label %189 unwind label %168

168:                                              ; preds = %167, %165, %164, %162, %161, %159, %157, %155, %153
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %192

170:                                              ; preds = %152
  %171 = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_7L16gDocTypeDocumentEv() #13
          to label %172 unwind label %187

172:                                              ; preds = %170
  %173 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %171, ptr noundef %3) #13
          to label %174 unwind label %187

174:                                              ; preds = %172
  store ptr %173, ptr %21, align 8, !tbaa !66
  %175 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %171, ptr noundef %4) #13
          to label %176 unwind label %187

176:                                              ; preds = %174
  store ptr %175, ptr %22, align 8, !tbaa !67
  %177 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %171, ptr noundef %2) #13
          to label %178 unwind label %187

178:                                              ; preds = %176
  store ptr %177, ptr %18, align 8, !tbaa !40
  %179 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %171) #13
          to label %180 unwind label %187

180:                                              ; preds = %178
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %179, ptr noundef nonnull %0) #13
          to label %181 unwind label %187

181:                                              ; preds = %180
  store ptr %179, ptr %19, align 8, !tbaa !64
  %182 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %171) #13
          to label %183 unwind label %187

183:                                              ; preds = %181
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %182, ptr noundef nonnull %0) #13
          to label %184 unwind label %187

184:                                              ; preds = %183
  store ptr %182, ptr %20, align 8, !tbaa !65
  %185 = invoke noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 1560, ptr noundef nonnull %171) #13
          to label %186 unwind label %187

186:                                              ; preds = %184
  invoke void @_ZN11xercesc_2_719DOMNamedNodeMapImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(1560) %185, ptr noundef nonnull %0) #13
          to label %189 unwind label %187

187:                                              ; preds = %186, %184, %183, %181, %180, %178, %176, %174, %172, %170
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %192

189:                                              ; preds = %186, %167
  %190 = phi ptr [ %166, %167 ], [ %185, %186 ]
  %191 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %190, ptr %191, align 8, !tbaa !69
  ret void

192:                                              ; preds = %187, %168, %150, %55, %53
  %193 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ], [ %169, %168 ], [ %188, %187 ], [ %151, %150 ]
  call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #11
  br label %194

194:                                              ; preds = %192, %51
  %195 = phi { ptr, i32 } [ %193, %192 ], [ %52, %51 ]
  call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  br label %196

196:                                              ; preds = %194, %49
  %197 = phi { ptr, i32 } [ %195, %194 ], [ %50, %49 ]
  call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %9) #11
  br label %198

198:                                              ; preds = %196, %47
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %48, %47 ]
  call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %199

200:                                              ; preds = %46
  unreachable
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !88

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !75
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !89

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !75
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !90, !llvm.loop !91

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplC2ERKS0_bb(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(130) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_715DOMDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %6, ptr noundef nonnull align 8 dereferenceable(10) %7) #13
          to label %8 unwind label %35

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #13
          to label %11 unwind label %37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13) #13
          to label %14 unwind label %39

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 10
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 11
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  %22 = load i8, ptr %21, align 8, !tbaa !92, !range !61, !noundef !62
  store i8 %22, ptr %20, align 8, !tbaa !92
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 12
  store i8 %5, ptr %23, align 1, !tbaa !60
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  store ptr %25, ptr %15, align 8, !tbaa !40
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 8
  %27 = load <2 x ptr>, ptr %26, align 8, !tbaa !63
  store <2 x ptr> %27, ptr %18, align 8, !tbaa !63
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  store ptr %29, ptr %19, align 8, !tbaa !68
  %30 = invoke noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %6) #13
          to label %31 unwind label %41

31:                                               ; preds = %14
  %32 = icmp ne ptr %30, null
  %33 = and i1 %32, %3
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %1) #13
          to label %43 unwind label %41

35:                                               ; preds = %4
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %70

37:                                               ; preds = %8
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %68

39:                                               ; preds = %11
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %66

41:                                               ; preds = %57, %50, %43, %34, %14
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #11
  br label %66

43:                                               ; preds = %31, %34
  %44 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(1560) %45, ptr noundef nonnull %0) #13
          to label %50 unwind label %41

50:                                               ; preds = %43
  store ptr %49, ptr %16, align 8, !tbaa !64
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds ptr, ptr %53, i64 10
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(1560) %52, ptr noundef nonnull %0) #13
          to label %57 unwind label %41

57:                                               ; preds = %50
  store ptr %56, ptr %17, align 8, !tbaa !65
  %58 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %1, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !69
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = getelementptr inbounds ptr, ptr %60, i64 10
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(1560) %59, ptr noundef nonnull %0) #13
          to label %64 unwind label %41

64:                                               ; preds = %57
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 7
  store ptr %63, ptr %65, align 8, !tbaa !69
  ret void

66:                                               ; preds = %41, %39
  %67 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  br label %68

68:                                               ; preds = %66, %37
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %6) #11
  br label %70

70:                                               ; preds = %68, %35
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %36, %35 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %71
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMDocumentTypeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #0 align 2 !prof !39 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentTypeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #11
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #3 !prof !39 !PGOFuncName !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat !prof !94 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode16setOwnerDocumentEPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMDocumentTypeImpl18isIntSubsetReadingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(130) %0) local_unnamed_addr #1 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentTypeImpl", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 8, !tbaa !92, !range !61, !noundef !62
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !96
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !75
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !96
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !75
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !97 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !98

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !75
  %8 = load i16, ptr %1, align 2, !tbaa !75
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !99

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !100

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !75
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !101

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !102

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !75
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !103

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !104

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !75
  %28 = load i16, ptr %26, align 2, !tbaa !75
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !105, !llvm.loop !106

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DOMDocumentTypeImpl.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37}
!36 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!37 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !45, i64 72}
!41 = !{!"_ZTSN11xercesc_2_719DOMDocumentTypeImplE", !42, i64 0, !44, i64 8, !49, i64 24, !52, i64 56, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !53, i64 128, !53, i64 129}
!42 = !{!"_ZTSN11xercesc_2_715DOMDocumentTypeE", !43, i64 0}
!43 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!44 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !45, i64 0, !48, i64 8}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"short", !46, i64 0}
!49 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !45, i64 0, !45, i64 8, !50, i64 16}
!50 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !51, i64 0, !45, i64 8}
!51 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!52 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !45, i64 0, !45, i64 8}
!53 = !{!"bool", !46, i64 0}
!54 = !{!41, !45, i64 24}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !47, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = !{!41, !53, i64 129}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!45, !45, i64 0}
!64 = !{!41, !45, i64 80}
!65 = !{!41, !45, i64 88}
!66 = !{!41, !45, i64 104}
!67 = !{!41, !45, i64 112}
!68 = !{!41, !45, i64 120}
!69 = !{!41, !45, i64 96}
!70 = !{!"function_entry_count", i64 2815}
!71 = !{!"DOMDocumentTypeImpl.cpp:_ZN11xercesc_2_7L16gDocTypeDocumentEv"}
!72 = !{!"function_entry_count", i64 1851}
!73 = !{!"function_entry_count", i64 1}
!74 = !{!"DOMDocumentTypeImpl.cpp:_ZN11xercesc_2_7L14reinitDocumentEv"}
!75 = !{!48, !48, i64 0}
!76 = !{!"function_entry_count", i64 2954}
!77 = !{!78, !45, i64 280}
!78 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !79, i64 0, !44, i64 32, !49, i64 48, !45, i64 80, !45, i64 88, !45, i64 96, !53, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !83, i64 136, !45, i64 176, !45, i64 184, !45, i64 192, !86, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !85, i64 288, !53, i64 292}
!79 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !80, i64 0, !81, i64 8, !82, i64 16, !43, i64 24}
!80 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!81 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!82 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!83 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !84, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !85, i64 32, !85, i64 36}
!84 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!85 = !{!"int", !46, i64 0}
!86 = !{!"long", !46, i64 0}
!87 = !{!"function_entry_count", i64 2453164456}
!88 = !{!"branch_weights", i32 1, i32 -1841802839}
!89 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!90 = !{!"branch_weights", i32 408669070, i32 -279908792}
!91 = distinct !{!91, !58}
!92 = !{!41, !53, i64 128}
!93 = !{!"DOMDocumentTypeImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!94 = !{!"function_entry_count", i64 1300}
!95 = !{!"function_entry_count", i64 2562}
!96 = !{!44, !48, i64 8}
!97 = !{!"function_entry_count", i64 1231717351}
!98 = !{!"branch_weights", i32 621, i32 -1469098093}
!99 = !{!"branch_weights", i32 408901017, i32 1}
!100 = !{!"branch_weights", i32 267, i32 4}
!101 = !{!"branch_weights", i32 1, i32 4}
!102 = !{!"branch_weights", i32 156, i32 112}
!103 = !{!"branch_weights", i32 1, i32 112}
!104 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!105 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!106 = distinct !{!106, !58}
