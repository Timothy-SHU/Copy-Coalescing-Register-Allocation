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
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv = comdat any

$_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv = comdat any

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_77DOMAttrE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMAttrE = comdat any

@_ZTVN11xercesc_2_711DOMAttrImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMAttrImplE, ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev, ptr @_ZN11xercesc_2_711DOMAttrImplD0Ev, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl9getPrefixEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLocalNameEv, ptr @_ZN11xercesc_2_711DOMAttrImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv, ptr @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_711DOMAttrImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE, ptr @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv, ptr @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv] }, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711DOMAttrImplE = dso_local constant [29 x i8] c"N11xercesc_2_711DOMAttrImplE\00", align 1
@_ZTSN11xercesc_2_77DOMAttrE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMAttrE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_77DOMAttrE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMAttrE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_711DOMAttrImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMAttrImplE, ptr @_ZTIN11xercesc_2_77DOMAttrE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_711DOMAttrImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_711DOMAttrImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b
@_ZN11xercesc_2_711DOMAttrImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6, !prof !49
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1)
          to label %9 unwind label %18, !prof !50

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %10, align 8, !tbaa !51
  %11 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2)
          to label %12 unwind label %20, !prof !50

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !63
  %16 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !64
  %17 = or i16 %16, %15
  store i16 %17, ptr %14, align 8, !tbaa !63
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #17
  resume { ptr, i32 } %24
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 zeroext %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %8 unwind label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  store ptr %11, ptr %9, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  store ptr %14, ptr %12, align 8, !tbaa !51
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %1, i64 0, i32 1, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !63
  %17 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !64
  %18 = and i16 %17, %16
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %21 = load i16, ptr %20, align 8, !tbaa !63
  %22 = xor i16 %17, -1
  %23 = and i16 %21, %22
  %24 = or i16 %21, %17
  %25 = select i1 %19, i16 %23, i16 %24
  store i16 %25, ptr %20, align 8, !tbaa !63
  %26 = load i16, ptr %15, align 8, !tbaa !63
  %27 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !64
  %28 = and i16 %27, %26
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %47, label %34

30:                                               ; preds = %3
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %52

32:                                               ; preds = %47
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %49

34:                                               ; preds = %8
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !63
  %37 = or i16 %36, %27
  store i16 %37, ptr %35, align 8, !tbaa !63
  %38 = load ptr, ptr %0, align 8, !tbaa !46
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %42 unwind label %45

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %41, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %44, ptr noundef nonnull %0)
          to label %47 unwind label %45

45:                                               ; preds = %42, %34
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %49

47:                                               ; preds = %42, %8
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %1)
          to label %48 unwind label %32

48:                                               ; preds = %47
  ret void

49:                                               ; preds = %45, %32
  %50 = phi { ptr, i32 } [ %33, %32 ], [ %46, %45 ]
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %51) #17
  br label %52

52:                                               ; preds = %49, %30
  %53 = phi { ptr, i32 } [ %50, %49 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #17
  resume { ptr, i32 } %53
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMAttrImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #17
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %6, i64 noundef 72, i32 noundef 0)
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext poison)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7)
  ret ptr %7
}

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !78 {
  ret i16 2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 42
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !80
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !63
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !64
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %2 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6, !prof !83

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 1, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !63
  %9 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !64
  %10 = and i16 %9, %8
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 3
  %14 = select i1 %11, ptr %13, ptr %12, !prof !83
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %30, !prof !86

18:                                               ; preds = %6
  %19 = load ptr, ptr %4, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef signext i16 %21(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !87
  %23 = icmp eq i16 %22, 3
  br i1 %23, label %24, label %30, !prof !86

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8, !tbaa !82
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25), !prof !88
  br label %80

30:                                               ; preds = %18, %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #17
  %31 = load ptr, ptr %0, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 12
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %34, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  store i32 0, ptr %2, align 8, !tbaa !90
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  store i32 1023, ptr %37, align 4, !tbaa !92
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 2
  store i32 0, ptr %38, align 8, !tbaa !93
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 3
  store i8 0, ptr %39, align 4, !tbaa !94
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 4
  store ptr %36, ptr %40, align 8, !tbaa !95
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 5
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %36, align 8, !tbaa !46
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 2048)
  store ptr %46, ptr %42, align 8, !tbaa !96
  store i16 0, ptr %46, align 2, !tbaa !64
  %47 = load ptr, ptr %3, align 8, !tbaa !82
  invoke void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %47, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %48 unwind label %69

48:                                               ; preds = %30
  %49 = load ptr, ptr %0, align 8, !tbaa !46
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %53 unwind label %69

