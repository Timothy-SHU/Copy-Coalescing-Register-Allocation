; ModuleID = 'DOMElementNSImpl.cpp'
source_filename = "DOMElementNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMTypeInfoImpl" = type { %"class.xercesc_2_7::DOMTypeInfo", %"class.xercesc_2_7::DOMPSVITypeInfo", i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMTypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMPSVITypeInfo" = type { ptr }
%"class.xercesc_2_7::DOMElementNSImpl" = type { %"class.xercesc_2_7::DOMElementImpl", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::XMLUri" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_76XMLUri10getUriTextEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZN11xercesc_2_716DOMElementNSImplD0Ev = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN11xercesc_2_716DOMElementNSImplE = dso_local unnamed_addr constant { [69 x ptr] } { [69 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716DOMElementNSImplE, ptr @_ZN11xercesc_2_714DOMElementImplD2Ev, ptr @_ZN11xercesc_2_716DOMElementNSImplD0Ev, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv, ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_716DOMElementNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl9normalizeEv, ptr @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_716DOMElementNSImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_716DOMElementNSImpl9getPrefixEv, ptr @_ZNK11xercesc_2_716DOMElementNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv, ptr @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_716DOMElementNSImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_716DOMElementNSImpl7releaseEv, ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv, ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_, ptr @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt, ptr @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt, ptr @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE, ptr @_ZNK11xercesc_2_716DOMElementNSImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE, ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE, ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv, ptr @_ZN11xercesc_2_716DOMElementNSImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE] }, align 8
@__const._ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv.baseString = private unnamed_addr constant [5 x i16] [i16 98, i16 97, i16 115, i16 101, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE = external global %"class.xercesc_2_7::DOMTypeInfoImpl", align 8
@_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_716DOMElementNSImplE = dso_local constant [34 x i8] c"N11xercesc_2_716DOMElementNSImplE\00", align 1
@_ZTIN11xercesc_2_714DOMElementImplE = external constant ptr
@_ZTIN11xercesc_2_716DOMElementNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DOMElementNSImplE, ptr @_ZTIN11xercesc_2_714DOMElementImplE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_
@_ZN11xercesc_2_716DOMElementNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #12
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, ptr noundef %3) #12
          to label %5 unwind label %7

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !51
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %4 = alloca [4000 x i16], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %2) #12
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !64
  %11 = tail call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %35, !prof !65

13:                                               ; preds = %3
  %14 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %19 unwind label %33

19:                                               ; preds = %13
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %26 unwind label %33

26:                                               ; preds = %21
  %27 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %25) #12
  br label %30

28:                                               ; preds = %19
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ %29, %28 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %14, i16 noundef signext 14, ptr noundef null, ptr noundef %31) #12
          to label %32 unwind label %33

32:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

33:                                               ; preds = %30, %21, %13
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #14
  br label %125

35:                                               ; preds = %3
  %36 = icmp eq i32 %11, 0
  br i1 %36, label %37, label %41, !prof !67

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !68
  %39 = load ptr, ptr %10, align 8, !tbaa !64
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !69
  br label %109

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #14
  %42 = icmp ugt i32 %11, 3998
  br i1 %42, label %43, label %53

43:                                               ; preds = %41
  %44 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  %45 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #12
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = shl nuw nsw i64 %47, 1
  %49 = load ptr, ptr %44, align 8, !tbaa !47
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %48) #12
  br label %53

53:                                               ; preds = %41, %43
  %54 = phi ptr [ %52, %43 ], [ %4, %41 ]
  %55 = load ptr, ptr %10, align 8, !tbaa !64
  %56 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %54, ptr noundef %55, i32 noundef %11) #12
  %57 = zext nneg i32 %11 to i64
  %58 = getelementptr inbounds i16, ptr %54, i64 %57
  store i16 0, ptr %58, align 2, !tbaa !70
  %59 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %54) #12
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !68
  %61 = load ptr, ptr %10, align 8, !tbaa !64
  %62 = getelementptr inbounds i16, ptr %61, i64 %57
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %63) #12
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  store ptr %64, ptr %65, align 8, !tbaa !69
  br i1 %42, label %66, label %71

66:                                               ; preds = %53
  %67 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull %54) #12
  br label %71

71:                                               ; preds = %66, %53
  %72 = load ptr, ptr %0, align 8, !tbaa !47
  %73 = getelementptr inbounds ptr, ptr %72, i64 12
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %76 = load ptr, ptr %60, align 8, !tbaa !68
  %77 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %75, ptr noundef %76) #12
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load ptr, ptr %0, align 8, !tbaa !47
  %80 = getelementptr inbounds ptr, ptr %79, i64 12
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %83 = load ptr, ptr %65, align 8, !tbaa !69
  %84 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %82, ptr noundef %83) #12
  br i1 %84, label %107, label %85

