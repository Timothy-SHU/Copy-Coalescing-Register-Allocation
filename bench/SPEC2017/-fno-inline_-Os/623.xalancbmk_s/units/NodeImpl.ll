; ModuleID = 'NodeImpl.cpp'
source_filename = "NodeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>

$_ZN11xercesc_2_78NodeImpl10isReadOnlyEb = comdat any

$_ZN11xercesc_2_78NodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_78NodeImpl11hasUserDataEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_78NodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_78NodeImpl8isIdAttrEv = comdat any

$_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv = comdat any

$_ZN11xercesc_2_78NodeImpl11hasUserDataEb = comdat any

@_ZTVN11xercesc_2_78NodeImplE = dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78NodeImplE, ptr @_ZN11xercesc_2_78NodeImplD2Ev, ptr @_ZN11xercesc_2_78NodeImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78NodeImpl4itemEj, ptr @_ZN11xercesc_2_78NodeImpl9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv, ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv, ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_, ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_78NodeImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78NodeImplE = dso_local constant [25 x i8] c"N11xercesc_2_78NodeImplE\00", align 1
@_ZTIN11xercesc_2_712NodeListImplE = external constant ptr
@_ZTIN11xercesc_2_78NodeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78NodeImplE, ptr @_ZTIN11xercesc_2_712NodeListImplE }, align 8
@_ZN11xercesc_2_7L15nodeImplCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_78NodeImpl8READONLYE = dso_local local_unnamed_addr constant i16 1, align 2
@_ZN11xercesc_2_78NodeImpl8SYNCDATAE = dso_local local_unnamed_addr constant i16 2, align 2
@_ZN11xercesc_2_78NodeImpl12SYNCCHILDRENE = dso_local local_unnamed_addr constant i16 4, align 2
@_ZN11xercesc_2_78NodeImpl5OWNEDE = dso_local local_unnamed_addr constant i16 8, align 2
@_ZN11xercesc_2_78NodeImpl10FIRSTCHILDE = dso_local local_unnamed_addr constant i16 16, align 2
@_ZN11xercesc_2_78NodeImpl9SPECIFIEDE = dso_local local_unnamed_addr constant i16 32, align 2
@_ZN11xercesc_2_78NodeImpl11IGNORABLEWSE = dso_local local_unnamed_addr constant i16 64, align 2
@_ZN11xercesc_2_78NodeImpl8SETVALUEE = dso_local local_unnamed_addr constant i16 128, align 2
@_ZN11xercesc_2_78NodeImpl7ID_ATTRE = dso_local local_unnamed_addr constant i16 256, align 2
@_ZN11xercesc_2_78NodeImpl8USERDATAE = dso_local local_unnamed_addr constant i16 512, align 2
@_ZN11xercesc_2_78NodeImpl9HASSTRINGE = dso_local local_unnamed_addr constant i16 1024, align 2
@_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@_ZN11xercesc_2_7L7s_xmlnsE = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"http://www.w3.org/2000/xmlns/\00", align 1
@_ZN11xercesc_2_7L10s_xmlnsURIE = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@_ZN11xercesc_2_7L5s_xmlE = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@_ZN11xercesc_2_7L8s_xmlURIE = internal global ptr null, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_NodeImpl.cpp, ptr null }]

@_ZN11xercesc_2_78NodeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78NodeImplD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %0) #12
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl4itemEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78NodeImpl9getLengthEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds ptr, ptr %2, i64 46
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(168) %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds ptr, ptr %2, i64 46
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 15
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(168) %5) #12
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 31
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, ptr noundef null) #12
  ret ptr %6
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(26) %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  br i1 %2, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %4, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 46
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(26) %4) #12
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ %4, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds ptr, ptr %4, i64 26
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = getelementptr inbounds ptr, ptr %8, i64 68
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull %0) #12
  br label %12

12:                                               ; preds = %1, %3
  %13 = phi ptr [ %11, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #12
          to label %6 unwind label %10

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
          to label %9 unwind label %7

7:                                                ; preds = %6
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %14

9:                                                ; preds = %6
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %18 unwind label %12

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %16

14:                                               ; preds = %7, %10
  %15 = phi { ptr, i32 } [ %11, %10 ], [ %8, %7 ]
  call void @__cxa_free_exception(ptr %5) #13
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  resume { ptr, i32 } %17

18:                                               ; preds = %9
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #12
          to label %5 unwind label %9

5:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
          to label %8 unwind label %6

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %13

8:                                                ; preds = %5
  invoke void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %17 unwind label %11

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %13

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %15

13:                                               ; preds = %6, %9
  %14 = phi { ptr, i32 } [ %10, %9 ], [ %7, %6 ]
  call void @__cxa_free_exception(ptr %4) #13
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi { ptr, i32 } [ %12, %11 ], [ %14, %13 ]
  resume { ptr, i32 } %16

17:                                               ; preds = %8
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #12
          to label %6 unwind label %10

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
          to label %9 unwind label %7

7:                                                ; preds = %6
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %14

9:                                                ; preds = %6
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %18 unwind label %12

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %16

14:                                               ; preds = %7, %10
  %15 = phi { ptr, i32 } [ %11, %10 ], [ %8, %7 ]
  call void @__cxa_free_exception(ptr %5) #13
  br label %16

16:                                               ; preds = %12, %14
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  resume { ptr, i32 } %17

18:                                               ; preds = %9
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 zeroext %2) unnamed_addr #4 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78NodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds ptr, ptr %7, i64 67
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0, ptr noundef %1) #12
  %10 = icmp ne ptr %1, null
  tail call void @_ZN11xercesc_2_78NodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %10) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(26) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %11 = load ptr, ptr %1, align 8, !tbaa !36
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1) #12
          to label %14 unwind label %25

14:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %15 unwind label %27

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.1) #12
          to label %16 unwind label %29

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
          to label %17 unwind label %31

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %18 = load ptr, ptr %1, align 8, !tbaa !36
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(26) %1) #12
          to label %21 unwind label %33

21:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
          to label %22 unwind label %35

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.2) #12
          to label %23 unwind label %37

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10) #12
          to label %24 unwind label %39

24:                                               ; preds = %23
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %53

27:                                               ; preds = %14
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %51

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %49

31:                                               ; preds = %16
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %47

33:                                               ; preds = %17
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %45

35:                                               ; preds = %21
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %22
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %23
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  br label %49

49:                                               ; preds = %47, %29
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %51

51:                                               ; preds = %49, %27
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br label %53

53:                                               ; preds = %51, %25
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !35 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() #12
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #12
          to label %5 unwind label %9

5:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
          to label %8 unwind label %6

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %13

8:                                                ; preds = %5
  invoke void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %17 unwind label %11

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %13

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %15

13:                                               ; preds = %6, %9
  %14 = phi { ptr, i32 } [ %10, %9 ], [ %7, %6 ]
  call void @__cxa_free_exception(ptr %4) #13
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi { ptr, i32 } [ %12, %11 ], [ %14, %13 ]
  resume { ptr, i32 } %16

17:                                               ; preds = %8
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !35 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !39
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  br i1 %2, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %4, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 46
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(26) %4) #12
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ %4, %1 ]
  ret ptr %11
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #12
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 0, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !48
  %6 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  %8 = load i32, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !49
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #12
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_78NodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #12
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !48
  %7 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  %9 = load i32, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !49
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !49
  %11 = load ptr, ptr %1, align 8, !tbaa !36
  %12 = getelementptr inbounds ptr, ptr %11, i64 26
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(26) %1) #12
          to label %15 unwind label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !39
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #12
  ret void

17:                                               ; preds = %2
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #14
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -2
  %6 = zext i1 %1 to i16
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !47
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -9
  %6 = select i1 %1, i16 8, i16 0
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !36
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds ptr, ptr %4, i64 36
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef null) #12
          to label %7 unwind label %10

7:                                                ; preds = %3, %1
  %8 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !49
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #14
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !47
  %4 = and i16 %3, 512
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !36
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !36
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %17 = tail call noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %16) #12
  tail call void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull %0) #12
  br label %18

18:                                               ; preds = %12, %10, %5
  tail call void @_ZN11xercesc_2_78NodeImpl10isReadOnlyEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #12
  %19 = load ptr, ptr %0, align 8, !tbaa !36
  %20 = getelementptr inbounds ptr, ptr %19, i64 20
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %18, %38
  %25 = phi ptr [ %29, %38 ], [ %22, %18 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  %27 = getelementptr inbounds ptr, ptr %26, i64 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(26) %25) #12
  %30 = load ptr, ptr %0, align 8, !tbaa !36
  %31 = getelementptr inbounds ptr, ptr %30, i64 32
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %25) #12
  %34 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %25, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !48
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %25) #12
  br label %38

38:                                               ; preds = %24, %37
  %39 = icmp eq ptr %29, null
  br i1 %39, label %40, label %24, !llvm.loop !50

40:                                               ; preds = %38, %18
  %41 = load ptr, ptr %0, align 8, !tbaa !36
  %42 = getelementptr inbounds ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(26) %0) #14
  br label %44

44:                                               ; preds = %3, %1, %40
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !47
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl8isIdAttrEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !47
  %4 = and i16 %3, 256
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12getNodeIDMapEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -513
  %6 = select i1 %1, i16 512, i16 0
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L7s_xmlnsE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv() #4 align 2 !prof !35 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L5s_xmlE, align 8, !tbaa !57
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L5s_xmlE, align 8, !tbaa !57
  %5 = load ptr, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !57
  %9 = load ptr, ptr @_ZN11xercesc_2_7L7s_xmlnsE, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_7L7s_xmlnsE, align 8, !tbaa !57
  %13 = load ptr, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %12
  store ptr null, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L10s_xmlnsURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L5s_xmlE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !35 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.6, ptr noundef nonnull @_ZN11xercesc_2_7L8s_xmlURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef signext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L5s_xmlE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.6, ptr noundef nonnull @_ZN11xercesc_2_7L8s_xmlURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
          to label %13 unwind label %23