53:                                               ; preds = %48
  %54 = load ptr, ptr %42, align 8, !tbaa !96
  %55 = load i32, ptr %2, align 8, !tbaa !90
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %54, i64 %56
  store i16 0, ptr %57, align 2, !tbaa !64
  %58 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %52, ptr noundef %54)
          to label %59 unwind label %69

59:                                               ; preds = %53
  %60 = load ptr, ptr %40, align 8, !tbaa !95
  %61 = load ptr, ptr %42, align 8, !tbaa !96
  %62 = load ptr, ptr %60, align 8, !tbaa !46
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  invoke void %64(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %61)
          to label %68 unwind label %65

65:                                               ; preds = %59
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #19
  unreachable

68:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  br label %80

69:                                               ; preds = %53, %48, %30
  %70 = landingpad { ptr, i32 }
          cleanup
  %71 = load ptr, ptr %40, align 8, !tbaa !95
  %72 = load ptr, ptr %42, align 8, !tbaa !96
  %73 = load ptr, ptr %71, align 8, !tbaa !46
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %72)
          to label %79 unwind label %76

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #19
  unreachable

79:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #17
  resume { ptr, i32 } %70

80:                                               ; preds = %24, %68, %1
  %81 = phi ptr [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ], [ %29, %24 ], [ %58, %68 ]
  ret ptr %81
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 align 2 !prof !65 {
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq i16 %7, 3
  %9 = load ptr, ptr %1, align 8, !tbaa !46
  br i1 %8, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %9, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %13)
  br label %39

14:                                               ; preds = %3
  %15 = getelementptr inbounds ptr, ptr %9, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %18 = icmp eq i16 %17, 5
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load ptr, ptr %1, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %37, %27 ]
  tail call void @_ZNK11xercesc_2_711DOMAttrImpl12getTextValueEPNS_7DOMNodeERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %28, i64 0, i32 1, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !63
  %31 = and i16 %26, %30
  %32 = icmp eq i16 %31, 0
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %28, i64 0, i32 2
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %28, i64 0, i32 3
  %35 = select i1 %32, ptr %34, ptr %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %27, !llvm.loop !97

39:                                               ; preds = %27, %19, %14, %10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !100 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !101

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !102

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !64
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !103, !llvm.loop !104

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !90
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !92
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !105

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = load i32, ptr %0, align 8, !tbaa !90
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !106
  %28 = load i32, ptr %0, align 8, !tbaa !90
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #10 align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !63
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !64
  br i1 %1, label %6, label %8, !prof !50

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %6, %8
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !63
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !64
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %29, label %8, !prof !50

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %14 unwind label %27

14:                                               ; preds = %8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %20, i64 0, i32 25
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi ptr [ %22, %21 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %14 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %9, i16 noundef signext 7, ptr noundef null, ptr noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #20
  unreachable

27:                                               ; preds = %23, %16, %8
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #17
  resume { ptr, i32 } %28

29:                                               ; preds = %2
  %30 = load ptr, ptr %0, align 8, !tbaa !46
  %31 = getelementptr inbounds ptr, ptr %30, i64 12
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(72) %0), !prof !108
  %34 = load i16, ptr %3, align 8, !tbaa !63
  %35 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !64
  %36 = and i16 %35, %34
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38, !prof !50

38:                                               ; preds = %29
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %33, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %40, ptr noundef nonnull %0)
  br label %41

41:                                               ; preds = %38, %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45, !prof !109

45:                                               ; preds = %41, %56
  %46 = phi ptr [ %57, %56 ], [ %43, %41 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 16
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %46)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %50, align 8, !tbaa !46
  %54 = getelementptr inbounds ptr, ptr %53, i64 39
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %50)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load ptr, ptr %42, align 8, !tbaa !82
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45, !prof !109, !llvm.loop !110

59:                                               ; preds = %56, %41
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %61 = icmp eq ptr %1, null
  br i1 %61, label %71, label %62, !prof !49

62:                                               ; preds = %59
  %63 = load ptr, ptr %33, align 8, !tbaa !46
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(293) %33, ptr noundef nonnull %1), !prof !111
  %67 = load ptr, ptr %0, align 8, !tbaa !46
  %68 = getelementptr inbounds ptr, ptr %67, i64 17
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %66), !prof !112
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i16, ptr %3, align 8, !tbaa !63
  %73 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl9SPECIFIEDE, align 2, !tbaa !64
  %74 = or i16 %73, %72
  store i16 %74, ptr %3, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32) %60)
  %75 = load i16, ptr %3, align 8, !tbaa !63
  %76 = and i16 %75, %35
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %78, !prof !50

78:                                               ; preds = %71
  %79 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %33, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %80, ptr noundef nonnull %0)
  br label %81

