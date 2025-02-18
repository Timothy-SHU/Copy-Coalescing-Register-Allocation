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
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLUri" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

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
@_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_716DOMElementNSImplE = dso_local constant [34 x i8] c"N11xercesc_2_716DOMElementNSImplE\00", align 1
@_ZTIN11xercesc_2_714DOMElementImplE = external constant ptr
@_ZTIN11xercesc_2_716DOMElementNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DOMElementNSImplE, ptr @_ZTIN11xercesc_2_714DOMElementImplE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_716DOMElementNSImplC1EPNS_11DOMDocumentEPKtS4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_
@_ZN11xercesc_2_716DOMElementNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %3)
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, ptr noundef %3)
          to label %5 unwind label %7, !prof !47

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !48
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = alloca [4000 x i16], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(96) %0), !prof !61
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %2)
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !62
  %11 = tail call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %34, !prof !63

13:                                               ; preds = %3
  %14 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %19 unwind label %32

19:                                               ; preds = %13
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %26 unwind label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %25, i64 0, i32 25
  br label %28

28:                                               ; preds = %19, %26
  %29 = phi ptr [ %27, %26 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %19 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %14, i16 noundef signext 14, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

32:                                               ; preds = %28, %21, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #13
  br label %138

34:                                               ; preds = %3
  %35 = icmp eq i32 %11, 0
  br i1 %35, label %36, label %40, !prof !47

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %37, align 8, !tbaa !65
  %38 = load ptr, ptr %10, align 8, !tbaa !62
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !66
  br label %121

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #13
  %41 = icmp sgt i32 %11, 3998
  br i1 %41, label %42, label %66

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %8, i64 0, i32 25
  %44 = load ptr, ptr %43, align 8, !tbaa !67
  %45 = icmp eq ptr %2, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = load i16, ptr %2, align 2, !tbaa !78
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %51, %49 ], [ %2, %46 ]
  %51 = getelementptr inbounds i16, ptr %50, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !78
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %49, !llvm.loop !79

54:                                               ; preds = %49
  %55 = ptrtoint ptr %51 to i64
  %56 = ptrtoint ptr %2 to i64
  %57 = sub i64 %55, %56
  %58 = add i64 %57, 2
  %59 = and i64 %58, 8589934590
  br label %60

60:                                               ; preds = %42, %46, %54
  %61 = phi i64 [ %59, %54 ], [ 2, %46 ], [ 2, %42 ]
  %62 = load ptr, ptr %44, align 8, !tbaa !43
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %61)
  br label %66

66:                                               ; preds = %40, %60
  %67 = phi ptr [ %65, %60 ], [ %4, %40 ]
  %68 = load ptr, ptr %10, align 8, !tbaa !62
  %69 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %67, ptr noundef %68, i32 noundef %11)
  %70 = zext nneg i32 %11 to i64
  %71 = getelementptr inbounds i16, ptr %67, i64 %70
  store i16 0, ptr %71, align 2, !tbaa !78
  %72 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %67)
  %73 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !65
  %74 = load ptr, ptr %10, align 8, !tbaa !62
  %75 = getelementptr inbounds i16, ptr %74, i64 %70
  %76 = getelementptr inbounds i16, ptr %75, i64 1
  %77 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %76)
  %78 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  store ptr %77, ptr %78, align 8, !tbaa !66
  br i1 %41, label %79, label %85

79:                                               ; preds = %66
  %80 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %8, i64 0, i32 25
  %81 = load ptr, ptr %80, align 8, !tbaa !67
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  call void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %67)
  br label %85

85:                                               ; preds = %79, %66
  %86 = load ptr, ptr %0, align 8, !tbaa !43
  %87 = getelementptr inbounds ptr, ptr %86, i64 12
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %90 = load ptr, ptr %73, align 8, !tbaa !65
  %91 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %89, ptr noundef %90)
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load ptr, ptr %0, align 8, !tbaa !43
  %94 = getelementptr inbounds ptr, ptr %93, i64 12
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %97 = load ptr, ptr %78, align 8, !tbaa !66
  %98 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %96, ptr noundef %97)
  br i1 %98, label %120, label %99

