; ModuleID = 'DOMAttrNSImpl.cpp'
source_filename = "DOMAttrNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMAttrImpl" = type { %"class.xercesc_2_7::DOMAttr", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr }
%"class.xercesc_2_7::DOMAttr" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMAttrNSImpl" = type { %"class.xercesc_2_7::DOMAttrImpl", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_713DOMAttrNSImplD0Ev = comdat any

$_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv = comdat any

$_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv = comdat any

$_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentE = comdat any

$_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv = comdat any

@_ZTVN11xercesc_2_713DOMAttrNSImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DOMAttrNSImplE, ptr @_ZN11xercesc_2_711DOMAttrImplD2Ev, ptr @_ZN11xercesc_2_713DOMAttrNSImplD0Ev, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9getPrefixEv, ptr @_ZNK11xercesc_2_713DOMAttrNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_713DOMAttrNSImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv, ptr @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_713DOMAttrNSImpl7releaseEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv, ptr @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt, ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv, ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv, ptr @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_713DOMAttrNSImpl6renameEPKtS2_, ptr @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE, ptr @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv, ptr @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DOMAttrNSImplE = dso_local constant [31 x i8] c"N11xercesc_2_713DOMAttrNSImplE\00", align 1
@_ZTIN11xercesc_2_711DOMAttrImplE = external constant ptr
@_ZTIN11xercesc_2_713DOMAttrNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DOMAttrNSImplE, ptr @_ZTIN11xercesc_2_711DOMAttrImplE }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_713DOMAttrNSImplC1EPNS_11DOMDocumentEPKtS4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_
@_ZN11xercesc_2_713DOMAttrNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_713DOMAttrNSImplC2ERKS0_b

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMAttrNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 96, ptr noundef %6, i32 noundef 1) #10
  tail call void @_ZN11xercesc_2_713DOMAttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMAttrNSImpl12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca [4000 x i16], align 16
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() #10
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %5) #10
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %9 = load ptr, ptr %0, align 8, !tbaa !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 12
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %13 unwind label %27

13:                                               ; preds = %7
  %14 = icmp eq ptr %12, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !54
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %20 unwind label %27

20:                                               ; preds = %15
  %21 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %19) #10
  br label %24

22:                                               ; preds = %13
  %23 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 7, ptr noundef null, ptr noundef %25) #10
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

27:                                               ; preds = %24, %15, %7
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %208

29:                                               ; preds = %2
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %31, align 2, !tbaa !73
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %38, ptr noundef %4) #10
  br i1 %39, label %40, label %62

40:                                               ; preds = %36, %33, %29
  %41 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %42 = load ptr, ptr %0, align 8, !tbaa !54
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %46 unwind label %60

46:                                               ; preds = %40
  %47 = icmp eq ptr %45, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %0, align 8, !tbaa !54
  %50 = getelementptr inbounds ptr, ptr %49, i64 12
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %53 unwind label %60

53:                                               ; preds = %48
  %54 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %52) #10
  br label %57

55:                                               ; preds = %46
  %56 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %41, i16 noundef signext 14, ptr noundef null, ptr noundef %58) #10
          to label %59 unwind label %60

59:                                               ; preds = %57
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

60:                                               ; preds = %57, %48, %40
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %208

62:                                               ; preds = %36
  %63 = icmp eq ptr %1, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = load i16, ptr %1, align 2, !tbaa !73
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %62
  %68 = load ptr, ptr %37, align 8, !tbaa !71
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %68, ptr %69, align 8, !tbaa !74
  %70 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %70, align 8, !tbaa !70
  br label %207

71:                                               ; preds = %64
  %72 = load ptr, ptr %0, align 8, !tbaa !54
  %73 = getelementptr inbounds ptr, ptr %72, i64 12
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %75, ptr noundef nonnull %1) #10
  br i1 %76, label %99, label %77

77:                                               ; preds = %71
  %78 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %79 = load ptr, ptr %0, align 8, !tbaa !54
  %80 = getelementptr inbounds ptr, ptr %79, i64 12
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %83 unwind label %97

83:                                               ; preds = %77
  %84 = icmp eq ptr %82, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %0, align 8, !tbaa !54
  %87 = getelementptr inbounds ptr, ptr %86, i64 12
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %90 unwind label %97

