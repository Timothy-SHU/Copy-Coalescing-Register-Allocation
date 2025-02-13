; ModuleID = 'XalanSourceTreeAttrNS.cpp'
source_filename = "XalanSourceTreeAttrNS.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanSourceTreeAttrNS" = type { %"class.xalanc_1_10::XalanSourceTreeAttr", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeAttr" = type { %"class.xalanc_1_10::XalanAttr", ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanAttr" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

@_ZTVN11xalanc_1_1021XalanSourceTreeAttrNSE = dso_local unnamed_addr constant { [35 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanSourceTreeAttrNSE, ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD2Ev, ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD0Ev, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeNameEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getNodeValueEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeTypeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getParentNodeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getChildNodesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getFirstChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLastChildEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr14getNextSiblingEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getAttributesEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS9cloneNodeEb, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13hasChildNodesEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr9normalizeEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS9getPrefixEv, ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS12getLocalNameEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr9isIndexedEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getIndexEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr7getNameEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getSpecifiedEv, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getValueEv, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr8setValueERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getOwnerElementEv] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XalanSourceTreeAttrNSE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanSourceTreeAttrNSE\00", align 1
@_ZTIN11xalanc_1_1019XalanSourceTreeAttrE = external constant ptr
@_ZTIN11xalanc_1_1021XalanSourceTreeAttrNSE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanSourceTreeAttrNSE, ptr @_ZTIN11xalanc_1_1019XalanSourceTreeAttrE }, align 8

@_ZN11xalanc_1_1021XalanSourceTreeAttrNSC1ERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm
@_ZN11xalanc_1_1021XalanSourceTreeAttrNSD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD2Ev
@_ZN11xalanc_1_1021XalanSourceTreeAttrNSC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKS0_b
@_ZN11xalanc_1_1021XalanSourceTreeAttrNSC1ERKNS_19XalanSourceTreeAttrEb = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKNS_19XalanSourceTreeAttrEb

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i64 noundef %7) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i64 noundef %7) #7
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanSourceTreeAttrNSE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !42
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) #7
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanSourceTreeAttrNSE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  store ptr %6, ptr %4, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  store ptr %9, ptr %7, align 8, !tbaa !42
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  store ptr %12, ptr %10, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKNS_19XalanSourceTreeAttrEb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) #7
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanSourceTreeAttrNSE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = load ptr, ptr %1, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 24
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %8 unwind label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !42
  %10 = load ptr, ptr %1, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %14 unwind label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 2
  store ptr %13, ptr %15, align 8, !tbaa !42
  %16 = load ptr, ptr %1, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 22
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
          to label %20 unwind label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 3
  store ptr %19, ptr %21, align 8, !tbaa !42
  ret void

22:                                               ; preds = %14, %8, %3
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  resume { ptr, i32 } %23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #7
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #6 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #6 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XalanSourceTreeAttrNS12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #6 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeAttrNS", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1019XalanSourceTreeAttr11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12insertBeforeEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr12replaceChildEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11removeChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1019XalanSourceTreeAttr11appendChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttr12setNodeValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttr9normalizeEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr11isSupportedERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttr9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getIndexEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1019XalanSourceTreeAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1019XalanSourceTreeAttr8setValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1019XalanSourceTreeAttr15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSC2ERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrC2ERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm, i64 3}
!36 = !{ptr @_ZN11xalanc_1_1021XalanSourceTreeAttrNSD2Ev, ptr @_ZN11xalanc_1_1019XalanSourceTreeAttrD2Ev, i64 3}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 3}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !41, i64 0}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !43, i64 40}
!47 = !{!"_ZTSN11xalanc_1_1021XalanSourceTreeAttrNSE", !48, i64 0, !43, i64 40, !43, i64 48, !43, i64 56}
!48 = !{!"_ZTSN11xalanc_1_1019XalanSourceTreeAttrE", !49, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !51, i64 32}
!49 = !{!"_ZTSN11xalanc_1_109XalanAttrE", !50, i64 0}
!50 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!51 = !{!"long", !44, i64 0}
!52 = !{!47, !43, i64 48}
!53 = !{!47, !43, i64 56}