81:                                               ; preds = %78, %71
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMParentNode7changedEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !63
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !64
  %6 = and i16 %5, %4
  %7 = icmp eq i16 %6, 0
  %8 = load ptr, ptr %2, align 8
  %9 = select i1 %7, ptr null, ptr %8
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl15setOwnerElementEPNS_10DOMElementE(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !113
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !64
  %7 = xor i16 %6, -1
  %8 = and i16 %5, %7
  store i16 %8, ptr %4, align 8, !tbaa !63
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !63
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !64
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !64
  %9 = and i16 %8, %3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %13 = load ptr, ptr %0, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 15, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #20
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %7, %1
  %33 = load ptr, ptr %0, align 8, !tbaa !46
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %39, i32 noundef 3, ptr noundef null, ptr noundef null)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef nonnull %0, i32 noundef 0)
  ret void

41:                                               ; preds = %32
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #17
  %43 = load ptr, ptr %0, align 8, !tbaa !46
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %47 unwind label %60

47:                                               ; preds = %41
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !46
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %53, i64 0, i32 25
  br label %56

56:                                               ; preds = %47, %54
  %57 = phi ptr [ %55, %54 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 15, ptr noundef null, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #20
  unreachable

60:                                               ; preds = %56, %49, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %42, %60 ], [ %12, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #17
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !63
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !64
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl6renameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !65 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 44
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %12 = icmp eq ptr %7, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 46
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %13, %3
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i16, ptr %1, align 2, !tbaa !64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %18
  %24 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef %2)
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !62
  br i1 %12, label %64, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 45
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0)
  br label %64

31:                                               ; preds = %20
  %32 = load ptr, ptr %11, align 8, !tbaa !46
  %33 = getelementptr inbounds ptr, ptr %32, i64 17
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef nonnull %1, ptr noundef %2)
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %35, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293) %11, ptr noundef nonnull %36, ptr noundef nonnull %37)
  %38 = load ptr, ptr %0, align 8, !tbaa !46
  %39 = getelementptr inbounds ptr, ptr %38, i64 7
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %31, %43
  %44 = phi ptr [ %56, %43 ], [ %41, %31 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !46
  %46 = getelementptr inbounds ptr, ptr %45, i64 16
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %44)
  %49 = load ptr, ptr %35, align 8, !tbaa !46
  %50 = getelementptr inbounds ptr, ptr %49, i64 17
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %44)
  %53 = load ptr, ptr %0, align 8, !tbaa !46
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %43, !llvm.loop !114

58:                                               ; preds = %43, %31
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %37, i32 noundef 4, ptr noundef nonnull %0, ptr noundef %35)
  br i1 %12, label %64, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %7, align 8, !tbaa !46
  %61 = getelementptr inbounds ptr, ptr %60, i64 52
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %35)
  br label %64

64:                                               ; preds = %58, %59, %23, %26
  %65 = phi ptr [ %0, %26 ], [ %0, %23 ], [ %35, %59 ], [ %35, %58 ]
  ret ptr %65
}