99:                                               ; preds = %92, %85
  %100 = call ptr @__cxa_allocate_exception(i64 40) #13
  %101 = load ptr, ptr %0, align 8, !tbaa !43
  %102 = getelementptr inbounds ptr, ptr %101, i64 12
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %105 unwind label %118

105:                                              ; preds = %99
  %106 = icmp eq ptr %104, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %0, align 8, !tbaa !43
  %109 = getelementptr inbounds ptr, ptr %108, i64 12
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %112 unwind label %118

112:                                              ; preds = %107
  %113 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %111, i64 0, i32 25
  br label %114

114:                                              ; preds = %105, %112
  %115 = phi ptr [ %113, %112 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %105 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %100, i16 noundef signext 14, ptr noundef null, ptr noundef %116)
          to label %117 unwind label %118

117:                                              ; preds = %114
  call void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

118:                                              ; preds = %114, %107, %99
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %100) #13
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #13
  br label %138

120:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #13
  br label %121

121:                                              ; preds = %120, %36
  %122 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !65
  %124 = icmp eq ptr %1, null
  br i1 %124, label %129, label %125, !prof !63

125:                                              ; preds = %121
  %126 = load i16, ptr %1, align 2, !tbaa !78
  %127 = icmp eq i16 %126, 0
  %128 = select i1 %127, ptr null, ptr %1, !prof !63
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi ptr [ null, %121 ], [ %128, %125 ]
  %131 = call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef %123, ptr noundef %130, i16 noundef signext 1)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !63

133:                                              ; preds = %129
  %134 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %131)
  br label %135

135:                                              ; preds = %129, %133
  %136 = phi ptr [ %134, %133 ], [ null, %129 ]
  %137 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  store ptr %136, ptr %137, align 8, !tbaa !82
  ret void

138:                                              ; preds = %118, %32
  %139 = phi { ptr, i32 } [ %33, %32 ], [ %119, %118 ]
  resume { ptr, i32 } %139
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2)
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !48
  ret void
}

declare void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !42 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %6, i64 noundef 128, i32 noundef 7)
  tail call void @_ZN11xercesc_2_714DOMElementImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1)
  store ptr getelementptr inbounds ({ [69 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMElementNSImplE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !82
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %7, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %7, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %7, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %20, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7)
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #5 align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #4 align 2 !prof !85 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = alloca [5 x i16], align 2
  %3 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %4 = alloca %"class.xercesc_2_7::XMLUri", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds ptr, ptr %7, i64 31
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) @__const._ZNK11xercesc_2_716DOMElementNSImpl10getBaseURIEv.baseString, i64 10, i1 false)
  %15 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv()
  %16 = load ptr, ptr %12, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef %15, ptr noundef nonnull %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %82, label %27

27:                                               ; preds = %21
  %28 = load i16, ptr %25, align 2, !tbaa !78
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %82, label %30

30:                                               ; preds = %27
  %31 = icmp eq ptr %10, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #13
  %33 = load ptr, ptr %0, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %37 unwind label %62

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %36, i64 0, i32 25
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %10, ptr noundef %39)
          to label %40 unwind label %62

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  %41 = load ptr, ptr %0, align 8, !tbaa !43
  %42 = getelementptr inbounds ptr, ptr %41, i64 12
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %45 unwind label %64

45:                                               ; preds = %40
  %46 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %44, i64 0, i32 25
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull %3, ptr noundef nonnull %25, ptr noundef %47)
          to label %48 unwind label %64

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8, !tbaa !43
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %53 unwind label %66

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %4, i64 0, i32 9
  %55 = load ptr, ptr %54, align 8, !tbaa !88
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %58 unwind label %66

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr %54, align 8, !tbaa !88
  %60 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %52, ptr noundef %59)
          to label %61 unwind label %66

61:                                               ; preds = %58
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  br label %82

62:                                               ; preds = %37, %32
  %63 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %70

64:                                               ; preds = %45, %40
  %65 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %68

