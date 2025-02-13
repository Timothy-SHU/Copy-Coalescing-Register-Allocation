; ModuleID = 'XMLDeclImpl.cpp'
source_filename = "XMLDeclImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::XMLDeclImpl" = type { %"class.xercesc_2_7::ChildNode", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString" }
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

@_ZTVN11xercesc_2_711XMLDeclImplE = dso_local unnamed_addr constant { [55 x ptr] } { [55 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711XMLDeclImplE, ptr @_ZN11xercesc_2_711XMLDeclImplD2Ev, ptr @_ZN11xercesc_2_711XMLDeclImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78NodeImpl4itemEj, ptr @_ZN11xercesc_2_78NodeImpl9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_711XMLDeclImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_711XMLDeclImpl11getNodeNameEv, ptr @_ZN11xercesc_2_711XMLDeclImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_, ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_78NodeImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv, ptr @_ZNK11xercesc_2_711XMLDeclImpl10getVersionEv, ptr @_ZNK11xercesc_2_711XMLDeclImpl11getEncodingEv, ptr @_ZNK11xercesc_2_711XMLDeclImpl13getStandaloneEv, ptr @_ZN11xercesc_2_711XMLDeclImpl10setVersionERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711XMLDeclImpl11setEncodingERKNS_9DOMStringE, ptr @_ZN11xercesc_2_711XMLDeclImpl13setStandaloneERKNS_9DOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711XMLDeclImplE = dso_local constant [29 x i8] c"N11xercesc_2_711XMLDeclImplE\00", align 1
@_ZTIN11xercesc_2_79ChildNodeE = external constant ptr
@_ZTIN11xercesc_2_711XMLDeclImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711XMLDeclImplE, ptr @_ZTIN11xercesc_2_79ChildNodeE }, align 8
@_ZN11xercesc_2_7L11gNamCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgNoStringE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [9 x i8] c"#xmldecl\00", align 1
@_ZN11xercesc_2_7L4gNamE = internal global ptr null, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLDeclImpl.cpp, ptr null }]

@_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XMLDeclImplC2EPNS_12DocumentImplE
@_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_711XMLDeclImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_S5_
@_ZN11xercesc_2_711XMLDeclImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_711XMLDeclImplC2ERKS0_b
@_ZN11xercesc_2_711XMLDeclImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711XMLDeclImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_711XMLDeclImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(26), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_78NodeImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

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
define dso_local noundef ptr @_ZN11xercesc_2_711XMLDeclImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0) #8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #8
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %7) #8
  invoke void @_ZN11xercesc_2_711XMLDeclImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext poison) #8
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret ptr %8

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #7
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImpl11getNodeNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L4gNamE, ptr noundef nonnull @_ZN11xercesc_2_711XMLDeclImpl17reinitXMLDeclImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L11gNamCleanupE) #8
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_711XMLDeclImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !35 {
  ret i16 13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDeclImpl10getVersionEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDeclImpl11getEncodingEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDeclImpl13getStandaloneEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 3
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImpl10setVersionERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 1
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImpl11setEncodingERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 2
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImpl13setStandaloneERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 3
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L11gNamCleanupE) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #8
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDeclImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_0E) #8
          to label %4 unwind label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE) #8
          to label %6 unwind label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgNoStringE) #8
          to label %8 unwind label %13

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %17

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %15

13:                                               ; preds = %6
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %10, %9 ]
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImplC2EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_79ChildNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #8
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDeclImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %9 unwind label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 3
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %11 unwind label %16

11:                                               ; preds = %9
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  tail call void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDeclImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 1
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
          to label %8 unwind label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
          to label %10 unwind label %27

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
          to label %12 unwind label %29

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 1
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #8
          to label %14 unwind label %31

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
          to label %16 unwind label %33

16:                                               ; preds = %14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 2
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %17) #8
          to label %18 unwind label %37

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
          to label %20 unwind label %39

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %1, i64 0, i32 3
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %21) #8
          to label %22 unwind label %43

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
          to label %24 unwind label %45

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void

25:                                               ; preds = %3
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %55

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %53

29:                                               ; preds = %10
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %51

31:                                               ; preds = %12
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %14
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %49

37:                                               ; preds = %16
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %18
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %49

43:                                               ; preds = %20
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %22
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %49

49:                                               ; preds = %47, %41, %35
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %51

51:                                               ; preds = %49, %29
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %53

53:                                               ; preds = %51, %27
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7
  br label %55

55:                                               ; preds = %53, %25
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %56
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ChildNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDeclImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDeclImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDeclImpl17reinitXMLDeclImplEv() #0 align 2 !prof !35 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L4gNamE, align 8, !tbaa !51
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #7
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L4gNamE, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XMLDeclImpl.cpp() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !48, i64 160}
!40 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !41, i64 0, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !46, i64 152, !50, i64 156, !48, i64 160}
!41 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !42, i64 0, !48, i64 48, !48, i64 56, !46, i64 64, !48, i64 72, !46, i64 80}
!42 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !43, i64 0, !48, i64 32, !48, i64 40}
!43 = !{!"_ZTSN11xercesc_2_78NodeImplE", !44, i64 0, !48, i64 16, !49, i64 24}
!44 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !45, i64 0}
!45 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !46, i64 8}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !38, i64 0}
!48 = !{!"any pointer", !47, i64 0}
!49 = !{!"short", !47, i64 0}
!50 = !{!"bool", !47, i64 0}
!51 = !{!48, !48, i64 0}