90:                                               ; preds = %85
  %91 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %89) #10
  br label %94

92:                                               ; preds = %83
  %93 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %91, %90 ], [ %93, %92 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %78, i16 noundef signext 5, ptr noundef null, ptr noundef %95) #10
          to label %96 unwind label %97

96:                                               ; preds = %94
  tail call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

97:                                               ; preds = %94, %85, %77
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %208

99:                                               ; preds = %71
  %100 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() #10
  %101 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() #10
  %102 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() #10
  %103 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef %100) #10
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr %30, align 8, !tbaa !58
  %106 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %105, ptr noundef %101) #10
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %99
  %108 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %1, ptr noundef %4) #10
  br i1 %108, label %109, label %134

109:                                              ; preds = %107
  %110 = load ptr, ptr %30, align 8, !tbaa !58
  %111 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %110, ptr noundef %102) #10
  br i1 %111, label %134, label %112

112:                                              ; preds = %109, %104
  %113 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %114 = load ptr, ptr %0, align 8, !tbaa !54
  %115 = getelementptr inbounds ptr, ptr %114, i64 12
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %118 unwind label %132

118:                                              ; preds = %112
  %119 = icmp eq ptr %117, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %0, align 8, !tbaa !54
  %122 = getelementptr inbounds ptr, ptr %121, i64 12
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %125 unwind label %132

125:                                              ; preds = %120
  %126 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %124) #10
  br label %129

127:                                              ; preds = %118
  %128 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi ptr [ %126, %125 ], [ %128, %127 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %113, i16 noundef signext 14, ptr noundef null, ptr noundef %130) #10
          to label %131 unwind label %132

131:                                              ; preds = %129
  tail call void @__cxa_throw(ptr nonnull %113, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

132:                                              ; preds = %129, %120, %112
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %208

134:                                              ; preds = %109, %107
  %135 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %1, i16 noundef zeroext 58) #10
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %159, label %137

137:                                              ; preds = %134
  %138 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %139 = load ptr, ptr %0, align 8, !tbaa !54
  %140 = getelementptr inbounds ptr, ptr %139, i64 12
  %141 = load ptr, ptr %140, align 8
  %142 = invoke noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %143 unwind label %157

143:                                              ; preds = %137
  %144 = icmp eq ptr %142, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr %0, align 8, !tbaa !54
  %147 = getelementptr inbounds ptr, ptr %146, i64 12
  %148 = load ptr, ptr %147, align 8
  %149 = invoke noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %150 unwind label %157

150:                                              ; preds = %145
  %151 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %149) #10
  br label %154

152:                                              ; preds = %143
  %153 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi ptr [ %151, %150 ], [ %153, %152 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %138, i16 noundef signext 14, ptr noundef null, ptr noundef %155) #10
          to label %156 unwind label %157

156:                                              ; preds = %154
  tail call void @__cxa_throw(ptr nonnull %138, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

157:                                              ; preds = %154, %145, %137
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %208

159:                                              ; preds = %134
  %160 = load ptr, ptr %0, align 8, !tbaa !54
  %161 = getelementptr inbounds ptr, ptr %160, i64 12
  %162 = load ptr, ptr %161, align 8
  %163 = tail call noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %164 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %163, ptr noundef nonnull %1) #10
  %165 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %164, ptr %165, align 8, !tbaa !70
  %166 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #10
  %167 = add nsw i32 %166, 1
  %168 = load ptr, ptr %37, align 8, !tbaa !71
  %169 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %168) #10
  %170 = add i32 %169, %167
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %3) #11
  %171 = icmp sgt i32 %170, 3998
  br i1 %171, label %172, label %184

172:                                              ; preds = %159
  %173 = load ptr, ptr %0, align 8, !tbaa !54
  %174 = getelementptr inbounds ptr, ptr %173, i64 12
  %175 = load ptr, ptr %174, align 8
  %176 = tail call noundef ptr %175(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %177 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %176) #10
  %178 = shl nuw i32 %170, 1
  %179 = zext i32 %178 to i64
  %180 = load ptr, ptr %177, align 8, !tbaa !54
  %181 = getelementptr inbounds ptr, ptr %180, i64 2
  %182 = load ptr, ptr %181, align 8
  %183 = tail call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(8) %177, i64 noundef %179) #10
  br label %184