85:                                               ; preds = %78, %71
  %86 = call ptr @__cxa_allocate_exception(i64 40) #14
  %87 = load ptr, ptr %0, align 8, !tbaa !47
  %88 = getelementptr inbounds ptr, ptr %87, i64 12
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %91 unwind label %105

91:                                               ; preds = %85
  %92 = icmp eq ptr %90, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %0, align 8, !tbaa !47
  %95 = getelementptr inbounds ptr, ptr %94, i64 12
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %98 unwind label %105

98:                                               ; preds = %93
  %99 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %97) #12
  br label %102

100:                                              ; preds = %91
  %101 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi ptr [ %99, %98 ], [ %101, %100 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %86, i16 noundef signext 14, ptr noundef null, ptr noundef %103) #12
          to label %104 unwind label %105

104:                                              ; preds = %102
  call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

105:                                              ; preds = %102, %93, %85
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %86) #14
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #14
  br label %125

107:                                              ; preds = %78
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #14
  %108 = load ptr, ptr %60, align 8, !tbaa !68
  br label %109

109:                                              ; preds = %107, %37
  %110 = phi ptr [ %108, %107 ], [ null, %37 ]
  %111 = icmp eq ptr %1, null
  br i1 %111, label %116, label %112, !prof !65

112:                                              ; preds = %109
  %113 = load i16, ptr %1, align 2, !tbaa !70
  %114 = icmp eq i16 %113, 0
  %115 = select i1 %114, ptr null, ptr %1, !prof !65
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi ptr [ null, %109 ], [ %115, %112 ]
  %118 = call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef %110, ptr noundef %117, i16 noundef signext 1) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120, !prof !65

120:                                              ; preds = %116
  %121 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %118) #12
  br label %122

122:                                              ; preds = %116, %120
  %123 = phi ptr [ %121, %120 ], [ null, %116 ]
  %124 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !71
  ret void

125:                                              ; preds = %105, %33
  %126 = phi { ptr, i32 } [ %34, %33 ], [ %106, %105 ]
  resume { ptr, i32 } %126
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) #12
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %6 = load <2 x ptr>, ptr %4, align 8, !tbaa !66
  store <2 x ptr> %6, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  %9 = load <2 x ptr>, ptr %7, align 8, !tbaa !66
  store <2 x ptr> %9, ptr %8, align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !46 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 128, ptr noundef %6, i32 noundef 7) #12
  tail call void @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #12
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !72 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #12
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = alloca [5 x i16], align 2
  %3 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %4 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds ptr, ptr %7, i64 31
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) @__const._ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv.baseString, i64 10, i1 false)
  %15 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() #12
  %16 = load ptr, ptr %12, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef %15, ptr noundef nonnull %2) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %76, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %19) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %76, label %27

27:                                               ; preds = %21
  %28 = load i16, ptr %25, align 2, !tbaa !70
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %27
  %31 = icmp eq ptr %10, null
  br i1 %31, label %77, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  %33 = load ptr, ptr %0, align 8, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %37 unwind label %56

37:                                               ; preds = %32
  %38 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %36) #12
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %10, ptr noundef %38) #12
          to label %39 unwind label %56

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  %40 = load ptr, ptr %0, align 8, !tbaa !47
  %41 = getelementptr inbounds ptr, ptr %40, i64 12
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %44 unwind label %58

44:                                               ; preds = %39
  %45 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %43) #12
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %3, ptr noundef nonnull %25, ptr noundef %45) #12
          to label %46 unwind label %58

46:                                               ; preds = %44
  %47 = load ptr, ptr %0, align 8, !tbaa !47
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %51 unwind label %60

51:                                               ; preds = %46
  %52 = invoke noundef ptr @_ZNK11xercesc_2_76XMLUri10getUriTextEv(ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %53 unwind label %60

53:                                               ; preds = %51
  %54 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %50, ptr noundef %52) #12
          to label %55 unwind label %60

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  br label %77

56:                                               ; preds = %37, %32
  %57 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %64

58:                                               ; preds = %44, %39
  %59 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %62

60:                                               ; preds = %53, %51, %46
  %61 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #13
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #13
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %57, %56 ]
  %66 = extractvalue { ptr, i32 } %65, 1
  %67 = extractvalue { ptr, i32 } %65, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  %68 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %69 = icmp eq i32 %66, %68
  %70 = call ptr @__cxa_begin_catch(ptr %67) #14
  br i1 %69, label %71, label %72