66:                                               ; preds = %57, %58, %48
  %67 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #13
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #13
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %63, %62 ]
  %72 = extractvalue { ptr, i32 } %71, 1
  %73 = extractvalue { ptr, i32 } %71, 0
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  %74 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #13
  %75 = icmp eq i32 %72, %74
  %76 = call ptr @__cxa_begin_catch(ptr %73) #13
  br i1 %75, label %77, label %78

77:                                               ; preds = %70
  invoke void @__cxa_rethrow() #14
          to label %91 unwind label %79

78:                                               ; preds = %70
  call void @__cxa_end_catch()
  br label %82

79:                                               ; preds = %77
  %80 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %81 unwind label %88

81:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #13
  resume { ptr, i32 } %80

82:                                               ; preds = %78, %61, %30, %27, %21, %14
  %83 = phi i1 [ true, %14 ], [ false, %78 ], [ false, %61 ], [ false, %30 ], [ true, %27 ], [ true, %21 ]
  %84 = phi ptr [ undef, %14 ], [ null, %78 ], [ %60, %61 ], [ %25, %30 ], [ undef, %27 ], [ undef, %21 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #13
  br i1 %83, label %85, label %86

85:                                               ; preds = %82, %1
  br label %86

86:                                               ; preds = %82, %85
  %87 = phi ptr [ %10, %85 ], [ %84, %82 ]
  ret ptr %87

88:                                               ; preds = %79
  %89 = landingpad { ptr, i32 }
          catch ptr null
  %90 = extractvalue { ptr, i32 } %89, 0
  call void @__clang_call_terminate(ptr %90) #15
  unreachable

91:                                               ; preds = %77
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLUriD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !42 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %3 = alloca [4000 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !90
  %6 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !78
  %7 = and i16 %6, %5
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %15 unwind label %28

15:                                               ; preds = %9
  %16 = icmp eq ptr %14, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %22 unwind label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %21, i64 0, i32 25
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi ptr [ %23, %22 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %15 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %10, i16 noundef signext 7, ptr noundef null, ptr noundef %26)
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

28:                                               ; preds = %24, %17, %9
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %271

30:                                               ; preds = %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i16, ptr %32, align 2, !tbaa !78
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34, %30
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %39 = load ptr, ptr %0, align 8, !tbaa !43
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %43 unwind label %56

43:                                               ; preds = %37
  %44 = icmp eq ptr %42, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %50 unwind label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %49, i64 0, i32 25
  br label %52

52:                                               ; preds = %43, %50
  %53 = phi ptr [ %51, %50 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %43 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 14, ptr noundef null, ptr noundef %54)
          to label %55 unwind label %56

55:                                               ; preds = %52
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

56:                                               ; preds = %52, %45, %37
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %271

58:                                               ; preds = %34
  %59 = icmp eq ptr %1, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = load i16, ptr %1, align 2, !tbaa !78
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %58
  %64 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %64, align 8, !tbaa !65
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !66
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %66, ptr %67, align 8, !tbaa !62
  br label %270

68:                                               ; preds = %60
  %69 = load ptr, ptr %0, align 8, !tbaa !43
  %70 = getelementptr inbounds ptr, ptr %69, i64 12
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %73 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %72, ptr noundef nonnull %1)
  br i1 %73, label %95, label %74

74:                                               ; preds = %68
  %75 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %76 = load ptr, ptr %0, align 8, !tbaa !43
  %77 = getelementptr inbounds ptr, ptr %76, i64 12
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %80 unwind label %93

80:                                               ; preds = %74
  %81 = icmp eq ptr %79, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %0, align 8, !tbaa !43
  %84 = getelementptr inbounds ptr, ptr %83, i64 12
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %87 unwind label %93

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %86, i64 0, i32 25
  br label %89

89:                                               ; preds = %80, %87
  %90 = phi ptr [ %88, %87 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %80 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %75, i16 noundef signext 5, ptr noundef null, ptr noundef %91)
          to label %92 unwind label %93

92:                                               ; preds = %89
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

93:                                               ; preds = %89, %82, %74
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %271

95:                                               ; preds = %68
  %96 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv()
  %97 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv()
  %98 = icmp eq ptr %96, null
  %99 = load i16, ptr %1, align 2, !tbaa !78
  br i1 %98, label %103, label %100

100:                                              ; preds = %95
  %101 = load i16, ptr %96, align 2, !tbaa !78
  %102 = icmp eq i16 %99, %101
  br i1 %102, label %105, label %165

103:                                              ; preds = %95
  %104 = icmp eq i16 %99, 0
  br i1 %104, label %116, label %165

105:                                              ; preds = %100, %110
  %106 = phi i16 [ %113, %110 ], [ %99, %100 ]
  %107 = phi ptr [ %112, %110 ], [ %96, %100 ]
  %108 = phi ptr [ %111, %110 ], [ %1, %100 ]
  %109 = icmp eq i16 %106, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds i16, ptr %108, i64 1
  %112 = getelementptr inbounds i16, ptr %107, i64 1
  %113 = load i16, ptr %111, align 2, !tbaa !78
  %114 = load i16, ptr %112, align 2, !tbaa !78
  %115 = icmp eq i16 %113, %114
  br i1 %115, label %105, label %165, !llvm.loop !91

116:                                              ; preds = %105, %103
  %117 = load ptr, ptr %31, align 8, !tbaa !82
  %118 = icmp eq ptr %117, null
  %119 = icmp eq ptr %97, null
  %120 = or i1 %119, %118
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load i16, ptr %117, align 2, !tbaa !78
  %123 = load i16, ptr %97, align 2, !tbaa !78
  %124 = icmp eq i16 %122, %123
  br i1 %124, label %133, label %144

125:                                              ; preds = %116
  br i1 %118, label %129, label %126

126:                                              ; preds = %125
  %127 = load i16, ptr %117, align 2, !tbaa !78
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126, %125
  br i1 %119, label %165, label %130

130:                                              ; preds = %129
  %131 = load i16, ptr %97, align 2, !tbaa !78
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %165, label %144

133:                                              ; preds = %121, %138
  %134 = phi i16 [ %141, %138 ], [ %122, %121 ]
  %135 = phi ptr [ %140, %138 ], [ %97, %121 ]
  %136 = phi ptr [ %139, %138 ], [ %117, %121 ]
  %137 = icmp eq i16 %134, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds i16, ptr %136, i64 1
  %140 = getelementptr inbounds i16, ptr %135, i64 1
  %141 = load i16, ptr %139, align 2, !tbaa !78
  %142 = load i16, ptr %140, align 2, !tbaa !78
  %143 = icmp eq i16 %141, %142
  br i1 %143, label %133, label %144, !llvm.loop !91

144:                                              ; preds = %138, %121, %130, %126
  %145 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %146 = load ptr, ptr %0, align 8, !tbaa !43
  %147 = getelementptr inbounds ptr, ptr %146, i64 12
  %148 = load ptr, ptr %147, align 8
  %149 = invoke noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %150 unwind label %163

150:                                              ; preds = %144
  %151 = icmp eq ptr %149, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %0, align 8, !tbaa !43
  %154 = getelementptr inbounds ptr, ptr %153, i64 12
  %155 = load ptr, ptr %154, align 8
  %156 = invoke noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %157 unwind label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %156, i64 0, i32 25
  br label %159

159:                                              ; preds = %150, %157
  %160 = phi ptr [ %158, %157 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %150 ]
  %161 = load ptr, ptr %160, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %145, i16 noundef signext 14, ptr noundef null, ptr noundef %161)
          to label %162 unwind label %163