184:                                              ; preds = %159, %172
  %185 = phi ptr [ %183, %172 ], [ %3, %159 ]
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %185, ptr noundef nonnull %1) #10
  %186 = sext i32 %166 to i64
  %187 = getelementptr inbounds i16, ptr %185, i64 %186
  store i16 58, ptr %187, align 2, !tbaa !73
  %188 = sext i32 %167 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  %190 = load ptr, ptr %37, align 8, !tbaa !71
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %189, ptr noundef %190) #10
  %191 = load ptr, ptr %0, align 8, !tbaa !54
  %192 = getelementptr inbounds ptr, ptr %191, i64 12
  %193 = load ptr, ptr %192, align 8
  %194 = call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %195 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %194, ptr noundef %185) #10
  %196 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %195, ptr %196, align 8, !tbaa !74
  br i1 %171, label %197, label %206

197:                                              ; preds = %184
  %198 = load ptr, ptr %0, align 8, !tbaa !54
  %199 = getelementptr inbounds ptr, ptr %198, i64 12
  %200 = load ptr, ptr %199, align 8
  %201 = call noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %202 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %201) #10
  %203 = load ptr, ptr %202, align 8, !tbaa !54
  %204 = getelementptr inbounds ptr, ptr %203, i64 3
  %205 = load ptr, ptr %204, align 8
  call void %205(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull %185) #10
  br label %206

206:                                              ; preds = %197, %184
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %3) #11
  br label %207

207:                                              ; preds = %206, %67
  ret void

208:                                              ; preds = %132, %157, %97, %60, %27
  %209 = phi ptr [ %113, %132 ], [ %138, %157 ], [ %78, %97 ], [ %41, %60 ], [ %8, %27 ]
  %210 = phi { ptr, i32 } [ %133, %132 ], [ %158, %157 ], [ %98, %97 ], [ %61, %60 ], [ %28, %27 ]
  tail call void @__cxa_free_exception(ptr %209) #11
  resume { ptr, i32 } %210
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMAttrImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMAttrImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !54
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #10
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
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
  %29 = load ptr, ptr %0, align 8, !tbaa !54
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #10
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #10
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 1) #10
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %38 = load ptr, ptr %0, align 8, !tbaa !54
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !54
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #10
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
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

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMAttrImpl4isIdEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMAttrImpl11getTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713DOMAttrNSImpl6renameEPKtS2_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !53 {
  %4 = load ptr, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds ptr, ptr %4, i64 44
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !54
  %11 = getelementptr inbounds ptr, ptr %10, i64 46
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0) #10
  tail call void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !54
  %15 = getelementptr inbounds ptr, ptr %14, i64 52
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %0) #10
  br label %19

18:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) #10
  br label %19

19:                                               ; preds = %18, %9
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImpl11setTypeInfoEPKNS_15DOMTypeInfoImplE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl18addAttrToIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %2, i1 noundef zeroext true) #10
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef 56, ptr noundef nonnull %6) #10
  tail call void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 500, ptr noundef nonnull %6) #10
  store ptr %11, ptr %7, align 8, !tbaa !76
  br label %12

12:                                               ; preds = %10, %4
  %13 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %6) #10
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %0) #10
  br label %14

14:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMAttrImpl23removeAttrFromIDNodeMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #10
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %9 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #10
  tail call void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull %0) #10
  tail call void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %2, i1 noundef zeroext false) #10
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !53 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) #10
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %3) #10
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %2, ptr noundef %3) #10
          to label %5 unwind label %6

5:                                                ; preds = %4
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_711DOMAttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %4 = alloca [4000 x i16], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !54
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %9 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() #10
  %10 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() #10
  %11 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %2) #10
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrImpl", ptr %0, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !74
  %13 = tail call noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef %2) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %37, !prof !88

15:                                               ; preds = %3
  %16 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %17 = load ptr, ptr %0, align 8, !tbaa !54
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %21 unwind label %35

21:                                               ; preds = %15
  %22 = icmp eq ptr %20, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8, !tbaa !54
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %28 unwind label %35