declare void @_ZN11xercesc_2_715DOMDocumentImpl16transferUserDataEPNS_11DOMNodeImplES2_(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #9 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl26g_DtdNotValidatedAttributeE, ptr %3
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !64
  %6 = load i16, ptr @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE, align 2, !tbaa !64
  %7 = icmp eq i16 %5, %6
  br i1 %7, label %11, label %28

8:                                                ; preds = %2
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE, align 2, !tbaa !64
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %28

11:                                               ; preds = %4, %16
  %12 = phi i16 [ %19, %16 ], [ %5, %4 ]
  %13 = phi ptr [ %18, %16 ], [ @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE, %4 ]
  %14 = phi ptr [ %17, %16 ], [ %1, %4 ]
  %15 = icmp eq i16 %12, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i16, ptr %14, i64 1
  %18 = getelementptr inbounds i16, ptr %13, i64 1
  %19 = load i16, ptr %17, align 2, !tbaa !64
  %20 = load i16, ptr %18, align 2, !tbaa !64
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %11, label %28, !llvm.loop !115

22:                                               ; preds = %11, %8
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds i8, ptr %24, i64 8
  %27 = select i1 %25, ptr null, ptr %26
  br label %31

28:                                               ; preds = %16, %4, %8
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %30 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %29, ptr noundef %1)
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %27, %22 ], [ %30, %28 ]
  ret ptr %32
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 !prof !116 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 align 2 !prof !65 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #5 align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !65 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #13 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !63
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !64
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = or i16 %4, %3
  store i16 %8, ptr %2, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %10, i64 noundef 56)
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef 500, ptr noundef nonnull %10)
  store ptr %15, ptr %11, align 8, !tbaa !66
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr %11, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #13 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !63
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !64
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %0)
  %14 = load i16, ptr %2, align 8, !tbaa !63
  %15 = xor i16 %4, -1
  %16 = and i16 %14, %15
  store i16 %16, ptr %2, align 8, !tbaa !63
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat !prof !65 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE, i64 650}
!36 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE, i64 650}
!37 = !{ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 650}
!38 = !{ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, i64 3668}
!39 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!40 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, i64 650}
!41 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, i64 650}
!42 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZN11xercesc_2_713DOMParentNode7changedEv, i64 650}
!43 = !{ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE, i64 650}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 650}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"branch_weights", i32 0, i32 650}
!50 = !{!"branch_weights", i32 650, i32 0}
!51 = !{!52, !56, i64 64}
!52 = !{!"_ZTSN11xercesc_2_711DOMAttrImplE", !53, i64 0, !55, i64 8, !59, i64 24, !56, i64 56, !56, i64 64}
!53 = !{!"_ZTSN11xercesc_2_77DOMAttrE", !54, i64 0}
!54 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!55 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !56, i64 0, !58, i64 8}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !48, i64 0}
!58 = !{!"short", !57, i64 0}
!59 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !56, i64 0, !56, i64 8, !60, i64 16}
!60 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !61, i64 0, !56, i64 8}
!61 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!62 = !{!52, !56, i64 56}
!63 = !{!55, !58, i64 8}
!64 = !{!58, !58, i64 0}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !56, i64 80}
!67 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !68, i64 0, !55, i64 32, !59, i64 48, !56, i64 80, !56, i64 88, !56, i64 96, !72, i64 104, !56, i64 112, !56, i64 120, !56, i64 128, !73, i64 136, !56, i64 176, !56, i64 184, !56, i64 192, !76, i64 200, !56, i64 208, !56, i64 216, !56, i64 224, !56, i64 232, !56, i64 240, !56, i64 248, !56, i64 256, !56, i64 264, !56, i64 272, !56, i64 280, !75, i64 288, !72, i64 292}
!68 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !69, i64 0, !70, i64 8, !71, i64 16, !54, i64 24}
!69 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!70 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!71 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!72 = !{!"bool", !57, i64 0}
!73 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !74, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !75, i64 32, !75, i64 36}
!74 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!75 = !{!"int", !57, i64 0}
!76 = !{!"long", !57, i64 0}
!77 = !{!"function_entry_count", i64 6765}
!78 = !{!"function_entry_count", i64 1300}
!79 = !{!"function_entry_count", i64 3668}
!80 = !{!"VP", i32 0, i64 3668, i64 -2226980653890024400, i64 3668}
!81 = !{!"function_entry_count", i64 4639}
!82 = !{!52, !56, i64 32}
!83 = !{!"branch_weights", i32 0, i32 4639}
!84 = !{!85, !56, i64 8}
!85 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !56, i64 0, !56, i64 8}
!86 = !{!"branch_weights", i32 4639, i32 0}
!87 = !{!"VP", i32 0, i64 4639, i64 -9104222706455325236, i64 4639}
!88 = !{!"VP", i32 0, i64 4639, i64 2948793727329829500, i64 4639}
!89 = !{!67, !56, i64 280}
!90 = !{!91, !75, i64 0}
!91 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !75, i64 0, !75, i64 4, !75, i64 8, !72, i64 12, !56, i64 16, !56, i64 24, !56, i64 32}
!92 = !{!91, !75, i64 4}
!93 = !{!91, !75, i64 8}
!94 = !{!91, !72, i64 12}
!95 = !{!91, !56, i64 16}
!96 = !{!91, !56, i64 32}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!"function_entry_count", i64 789922}
!101 = !{!"branch_weights", i32 0, i32 789922}
!102 = !{!"branch_weights", i32 284, i32 789638}
!103 = !{!"branch_weights", i32 789638, i32 41628303}
!104 = distinct !{!104, !98, !99}
!105 = !{!"branch_weights", i32 789636, i32 2}
!106 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!107 = !{!56, !56, i64 0}
!108 = !{!"VP", i32 0, i64 650, i64 -8144646246772247977, i64 650}
!109 = !{!"branch_weights", i32 1, i32 0}
!110 = distinct !{!110, !98, !99}
!111 = !{!"VP", i32 0, i64 650, i64 -4622885366654984636, i64 650}
!112 = !{!"VP", i32 0, i64 650, i64 7788084393481378570, i64 650}
!113 = !{!52, !56, i64 8}
!114 = distinct !{!114, !98, !99}
!115 = distinct !{!115, !98, !99}
!116 = !{!"function_entry_count", i64 1952}
!117 = !{!52, !56, i64 24}
