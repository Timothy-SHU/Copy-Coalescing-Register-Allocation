; ModuleID = 'DOMEntityImpl.cpp'
source_filename = "DOMEntityImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMEntityImpl" = type <{ %"class.xercesc_2_7::DOMEntity", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMEntity" = type { %"class.xercesc_2_7::DOMNode" }
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

$_ZTSN11xercesc_2_79DOMEntityE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_79DOMEntityE = comdat any

@_ZTVN11xercesc_2_713DOMEntityImplE = dso_local unnamed_addr constant { [57 x ptr] } { [57 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DOMEntityImplE, ptr @_ZN11xercesc_2_713DOMEntityImplD2Ev, ptr @_ZN11xercesc_2_713DOMEntityImplD0Ev, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLastChildEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl13getAttributesEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl9cloneNodeEb, ptr @_ZN11xercesc_2_713DOMEntityImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMEntityImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_713DOMEntityImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMEntityImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_713DOMEntityImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_713DOMEntityImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl9normalizeEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl9getPrefixEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLocalNameEv, ptr @_ZN11xercesc_2_713DOMEntityImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_713DOMEntityImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_713DOMEntityImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_713DOMEntityImpl14getTextContentEv, ptr @_ZN11xercesc_2_713DOMEntityImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_713DOMEntityImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl7releaseEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getPublicIdEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getSystemIdEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNotationNameEv, ptr @_ZNK11xercesc_2_713DOMEntityImpl17getActualEncodingEv, ptr @_ZN11xercesc_2_713DOMEntityImpl17setActualEncodingEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl11getEncodingEv, ptr @_ZN11xercesc_2_713DOMEntityImpl11setEncodingEPKt, ptr @_ZNK11xercesc_2_713DOMEntityImpl10getVersionEv, ptr @_ZN11xercesc_2_713DOMEntityImpl10setVersionEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl15setNotationNameEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl11setPublicIdEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl11setSystemIdEPKt, ptr @_ZN11xercesc_2_713DOMEntityImpl12setEntityRefEPNS_18DOMEntityReferenceE, ptr @_ZNK11xercesc_2_713DOMEntityImpl12getEntityRefEv, ptr @_ZN11xercesc_2_713DOMEntityImpl10setBaseURIEPKt] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DOMEntityImplE = dso_local constant [31 x i8] c"N11xercesc_2_713DOMEntityImplE\00", align 1
@_ZTSN11xercesc_2_79DOMEntityE = linkonce_odr dso_local constant [26 x i8] c"N11xercesc_2_79DOMEntityE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_79DOMEntityE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79DOMEntityE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_713DOMEntityImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DOMEntityImplE, ptr @_ZTIN11xercesc_2_79DOMEntityE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMEntityImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_713DOMEntityImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b
@_ZN11xercesc_2_713DOMEntityImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMEntityImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1)
          to label %9 unwind label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %10, i8 0, i64 65, i1 false)
  %11 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2)
          to label %12 unwind label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %13, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %14 unwind label %17

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %12, %9
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #9
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  resume { ptr, i32 } %21
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5)
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %8 unwind label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  store ptr %11, ptr %9, align 8, !tbaa !38
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  store ptr %14, ptr %12, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  store ptr %17, ptr %15, align 8, !tbaa !51
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  store ptr %20, ptr %18, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  store ptr %23, ptr %21, align 8, !tbaa !53
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  store ptr %26, ptr %24, align 8, !tbaa !54
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  store ptr %29, ptr %27, align 8, !tbaa !55
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 10
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  store ptr %32, ptr %30, align 8, !tbaa !56
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  store ptr %35, ptr %33, align 8, !tbaa !57
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 12
  store i8 0, ptr %36, align 8, !tbaa !58
  br i1 %2, label %37, label %43

37:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %1)
          to label %43 unwind label %40

38:                                               ; preds = %3
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %45

40:                                               ; preds = %43, %37
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #9
  br label %45

43:                                               ; preds = %37, %8
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %44 unwind label %40

44:                                               ; preds = %43
  ret void

45:                                               ; preds = %40, %38
  %46 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  resume { ptr, i32 } %46
}

declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplD2Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplD0Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #9
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(129) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %6, i64 noundef 136, i32 noundef 8)
  tail call void @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(129) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, i1 noundef zeroext %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7)
  ret ptr %7
}

declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_713DOMEntityImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i16 6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNotationNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl15setNotationNameEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !52
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !59
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %12 = load i16, ptr %1, align 2, !tbaa !59
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %16, %14 ], [ %1, %7 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !59
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !60

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 18
  %24 = and i64 %23, 8589934590
  br label %25

25:                                               ; preds = %7, %19
  %26 = phi i64 [ %24, %19 ], [ 18, %7 ]
  %27 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %11, i64 noundef %26)
  tail call void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef nonnull %1, ptr noundef %27)
  br label %28

28:                                               ; preds = %2, %4, %25
  %29 = phi ptr [ %27, %25 ], [ null, %4 ], [ null, %2 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  store ptr %29, ptr %30, align 8, !tbaa !57
  ret void
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl12setEntityRefEPNS_18DOMEntityReferenceE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !53
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getEntityRefEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 8, !tbaa !58, !range !63, !noundef !64
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  store i8 1, ptr %2, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %15, i1 noundef zeroext false, i1 noundef zeroext true)
  %16 = load ptr, ptr %11, align 8, !tbaa !53
  tail call void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %16)
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %15, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %17

17:                                               ; preds = %14, %5, %10, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !66
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !59
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !59
  %9 = and i16 %8, %3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %17 unwind label %30

17:                                               ; preds = %11
  %18 = icmp eq ptr %16, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 12
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %24 unwind label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %23, i64 0, i32 25
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %17 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %12, i16 noundef signext 15, ptr noundef null, ptr noundef %28)
          to label %29 unwind label %30

29:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

30:                                               ; preds = %26, %19, %11
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %62

32:                                               ; preds = %7, %1
  %33 = load ptr, ptr %0, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %39, i32 noundef 3, ptr noundef null, ptr noundef null)
  %40 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %36, ptr noundef nonnull %0, i32 noundef 8)
  ret void

41:                                               ; preds = %32
  %42 = tail call ptr @__cxa_allocate_exception(i64 40) #9
  %43 = load ptr, ptr %0, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %47 unwind label %60

47:                                               ; preds = %41
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %0, align 8, !tbaa !35
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(129) %0)
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %53, i64 0, i32 25
  br label %56

56:                                               ; preds = %47, %54
  %57 = phi ptr [ %55, %54 ], [ @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %42, i16 noundef signext 15, ptr noundef null, ptr noundef %58)
          to label %59 unwind label %60

59:                                               ; preds = %56
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #11
  unreachable

60:                                               ; preds = %56, %49, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %30
  %63 = phi ptr [ %42, %60 ], [ %12, %30 ]
  %64 = phi { ptr, i32 } [ %61, %60 ], [ %31, %30 ]
  tail call void @__cxa_free_exception(ptr %63) #9
  resume { ptr, i32 } %64
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2)
  ret i1 %5
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret i1 %3
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_713DOMEntityImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i16 %4
}

declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1)
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl17getActualEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl17setActualEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 8
  store ptr %7, ptr %8, align 8, !tbaa !54
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  store ptr %7, ptr %8, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl10getVersionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl10setVersionEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 10
  store ptr %7, ptr %8, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 56}
!39 = !{!"_ZTSN11xercesc_2_713DOMEntityImplE", !40, i64 0, !42, i64 8, !46, i64 24, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !49, i64 128}
!40 = !{!"_ZTSN11xercesc_2_79DOMEntityE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!42 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !43, i64 0, !45, i64 8}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !37, i64 0}
!45 = !{!"short", !44, i64 0}
!46 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !43, i64 0, !43, i64 8, !47, i64 16}
!47 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !48, i64 0, !43, i64 8}
!48 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!49 = !{!"bool", !44, i64 0}
!50 = !{!39, !43, i64 64}
!51 = !{!39, !43, i64 72}
!52 = !{!39, !43, i64 80}
!53 = !{!39, !43, i64 88}
!54 = !{!39, !43, i64 96}
!55 = !{!39, !43, i64 104}
!56 = !{!39, !43, i64 112}
!57 = !{!39, !43, i64 120}
!58 = !{!39, !49, i64 128}
!59 = !{!45, !45, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!39, !43, i64 32}
!66 = !{!42, !45, i64 8}
!67 = !{!43, !43, i64 0}
!68 = !{!39, !43, i64 24}