13:                                               ; preds = %3
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12) #12
          to label %14 unwind label %23

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L7s_xmlnsE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
          to label %16 unwind label %25

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
          to label %17 unwind label %25

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L10s_xmlnsURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE) #12
          to label %19 unwind label %27

19:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
          to label %20 unwind label %27

20:                                               ; preds = %19
  %21 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #12
          to label %22 unwind label %29

22:                                               ; preds = %20
  br i1 %21, label %92, label %31

23:                                               ; preds = %13, %3
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %100

25:                                               ; preds = %16, %14
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %98

27:                                               ; preds = %19, %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %96

29:                                               ; preds = %76, %73, %56, %53, %34, %31, %20
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %94

31:                                               ; preds = %22
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
          to label %33 unwind label %29

33:                                               ; preds = %31
  br i1 %32, label %34, label %51

34:                                               ; preds = %33
  %35 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
          to label %36 unwind label %29

36:                                               ; preds = %34
  br i1 %35, label %37, label %39

37:                                               ; preds = %36
  %38 = load ptr, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !57
  br label %92

39:                                               ; preds = %36
  %40 = call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #12
          to label %41 unwind label %45

41:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %40, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
          to label %44 unwind label %42

42:                                               ; preds = %41
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %49

44:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %102 unwind label %47

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %49

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %94

49:                                               ; preds = %42, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %43, %42 ]
  call void @__cxa_free_exception(ptr %40) #13
  br label %94

51:                                               ; preds = %33
  %52 = icmp eq i16 %2, 2
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
          to label %55 unwind label %29

55:                                               ; preds = %53
  br i1 %54, label %56, label %73

56:                                               ; preds = %55
  %57 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %58 unwind label %29

58:                                               ; preds = %56
  br i1 %57, label %59, label %61

59:                                               ; preds = %58
  %60 = load ptr, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !57
  br label %92

61:                                               ; preds = %58
  %62 = call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #12
          to label %63 unwind label %67

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %62, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
          to label %66 unwind label %64

64:                                               ; preds = %63
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %71

66:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %102 unwind label %69

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %71

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %94

71:                                               ; preds = %64, %67
  %72 = phi { ptr, i32 } [ %68, %67 ], [ %65, %64 ]
  call void @__cxa_free_exception(ptr %62) #13
  br label %94

73:                                               ; preds = %55, %51
  %74 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #12
          to label %75 unwind label %29

75:                                               ; preds = %73
  br i1 %74, label %80, label %76

76:                                               ; preds = %75
  %77 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
          to label %78 unwind label %29

78:                                               ; preds = %76
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %78, %75
  %81 = call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #12
          to label %82 unwind label %86

82:                                               ; preds = %80
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %81, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10) #12
          to label %85 unwind label %83

83:                                               ; preds = %82
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %90

85:                                               ; preds = %82
  invoke void @__cxa_throw(ptr nonnull %81, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #15
          to label %102 unwind label %88

86:                                               ; preds = %80
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %90

88:                                               ; preds = %85
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %94

90:                                               ; preds = %83, %86
  %91 = phi { ptr, i32 } [ %87, %86 ], [ %84, %83 ]
  call void @__cxa_free_exception(ptr %81) #13
  br label %94

92:                                               ; preds = %78, %22, %59, %37
  %93 = phi ptr [ %38, %37 ], [ %60, %59 ], [ %1, %22 ], [ %1, %78 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %93

94:                                               ; preds = %88, %69, %47, %90, %71, %49, %29
  %95 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ], [ %30, %29 ], [ %72, %71 ], [ %70, %69 ], [ %91, %90 ], [ %89, %88 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  br label %96

96:                                               ; preds = %94, %27
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  br label %98

98:                                               ; preds = %96, %25
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %100

100:                                              ; preds = %98, %23
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  resume { ptr, i32 } %101

102:                                              ; preds = %85, %66, %44
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_NodeImpl.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }

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
!39 = !{!40, !45, i64 16}
!40 = !{!"_ZTSN11xercesc_2_78NodeImplE", !41, i64 0, !45, i64 16, !46, i64 24}
!41 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !42, i64 0}
!42 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !43, i64 8}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !38, i64 0}
!45 = !{!"any pointer", !44, i64 0}
!46 = !{!"short", !44, i64 0}
!47 = !{!40, !46, i64 24}
!48 = !{!42, !43, i64 8}
!49 = !{!43, !43, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !45, i64 112}
!53 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !54, i64 0, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !43, i64 152, !56, i64 156, !45, i64 160}
!54 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !55, i64 0, !45, i64 48, !45, i64 56, !43, i64 64, !45, i64 72, !43, i64 80}
!55 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !40, i64 0, !45, i64 32, !45, i64 40}
!56 = !{!"bool", !44, i64 0}
!57 = !{!45, !45, i64 0}