71:                                               ; preds = %64
  invoke void @__cxa_rethrow() #15
          to label %84 unwind label %73

72:                                               ; preds = %64
  call void @__cxa_end_catch()
  br label %77

73:                                               ; preds = %71
  %74 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %75 unwind label %81

75:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #14
  resume { ptr, i32 } %74

76:                                               ; preds = %14, %27, %21
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #14
  br label %79

77:                                               ; preds = %72, %55, %30
  %78 = phi ptr [ null, %72 ], [ %54, %55 ], [ %25, %30 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #14
  br label %79

79:                                               ; preds = %1, %76, %77
  %80 = phi ptr [ %78, %77 ], [ %10, %76 ], [ %10, %1 ]
  ret ptr %80

81:                                               ; preds = %73
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #16
  unreachable

84:                                               ; preds = %71
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #6 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri10getUriTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %6 = load ptr, ptr %2, align 8, !tbaa !90
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = alloca [4000 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %4) #12
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #12
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 7, ptr noundef null, ptr noundef %24) #12
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %199

28:                                               ; preds = %2
  %29 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i16, ptr %30, align 2, !tbaa !70
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32, %28
  %36 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %37 = load ptr, ptr %0, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %41 unwind label %55

41:                                               ; preds = %35
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  %45 = getelementptr inbounds ptr, ptr %44, i64 12
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %48 unwind label %55

48:                                               ; preds = %43
  %49 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %47) #12
  br label %52

50:                                               ; preds = %41
  %51 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %49, %48 ], [ %51, %50 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %36, i16 noundef signext 14, ptr noundef null, ptr noundef %53) #12
          to label %54 unwind label %55

54:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

55:                                               ; preds = %52, %43, %35
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %199

57:                                               ; preds = %32
  %58 = icmp eq ptr %1, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = load i16, ptr %1, align 2, !tbaa !70
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %57
  %63 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %63, align 8, !tbaa !68
  %64 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !69
  %66 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %65, ptr %66, align 8, !tbaa !64
  br label %198

67:                                               ; preds = %59
  %68 = load ptr, ptr %0, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 12
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %72 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %71, ptr noundef nonnull %1) #12
  br i1 %72, label %95, label %73

73:                                               ; preds = %67
  %74 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %75 = load ptr, ptr %0, align 8, !tbaa !47
  %76 = getelementptr inbounds ptr, ptr %75, i64 12
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %79 unwind label %93

79:                                               ; preds = %73
  %80 = icmp eq ptr %78, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %0, align 8, !tbaa !47
  %83 = getelementptr inbounds ptr, ptr %82, i64 12
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %86 unwind label %93

86:                                               ; preds = %81
  %87 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %85) #12
  br label %90

88:                                               ; preds = %79
  %89 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %87, %86 ], [ %89, %88 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %74, i16 noundef signext 5, ptr noundef null, ptr noundef %91) #12
          to label %92 unwind label %93

92:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

93:                                               ; preds = %90, %81, %73
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %199

95:                                               ; preds = %67
  %96 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() #12
  %97 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() #12
  %98 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef %96) #12
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load ptr, ptr %29, align 8, !tbaa !71
  %101 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %100, ptr noundef %97) #12
  br i1 %101, label %124, label %102

102:                                              ; preds = %99
  %103 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %104 = load ptr, ptr %0, align 8, !tbaa !47
  %105 = getelementptr inbounds ptr, ptr %104, i64 12
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %108 unwind label %122

108:                                              ; preds = %102
  %109 = icmp eq ptr %107, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %0, align 8, !tbaa !47
  %112 = getelementptr inbounds ptr, ptr %111, i64 12
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %115 unwind label %122

115:                                              ; preds = %110
  %116 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %114) #12
  br label %119

117:                                              ; preds = %108
  %118 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi ptr [ %116, %115 ], [ %118, %117 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %103, i16 noundef signext 14, ptr noundef null, ptr noundef %120) #12
          to label %121 unwind label %122

121:                                              ; preds = %119
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

122:                                              ; preds = %119, %110, %102
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %199

124:                                              ; preds = %99, %95
  %125 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %1, i16 noundef zeroext 58) #12
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %149, label %127

127:                                              ; preds = %124
  %128 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %129 = load ptr, ptr %0, align 8, !tbaa !47
  %130 = getelementptr inbounds ptr, ptr %129, i64 12
  %131 = load ptr, ptr %130, align 8
  %132 = invoke noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %133 unwind label %147

