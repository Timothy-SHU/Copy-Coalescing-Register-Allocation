; ModuleID = 'DOMEntityReferenceImpl.cpp'
source_filename = "DOMEntityReferenceImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMEntityReferenceImpl" = type { %"class.xercesc_2_7::DOMEntityReference", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr }
%"class.xercesc_2_7::DOMEntityReference" = type { %"class.xercesc_2_7::DOMNode" }
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

$_ZN11xercesc_2_718DOMEntityReferenceC2Ev = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_718DOMEntityReferenceD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_718DOMEntityReferenceC2ERKS0_ = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZTSN11xercesc_2_718DOMEntityReferenceE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_718DOMEntityReferenceE = comdat any

$_ZTVN11xercesc_2_718DOMEntityReferenceE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_722DOMEntityReferenceImplE = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722DOMEntityReferenceImplE, ptr @_ZN11xercesc_2_722DOMEntityReferenceImplD2Ev, ptr @_ZN11xercesc_2_722DOMEntityReferenceImplD0Ev, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getLastChildEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getAttributesEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl9cloneNodeEb, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl9normalizeEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl9getPrefixEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getLocalNameEv, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl14getTextContentEv, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl7releaseEv, ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11setReadOnlyEbb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722DOMEntityReferenceImplE = dso_local constant [40 x i8] c"N11xercesc_2_722DOMEntityReferenceImplE\00", align 1
@_ZTSN11xercesc_2_718DOMEntityReferenceE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718DOMEntityReferenceE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_718DOMEntityReferenceE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718DOMEntityReferenceE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_722DOMEntityReferenceImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722DOMEntityReferenceImplE, ptr @_ZTIN11xercesc_2_718DOMEntityReferenceE }, align 8
@_ZTVN11xercesc_2_718DOMEntityReferenceE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718DOMEntityReferenceE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_718DOMEntityReferenceD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_722DOMEntityReferenceImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_722DOMEntityReferenceImplC1EPNS_11DOMDocumentEPKtb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xercesc_2_722DOMEntityReferenceImplC2EPNS_11DOMDocumentEPKtb
@_ZN11xercesc_2_722DOMEntityReferenceImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_722DOMEntityReferenceImplC2ERKS0_b
@_ZN11xercesc_2_722DOMEntityReferenceImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722DOMEntityReferenceImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImplD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !38 {
  ret i16 5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 88, ptr noundef %6, i32 noundef 9) #10
  tail call void @_ZN11xercesc_2_722DOMEntityReferenceImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_722DOMEntityReferenceImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i16 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722DOMEntityReferenceImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722DOMEntityReferenceImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722DOMEntityReferenceImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !53
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !53
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #10
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #10
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !53
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #10
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #10
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 9) #10
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %38 = load ptr, ptr %0, align 8, !tbaa !53
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #10
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #10
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

56:                                               ; preds = %53, %44, %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi ptr [ %37, %56 ], [ %7, %26 ]
  %60 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %59) #11
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(293) %7) #10
  %9 = xor i1 %8, true
  %10 = or i1 %9, %1
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %17 unwind label %31

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !53
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %24 unwind label %31

24:                                               ; preds = %19
  %25 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %23) #10
  br label %28

26:                                               ; preds = %17
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 7, ptr noundef null, ptr noundef %29) #10
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

31:                                               ; preds = %28, %19, %11
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #11
  resume { ptr, i32 } %32

33:                                               ; preds = %3
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %34, i1 noundef zeroext %1, i1 noundef zeroext %2) #10
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_718DOMEntityReferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xercesc_2_722DOMEntityReferenceImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #10
          to label %8 unwind label %71

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #10
          to label %10 unwind label %73

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #10
          to label %12 unwind label %75

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !55
  %14 = load ptr, ptr %0, align 8, !tbaa !53
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %18 unwind label %77

18:                                               ; preds = %12
  %19 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %17, ptr noundef %2) #10
          to label %20 unwind label %77

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 4
  store ptr %19, ptr %21, align 8, !tbaa !39
  br i1 %5, label %83, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %1, align 8, !tbaa !53
  %24 = getelementptr inbounds ptr, ptr %23, i64 11
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %27 unwind label %77

27:                                               ; preds = %22
  %28 = icmp eq ptr %26, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %1, align 8, !tbaa !53
  %31 = getelementptr inbounds ptr, ptr %30, i64 11
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %34 unwind label %77

