; ModuleID = 'NodeImpl.cpp'
source_filename = "NodeImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::DOMString" = type { ptr }

$__clang_call_terminate = comdat any

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
@_ZTVN11xercesc_2_78NodeImplE = dso_local unnamed_addr constant { [49 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78NodeImplE, ptr @_ZN11xercesc_2_78NodeImplD2Ev, ptr @_ZN11xercesc_2_78NodeImplD0Ev, ptr @_ZN11xercesc_2_78NodeImpl10referencedEv, ptr @_ZN11xercesc_2_78NodeImpl12unreferencedEv, ptr @_ZN11xercesc_2_78NodeImpl4itemEj, ptr @_ZN11xercesc_2_78NodeImpl9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_78NodeImpl7changedEv, ptr @_ZN11xercesc_2_78NodeImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv, ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv, ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv, ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv, ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv, ptr @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_, ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_78NodeImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_78NodeImpl9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv] }, align 8
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
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78NodeImplE = dso_local constant [25 x i8] c"N11xercesc_2_78NodeImplE\00", align 1
@_ZTIN11xercesc_2_712NodeListImplE = external constant ptr
@_ZTIN11xercesc_2_78NodeImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78NodeImplE, ptr @_ZTIN11xercesc_2_712NodeListImplE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_NodeImpl.cpp, ptr null }]

@_ZN11xercesc_2_78NodeImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78NodeImplD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 0, ptr %3, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !49
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !50
  %6 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  %8 = load i32, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !51
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !51
  ret void
}

declare void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712NodeListImplC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %6 = and i16 %4, -2
  store i16 %6, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !50
  %8 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  %10 = load i32, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !51
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @_ZN11xercesc_2_78NodeImpl15gTotalNodeImplsE, align 4, !tbaa !51
  %12 = load ptr, ptr %1, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 26
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %16 unwind label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %15, ptr %17, align 8, !tbaa !49
  %18 = load i16, ptr %5, align 8
  %19 = and i16 %18, -9
  store i16 %19, ptr %5, align 8, !tbaa !41
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #12
  resume { ptr, i32 } %21
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplD2Ev(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [49 x ptr] }, ptr @_ZTVN11xercesc_2_78NodeImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = and i16 %3, 512
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = and i16 %3, 8
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  br i1 %8, label %16, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %10, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 46
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(26) %10)
          to label %16 unwind label %27

16:                                               ; preds = %6, %11
  %17 = phi ptr [ %15, %11 ], [ %10, %6 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 67
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(168) %17, ptr noundef nonnull %0, ptr noundef null)
          to label %21 unwind label %27

21:                                               ; preds = %16
  %22 = load i16, ptr %2, align 8
  %23 = and i16 %22, -513
  store i16 %23, ptr %2, align 8, !tbaa !41
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr @_ZN11xercesc_2_78NodeImpl14gLiveNodeImplsE, align 4, !tbaa !51
  tail call void @_ZN11xercesc_2_712NodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #12
  ret void

27:                                               ; preds = %11, %16
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImplD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl14isDocumentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl7changedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 46
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(168) %5)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78NodeImpl7changesEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 46
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 15
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(168) %5)
  ret i32 %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 31
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1, ptr noundef null)
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !41
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(26) %0)
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i16, ptr %4, align 8, !tbaa !41
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 26
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %0)
  br label %24

24:                                               ; preds = %17, %13, %8
  %25 = load i16, ptr %4, align 8
  %26 = and i16 %25, -2
  store i16 %26, ptr %4, align 8, !tbaa !41
  %27 = load ptr, ptr %0, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 20
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %24, %46
  %33 = phi ptr [ %37, %46 ], [ %30, %24 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 22
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(26) %33)
  %38 = load ptr, ptr %0, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 32
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %33)
  %42 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %33, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !50
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %33)
  br label %46

46:                                               ; preds = %32, %45
  %47 = icmp eq ptr %37, null
  br i1 %47, label %48, label %32, !llvm.loop !57

