; ModuleID = 'DOMAttrImpl.cpp'
source_filename = "DOMAttrImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMTypeInfoImpl" = type { %"class.xercesc_2_7::DOMTypeInfo", %"class.xercesc_2_7::DOMPSVITypeInfo", i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMTypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMPSVITypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }

$_ZN11xercesc_2_77DOMAttrC2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMAttrC2ERKS0_ = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb = comdat any

$_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv = comdat any

$_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMAttrD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZTSN11xercesc_2_77DOMAttrE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMAttrE = comdat any

$_ZTVN11xercesc_2_77DOMAttrE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

@_ZTVN11xercesc_2_711DOMAttrImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMAttrImplE, ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev, ptr @_ZN11xercesc_2_711DOMAttrImplD0Ev, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl9getPrefixEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLocalNameEv, ptr @_ZN11xercesc_2_711DOMAttrImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv, ptr @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_711DOMAttrImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE, ptr @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv, ptr @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv] }, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711DOMAttrImplE = dso_local constant [29 x i8] c"N11xercesc_2_711DOMAttrImplE\00", align 1
@_ZTSN11xercesc_2_77DOMAttrE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMAttrE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_77DOMAttrE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMAttrE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_711DOMAttrImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMAttrImplE, ptr @_ZTIN11xercesc_2_77DOMAttrE }, align 8
@_ZTVN11xercesc_2_77DOMAttrE = linkonce_odr dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMAttrE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMAttrD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_711DOMAttrImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b
@_ZN11xercesc_2_711DOMAttrImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN11xercesc_2_77DOMAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #13
          to label %8 unwind label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #13
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !69
  %12 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #13
          to label %13 unwind label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %12, ptr %14, align 8, !tbaa !80
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true) #13
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %23

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %10
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #14
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMAttrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !81 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !83
  br i1 %1, label %6, label %8, !prof !84

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
  store i16 %12, ptr %13, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call void @_ZN11xercesc_2_77DOMAttrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #13
          to label %6 unwind label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
          to label %9 unwind label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 3
  %12 = load <2 x ptr>, ptr %11, align 8, !tbaa !86
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !86
  %13 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext %13) #13
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #13
  br i1 %14, label %21, label %30

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %36

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %34

19:                                               ; preds = %30
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %32

21:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !66
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %26 unwind label %28

26:                                               ; preds = %21
  %27 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %25) #13
  invoke void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull %0) #13
          to label %30 unwind label %28

28:                                               ; preds = %26, %21
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %26, %9
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %1) #13
          to label %31 unwind label %19

31:                                               ; preds = %30
  ret void

32:                                               ; preds = %28, %19
  %33 = phi { ptr, i32 } [ %20, %19 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #14
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMAttrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !85 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMAttrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !83
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #4 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !85 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #14
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 72, ptr noundef %6, i32 noundef 0) #13
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext poison) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !87 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !87 {
  ret i16 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds ptr, ptr %2, i64 42
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6, !prof !103

6:                                                ; preds = %1
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24, !prof !106

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !102
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef signext i16 %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  %17 = icmp eq i16 %16, 3
  br i1 %17, label %18, label %24, !prof !106

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 8, !tbaa !102
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  br label %42

24:                                               ; preds = %11, %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #16
  %25 = load ptr, ptr %0, align 8, !tbaa !66
  %26 = getelementptr inbounds ptr, ptr %25, i64 12
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %28) #13
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1023, ptr noundef %29) #13
  %30 = load ptr, ptr %3, align 8, !tbaa !102
  invoke void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %30, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
          to label %31 unwind label %40

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !66
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %36 unwind label %40

36:                                               ; preds = %31
  %37 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %38 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %35, ptr noundef %37) #13
          to label %39 unwind label %40

39:                                               ; preds = %36
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  br label %42

40:                                               ; preds = %36, %31, %24
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #16
  resume { ptr, i32 } %41

