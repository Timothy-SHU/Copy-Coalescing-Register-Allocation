; ModuleID = 'DOMNotationImpl.cpp'
source_filename = "DOMNotationImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNotationImpl" = type { %"class.xercesc_2_7::DOMNotation", %"class.xercesc_2_7::DOMNodeImpl", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMNotation" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_711DOMNotationC2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_711DOMNotationD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_711DOMNotationC2ERKS0_ = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZTSN11xercesc_2_711DOMNotationE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_711DOMNotationE = comdat any

$_ZTVN11xercesc_2_711DOMNotationE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_715DOMNotationImplE = dso_local unnamed_addr constant { [47 x ptr] } { [47 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNotationImplE, ptr @_ZN11xercesc_2_715DOMNotationImplD2Ev, ptr @_ZN11xercesc_2_715DOMNotationImplD0Ev, ptr @_ZNK11xercesc_2_715DOMNotationImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl12getLastChildEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl13getAttributesEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl9cloneNodeEb, ptr @_ZN11xercesc_2_715DOMNotationImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMNotationImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_715DOMNotationImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMNotationImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMNotationImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_715DOMNotationImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_715DOMNotationImpl9normalizeEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_715DOMNotationImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl9getPrefixEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl12getLocalNameEv, ptr @_ZN11xercesc_2_715DOMNotationImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_715DOMNotationImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMNotationImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_715DOMNotationImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_715DOMNotationImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_715DOMNotationImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_715DOMNotationImpl14getTextContentEv, ptr @_ZN11xercesc_2_715DOMNotationImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_715DOMNotationImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_715DOMNotationImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_715DOMNotationImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_715DOMNotationImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_715DOMNotationImpl7releaseEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl11getPublicIdEv, ptr @_ZNK11xercesc_2_715DOMNotationImpl11getSystemIdEv, ptr @_ZN11xercesc_2_715DOMNotationImpl11setPublicIdEPKt, ptr @_ZN11xercesc_2_715DOMNotationImpl11setSystemIdEPKt, ptr @_ZN11xercesc_2_715DOMNotationImpl10setBaseURIEPKt] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715DOMNotationImplE = dso_local constant [33 x i8] c"N11xercesc_2_715DOMNotationImplE\00", align 1
@_ZTSN11xercesc_2_711DOMNotationE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMNotationE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_711DOMNotationE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMNotationE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMNotationImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNotationImplE, ptr @_ZTIN11xercesc_2_711DOMNotationE }, align 8
@_ZTVN11xercesc_2_711DOMNotationE = linkonce_odr dso_local unnamed_addr constant { [44 x ptr] } { [44 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMNotationE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_711DOMNotationD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_715DOMNotationImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_715DOMNotationImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_715DOMNotationImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_715DOMNotationImplC2ERKS0_b
@_ZN11xercesc_2_715DOMNotationImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DOMNotationImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImplD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_715DOMNotationImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMNotationImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !38 {
  ret i16 12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef %6, i32 noundef 10) #11
  tail call void @_ZN11xercesc_2_715DOMNotationImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 zeroext poison) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_715DOMNotationImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i16 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMNotationImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715DOMNotationImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #11
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #11
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %57

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #11
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 10) #11
  ret void

35:                                               ; preds = %28
  %36 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %37 = load ptr, ptr %0, align 8, !tbaa !48
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %41 unwind label %55

41:                                               ; preds = %35
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !48
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %48 unwind label %55

48:                                               ; preds = %43
  %49 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %47) #11
  br label %52

50:                                               ; preds = %41
  %51 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %49, %48 ], [ %51, %50 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %36, i16 noundef signext 15, ptr noundef null, ptr noundef %53) #11
          to label %54 unwind label %55

54:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

55:                                               ; preds = %52, %43, %35
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %57

