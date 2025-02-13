; ModuleID = 'AttrNSImpl.cpp'
source_filename = "AttrNSImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::AttrNSImpl" = type { %"class.xercesc_2_7::AttrImpl", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::AttrImpl" = type { %"class.xercesc_2_7::NodeImpl.base", %"class.xercesc_2_7::DOMString", %union.anon }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%union.anon = type { ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>

$_ZN11xercesc_2_710AttrNSImplD2Ev = comdat any

$_ZN11xercesc_2_710AttrNSImplD0Ev = comdat any

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv = comdat any

$_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv = comdat any

@_ZTVN11xercesc_2_710AttrNSImplE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710AttrNSImplE, ptr @_ZN11xercesc_2_710AttrNSImplD2Ev, ptr @_ZN11xercesc_2_710AttrNSImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78AttrImpl4itemEj, ptr @_ZN11xercesc_2_78AttrImpl9getLengthEv, ptr @_ZN11xercesc_2_78AttrImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_710AttrNSImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv, ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeNameEv, ptr @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78AttrImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv, ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78AttrImpl8toStringEv, ptr @_ZN11xercesc_2_78AttrImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_710AttrNSImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_710AttrNSImpl9getPrefixEv, ptr @_ZN11xercesc_2_710AttrNSImpl12getLocalNameEv, ptr @_ZN11xercesc_2_710AttrNSImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZN11xercesc_2_78AttrImpl7getNameEv, ptr @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv, ptr @_ZN11xercesc_2_78AttrImpl8getValueEv, ptr @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb, ptr @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710AttrNSImplE = dso_local constant [28 x i8] c"N11xercesc_2_710AttrNSImplE\00", align 1
@_ZTIN11xercesc_2_78AttrImplE = external constant ptr
@_ZTIN11xercesc_2_710AttrNSImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710AttrNSImplE, ptr @_ZTIN11xercesc_2_78AttrImplE }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZN11xercesc_2_78NodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE
@_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_
@_ZN11xercesc_2_710AttrNSImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttrNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #5
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710AttrNSImplD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_710AttrNSImplD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78AttrImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710AttrNSImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0) #6
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #6
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %7) #6
  invoke void @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1) #6
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #5
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl11getNodeNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef signext i16 @_ZN11xercesc_2_78AttrImpl11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl9getPrefixEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %1, i64 0, i32 1
  %4 = tail call noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #6
  br label %8

7:                                                ; preds = %2
  tail call void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef %4) #6
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  invoke void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4) #6
          to label %14 unwind label %31

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5) #6
          to label %15 unwind label %33

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6) #6
          to label %16 unwind label %35

16:                                               ; preds = %15
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 26
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(26) %0) #6
          to label %21 unwind label %37

21:                                               ; preds = %16
  %22 = call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %20) #6
  br i1 %22, label %23, label %88

23:                                               ; preds = %21
  %24 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #6
  br i1 %24, label %25, label %45

25:                                               ; preds = %23
  %26 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #6
          to label %27 unwind label %39

27:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %26, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %30 unwind label %28

28:                                               ; preds = %27
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %43

30:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %187 unwind label %41

31:                                               ; preds = %2
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %185

33:                                               ; preds = %14
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %183

35:                                               ; preds = %15
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %181

37:                                               ; preds = %116, %113, %109, %106, %99, %95, %91, %88, %73, %68, %65, %49, %45, %16
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %179

39:                                               ; preds = %25
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %43

41:                                               ; preds = %30
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %179

43:                                               ; preds = %28, %39
  %44 = phi { ptr, i32 } [ %40, %39 ], [ %29, %28 ]
  call void @__cxa_free_exception(ptr %26) #7
  br label %179

45:                                               ; preds = %23
  %46 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %47 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef null) #6
          to label %48 unwind label %37

48:                                               ; preds = %45
  br i1 %47, label %53, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  %51 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %52 unwind label %37

52:                                               ; preds = %49
  br i1 %51, label %53, label %65

53:                                               ; preds = %52, %48
  %54 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #6
          to label %55 unwind label %59

55:                                               ; preds = %53
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %54, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8) #6
          to label %58 unwind label %56

56:                                               ; preds = %55
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %63