42:                                               ; preds = %18, %39, %1
  %43 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ], [ %23, %18 ], [ %38, %39 ]
  ret ptr %43
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %0) unnamed_addr #4 !prof !101 !PGOFuncName !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %4, label %6, !prof !106

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %0, i64 0, i32 2
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #4 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i32 0, ptr %0, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !113
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !114
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !115
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !66
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #13
  store ptr %16, ptr %9, align 8, !tbaa !117
  store i16 0, ptr %16, align 2, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #1 align 2 !prof !85 {
  %4 = load ptr, ptr %1, align 8, !tbaa !66
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %8 = icmp eq i16 %7, 3
  %9 = load ptr, ptr %1, align 8, !tbaa !66
  br i1 %8, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %9, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %13) #13
  br label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds ptr, ptr %9, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %18 = icmp eq i16 %17, 5
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %19 ]
  tail call void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %26, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  %27 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %26) #13
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !118

31:                                               ; preds = %25, %19, %14, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = load i32, ptr %0, align 8, !tbaa !111
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !83
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = load ptr, ptr %3, align 8, !tbaa !66
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !121 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !122

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !83
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !123

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !83
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !124, !llvm.loop !125

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !111
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !113
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !126

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #13
  %21 = load i32, ptr %0, align 8, !tbaa !111
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !117
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !111
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !111
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #4 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %3, i1 noundef zeroext %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %4, label %5, label %27, !prof !127

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !66
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !66
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #13
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !86
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #13
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %26

27:                                               ; preds = %2
  %28 = load ptr, ptr %0, align 8, !tbaa !66
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %32 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %32, label %33, label %35, !prof !127

33:                                               ; preds = %27
  %34 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %31) #13
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %34, ptr noundef nonnull %0) #13
  br label %35

35:                                               ; preds = %33, %27
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39, !prof !128

39:                                               ; preds = %35, %50
  %40 = phi ptr [ %51, %50 ], [ %37, %35 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !66
  %42 = getelementptr inbounds ptr, ptr %41, i64 16
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %40) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %44, align 8, !tbaa !66
  %48 = getelementptr inbounds ptr, ptr %47, i64 39
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(8) %44) #13
  br label %50

50:                                               ; preds = %46, %39
  %51 = load ptr, ptr %36, align 8, !tbaa !102
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !prof !129, !llvm.loop !130

53:                                               ; preds = %50, %35
  %54 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %55 = icmp eq ptr %1, null
  br i1 %55, label %65, label %56, !prof !127

56:                                               ; preds = %53
  %57 = load ptr, ptr %31, align 8, !tbaa !66
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(293) %31, ptr noundef nonnull %1) #13
  %61 = load ptr, ptr %0, align 8, !tbaa !66
  %62 = getelementptr inbounds ptr, ptr %61, i64 17
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %60) #13
  br label %65

65:                                               ; preds = %56, %53
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(10) %3, i1 noundef zeroext true) #13
  tail call void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32) %54) #13
  %66 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #13
  br i1 %66, label %67, label %69, !prof !127

67:                                               ; preds = %65
  %68 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %31) #13
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %68, ptr noundef nonnull %0) #13
  br label %69

69:                                               ; preds = %67, %65
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  %4 = load ptr, ptr %2, align 8
  %5 = select i1 %3, ptr %4, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl15setOwnerElementEPNS_10DOMElementE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %3, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !82
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !83
  br i1 %1, label %6, label %8, !prof !135

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
  store i16 %12, ptr %13, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !66
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #13
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #13
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !66
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 0) #13
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #16
  %38 = load ptr, ptr %0, align 8, !tbaa !66
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !66
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #13
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !86
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #13
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #18
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl6renameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !85 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds ptr, ptr %4, i64 44
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !66
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %12 = icmp eq ptr %7, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !tbaa !66
  %15 = getelementptr inbounds ptr, ptr %14, i64 46
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0) #13
  br label %18

18:                                               ; preds = %13, %3
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i16, ptr %1, align 2, !tbaa !83
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %18
  %24 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %2) #13
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !80
  br i1 %12, label %64, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !66
  %28 = getelementptr inbounds ptr, ptr %27, i64 45
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0) #13
  br label %64

