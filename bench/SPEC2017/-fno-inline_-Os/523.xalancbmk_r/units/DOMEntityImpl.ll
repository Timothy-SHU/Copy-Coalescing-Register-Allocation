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

$_ZN11xercesc_2_79DOMEntityC2Ev = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_79DOMEntityC2ERKS0_ = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_79DOMEntityD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_79DOMEntityE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_79DOMEntityE = comdat any

$_ZTVN11xercesc_2_79DOMEntityE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

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
@_ZTVN11xercesc_2_79DOMEntityE = linkonce_odr dso_local unnamed_addr constant { [51 x ptr] } { [51 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79DOMEntityE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_79DOMEntityD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_713DOMEntityImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMEntityImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_713DOMEntityImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b
@_ZN11xercesc_2_713DOMEntityImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMEntityImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMEntityC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #10
          to label %8 unwind label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #10
          to label %10 unwind label %18

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %11, i8 0, i64 65, i1 false)
  %12 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #10
          to label %13 unwind label %20

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  store ptr %12, ptr %14, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %15 unwind label %20

15:                                               ; preds = %13
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %13, %10
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #11
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMEntityC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [51 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMEntityE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #10
          to label %6 unwind label %27

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #10
          to label %9 unwind label %29

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 3
  %12 = load <2 x ptr>, ptr %11, align 8, !tbaa !53
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !53
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 5
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !53
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !53
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 7
  %18 = load <2 x ptr>, ptr %17, align 8, !tbaa !53
  store <2 x ptr> %18, ptr %16, align 8, !tbaa !53
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 9
  %21 = load <2 x ptr>, ptr %20, align 8, !tbaa !53
  store <2 x ptr> %21, ptr %19, align 8, !tbaa !53
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %1, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  store ptr %24, ptr %22, align 8, !tbaa !54
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 12
  store i8 0, ptr %25, align 8, !tbaa !55
  br i1 %2, label %26, label %33

26:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %1) #10
          to label %33 unwind label %31

27:                                               ; preds = %3
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %37

29:                                               ; preds = %6
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %35

31:                                               ; preds = %33, %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  br label %35

33:                                               ; preds = %26, %9
  invoke void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true, i1 noundef zeroext true) #10
          to label %34 unwind label %31

34:                                               ; preds = %33
  ret void

35:                                               ; preds = %31, %29
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #11
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %28, %27 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMEntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  store ptr getelementptr inbounds ({ [51 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMEntityE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplD2Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #3 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [57 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMEntityImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #11
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImplD0Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_713DOMEntityImplD2Ev(ptr noundef nonnull align 8 dereferenceable(129) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(129) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 136, ptr noundef %6, i32 noundef 8) #10
  tail call void @_ZN11xercesc_2_713DOMEntityImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(129) %7, ptr noundef nonnull align 8 dereferenceable(129) %0, i1 noundef zeroext %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !56 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_713DOMEntityImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !37 {
  ret i16 6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNotationNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl15setNotationNameEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setPublicIdEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !60
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #10
  %13 = add i32 %12, 9
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 1
  %16 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %11, i64 noundef %15) #10
  tail call void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef nonnull %1, ptr noundef %16) #10
  br label %17

17:                                               ; preds = %2, %4, %7
  %18 = phi ptr [ %16, %7 ], [ null, %4 ], [ null, %2 ]
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 11
  store ptr %18, ptr %19, align 8, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !61 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !62

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !60
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !63

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !60
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !64, !llvm.loop !65

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
declare void @_ZN11xercesc_2_79XMLString6fixURIEPKtPt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl12setEntityRefEPNS_18DOMEntityReferenceE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #7 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getEntityRefEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 8, !tbaa !55, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  store i8 1, ptr %2, align 8, !tbaa !55
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %15, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %16 = load ptr, ptr %11, align 8, !tbaa !67
  tail call void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %16) #10
  tail call void @_ZN11xercesc_2_711DOMNodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(10) %15, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %17

17:                                               ; preds = %14, %5, %10, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #10
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #10
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #10
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #10
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 8) #10
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #13
  %38 = load ptr, ptr %0, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #10
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !53
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #10
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #14
  unreachable

56:                                               ; preds = %53, %44, %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi ptr [ %37, %56 ], [ %7, %26 ]
  %60 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %59) #13
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !72
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !60
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !72
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !60
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #3 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #10
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZNK11xercesc_2_713DOMEntityImpl18cloneEntityRefTreeEv(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_713DOMEntityImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i16 %4
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #10
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMEntityImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMEntityImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl17getActualEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl17setActualEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 8
  store ptr %7, ptr %8, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl11getEncodingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 9
  store ptr %7, ptr %8, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMEntityImpl10getVersionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(129) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMEntityImpl10setVersionEPKt(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(129) %0) #10
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMEntityImpl", ptr %0, i64 0, i32 10
  store ptr %7, ptr %8, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !88 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMEntityD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !46, i64 56}
!42 = !{!"_ZTSN11xercesc_2_713DOMEntityImplE", !43, i64 0, !45, i64 8, !49, i64 24, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !52, i64 128}
!43 = !{!"_ZTSN11xercesc_2_79DOMEntityE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!45 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !46, i64 0, !48, i64 8}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !40, i64 0}
!48 = !{!"short", !47, i64 0}
!49 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !46, i64 0, !46, i64 8, !50, i64 16}
!50 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !51, i64 0, !46, i64 8}
!51 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!52 = !{!"bool", !47, i64 0}
!53 = !{!46, !46, i64 0}
!54 = !{!42, !46, i64 120}
!55 = !{!42, !52, i64 128}
!56 = !{!"function_entry_count", i64 1300}
!57 = !{!42, !46, i64 80}
!58 = !{!42, !46, i64 64}
!59 = !{!42, !46, i64 72}
!60 = !{!48, !48, i64 0}
!61 = !{!"function_entry_count", i64 2453164456}
!62 = !{!"branch_weights", i32 1, i32 -1841802839}
!63 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!64 = !{!"branch_weights", i32 408669070, i32 -279908794}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!42, !46, i64 88}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!42, !46, i64 32}
!71 = !{!"function_entry_count", i64 2562}
!72 = !{!45, !48, i64 8}
!73 = !{!"function_entry_count", i64 2954}
!74 = !{!75, !46, i64 280}
!75 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !76, i64 0, !45, i64 32, !49, i64 48, !46, i64 80, !46, i64 88, !46, i64 96, !52, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !80, i64 136, !46, i64 176, !46, i64 184, !46, i64 192, !83, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !82, i64 288, !52, i64 292}
!76 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !77, i64 0, !78, i64 8, !79, i64 16, !44, i64 24}
!77 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!78 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!79 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!80 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !81, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !82, i64 32, !82, i64 36}
!81 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!82 = !{!"int", !47, i64 0}
!83 = !{!"long", !47, i64 0}
!84 = !{!42, !46, i64 24}
!85 = !{!42, !46, i64 96}
!86 = !{!42, !46, i64 104}
!87 = !{!42, !46, i64 112}
!88 = !{!"function_entry_count", i64 1851}
!89 = !{!"function_entry_count", i64 1}
