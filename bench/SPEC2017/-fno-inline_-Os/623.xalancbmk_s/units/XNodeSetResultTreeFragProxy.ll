; ModuleID = 'XNodeSetResultTreeFragProxy.cpp'
source_filename = "XNodeSetResultTreeFragProxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

@_ZTVN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local unnamed_addr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XNodeSetResultTreeFragProxyE, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD0Ev, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13getFirstChildEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy12getLastChildEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy9cloneNodeEb, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13hasChildNodesEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy5cloneEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local constant [45 x i8] c"N11xalanc_1_1027XNodeSetResultTreeFragProxyE\00", align 1
@_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE = external constant ptr
@_ZTIN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE, ptr @_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr

@_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE
@_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #6
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !40
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef 0) #8
  br label %15

15:                                               ; preds = %1, %9
  %16 = phi ptr [ %14, %9 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !40
  %11 = add i32 %7, -1
  %12 = load ptr, ptr %10, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 17
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %11) #8
  br label %16

16:                                               ; preds = %1, %9
  %17 = phi ptr [ %15, %9 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #8
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3) #8
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef i64 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy5cloneEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #8
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #2 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [31 x ptr] }, ptr @_ZTVN11xalanc_1_1027XNodeSetResultTreeFragProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { builtin nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!35 = distinct !{!36, !37}
!36 = !{ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !45, i64 8}
!41 = !{!"_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE", !42, i64 0, !45, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE", !43, i64 0}
!43 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !44, i64 0}
!44 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !47, i64 0}
!50 = !{!"function_entry_count", i64 2}
!51 = !{!45, !45, i64 0}