58:                                               ; preds = %55
  invoke void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %187 unwind label %61

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %63

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %179

63:                                               ; preds = %56, %59
  %64 = phi { ptr, i32 } [ %60, %59 ], [ %57, %56 ]
  call void @__cxa_free_exception(ptr %54) #7
  br label %179

65:                                               ; preds = %52
  %66 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #6
          to label %67 unwind label %37

67:                                               ; preds = %65
  br i1 %66, label %68, label %88

68:                                               ; preds = %67
  %69 = load ptr, ptr %0, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 26
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(26) %0) #6
          to label %73 unwind label %37

73:                                               ; preds = %68
  %74 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %72, ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %75 unwind label %37

75:                                               ; preds = %73
  br i1 %74, label %88, label %76

76:                                               ; preds = %75
  %77 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #6
          to label %78 unwind label %82

78:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %77, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %9) #6
          to label %81 unwind label %79

79:                                               ; preds = %78
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %86

81:                                               ; preds = %78
  invoke void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %187 unwind label %84

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %86

84:                                               ; preds = %81
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %179

86:                                               ; preds = %79, %82
  %87 = phi { ptr, i32 } [ %83, %82 ], [ %80, %79 ]
  call void @__cxa_free_exception(ptr %77) #7
  br label %179

88:                                               ; preds = %67, %75, %21
  %89 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #6
          to label %90 unwind label %37

90:                                               ; preds = %88
  br i1 %89, label %95, label %91

91:                                               ; preds = %90
  %92 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %93 unwind label %37

93:                                               ; preds = %91
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %93, %90
  %96 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  %97 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %98 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull align 8 dereferenceable(8) %96) #6
          to label %168 unwind label %37

99:                                               ; preds = %93
  %100 = load ptr, ptr %0, align 8, !tbaa !35
  %101 = getelementptr inbounds ptr, ptr %100, i64 26
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(26) %0) #6
          to label %104 unwind label %37

104:                                              ; preds = %99
  %105 = call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %103) #6
  br i1 %105, label %106, label %113

106:                                              ; preds = %104
  %107 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %108 unwind label %37

108:                                              ; preds = %106
  br i1 %107, label %109, label %113

109:                                              ; preds = %108
  %110 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %111 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull align 8 dereferenceable(8) %4) #6
          to label %112 unwind label %37

112:                                              ; preds = %109
  br i1 %111, label %113, label %120

113:                                              ; preds = %112, %108, %104
  %114 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %115 unwind label %37

115:                                              ; preds = %113
  br i1 %114, label %116, label %132

116:                                              ; preds = %115
  %117 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  %118 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %119 unwind label %37

119:                                              ; preds = %116
  br i1 %118, label %132, label %120

120:                                              ; preds = %119, %112
  %121 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #6
          to label %122 unwind label %126

122:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %121, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
          to label %125 unwind label %123

123:                                              ; preds = %122
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %130

125:                                              ; preds = %122
  invoke void @__cxa_throw(ptr nonnull %121, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %187 unwind label %128

126:                                              ; preds = %120
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %130

128:                                              ; preds = %125
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %179

130:                                              ; preds = %123, %126
  %131 = phi { ptr, i32 } [ %127, %126 ], [ %124, %123 ]
  call void @__cxa_free_exception(ptr %121) #7
  br label %179

132:                                              ; preds = %119, %115
  %133 = invoke noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %134 unwind label %141

134:                                              ; preds = %132
  %135 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %136 unwind label %143

136:                                              ; preds = %134, %145
  %137 = phi ptr [ %147, %145 ], [ %133, %134 ]
  %138 = phi i32 [ %146, %145 ], [ %135, %134 ]
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 58) #6
          to label %162 unwind label %169

141:                                              ; preds = %132
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %179

143:                                              ; preds = %134
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %179

145:                                              ; preds = %136
  %146 = add nsw i32 %138, -1
  %147 = getelementptr inbounds i16, ptr %137, i64 1
  %148 = load i16, ptr %137, align 2, !tbaa !39
  %149 = icmp eq i16 %148, 58
  br i1 %149, label %150, label %136, !llvm.loop !42

150:                                              ; preds = %145
  %151 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #6
          to label %152 unwind label %156