162:                                              ; preds = %159
  tail call void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

163:                                              ; preds = %159, %152, %144
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %271

165:                                              ; preds = %110, %133, %100, %129, %130, %103
  %166 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %1, i16 noundef zeroext 58)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %189, label %168

168:                                              ; preds = %165
  %169 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %170 = load ptr, ptr %0, align 8, !tbaa !43
  %171 = getelementptr inbounds ptr, ptr %170, i64 12
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %174 unwind label %187

174:                                              ; preds = %168
  %175 = icmp eq ptr %173, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr %0, align 8, !tbaa !43
  %178 = getelementptr inbounds ptr, ptr %177, i64 12
  %179 = load ptr, ptr %178, align 8
  %180 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %181 unwind label %187

181:                                              ; preds = %176
  %182 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %180, i64 0, i32 25
  br label %183

183:                                              ; preds = %174, %181
  %184 = phi ptr [ %182, %181 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %174 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %169, i16 noundef signext 14, ptr noundef null, ptr noundef %185)
          to label %186 unwind label %187

186:                                              ; preds = %183
  tail call void @__cxa_throw(ptr nonnull %169, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

187:                                              ; preds = %183, %176, %168
  %188 = landingpad { ptr, i32 }
          cleanup
  br label %271

189:                                              ; preds = %165
  %190 = load ptr, ptr %0, align 8, !tbaa !43
  %191 = getelementptr inbounds ptr, ptr %190, i64 12
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %194 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %193, ptr noundef nonnull %1)
  %195 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 3
  store ptr %194, ptr %195, align 8, !tbaa !65
  %196 = load i16, ptr %1, align 2, !tbaa !78
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %189, %198
  %199 = phi ptr [ %200, %198 ], [ %1, %189 ]
  %200 = getelementptr inbounds i16, ptr %199, i64 1
  %201 = load i16, ptr %200, align 2, !tbaa !78
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %198, !llvm.loop !79