133:                                              ; preds = %127
  %134 = icmp eq ptr %132, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %133
  %136 = load ptr, ptr %0, align 8, !tbaa !47
  %137 = getelementptr inbounds ptr, ptr %136, i64 12
  %138 = load ptr, ptr %137, align 8
  %139 = invoke noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %140 unwind label %147

140:                                              ; preds = %135
  %141 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %139) #12
  br label %144

142:                                              ; preds = %133
  %143 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi ptr [ %141, %140 ], [ %143, %142 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %128, i16 noundef signext 14, ptr noundef null, ptr noundef %145) #12
          to label %146 unwind label %147

146:                                              ; preds = %144
  tail call void @__cxa_throw(ptr nonnull %128, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

147:                                              ; preds = %144, %135, %127
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %199

149:                                              ; preds = %124
  %150 = load ptr, ptr %0, align 8, !tbaa !47
  %151 = getelementptr inbounds ptr, ptr %150, i64 12
  %152 = load ptr, ptr %151, align 8
  %153 = tail call noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %154 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %153, ptr noundef nonnull %1) #12
  %155 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr %154, ptr %155, align 8, !tbaa !68
  %156 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #12
  %157 = add nsw i32 %156, 1
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !69
  %160 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %159) #12
  %161 = add i32 %160, %157
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #14
  %162 = icmp sgt i32 %161, 3998
  br i1 %162, label %163, label %175

163:                                              ; preds = %149
  %164 = load ptr, ptr %0, align 8, !tbaa !47
  %165 = getelementptr inbounds ptr, ptr %164, i64 12
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %168 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %167) #12
  %169 = shl nuw i32 %161, 1
  %170 = zext i32 %169 to i64
  %171 = load ptr, ptr %168, align 8, !tbaa !47
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(8) %168, i64 noundef %170) #12
  br label %175

175:                                              ; preds = %149, %163
  %176 = phi ptr [ %174, %163 ], [ %3, %149 ]
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %176, ptr noundef nonnull %1) #12
  %177 = sext i32 %156 to i64
  %178 = getelementptr inbounds i16, ptr %176, i64 %177
  store i16 58, ptr %178, align 2, !tbaa !70
  %179 = sext i32 %157 to i64
  %180 = getelementptr inbounds i16, ptr %176, i64 %179
  %181 = load ptr, ptr %158, align 8, !tbaa !69
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %180, ptr noundef %181) #12
  %182 = load ptr, ptr %0, align 8, !tbaa !47
  %183 = getelementptr inbounds ptr, ptr %182, i64 12
  %184 = load ptr, ptr %183, align 8
  %185 = call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %186 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %185, ptr noundef %176) #12
  %187 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %186, ptr %187, align 8, !tbaa !64
  br i1 %162, label %188, label %197

188:                                              ; preds = %175
  %189 = load ptr, ptr %0, align 8, !tbaa !47
  %190 = getelementptr inbounds ptr, ptr %189, i64 12
  %191 = load ptr, ptr %190, align 8
  %192 = call noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %193 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %192) #12
  %194 = load ptr, ptr %193, align 8, !tbaa !47
  %195 = getelementptr inbounds ptr, ptr %194, i64 3
  %196 = load ptr, ptr %195, align 8
  call void %196(ptr noundef nonnull align 8 dereferenceable(8) %193, ptr noundef nonnull %176) #12
  br label %197

197:                                              ; preds = %188, %175
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #14
  br label %198

198:                                              ; preds = %197, %62
  ret void

199:                                              ; preds = %122, %147, %93, %55, %26
  %200 = phi ptr [ %103, %122 ], [ %128, %147 ], [ %74, %93 ], [ %36, %55 ], [ %7, %26 ]
  %201 = phi { ptr, i32 } [ %123, %122 ], [ %148, %147 ], [ %94, %93 ], [ %56, %55 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %200) #14
  resume { ptr, i32 } %201
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #6 comdat align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !93
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !70
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !94 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !95

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !70
  %8 = load i16, ptr %1, align 2, !tbaa !70
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !96

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !97

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !70
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !98

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !99

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !70
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !100

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !101

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !70
  %28 = load i16, ptr %26, align 2, !tbaa !70
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !102, !llvm.loop !103

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !105 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !106

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !70
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !107

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !108, !llvm.loop !109

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
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #12
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #12
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #12
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #12
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #12
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #12
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 7) #12
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #14
  %38 = load ptr, ptr %0, align 8, !tbaa !47
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #12
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !66
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #12
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #15
  unreachable