28:                                               ; preds = %23
  %29 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %27) #10
  br label %32

30:                                               ; preds = %21
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %29, %28 ], [ %31, %30 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %16, i16 noundef signext 14, ptr noundef null, ptr noundef %33) #10
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

35:                                               ; preds = %32, %23, %15
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #11
  br label %168

37:                                               ; preds = %3
  %38 = icmp eq i32 %13, 0
  br i1 %38, label %39, label %70, !prof !89

39:                                               ; preds = %37
  %40 = load ptr, ptr %12, align 8, !tbaa !74
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %40, ptr noundef %9) #10
  br i1 %41, label %42, label %146, !prof !90

42:                                               ; preds = %39
  %43 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %10) #10
  br i1 %43, label %66, label %44, !prof !91

44:                                               ; preds = %42
  %45 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %46 = load ptr, ptr %0, align 8, !tbaa !54
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %50 unwind label %64

50:                                               ; preds = %44
  %51 = icmp eq ptr %49, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %0, align 8, !tbaa !54
  %54 = getelementptr inbounds ptr, ptr %53, i64 12
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %57 unwind label %64

57:                                               ; preds = %52
  %58 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %56) #10
  br label %61

59:                                               ; preds = %50
  %60 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi ptr [ %58, %57 ], [ %60, %59 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %45, i16 noundef signext 14, ptr noundef null, ptr noundef %62) #10
          to label %63 unwind label %64

63:                                               ; preds = %61
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

64:                                               ; preds = %61, %52, %44
  %65 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %45) #11
  br label %168

66:                                               ; preds = %42
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %67, align 8, !tbaa !70
  %68 = load ptr, ptr %12, align 8, !tbaa !74
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !71
  br label %160

70:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %4) #11
  %71 = icmp ugt i32 %13, 3998
  br i1 %71, label %72, label %86, !prof !92

72:                                               ; preds = %70
  %73 = load ptr, ptr %0, align 8, !tbaa !54
  %74 = getelementptr inbounds ptr, ptr %73, i64 12
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %77 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %76) #10
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %2) #10
  %79 = add i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = shl nuw nsw i64 %80, 1
  %82 = load ptr, ptr %77, align 8, !tbaa !54
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %77, i64 noundef %81) #10
  br label %86

86:                                               ; preds = %70, %72
  %87 = phi ptr [ %85, %72 ], [ %4, %70 ]
  %88 = load ptr, ptr %12, align 8, !tbaa !74
  %89 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef %87, ptr noundef %88, i32 noundef %13) #10
  %90 = zext nneg i32 %13 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  store i16 0, ptr %91, align 2, !tbaa !73
  %92 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef %87) #10
  %93 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %92, ptr %93, align 8, !tbaa !70
  %94 = load ptr, ptr %12, align 8, !tbaa !74
  %95 = getelementptr inbounds i16, ptr %94, i64 %90
  %96 = getelementptr inbounds i16, ptr %95, i64 1
  %97 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %96) #10
  %98 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %97, ptr %98, align 8, !tbaa !71
  br i1 %71, label %99, label %108, !prof !92

99:                                               ; preds = %86
  %100 = load ptr, ptr %0, align 8, !tbaa !54
  %101 = getelementptr inbounds ptr, ptr %100, i64 12
  %102 = load ptr, ptr %101, align 8
  %103 = call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %104 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %103) #10
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = getelementptr inbounds ptr, ptr %105, i64 3
  %107 = load ptr, ptr %106, align 8
  call void %107(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef nonnull %87) #10
  br label %108

108:                                              ; preds = %99, %86
  %109 = load ptr, ptr %0, align 8, !tbaa !54
  %110 = getelementptr inbounds ptr, ptr %109, i64 12
  %111 = load ptr, ptr %110, align 8
  %112 = call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %113 = load ptr, ptr %93, align 8, !tbaa !70
  %114 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %112, ptr noundef %113) #10
  br i1 %114, label %115, label %122, !prof !91

115:                                              ; preds = %108
  %116 = load ptr, ptr %0, align 8, !tbaa !54
  %117 = getelementptr inbounds ptr, ptr %116, i64 12
  %118 = load ptr, ptr %117, align 8
  %119 = call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  %120 = load ptr, ptr %98, align 8, !tbaa !71
  %121 = call noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293) %119, ptr noundef %120) #10
  br i1 %121, label %144, label %122, !prof !91