48:                                               ; preds = %46, %24
  %49 = load ptr, ptr %0, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(26) %0) #12
  br label %52

52:                                               ; preds = %3, %1, %48
  ret void
}

declare void @_ZN11xercesc_2_79NodeIDMap6removeEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl13getChildNodesEv(ptr noundef nonnull readnone returned align 8 dereferenceable(26) %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_78NodeImpl9getLengthEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  br i1 %5, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 46
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi ptr [ %12, %8 ], [ %7, %1 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  br i1 %5, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %7, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 46
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi ptr [ %12, %8 ], [ %7, %1 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #9 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !41
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78NodeImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !41
  %4 = and i16 %3, 512
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 68
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef nonnull %0)
  br label %15

15:                                               ; preds = %1, %6
  %16 = phi ptr [ %14, %6 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl12insertBeforeEPS0_S1_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %6 unwind label %8

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %7 unwind label %10

7:                                                ; preds = %6
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %18 unwind label %10

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %13

10:                                               ; preds = %7, %6
  %11 = phi i1 [ false, %7 ], [ true, %6 ]
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi { ptr, i32 } [ %12, %10 ], [ %9, %8 ]
  %15 = phi i1 [ %11, %10 ], [ true, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @__cxa_free_exception(ptr %5) #12
  br label %17

17:                                               ; preds = %13, %16
  resume { ptr, i32 } %14

18:                                               ; preds = %7
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78NodeImpl4itemEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl11removeChildEPS0_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %5 unwind label %7

5:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %6 unwind label %9

6:                                                ; preds = %5
  invoke void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %17 unwind label %9

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %12

9:                                                ; preds = %6, %5
  %10 = phi i1 [ false, %6 ], [ true, %5 ]
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi { ptr, i32 } [ %11, %9 ], [ %8, %7 ]
  %14 = phi i1 [ %10, %9 ], [ true, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @__cxa_free_exception(ptr %4) #12
  br label %16

16:                                               ; preds = %12, %15
  resume { ptr, i32 } %13

17:                                               ; preds = %6
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xercesc_2_78NodeImpl12replaceChildEPS0_S1_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %6 unwind label %8

6:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %7 unwind label %10

7:                                                ; preds = %6
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %18 unwind label %10

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %13

10:                                               ; preds = %7, %6
  %11 = phi i1 [ false, %7 ], [ true, %6 ]
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi { ptr, i32 } [ %12, %10 ], [ %9, %8 ]
  %15 = phi i1 [ %11, %10 ], [ true, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @__cxa_free_exception(ptr %5) #12
  br label %17

17:                                               ; preds = %13, %16
  resume { ptr, i32 } %14

18:                                               ; preds = %7
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl10referencedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0)
  tail call void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef %5)
  ret void
}

declare void @_ZN11xercesc_2_714RefCountedImpl6addRefEPS0_(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(26) %0)
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %0)
  tail call void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef %5)
  ret void
}

declare void @_ZN11xercesc_2_714RefCountedImpl9removeRefEPS0_(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl11setReadOnlyEbb(ptr nocapture noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1, i1 zeroext %2) unnamed_addr #9 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -2
  %7 = zext i1 %1 to i16
  %8 = or disjoint i16 %6, %7
  store i16 %8, ptr %4, align 8, !tbaa !41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 67
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0, ptr noundef %1)
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, -513
  %14 = select i1 %10, i16 0, i16 512
  %15 = or disjoint i16 %13, %14
  store i16 %15, ptr %11, align 8, !tbaa !41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(26) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %14 unwind label %25

14:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %15 unwind label %27

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.1)
          to label %16 unwind label %29

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %17 unwind label %31

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %18 = load ptr, ptr %1, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %21 unwind label %33

21:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %22 unwind label %35

22:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.2)
          to label %23 unwind label %37

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %24 unwind label %39

