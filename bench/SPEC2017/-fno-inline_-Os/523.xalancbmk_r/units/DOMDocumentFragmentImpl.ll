; ModuleID = 'DOMDocumentFragmentImpl.cpp'
source_filename = "DOMDocumentFragmentImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMDocumentFragmentImpl" = type { %"class.xercesc_2_7::DOMDocumentFragment", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode" }
%"class.xercesc_2_7::DOMDocumentFragment" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_719DOMDocumentFragmentC2Ev = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_719DOMDocumentFragmentD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZTSN11xercesc_2_719DOMDocumentFragmentE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_719DOMDocumentFragmentE = comdat any

$_ZTVN11xercesc_2_719DOMDocumentFragmentE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

@_ZTVN11xercesc_2_723DOMDocumentFragmentImplE = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723DOMDocumentFragmentImplE, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImplD2Ev, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImplD0Ev, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getLastChildEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getAttributesEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl9cloneNodeEb, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl9normalizeEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl9getPrefixEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getLocalNameEv, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl14getTextContentEv, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl7releaseEv] }, align 8
@_ZZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeNameEvE4name = internal constant [19 x i16] [i16 35, i16 100, i16 111, i16 99, i16 117, i16 109, i16 101, i16 110, i16 116, i16 45, i16 102, i16 114, i16 97, i16 103, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723DOMDocumentFragmentImplE = dso_local constant [41 x i8] c"N11xercesc_2_723DOMDocumentFragmentImplE\00", align 1
@_ZTSN11xercesc_2_719DOMDocumentFragmentE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719DOMDocumentFragmentE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMDocumentFragmentE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMDocumentFragmentE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_723DOMDocumentFragmentImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723DOMDocumentFragmentImplE, ptr @_ZTIN11xercesc_2_719DOMDocumentFragmentE }, align 8
@_ZTVN11xercesc_2_719DOMDocumentFragmentE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMDocumentFragmentE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_719DOMDocumentFragmentD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_723DOMDocumentFragmentImplC1EPNS_11DOMDocumentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_723DOMDocumentFragmentImplC2EPNS_11DOMDocumentE
@_ZN11xercesc_2_723DOMDocumentFragmentImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_723DOMDocumentFragmentImplC2ERKS0_b
@_ZN11xercesc_2_723DOMDocumentFragmentImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_723DOMDocumentFragmentImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImplC2EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_719DOMDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_723DOMDocumentFragmentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds i8, ptr %1, i64 24
  %6 = select i1 %4, ptr null, ptr %5
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %6) #8
          to label %7 unwind label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1) #8
          to label %9 unwind label %12

9:                                                ; preds = %7
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #9
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_719DOMDocumentFragmentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_723DOMDocumentFragmentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #8
          to label %6 unwind label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #8
          to label %9 unwind label %14

9:                                                ; preds = %6
  br i1 %2, label %10, label %18

10:                                               ; preds = %9
  %11 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #8
  invoke void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %1) #8
          to label %18 unwind label %16

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %21

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  br label %19

18:                                               ; preds = %10, %9
  ret void

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %22
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #4 !prof !37 !PGOFuncName !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode13cloneChildrenEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_723DOMDocumentFragmentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %3) #9
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_723DOMDocumentFragmentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %0) #8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #8
  %5 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 56, ptr noundef %4, i32 noundef 4) #8
  tail call void @_ZN11xercesc_2_723DOMDocumentFragmentImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) #8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %6, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %5) #8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #4 !prof !37 !PGOFuncName !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !43 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #8
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !37 {
  ret ptr @_ZZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeNameEvE4name
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !37 {
  ret i16 11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #8
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #8
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #8
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #8
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 4) #8
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %38 = load ptr, ptr %0, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(56) %0) #8
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #8
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #8
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !48
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !51
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !48
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !51
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #5 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #8
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i16 %4
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723DOMDocumentFragmentImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_723DOMDocumentFragmentImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723DOMDocumentFragmentImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentFragmentImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !71 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719DOMDocumentFragmentD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

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
!41 = !{!"DOMDocumentFragmentImpl.cpp:_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE"}
!42 = !{!"DOMDocumentFragmentImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!43 = !{!"function_entry_count", i64 1300}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !40, i64 0}
!47 = !{!"function_entry_count", i64 2562}
!48 = !{!49, !50, i64 8}
!49 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !45, i64 0, !50, i64 8}
!50 = !{!"short", !46, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"function_entry_count", i64 2954}
!53 = !{!54, !45, i64 280}
!54 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !55, i64 0, !49, i64 32, !60, i64 48, !45, i64 80, !45, i64 88, !45, i64 96, !63, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !64, i64 136, !45, i64 176, !45, i64 184, !45, i64 192, !67, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !66, i64 288, !63, i64 292}
!55 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !56, i64 0, !57, i64 8, !58, i64 16, !59, i64 24}
!56 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!57 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!58 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!59 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!60 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !45, i64 0, !45, i64 8, !61, i64 16}
!61 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !62, i64 0, !45, i64 8}
!62 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!63 = !{!"bool", !46, i64 0}
!64 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !65, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !66, i64 32, !66, i64 36}
!65 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!66 = !{!"int", !46, i64 0}
!67 = !{!"long", !46, i64 0}
!68 = !{!69, !45, i64 24}
!69 = !{!"_ZTSN11xercesc_2_723DOMDocumentFragmentImplE", !70, i64 0, !49, i64 8, !60, i64 24}
!70 = !{!"_ZTSN11xercesc_2_719DOMDocumentFragmentE", !59, i64 0}
!71 = !{!"function_entry_count", i64 1851}
!72 = !{!"function_entry_count", i64 1}