34:                                               ; preds = %29
  %35 = load ptr, ptr %33, align 8, !tbaa !53
  %36 = getelementptr inbounds ptr, ptr %35, i64 41
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %33) #10
          to label %39 unwind label %77

39:                                               ; preds = %34
  %40 = icmp eq ptr %38, null
  br i1 %40, label %83, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %1, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %42, i64 11
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %46 unwind label %79

46:                                               ; preds = %41
  %47 = load ptr, ptr %45, align 8, !tbaa !53
  %48 = getelementptr inbounds ptr, ptr %47, i64 41
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %45) #10
          to label %51 unwind label %79

51:                                               ; preds = %46
  %52 = load ptr, ptr %50, align 8, !tbaa !53
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %2) #10
          to label %56 unwind label %79

56:                                               ; preds = %51
  %57 = icmp eq ptr %55, null
  br i1 %57, label %83, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %55, align 8, !tbaa !53
  %60 = getelementptr inbounds ptr, ptr %59, i64 31
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(129) %55) #10
          to label %63 unwind label %79

63:                                               ; preds = %58
  store ptr %62, ptr %13, align 8, !tbaa !55
  %64 = load ptr, ptr %55, align 8, !tbaa !53
  %65 = getelementptr inbounds ptr, ptr %64, i64 53
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(129) %55) #10
          to label %68 unwind label %81

68:                                               ; preds = %63
  %69 = icmp eq ptr %67, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %67) #10
          to label %83 unwind label %81

71:                                               ; preds = %3
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %91

73:                                               ; preds = %8
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %89

75:                                               ; preds = %10
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %87

77:                                               ; preds = %83, %34, %29, %22, %18, %12
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %85

79:                                               ; preds = %58, %51, %46, %41
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %85

81:                                               ; preds = %70, %63
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %56, %70, %68, %27, %39, %20
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %84 unwind label %77

84:                                               ; preds = %83
  ret void

85:                                               ; preds = %79, %81, %77
  %86 = phi { ptr, i32 } [ %78, %77 ], [ %82, %81 ], [ %80, %79 ]
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #8
  br label %87

87:                                               ; preds = %85, %75
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %76, %75 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #8
  br label %89

89:                                               ; preds = %87, %73
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %74, %73 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  br label %91

91:                                               ; preds = %89, %71
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %72, %71 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %92
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718DOMEntityReferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_718DOMEntityReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !57 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !58 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718DOMEntityReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImplC2EPNS_11DOMDocumentEPKtb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_718DOMEntityReferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xercesc_2_722DOMEntityReferenceImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds i8, ptr %1, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %8) #10
          to label %9 unwind label %73

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %1) #10
          to label %11 unwind label %75

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #10
          to label %13 unwind label %77

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !55
  %15 = load ptr, ptr %0, align 8, !tbaa !53
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
          to label %19 unwind label %79

19:                                               ; preds = %13
  %20 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %18, ptr noundef %2) #10
          to label %21 unwind label %79

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 4
  store ptr %20, ptr %22, align 8, !tbaa !39
  br i1 %6, label %85, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %1, align 8, !tbaa !53
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %28 unwind label %79

28:                                               ; preds = %23
  %29 = icmp eq ptr %27, null
  br i1 %29, label %85, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %1, align 8, !tbaa !53
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %35 unwind label %79

35:                                               ; preds = %30
  %36 = load ptr, ptr %34, align 8, !tbaa !53
  %37 = getelementptr inbounds ptr, ptr %36, i64 41
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %34) #10
          to label %40 unwind label %79

40:                                               ; preds = %35
  %41 = icmp eq ptr %39, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %1, align 8, !tbaa !53
  %44 = getelementptr inbounds ptr, ptr %43, i64 11
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %47 unwind label %81

47:                                               ; preds = %42
  %48 = load ptr, ptr %46, align 8, !tbaa !53
  %49 = getelementptr inbounds ptr, ptr %48, i64 41
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %46) #10
          to label %52 unwind label %81

52:                                               ; preds = %47
  %53 = load ptr, ptr %51, align 8, !tbaa !53
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %2) #10
          to label %57 unwind label %81

57:                                               ; preds = %52
  %58 = icmp eq ptr %56, null
  br i1 %58, label %85, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %56, align 8, !tbaa !53
  %61 = getelementptr inbounds ptr, ptr %60, i64 31
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(129) %56) #10
          to label %64 unwind label %81