24:                                               ; preds = %23
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
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
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %49

49:                                               ; preds = %47, %29
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %51

51:                                               ; preds = %49, %27
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %28, %27 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  br label %53

53:                                               ; preds = %51, %25
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  resume { ptr, i32 } %54
}

declare void @_ZN11xercesc_2_7plERKNS_9DOMStringES2_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_79DOMStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv()
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %5
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xercesc_2_721DOM_DOMImplementation17getImplementationEv() local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_721DOM_DOMImplementation10hasFeatureERKNS_9DOMStringES3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #1 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %5 unwind label %7

5:                                                ; preds = %2
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %6 unwind label %9

6:                                                ; preds = %5
  invoke void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %17 unwind label %9

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %12

9:                                                ; preds = %6, %5
  %10 = phi i1 [ false, %6 ], [ true, %5 ]
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi { ptr, i32 } [ %11, %9 ], [ %8, %7 ]
  %14 = phi i1 [ %10, %9 ], [ true, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @__cxa_free_exception(ptr %4) #12
  br label %16

16:                                               ; preds = %12, %15
  resume { ptr, i32 } %13

17:                                               ; preds = %6
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl14getXmlnsStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L7s_xmlnsE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L5s_xmlE, align 8, !tbaa !60
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L5s_xmlE, align 8, !tbaa !60
  %5 = load ptr, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #12
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !60
  %9 = load ptr, ptr @_ZN11xercesc_2_7L7s_xmlnsE, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %9) #12
  br label %12

12:                                               ; preds = %11, %8
  store ptr null, ptr @_ZN11xercesc_2_7L7s_xmlnsE, align 8, !tbaa !60
  %13 = load ptr, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %12
  store ptr null, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !60
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl17getXmlnsURIStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L10s_xmlnsURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl12getXmlStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L5s_xmlE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78NodeImpl15getXmlURIStringEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0) local_unnamed_addr #1 align 2 !prof !37 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.6, ptr noundef nonnull @_ZN11xercesc_2_7L8s_xmlURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78NodeImpl9mapPrefixERKNS_9DOMStringES3_s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef signext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.5, ptr noundef nonnull @_ZN11xercesc_2_7L5s_xmlE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.6, ptr noundef nonnull @_ZN11xercesc_2_7L8s_xmlURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
          to label %13 unwind label %23

13:                                               ; preds = %3
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %14 unwind label %23

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZN11xercesc_2_7L7s_xmlnsE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
          to label %16 unwind label %25

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %17 unwind label %25

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN11xercesc_2_7L10s_xmlnsURIE, ptr noundef nonnull @_ZN11xercesc_2_78NodeImpl14reinitNodeImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
          to label %19 unwind label %27

19:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %20 unwind label %27

20:                                               ; preds = %19
  %21 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null)
          to label %22 unwind label %29

22:                                               ; preds = %20
  br i1 %21, label %97, label %31

23:                                               ; preds = %13, %3
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %105

25:                                               ; preds = %16, %14
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %103

27:                                               ; preds = %19, %17
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %101

29:                                               ; preds = %79, %76, %57, %54, %34, %31, %20
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %99

31:                                               ; preds = %22
  %32 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %29

33:                                               ; preds = %31
  br i1 %32, label %34, label %52

34:                                               ; preds = %33
  %35 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %36 unwind label %29

36:                                               ; preds = %34
  br i1 %35, label %37, label %39

37:                                               ; preds = %36
  %38 = load ptr, ptr @_ZN11xercesc_2_7L8s_xmlURIE, align 8, !tbaa !60
  br label %97

39:                                               ; preds = %36
  %40 = call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0)
          to label %41 unwind label %43

41:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %40, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %42 unwind label %45

42:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %107 unwind label %45