203:                                              ; preds = %198
  %204 = ptrtoint ptr %200 to i64
  %205 = ptrtoint ptr %1 to i64
  %206 = sub i64 %204, %205
  %207 = lshr exact i64 %206, 1
  %208 = trunc i64 %207 to i32
  br label %209

209:                                              ; preds = %189, %203
  %210 = phi i32 [ %208, %203 ], [ 0, %189 ]
  %211 = add nsw i32 %210, 1
  %212 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !66
  %214 = icmp eq ptr %213, null
  br i1 %214, label %229, label %215

215:                                              ; preds = %209
  %216 = load i16, ptr %213, align 2, !tbaa !78
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %229, label %218

218:                                              ; preds = %215, %218
  %219 = phi ptr [ %220, %218 ], [ %213, %215 ]
  %220 = getelementptr inbounds i16, ptr %219, i64 1
  %221 = load i16, ptr %220, align 2, !tbaa !78
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %218, !llvm.loop !79

223:                                              ; preds = %218
  %224 = ptrtoint ptr %220 to i64
  %225 = ptrtoint ptr %213 to i64
  %226 = sub i64 %224, %225
  %227 = lshr exact i64 %226, 1
  %228 = trunc i64 %227 to i32
  br label %229

229:                                              ; preds = %209, %215, %223
  %230 = phi i32 [ %228, %223 ], [ 0, %215 ], [ 0, %209 ]
  %231 = add i32 %230, %211
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #13
  %232 = icmp sgt i32 %231, 3998
  br i1 %232, label %233, label %246

233:                                              ; preds = %229
  %234 = load ptr, ptr %0, align 8, !tbaa !43
  %235 = getelementptr inbounds ptr, ptr %234, i64 12
  %236 = load ptr, ptr %235, align 8
  %237 = tail call noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %238 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %237, i64 0, i32 25
  %239 = load ptr, ptr %238, align 8, !tbaa !67
  %240 = shl nuw i32 %231, 1
  %241 = zext i32 %240 to i64
  %242 = load ptr, ptr %239, align 8, !tbaa !43
  %243 = getelementptr inbounds ptr, ptr %242, i64 2
  %244 = load ptr, ptr %243, align 8
  %245 = tail call noundef ptr %244(ptr noundef nonnull align 8 dereferenceable(8) %239, i64 noundef %241)
  br label %246