122:                                              ; preds = %115, %108
  %123 = call ptr @__cxa_allocate_exception(i64 40) #11
  %124 = load ptr, ptr %0, align 8, !tbaa !54
  %125 = getelementptr inbounds ptr, ptr %124, i64 12
  %126 = load ptr, ptr %125, align 8
  %127 = invoke noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %128 unwind label %142

128:                                              ; preds = %122
  %129 = icmp eq ptr %127, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %0, align 8, !tbaa !54
  %132 = getelementptr inbounds ptr, ptr %131, i64 12
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
          to label %135 unwind label %142

135:                                              ; preds = %130
  %136 = call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %134) #10
  br label %139

137:                                              ; preds = %128
  %138 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !72
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi ptr [ %136, %135 ], [ %138, %137 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %123, i16 noundef signext 14, ptr noundef null, ptr noundef %140) #10
          to label %141 unwind label %142

141:                                              ; preds = %139
  call void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

142:                                              ; preds = %139, %130, %122
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %123) #11
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #11
  br label %168

144:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %4) #11
  %145 = load ptr, ptr %93, align 8, !tbaa !70
  br label %150

146:                                              ; preds = %39
  %147 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr null, ptr %147, align 8, !tbaa !70
  %148 = load ptr, ptr %12, align 8, !tbaa !74
  %149 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 2
  store ptr %148, ptr %149, align 8, !tbaa !71
  br label %150

150:                                              ; preds = %146, %144
  %151 = phi ptr [ null, %146 ], [ %145, %144 ]
  %152 = icmp eq ptr %1, null
  br i1 %152, label %157, label %153, !prof !89

153:                                              ; preds = %150
  %154 = load i16, ptr %1, align 2, !tbaa !73
  %155 = icmp eq i16 %154, 0
  %156 = select i1 %155, ptr null, ptr %1, !prof !93
  br label %157

157:                                              ; preds = %153, %150
  %158 = phi ptr [ null, %150 ], [ %156, %153 ]
  %159 = call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef %151, ptr noundef %158, i16 noundef signext 2) #10
  br label %160

160:                                              ; preds = %66, %157
  %161 = phi ptr [ %159, %157 ], [ %10, %66 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163, !prof !94

163:                                              ; preds = %160
  %164 = call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %8, ptr noundef nonnull %161) #10
  br label %165

165:                                              ; preds = %160, %163
  %166 = phi ptr [ %164, %163 ], [ null, %160 ]
  %167 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  store ptr %166, ptr %167, align 8, !tbaa !58
  ret void