43:                                               ; preds = %39
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %42, %41
  %46 = phi i1 [ false, %42 ], [ true, %41 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  %50 = phi i1 [ %46, %45 ], [ true, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br i1 %50, label %51, label %99

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %40) #12
  br label %99

52:                                               ; preds = %33
  %53 = icmp eq i16 %2, 2
  br i1 %53, label %54, label %76

54:                                               ; preds = %52
  %55 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %56 unwind label %29

56:                                               ; preds = %54
  br i1 %55, label %57, label %76

57:                                               ; preds = %56
  %58 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %59 unwind label %29

59:                                               ; preds = %57
  br i1 %58, label %60, label %62

60:                                               ; preds = %59
  %61 = load ptr, ptr @_ZN11xercesc_2_7L10s_xmlnsURIE, align 8, !tbaa !60
  br label %97

62:                                               ; preds = %59
  %63 = call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0)
          to label %64 unwind label %67

64:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %63, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %65 unwind label %69

65:                                               ; preds = %64
  invoke void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %66 unwind label %69

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %62
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %72

69:                                               ; preds = %65, %64
  %70 = phi i1 [ false, %65 ], [ true, %64 ]
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi { ptr, i32 } [ %71, %69 ], [ %68, %67 ]
  %74 = phi i1 [ %70, %69 ], [ true, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  call void @__cxa_free_exception(ptr %63) #12
  br label %99

76:                                               ; preds = %56, %52
  %77 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %78 unwind label %29

78:                                               ; preds = %76
  br i1 %77, label %83, label %79

79:                                               ; preds = %78
  %80 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %81 unwind label %29

81:                                               ; preds = %79
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %81, %78
  %84 = call ptr @__cxa_allocate_exception(i64 24) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0)
          to label %85 unwind label %88

85:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %84, i16 noundef signext 14, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %86 unwind label %90

86:                                               ; preds = %85
  invoke void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %87 unwind label %90

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %83
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %93

90:                                               ; preds = %86, %85
  %91 = phi i1 [ false, %86 ], [ true, %85 ]
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi { ptr, i32 } [ %92, %90 ], [ %89, %88 ]
  %95 = phi i1 [ %91, %90 ], [ true, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  call void @__cxa_free_exception(ptr %84) #12
  br label %99

97:                                               ; preds = %81, %22, %60, %37
  %98 = phi ptr [ %38, %37 ], [ %61, %60 ], [ %1, %22 ], [ %1, %81 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %98

99:                                               ; preds = %93, %96, %72, %75, %48, %51, %29
  %100 = phi { ptr, i32 } [ %49, %51 ], [ %49, %48 ], [ %30, %29 ], [ %73, %75 ], [ %73, %72 ], [ %94, %96 ], [ %94, %93 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  br label %101

101:                                              ; preds = %99, %27
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %103

103:                                              ; preds = %101, %25
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %105

105:                                              ; preds = %103, %23
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  resume { ptr, i32 } %106

107:                                              ; preds = %42
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_NodeImpl.cpp() #11 section ".text.startup" !prof !61 !PGOFuncName !62 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15nodeImplCleanupE)
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_NodeImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !48, i64 24}
!42 = !{!"_ZTSN11xercesc_2_78NodeImplE", !43, i64 0, !47, i64 16, !48, i64 24}
!43 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !45, i64 8}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !40, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"short", !46, i64 0}
!49 = !{!42, !47, i64 16}
!50 = !{!44, !45, i64 8}
!51 = !{!45, !45, i64 0}
!52 = !{!53, !47, i64 112}
!53 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !54, i64 0, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !45, i64 152, !56, i64 156, !47, i64 160}
!54 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !55, i64 0, !47, i64 48, !47, i64 56, !45, i64 64, !47, i64 72, !45, i64 80}
!55 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !42, i64 0, !47, i64 32, !47, i64 40}
!56 = !{!"bool", !46, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!47, !47, i64 0}
!61 = !{!"function_entry_count", i64 1}
!62 = !{!"NodeImpl.cpp;_GLOBAL__sub_I_NodeImpl.cpp"}