64:                                               ; preds = %59
  store ptr %63, ptr %14, align 8, !tbaa !55
  br i1 %3, label %65, label %85

65:                                               ; preds = %64
  %66 = load ptr, ptr %56, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 53
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(129) %56) #10
          to label %70 unwind label %83

70:                                               ; preds = %65
  %71 = icmp eq ptr %69, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %69) #10
          to label %85 unwind label %83

73:                                               ; preds = %4
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %93

75:                                               ; preds = %9
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %91

77:                                               ; preds = %11
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %89

79:                                               ; preds = %85, %35, %30, %23, %19, %13
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %87

81:                                               ; preds = %59, %52, %47, %42
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %87

83:                                               ; preds = %72, %65
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %87

85:                                               ; preds = %57, %64, %72, %70, %28, %40, %21
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %5, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %86 unwind label %79

86:                                               ; preds = %85
  ret void

87:                                               ; preds = %81, %83, %79
  %88 = phi { ptr, i32 } [ %80, %79 ], [ %84, %83 ], [ %82, %81 ]
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #8
  br label %89

89:                                               ; preds = %87, %77
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %78, %77 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #8
  br label %91

91:                                               ; preds = %89, %75
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %76, %75 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %5) #8
  br label %93

93:                                               ; preds = %91, %73
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %74, %73 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_718DOMEntityReferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xercesc_2_722DOMEntityReferenceImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #10
          to label %6 unwind label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
          to label %9 unwind label %19

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11) #10
          to label %12 unwind label %21

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %1, i64 0, i32 4
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !56
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !56
  br i1 %2, label %16, label %25

16:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %1) #10
          to label %25 unwind label %23

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %31

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %29

21:                                               ; preds = %9
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %27

23:                                               ; preds = %25, %16
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #8
  br label %27

25:                                               ; preds = %16, %12
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %26 unwind label %23

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %23, %21
  %28 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #8
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718DOMEntityReferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_718DOMEntityReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722DOMEntityReferenceImplD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [43 x ptr] }, ptr @_ZTVN11xercesc_2_722DOMEntityReferenceImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityReferenceImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #8
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat !prof !59 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715DOMDocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 27
  %3 = load i8, ptr %2, align 4, !tbaa !60, !range !71, !noundef !72
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !76
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !77
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !76
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !77
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

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

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

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
!39 = !{!40, !44, i64 72}
!40 = !{!"_ZTSN11xercesc_2_722DOMEntityReferenceImplE", !41, i64 0, !43, i64 8, !48, i64 24, !51, i64 56, !44, i64 72, !44, i64 80}
!41 = !{!"_ZTSN11xercesc_2_718DOMEntityReferenceE", !42, i64 0}
!42 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!43 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !44, i64 0, !47, i64 8}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"short", !45, i64 0}
!48 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !44, i64 0, !44, i64 8, !49, i64 16}
!49 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !50, i64 0, !44, i64 8}
!50 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!51 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !44, i64 0, !44, i64 8}
!52 = !{!40, !44, i64 24}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !46, i64 0}
!55 = !{!40, !44, i64 80}
!56 = !{!44, !44, i64 0}
!57 = !{!"function_entry_count", i64 1851}
!58 = !{!"function_entry_count", i64 1}
!59 = !{!"function_entry_count", i64 1300}
!60 = !{!61, !66, i64 292}
!61 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !62, i64 0, !43, i64 32, !48, i64 48, !44, i64 80, !44, i64 88, !44, i64 96, !66, i64 104, !44, i64 112, !44, i64 120, !44, i64 128, !67, i64 136, !44, i64 176, !44, i64 184, !44, i64 192, !70, i64 200, !44, i64 208, !44, i64 216, !44, i64 224, !44, i64 232, !44, i64 240, !44, i64 248, !44, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !69, i64 288, !66, i64 292}
!62 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !63, i64 0, !64, i64 8, !65, i64 16, !42, i64 24}
!63 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!64 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!65 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!66 = !{!"bool", !45, i64 0}
!67 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !68, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !69, i64 32, !69, i64 36}
!68 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!69 = !{!"int", !45, i64 0}
!70 = !{!"long", !45, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!"function_entry_count", i64 2954}
!74 = !{!61, !44, i64 280}
!75 = !{!"function_entry_count", i64 2562}
!76 = !{!43, !47, i64 8}
!77 = !{!47, !47, i64 0}
