; ModuleID = 'XSDElementNSImpl.cpp'
source_filename = "XSDElementNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::XSDElementNSImpl" = type { %"class.xercesc_2_7::DOMElementNSImpl", i64, i64 }
%"class.xercesc_2_7::DOMElementNSImpl" = type { %"class.xercesc_2_7::DOMElementImpl", ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_716XSDElementNSImplD0Ev = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

@_ZTVN11xercesc_2_716XSDElementNSImplE = dso_local unnamed_addr constant { [69 x ptr] } { [69 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XSDElementNSImplE, ptr @_ZN11xercesc_2_714DOMElementImplD2Ev, ptr @_ZN11xercesc_2_716XSDElementNSImplD0Ev, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_716XSDElementNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl9normalizeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_716DOMElementNSImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_716DOMElementNSImpl9getPrefixEv, ptr @_ZNK11xercesc_2_716DOMElementNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv, ptr @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_716DOMElementNSImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_716DOMElementNSImpl7releaseEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_, ptr @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE, ptr @_ZNK11xercesc_2_716DOMElementNSImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716XSDElementNSImplE = dso_local constant [34 x i8] c"N11xercesc_2_716XSDElementNSImplE\00", align 1
@_ZTIN11xercesc_2_716DOMElementNSImplE = external constant ptr
@_ZTIN11xercesc_2_716XSDElementNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XSDElementNSImplE, ptr @_ZTIN11xercesc_2_716DOMElementNSImplE }, align 8

@_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_716XSDElementNSImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_716XSDElementNSImplC1EPNS_11DOMDocumentEPKtS4_ll = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i64), ptr @_ZN11xercesc_2_716XSDElementNSImplC2EPNS_11DOMDocumentEPKtS4_ll
@_ZN11xercesc_2_716XSDElementNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_716XSDElementNSImplC2ERKS0_b

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDElementNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716XSDElementNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0) #8
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 144, ptr noundef %6) #8
  tail call void @_ZN11xercesc_2_716XSDElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #8
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl11getTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl6renameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDElementNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) #8
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716XSDElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDElementNSImplC2EPNS_11DOMDocumentEPKtS4_ll(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716XSDElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSDElementNSImpl", ptr %0, i64 0, i32 1
  store i64 %4, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSDElementNSImpl", ptr %0, i64 0, i32 2
  store i64 %5, ptr %8, align 8, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XSDElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) #8
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716XSDElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDElementNSImpl", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSDElementNSImpl", ptr %0, i64 0, i32 1
  %6 = load <2 x i64>, ptr %4, align 8, !tbaa !60
  store <2 x i64> %6, ptr %5, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !61 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #8
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { optsize }

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
!36 = !{ptr @_ZN11xercesc_2_716XSDElementNSImplC2EPNS_11DOMDocumentEPKtS4_ll, ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_, i64 550}
!37 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 550}
!44 = !{!45, !58, i64 128}
!45 = !{!"_ZTSN11xercesc_2_716XSDElementNSImplE", !46, i64 0, !58, i64 128, !58, i64 136}
!46 = !{!"_ZTSN11xercesc_2_716DOMElementNSImplE", !47, i64 0, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120}
!47 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !48, i64 0, !50, i64 8, !54, i64 24, !57, i64 56, !51, i64 72, !51, i64 80, !51, i64 88}
!48 = !{!"_ZTSN11xercesc_2_710DOMElementE", !49, i64 0}
!49 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!50 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !51, i64 0, !53, i64 8}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !42, i64 0}
!53 = !{!"short", !52, i64 0}
!54 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !51, i64 0, !51, i64 8, !55, i64 16}
!55 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !56, i64 0, !51, i64 8}
!56 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!57 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !51, i64 0, !51, i64 8}
!58 = !{!"long", !52, i64 0}
!59 = !{!45, !58, i64 136}
!60 = !{!58, !58, i64 0}
!61 = !{!"function_entry_count", i64 2815}