56:                                               ; preds = %53, %44, %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi ptr [ %37, %56 ], [ %7, %26 ]
  %60 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %59) #14
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #6 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !93
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !70
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #6 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !93
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !70
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl6renameEPKtS2_(ptr noundef nonnull returned align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds ptr, ptr %6, i64 63
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(96) %0) #12
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %9) #12
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_716DOMElementNSImpl11getTypeInfoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE, ptr %3
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !46 {
  %3 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE) #12
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = select i1 %7, ptr null, ptr %8
  br label %12

10:                                               ; preds = %2
  %11 = tail call noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %9, %4 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMElementNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
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
declare void @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, i64 550}
!36 = !{ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, i64 550}
!37 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 1100}
!38 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt, i64 550}
!39 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @__cxa_allocate_exception, i64 1}
!40 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @__cxa_free_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj, i64 1}
!42 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 2}
!43 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s, i64 549}
!44 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 550}
!51 = !{!52, !57, i64 120}
!52 = !{!"_ZTSN11xercesc_2_716DOMElementNSImplE", !53, i64 0, !57, i64 96, !57, i64 104, !57, i64 112, !57, i64 120}
!53 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !54, i64 0, !56, i64 8, !60, i64 24, !63, i64 56, !57, i64 72, !57, i64 80, !57, i64 88}
!54 = !{!"_ZTSN11xercesc_2_710DOMElementE", !55, i64 0}
!55 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!56 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !57, i64 0, !59, i64 8}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !49, i64 0}
!59 = !{!"short", !58, i64 0}
!60 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !57, i64 0, !57, i64 8, !61, i64 16}
!61 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !62, i64 0, !57, i64 8}
!62 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!63 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !57, i64 0, !57, i64 8}
!64 = !{!53, !57, i64 88}
!65 = !{!"branch_weights", i32 1, i32 551}
!66 = !{!57, !57, i64 0}
!67 = !{!"branch_weights", i32 551, i32 1}
!68 = !{!52, !57, i64 112}
!69 = !{!52, !57, i64 104}
!70 = !{!59, !59, i64 0}
!71 = !{!52, !57, i64 96}
!72 = !{!"function_entry_count", i64 1300}
!73 = !{!"function_entry_count", i64 630}
!74 = !{!"function_entry_count", i64 1}
!75 = !{!"function_entry_count", i64 1892}
!76 = !{!53, !57, i64 8}
!77 = !{!53, !57, i64 72}
!78 = !{!"function_entry_count", i64 2954}
!79 = !{!80, !57, i64 280}
!80 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !81, i64 0, !56, i64 32, !60, i64 48, !57, i64 80, !57, i64 88, !57, i64 96, !85, i64 104, !57, i64 112, !57, i64 120, !57, i64 128, !86, i64 136, !57, i64 176, !57, i64 184, !57, i64 192, !89, i64 200, !57, i64 208, !57, i64 216, !57, i64 224, !57, i64 232, !57, i64 240, !57, i64 248, !57, i64 256, !57, i64 264, !57, i64 272, !57, i64 280, !88, i64 288, !85, i64 292}
!81 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !82, i64 0, !83, i64 8, !84, i64 16, !55, i64 24}
!82 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!83 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!84 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!85 = !{!"bool", !58, i64 0}
!86 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !87, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !88, i64 32, !88, i64 36}
!87 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!88 = !{!"int", !58, i64 0}
!89 = !{!"long", !58, i64 0}
!90 = !{!91, !57, i64 72}
!91 = !{!"_ZTSN11xercesc_2_76XMLUriE", !87, i64 0, !88, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80}
!92 = !{!"function_entry_count", i64 3150}
!93 = !{!56, !59, i64 8}
!94 = !{!"function_entry_count", i64 1231717351}
!95 = !{!"branch_weights", i32 621, i32 -1469098093}
!96 = !{!"branch_weights", i32 408901017, i32 1}
!97 = !{!"branch_weights", i32 267, i32 4}
!98 = !{!"branch_weights", i32 1, i32 4}
!99 = !{!"branch_weights", i32 156, i32 112}
!100 = !{!"branch_weights", i32 1, i32 112}
!101 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!102 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"function_entry_count", i64 2453164456}
!106 = !{!"branch_weights", i32 1, i32 -1841802839}
!107 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!108 = !{!"branch_weights", i32 408669070, i32 -279908794}
!109 = distinct !{!109, !104}
!110 = !{!"function_entry_count", i64 2562}