31:                                               ; preds = %20
  %32 = load ptr, ptr %11, align 8, !tbaa !66
  %33 = getelementptr inbounds ptr, ptr %32, i64 17
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef nonnull %1, ptr noundef %2) #13
  %36 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #13
  %37 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef %35) #13
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef nonnull %36, ptr noundef nonnull %37) #13
  %38 = load ptr, ptr %0, align 8, !tbaa !66
  %39 = getelementptr inbounds ptr, ptr %38, i64 7
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %31, %43
  %44 = phi ptr [ %56, %43 ], [ %41, %31 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !66
  %46 = getelementptr inbounds ptr, ptr %45, i64 16
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %44) #13
  %49 = load ptr, ptr %35, align 8, !tbaa !66
  %50 = getelementptr inbounds ptr, ptr %49, i64 17
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %44) #13
  %53 = load ptr, ptr %0, align 8, !tbaa !66
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %43, !llvm.loop !136

58:                                               ; preds = %43, %31
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %37, i32 noundef 4, ptr noundef nonnull %0, ptr noundef %35) #13
  br i1 %12, label %64, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %7, align 8, !tbaa !66
  %61 = getelementptr inbounds ptr, ptr %60, i64 52
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %35) #13
  br label %64

64:                                               ; preds = %58, %59, %23, %26
  %65 = phi ptr [ %0, %26 ], [ %0, %23 ], [ %35, %59 ], [ %35, %58 ]
  ret ptr %65
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #7 !prof !85 !PGOFuncName !137 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, ptr %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE) #13
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = select i1 %7, ptr null, ptr %8
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %12 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef %1) #13
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi ptr [ %9, %4 ], [ %12, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !138 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !139

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !83
  %8 = load i16, ptr %1, align 2, !tbaa !83
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !140

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !141

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !83
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !142

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !143

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !83
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !144

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !145

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !83
  %28 = load i16, ptr %26, align 2, !tbaa !83
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !146, !llvm.loop !147

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !85 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !85 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !85 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #13
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !85 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i16 %4
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !85 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %2, i1 noundef zeroext true) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 56, ptr noundef nonnull %6) #13
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 500, ptr noundef nonnull %6) #13
  store ptr %11, ptr %7, align 8, !tbaa !88
  br label %12

12:                                               ; preds = %10, %4
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %6) #13
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %0) #13
  br label %14

14:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #13
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #13
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull %0) #13
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %2, i1 noundef zeroext false) #13
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !150 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMAttrD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !85 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #4 comdat align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !82
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !83
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !153 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !154 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!64}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_77DOMAttrC2Ev, i64 650}
!36 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 650}
!37 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 650}
!38 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 650}
!39 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb, i64 650}
!40 = !{ptr @_ZN11xercesc_2_77DOMAttrC2Ev, ptr @_ZN11xercesc_2_77DOMNodeC2Ev, i64 650}
!41 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!42 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE, i64 4638}
!43 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv, i64 2}
!44 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, i64 2}
!45 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE, i64 2}
!46 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv, i64 2}
!47 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 2}
!48 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_79XMLBufferD2Ev, i64 2}
!49 = !{ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv, i64 4639}
!50 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!51 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!52 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb, i64 650}
!53 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv, i64 650}
!54 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @__cxa_allocate_exception, i64 1}
!55 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @__cxa_free_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv, i64 1298}
!57 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv, i64 2}
!58 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_711DOMNodeImpl11isSpecifiedEb, i64 649}
!60 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_713DOMParentNode7changedEv, i64 649}
!61 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE, i64 1}
!62 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, i64 650}
!63 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 650}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!70, !74, i64 64}
!70 = !{!"_ZTSN11xercesc_2_711DOMAttrImplE", !71, i64 0, !73, i64 8, !77, i64 24, !74, i64 56, !74, i64 64}
!71 = !{!"_ZTSN11xercesc_2_77DOMAttrE", !72, i64 0}
!72 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!73 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !74, i64 0, !76, i64 8}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !68, i64 0}
!76 = !{!"short", !75, i64 0}
!77 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !74, i64 0, !74, i64 8, !78, i64 16}
!78 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !79, i64 0, !74, i64 8}
!79 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!80 = !{!70, !74, i64 56}
!81 = !{!"function_entry_count", i64 1950}
!82 = !{!73, !76, i64 8}
!83 = !{!76, !76, i64 0}
!84 = !{!"branch_weights", i32 1951, i32 1}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!74, !74, i64 0}
!87 = !{!"function_entry_count", i64 1300}
!88 = !{!89, !74, i64 80}
!89 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !90, i64 0, !73, i64 32, !77, i64 48, !74, i64 80, !74, i64 88, !74, i64 96, !94, i64 104, !74, i64 112, !74, i64 120, !74, i64 128, !95, i64 136, !74, i64 176, !74, i64 184, !74, i64 192, !98, i64 200, !74, i64 208, !74, i64 216, !74, i64 224, !74, i64 232, !74, i64 240, !74, i64 248, !74, i64 256, !74, i64 264, !74, i64 272, !74, i64 280, !97, i64 288, !94, i64 292}
!90 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !91, i64 0, !92, i64 8, !93, i64 16, !72, i64 24}
!91 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!92 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!93 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!94 = !{!"bool", !75, i64 0}
!95 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !96, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !97, i64 32, !97, i64 36}
!96 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!97 = !{!"int", !75, i64 0}
!98 = !{!"long", !75, i64 0}
!99 = !{!"function_entry_count", i64 6765}
!100 = !{!"function_entry_count", i64 3668}
!101 = !{!"function_entry_count", i64 4639}
!102 = !{!70, !74, i64 32}
!103 = !{!"branch_weights", i32 1, i32 4640}
!104 = !{!105, !74, i64 8}
!105 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !74, i64 0, !74, i64 8}
!106 = !{!"branch_weights", i32 4640, i32 1}
!107 = !{!"DOMAttrImpl.cpp:_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE"}
!108 = !{!"function_entry_count", i64 2954}
!109 = !{!89, !74, i64 280}
!110 = !{!"function_entry_count", i64 496321}
!111 = !{!112, !97, i64 0}
!112 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !97, i64 0, !97, i64 4, !97, i64 8, !94, i64 12, !74, i64 16, !74, i64 24, !74, i64 32}
!113 = !{!112, !97, i64 4}
!114 = !{!112, !97, i64 8}
!115 = !{!112, !94, i64 12}
!116 = !{!112, !74, i64 16}
!117 = !{!112, !74, i64 32}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"function_entry_count", i64 10769804}
!121 = !{!"function_entry_count", i64 789922}
!122 = !{!"branch_weights", i32 1, i32 789923}
!123 = !{!"branch_weights", i32 285, i32 789639}
!124 = !{!"branch_weights", i32 789639, i32 41628304}
!125 = distinct !{!125, !119}
!126 = !{!"branch_weights", i32 789637, i32 3}
!127 = !{!"branch_weights", i32 1, i32 651}
!128 = !{!"branch_weights", i32 650, i32 1}
!129 = !{!"branch_weights", i32 1, i32 0}
!130 = distinct !{!130, !119}
!131 = !{!"function_entry_count", i64 3150}
!132 = !{!"function_entry_count", i64 2562}
!133 = !{!70, !74, i64 8}
!134 = !{!"function_entry_count", i64 1850}
!135 = !{!"branch_weights", i32 1851, i32 1}
!136 = distinct !{!136, !119}
!137 = !{!"DOMAttrImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!138 = !{!"function_entry_count", i64 1231717351}
!139 = !{!"branch_weights", i32 621, i32 -1469098093}
!140 = !{!"branch_weights", i32 408901017, i32 1}
!141 = !{!"branch_weights", i32 267, i32 4}
!142 = !{!"branch_weights", i32 1, i32 4}
!143 = !{!"branch_weights", i32 156, i32 112}
!144 = !{!"branch_weights", i32 1, i32 112}
!145 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!146 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!147 = distinct !{!147, !119}
!148 = !{!"function_entry_count", i64 1952}
!149 = !{!70, !74, i64 24}
!150 = !{!"function_entry_count", i64 1851}
!151 = !{!"function_entry_count", i64 1}
!152 = !{!"function_entry_count", i64 8433}
!153 = !{!"function_entry_count", i64 5836268}
!154 = !{!"function_entry_count", i64 2815}