246:                                              ; preds = %229, %233
  %247 = phi ptr [ %245, %233 ], [ %3, %229 ]
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %247, ptr noundef nonnull %1)
  %248 = sext i32 %210 to i64
  %249 = getelementptr inbounds i16, ptr %247, i64 %248
  store i16 58, ptr %249, align 2, !tbaa !78
  %250 = sext i32 %211 to i64
  %251 = getelementptr inbounds i16, ptr %247, i64 %250
  %252 = load ptr, ptr %212, align 8, !tbaa !66
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %251, ptr noundef %252)
  %253 = load ptr, ptr %0, align 8, !tbaa !43
  %254 = getelementptr inbounds ptr, ptr %253, i64 12
  %255 = load ptr, ptr %254, align 8
  %256 = call noundef ptr %255(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %257 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %256, ptr noundef %247)
  %258 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 6
  store ptr %257, ptr %258, align 8, !tbaa !62
  br i1 %232, label %259, label %269

259:                                              ; preds = %246
  %260 = load ptr, ptr %0, align 8, !tbaa !43
  %261 = getelementptr inbounds ptr, ptr %260, i64 12
  %262 = load ptr, ptr %261, align 8
  %263 = call noundef ptr %262(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %264 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %263, i64 0, i32 25
  %265 = load ptr, ptr %264, align 8, !tbaa !67
  %266 = load ptr, ptr %265, align 8, !tbaa !43
  %267 = getelementptr inbounds ptr, ptr %266, i64 3
  %268 = load ptr, ptr %267, align 8
  call void %268(ptr noundef nonnull align 8 dereferenceable(8) %265, ptr noundef %247)
  br label %269

269:                                              ; preds = %259, %246
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #13
  br label %270

270:                                              ; preds = %269, %63
  ret void

271:                                              ; preds = %163, %187, %93, %56, %28
  %272 = phi ptr [ %145, %163 ], [ %169, %187 ], [ %75, %93 ], [ %38, %56 ], [ %10, %28 ]
  %273 = phi { ptr, i32 } [ %164, %163 ], [ %188, %187 ], [ %94, %93 ], [ %57, %56 ], [ %29, %28 ]
  tail call void @__cxa_free_exception(ptr %272) #13
  resume { ptr, i32 } %273
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !90
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !78
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !78
  %9 = and i16 %8, %3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !43
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 15, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %7, %1
  %33 = load ptr, ptr %0, align 8, !tbaa !43
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
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef nonnull %0, i32 noundef 7)
  ret void

41:                                               ; preds = %32
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %43 = load ptr, ptr %0, align 8, !tbaa !43
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %47 unwind label %60

47:                                               ; preds = %41
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %53, i64 0, i32 25
  br label %56

56:                                               ; preds = %47, %54
  %57 = phi ptr [ %55, %54 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 15, ptr noundef null, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

60:                                               ; preds = %56, %49, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %42, %60 ], [ %12, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #13
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl6renameEPKtS2_(ptr noundef nonnull returned align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 63
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef %9)
  ret ptr %0
}

declare void @_ZN11xercesc_2_714DOMAttrMapImpl26reconcileDefaultAttributesEPKS0_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_716DOMElementNSImpl11getTypeInfoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(128) %0) unnamed_addr #5 align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @_ZN11xercesc_2_715DOMTypeInfoImpl21g_DtdValidatedElementE, ptr %3
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716DOMElementNSImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716DOMElementNSImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !42 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !78
  %6 = load i16, ptr @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE, align 2, !tbaa !78
  %7 = icmp eq i16 %5, %6
  br i1 %7, label %11, label %28

8:                                                ; preds = %2
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni30fgXercescInterfacePSVITypeInfoE, align 2, !tbaa !78
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
  %19 = load i16, ptr %17, align 2, !tbaa !78
  %20 = load i16, ptr %18, align 2, !tbaa !78
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %11, label %28, !llvm.loop !91

22:                                               ; preds = %11, %8
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMElementNSImpl", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds i8, ptr %24, i64 8
  %27 = select i1 %25, ptr null, ptr %26
  br label %30