152:                                              ; preds = %150
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %151, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %155 unwind label %153

153:                                              ; preds = %152
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %160

155:                                              ; preds = %152
  invoke void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %187 unwind label %158

156:                                              ; preds = %150
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %160

158:                                              ; preds = %155
  %159 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %179

160:                                              ; preds = %153, %156
  %161 = phi { ptr, i32 } [ %157, %156 ], [ %154, %153 ]
  call void @__cxa_free_exception(ptr %151) #7
  br label %179

162:                                              ; preds = %140
  %163 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %163) #6
          to label %164 unwind label %171

164:                                              ; preds = %162
  %165 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %166 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %165, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %167 unwind label %173

167:                                              ; preds = %164
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %168

168:                                              ; preds = %95, %167
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

169:                                              ; preds = %140
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %177

171:                                              ; preds = %162
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %175

173:                                              ; preds = %164
  %174 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %172, %171 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  br label %177

177:                                              ; preds = %175, %169
  %178 = phi { ptr, i32 } [ %176, %175 ], [ %170, %169 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %179

179:                                              ; preds = %158, %128, %84, %61, %41, %141, %177, %160, %143, %130, %86, %63, %43, %37
  %180 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ], [ %64, %63 ], [ %62, %61 ], [ %38, %37 ], [ %131, %130 ], [ %129, %128 ], [ %87, %86 ], [ %85, %84 ], [ %178, %177 ], [ %142, %141 ], [ %161, %160 ], [ %159, %158 ], [ %144, %143 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %181

181:                                              ; preds = %179, %35
  %182 = phi { ptr, i32 } [ %180, %179 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %183

183:                                              ; preds = %181, %33
  %184 = phi { ptr, i32 } [ %182, %181 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %185

185:                                              ; preds = %183, %31
  %186 = phi { ptr, i32 } [ %184, %183 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %186

187:                                              ; preds = %155, %125, %81, %58, %30
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl7getNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78AttrImpl12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl8getValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl12setSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImpl8setValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #6
          to label %5 unwind label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #6
          to label %9 unwind label %16

9:                                                ; preds = %7
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #6
          to label %11 unwind label %16

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78AttrImplC2EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #6
          to label %15 unwind label %34

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #6
          to label %17 unwind label %36

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  invoke void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5) #6
          to label %18 unwind label %38

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  invoke void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6) #6
          to label %19 unwind label %40

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %20 unwind label %42

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::AttrImpl", ptr %0, i64 0, i32 1
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %7) #6
          to label %23 unwind label %44

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  %24 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
          to label %25 unwind label %48

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
          to label %26 unwind label %50

26:                                               ; preds = %25
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %26
  %29 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #6
          to label %30 unwind label %52

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %29, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9) #6
          to label %33 unwind label %31

31:                                               ; preds = %30
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %56

33:                                               ; preds = %30
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %142 unwind label %54

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %140

36:                                               ; preds = %15
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %138

38:                                               ; preds = %17
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %136

40:                                               ; preds = %18
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %134

42:                                               ; preds = %19
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %20
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #5
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %132

48:                                               ; preds = %23
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %132

50:                                               ; preds = %25
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %130

52:                                               ; preds = %28
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %56

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %128

56:                                               ; preds = %31, %52
  %57 = phi { ptr, i32 } [ %53, %52 ], [ %32, %31 ]
  call void @__cxa_free_exception(ptr %29) #7
  br label %128

58:                                               ; preds = %26
  %59 = icmp eq i32 %24, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %58
  %61 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %62 unwind label %72

62:                                               ; preds = %60
  br i1 %61, label %63, label %80

63:                                               ; preds = %62
  %64 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %65 unwind label %72

65:                                               ; preds = %63
  br i1 %64, label %80, label %66

66:                                               ; preds = %65
  %67 = call ptr @__cxa_allocate_exception(i64 24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #6
          to label %68 unwind label %74

68:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %67, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
          to label %71 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %78

71:                                               ; preds = %68
  invoke void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #8
          to label %142 unwind label %76

72:                                               ; preds = %82, %80, %63, %60
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %128

74:                                               ; preds = %66
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %78

76:                                               ; preds = %71
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  br label %128

78:                                               ; preds = %69, %74
  %79 = phi { ptr, i32 } [ %75, %74 ], [ %70, %69 ]
  call void @__cxa_free_exception(ptr %67) #7
  br label %128

80:                                               ; preds = %65, %62
  %81 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #6
          to label %82 unwind label %72

82:                                               ; preds = %80
  %83 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %21) #6
          to label %108 unwind label %72

84:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0, i32 noundef %24) #6
          to label %85 unwind label %96

85:                                               ; preds = %84
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #6
          to label %87 unwind label %98

87:                                               ; preds = %85
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  %88 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #6
          to label %89 unwind label %102

89:                                               ; preds = %87
  %90 = add nuw nsw i32 %24, 1
  %91 = xor i32 %24, -1
  %92 = add i32 %88, %91
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %90, i32 noundef %92) #6
          to label %93 unwind label %102

93:                                               ; preds = %89
  %94 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %12) #6
          to label %95 unwind label %104

95:                                               ; preds = %93
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %109

96:                                               ; preds = %84
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %85
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #5
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  br label %128

102:                                              ; preds = %89, %87
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %106

104:                                              ; preds = %93
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #5
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  br label %128

108:                                              ; preds = %82
  br i1 %61, label %111, label %109

109:                                              ; preds = %95, %108
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef signext 2) #6
          to label %111 unwind label %120

111:                                              ; preds = %109, %108
  %112 = phi ptr [ %6, %108 ], [ %110, %109 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  %113 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef null) #6
          to label %114 unwind label %122

114:                                              ; preds = %111
  br i1 %113, label %115, label %116

115:                                              ; preds = %114
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #6
          to label %117 unwind label %122

116:                                              ; preds = %114
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %112) #6
          to label %117 unwind label %122

117:                                              ; preds = %116, %115
  %118 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13) #6
          to label %119 unwind label %124

119:                                              ; preds = %117
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void

120:                                              ; preds = %109
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %128

122:                                              ; preds = %116, %115, %111
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %126

124:                                              ; preds = %117
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #5
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  br label %128

128:                                              ; preds = %76, %54, %72, %100, %106, %78, %126, %120, %56
  %129 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ], [ %73, %72 ], [ %79, %78 ], [ %77, %76 ], [ %107, %106 ], [ %101, %100 ], [ %127, %126 ], [ %121, %120 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %130

130:                                              ; preds = %128, %50
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %132

132:                                              ; preds = %48, %130, %46
  %133 = phi { ptr, i32 } [ %47, %46 ], [ %131, %130 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %134

134:                                              ; preds = %132, %40
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %136

136:                                              ; preds = %134, %38
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #5
  br label %138

138:                                              ; preds = %136, %36
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #5
  br label %140

140:                                              ; preds = %138, %34
  %141 = phi { ptr, i32 } [ %139, %138 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %141

142:                                              ; preds = %71, %33
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710AttrNSImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) #6
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xercesc_2_710AttrNSImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
          to label %7 unwind label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
          to label %9 unwind label %20

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %10 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %10) #6
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #6
          to label %13 unwind label %24

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %14 = getelementptr inbounds %"class.xercesc_2_7::AttrNSImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %14) #6
          to label %15 unwind label %28

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #6
          to label %17 unwind label %30

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %38

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %36

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %34

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %15
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %27, %26 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #5
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_78AttrImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl16getErrorCheckingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 4, !tbaa !54, !range !55, !noundef !56
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !57
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8READONLYE, align 2, !tbaa !39
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_7plERKNS_9DOMStringEt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !52, i64 160}
!45 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !46, i64 0, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !51, i64 152, !53, i64 156, !52, i64 160}
!46 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !47, i64 0, !52, i64 48, !52, i64 56, !51, i64 64, !52, i64 72, !51, i64 80}
!47 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !48, i64 0, !52, i64 32, !52, i64 40}
!48 = !{!"_ZTSN11xercesc_2_78NodeImplE", !49, i64 0, !52, i64 16, !40, i64 24}
!49 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !50, i64 0}
!50 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !51, i64 8}
!51 = !{!"int", !41, i64 0}
!52 = !{!"any pointer", !41, i64 0}
!53 = !{!"bool", !41, i64 0}
!54 = !{!45, !53, i64 156}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!48, !40, i64 24}