57:                                               ; preds = %55, %26
  %58 = phi ptr [ %36, %55 ], [ %7, %26 ]
  %59 = phi { ptr, i32 } [ %56, %55 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %58) #12
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNotationImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #11
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #11
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #11
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %26

27:                                               ; preds = %2
  %28 = load ptr, ptr %0, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %32 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %31, ptr noundef %1) #11
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #11
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #11
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #11
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %26

27:                                               ; preds = %2
  %28 = load ptr, ptr %0, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %32 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %31, ptr noundef %1) #11
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImpl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !54
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(56) %0) #11
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #11
  %13 = add i32 %12, 9
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %11, i64 noundef %15) #11
  tail call void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef nonnull %1, ptr noundef %16) #11
  br label %17

17:                                               ; preds = %2, %4, %7
  %18 = phi ptr [ %16, %7 ], [ null, %4 ], [ null, %2 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !50
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_711DOMNotationC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNotationImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #11
          to label %8 unwind label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  tail call void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true) #11
  %10 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #11
          to label %11 unwind label %14

11:                                               ; preds = %8
  store ptr %10, ptr %9, align 8, !tbaa !39
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNotationC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMNotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !55 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !56
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !54
  br i1 %1, label %6, label %8, !prof !57

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !59 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNotationD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_711DOMNotationC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNotationImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #11
          to label %6 unwind label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %1, i64 0, i32 2
  %9 = load <2 x ptr>, ptr %8, align 8, !tbaa !51
  store <2 x ptr> %9, ptr %7, align 8, !tbaa !51
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %1, i64 0, i32 4
  %12 = load <2 x ptr>, ptr %11, align 8, !tbaa !51
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true) #11
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNotationC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [44 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMNotationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNotationImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNotationImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNotationImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %2) #9
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat !prof !60 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #11
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !56
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !56
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !56
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !79

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !54
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !80

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !81, !llvm.loop !82

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
declare void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !44, i64 24}
!40 = !{!"_ZTSN11xercesc_2_715DOMNotationImplE", !41, i64 0, !43, i64 8, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48}
!41 = !{!"_ZTSN11xercesc_2_711DOMNotationE", !42, i64 0}
!42 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!43 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !44, i64 0, !47, i64 8}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"short", !45, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !46, i64 0}
!50 = !{!40, !44, i64 48}
!51 = !{!44, !44, i64 0}
!52 = !{!40, !44, i64 32}
!53 = !{!40, !44, i64 40}
!54 = !{!47, !47, i64 0}
!55 = !{!"function_entry_count", i64 650}
!56 = !{!43, !47, i64 8}
!57 = !{!"branch_weights", i32 651, i32 1}
!58 = !{!"function_entry_count", i64 1851}
!59 = !{!"function_entry_count", i64 1}
!60 = !{!"function_entry_count", i64 1300}
!61 = !{!"function_entry_count", i64 3150}
!62 = !{!"function_entry_count", i64 2954}
!63 = !{!64, !44, i64 280}
!64 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !65, i64 0, !43, i64 32, !69, i64 48, !44, i64 80, !44, i64 88, !44, i64 96, !72, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !73, i64 136, !44, i64 176, !44, i64 184, !44, i64 192, !76, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !75, i64 288, !72, i64 292}
!65 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !66, i64 0, !67, i64 8, !68, i64 16, !42, i64 24}
!66 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!67 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!68 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!69 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !44, i64 0, !44, i64 8, !70, i64 16}
!70 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !71, i64 0, !44, i64 8}
!71 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!72 = !{!"bool", !45, i64 0}
!73 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !74, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !75, i64 32, !75, i64 36}
!74 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!75 = !{!"int", !45, i64 0}
!76 = !{!"long", !45, i64 0}
!77 = !{!"function_entry_count", i64 2562}
!78 = !{!"function_entry_count", i64 2453164456}
!79 = !{!"branch_weights", i32 1, i32 -1841802839}
!80 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!81 = !{!"branch_weights", i32 408669070, i32 -279908792}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