28:                                               ; preds = %16, %4, %8
  %29 = tail call noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1)
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  ret ptr %31
}

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMElementNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #11 comdat align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_714DOMElementImplD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef signext i16 @_ZNK11xercesc_2_714DOMElementImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl12getAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl16getAttributeNodeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getElementsByTagNameEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl12setAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl16setAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl19removeAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl15removeAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl14getAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl14setAttributeNSEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl17removeAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl18getAttributeNodeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl18setAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl22getElementsByTagNameNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl12hasAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xercesc_2_714DOMElementImpl14hasAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl14setIdAttributeEPKt(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl16setIdAttributeNSEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl18setIdAttributeNodeEPKNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl23setDefaultAttributeNodeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_714DOMElementImpl25setDefaultAttributeNodeNSEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_714DOMElementImpl20getDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare void @_ZN11xercesc_2_714DOMElementImpl22setupDefaultAttributesEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_714DOMElementImplC2EPNS_11DOMDocumentEPKt, i64 550}
!36 = !{ptr @_ZN11xercesc_2_716DOMElementNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, i64 550}
!37 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZNK11xercesc_2_714DOMElementImpl16getOwnerDocumentEv, i64 550}
!38 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 1100}
!39 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt, i64 550}
!40 = !{ptr @_ZN11xercesc_2_716DOMElementNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s, i64 550}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"function_entry_count", i64 550}
!47 = !{!"branch_weights", i32 550, i32 0}
!48 = !{!49, !54, i64 120}
!49 = !{!"_ZTSN11xercesc_2_716DOMElementNSImplE", !50, i64 0, !54, i64 96, !54, i64 104, !54, i64 112, !54, i64 120}
!50 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !51, i64 0, !53, i64 8, !57, i64 24, !60, i64 56, !54, i64 72, !54, i64 80, !54, i64 88}
!51 = !{!"_ZTSN11xercesc_2_710DOMElementE", !52, i64 0}
!52 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!53 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !54, i64 0, !56, i64 8}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !45, i64 0}
!56 = !{!"short", !55, i64 0}
!57 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !54, i64 0, !54, i64 8, !58, i64 16}
!58 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !59, i64 0, !54, i64 8}
!59 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!60 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !54, i64 0, !54, i64 8}
!61 = !{!"VP", i32 0, i64 550, i64 -436814257186127076, i64 550}
!62 = !{!50, !54, i64 88}
!63 = !{!"branch_weights", i32 0, i32 550}
!64 = !{!54, !54, i64 0}
!65 = !{!49, !54, i64 112}
!66 = !{!49, !54, i64 104}
!67 = !{!68, !54, i64 280}
!68 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !69, i64 0, !53, i64 32, !57, i64 48, !54, i64 80, !54, i64 88, !54, i64 96, !73, i64 104, !54, i64 112, !54, i64 120, !54, i64 128, !74, i64 136, !54, i64 176, !54, i64 184, !54, i64 192, !77, i64 200, !54, i64 208, !54, i64 216, !54, i64 224, !54, i64 232, !54, i64 240, !54, i64 248, !54, i64 256, !54, i64 264, !54, i64 272, !54, i64 280, !76, i64 288, !73, i64 292}
!69 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !70, i64 0, !71, i64 8, !72, i64 16, !52, i64 24}
!70 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!71 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!72 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!73 = !{!"bool", !55, i64 0}
!74 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !75, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !76, i64 32, !76, i64 36}
!75 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!76 = !{!"int", !55, i64 0}
!77 = !{!"long", !55, i64 0}
!78 = !{!56, !56, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!49, !54, i64 96}
!83 = !{!"function_entry_count", i64 630}
!84 = !{!"function_entry_count", i64 1}
!85 = !{!"function_entry_count", i64 1892}
!86 = !{!50, !54, i64 8}
!87 = !{!50, !54, i64 72}
!88 = !{!89, !54, i64 72}
!89 = !{!"_ZTSN11xercesc_2_76XMLUriE", !75, i64 0, !76, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !54, i64 56, !54, i64 64, !54, i64 72, !54, i64 80}
!90 = !{!53, !56, i64 8}
!91 = distinct !{!91, !80, !81}