168:                                              ; preds = %64, %142, %35
  %169 = phi { ptr, i32 } [ %36, %35 ], [ %65, %64 ], [ %143, %142 ]
  resume { ptr, i32 } %169
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMAttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !53 {
  tail call void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 noundef zeroext %2) #10
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_713DOMAttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 1
  %6 = load <2 x ptr>, ptr %4, align 8, !tbaa !72
  store <2 x ptr> %6, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMAttrNSImpl", ptr %0, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMAttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat !prof !95 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !97
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !73
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !100 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !101

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !73
  %8 = load i16, ptr %1, align 2, !tbaa !73
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !102

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !103

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !73
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !104

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !105

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !73
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !106

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !107

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !73
  %28 = load i16, ptr %26, align 2, !tbaa !73
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !108, !llvm.loop !109

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getXmlStringEv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl15getXmlURIStringEv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !111 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !112

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !73
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !113

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !73
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !114, !llvm.loop !115

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !97
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !73
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !97
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !73
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !97
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !73
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !97
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl7ID_ATTRE, align 2, !tbaa !73
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !117 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0) #10
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMapC1EiPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 comdat align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap3addEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMNodeIDMap6removeEPNS_7DOMAttrE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!52}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_711DOMAttrImplC2EPNS_11DOMDocumentEPKt, i64 650}
!37 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImplC2EPNS_11DOMDocumentEPKtS4_, ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, i64 650}
!38 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl14getXmlnsStringEv, i64 650}
!39 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl17getXmlnsURIStringEv, i64 650}
!40 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt, i64 657}
!41 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl20indexofQualifiedNameEPKt, i64 650}
!42 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @__cxa_allocate_exception, i64 3}
!43 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @__cxa_free_exception, i64 3}
!44 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 649}
!45 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv, i64 2}
!46 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1}
!47 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj, i64 2}
!48 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_715DOMDocumentImpl9isXMLNameEPKt, i64 3}
!49 = !{ptr @_ZN11xercesc_2_713DOMAttrNSImpl7setNameEPKtS2_, ptr @_ZN11xercesc_2_711DOMNodeImpl9mapPrefixEPKtS2_s, i64 646}
!50 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!51 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEm, i64 2815}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"function_entry_count", i64 1458}
!58 = !{!59, !64, i64 72}
!59 = !{!"_ZTSN11xercesc_2_713DOMAttrNSImplE", !60, i64 0, !64, i64 72, !64, i64 80, !64, i64 88}
!60 = !{!"_ZTSN11xercesc_2_711DOMAttrImplE", !61, i64 0, !63, i64 8, !67, i64 24, !64, i64 56, !64, i64 64}
!61 = !{!"_ZTSN11xercesc_2_77DOMAttrE", !62, i64 0}
!62 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!63 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !64, i64 0, !66, i64 8}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !56, i64 0}
!66 = !{!"short", !65, i64 0}
!67 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !64, i64 0, !64, i64 8, !68, i64 16}
!68 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !69, i64 0, !64, i64 8}
!69 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!70 = !{!59, !64, i64 88}
!71 = !{!59, !64, i64 80}
!72 = !{!64, !64, i64 0}
!73 = !{!66, !66, i64 0}
!74 = !{!60, !64, i64 56}
!75 = !{!60, !64, i64 24}
!76 = !{!77, !64, i64 80}
!77 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !78, i64 0, !63, i64 32, !67, i64 48, !64, i64 80, !64, i64 88, !64, i64 96, !82, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !83, i64 136, !64, i64 176, !64, i64 184, !64, i64 192, !86, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !64, i64 240, !64, i64 248, !64, i64 256, !64, i64 264, !64, i64 272, !64, i64 280, !85, i64 288, !82, i64 292}
!78 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !79, i64 0, !80, i64 8, !81, i64 16, !62, i64 24}
!79 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!80 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!81 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!82 = !{!"bool", !65, i64 0}
!83 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !84, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !85, i64 32, !85, i64 36}
!84 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!85 = !{!"int", !65, i64 0}
!86 = !{!"long", !65, i64 0}
!87 = !{!"function_entry_count", i64 650}
!88 = !{!"branch_weights", i32 1, i32 651}
!89 = !{!"branch_weights", i32 650, i32 2}
!90 = !{!"branch_weights", i32 2, i32 649}
!91 = !{!"branch_weights", i32 2, i32 1}
!92 = !{!"branch_weights", i32 1, i32 2}
!93 = !{!"branch_weights", i32 1, i32 3}
!94 = !{!"branch_weights", i32 649, i32 3}
!95 = !{!"function_entry_count", i64 1300}
!96 = !{!"function_entry_count", i64 3150}
!97 = !{!63, !66, i64 8}
!98 = !{!"function_entry_count", i64 2954}
!99 = !{!77, !64, i64 280}
!100 = !{!"function_entry_count", i64 1231717351}
!101 = !{!"branch_weights", i32 621, i32 -1469098093}
!102 = !{!"branch_weights", i32 408901017, i32 1}
!103 = !{!"branch_weights", i32 267, i32 4}
!104 = !{!"branch_weights", i32 1, i32 4}
!105 = !{!"branch_weights", i32 156, i32 112}
!106 = !{!"branch_weights", i32 1, i32 112}
!107 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!108 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"function_entry_count", i64 2453164456}
!112 = !{!"branch_weights", i32 1, i32 -1841802839}
!113 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!114 = !{!"branch_weights", i32 408669070, i32 -279908792}
!115 = distinct !{!115, !110}
!116 = !{!"function_entry_count", i64 2562}
!117 = !{!"function_entry_count", i64 2815}
