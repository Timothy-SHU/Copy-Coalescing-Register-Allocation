; ModuleID = 'XNodeSetResultTreeFragProxy.cpp'
source_filename = "XNodeSetResultTreeFragProxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XNodeSetResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }

@_ZTVN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local unnamed_addr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XNodeSetResultTreeFragProxyE, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev, ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD0Ev, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13getFirstChildEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy12getLastChildEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy9cloneNodeEb, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13hasChildNodesEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv, ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv, ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy5cloneEb] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local constant [45 x i8] c"N11xalanc_1_1027XNodeSetResultTreeFragProxyE\00", align 1
@_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE = external constant ptr
@_ZTIN11xalanc_1_1027XNodeSetResultTreeFragProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE, ptr @_ZTIN11xalanc_1_1030XObjectResultTreeFragProxyBaseE }, align 8

@_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC1ERKNS_12XNodeSetBaseE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE
@_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [31 x ptr] }, ptr @_ZTVN11xalanc_1_1027XNodeSetResultTreeFragProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !42
  ret void
}

declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef 0)
  br label %15

15:                                               ; preds = %1, %9
  %16 = phi ptr [ %14, %9 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  %11 = add i32 %7, -1
  %12 = load ptr, ptr %10, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 17
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %11)
  br label %16

16:                                               ; preds = %1, %9
  %17 = phi ptr [ %15, %9 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #8
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #6
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XNodeSetResultTreeFragProxy", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1027XNodeSetResultTreeFragProxy5cloneEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #6
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #8
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #6
  resume { ptr, i32 } %6
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12insertBeforeEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12replaceChildEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11removeChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase11appendChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase12setNodeValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9normalizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase11isSupportedERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBase9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i64 @_ZNK11xalanc_1_1030XObjectResultTreeFragProxyBase8getIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyC2ERKNS_12XNodeSetBaseE, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1027XNodeSetResultTreeFragProxyD2Ev, ptr @_ZN11xalanc_1_1030XObjectResultTreeFragProxyBaseD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !41, i64 0}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !43, i64 8}
!47 = !{!"_ZTSN11xalanc_1_1027XNodeSetResultTreeFragProxyE", !48, i64 0, !43, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1030XObjectResultTreeFragProxyBaseE", !49, i64 0}
!49 = !{!"_ZTSN11xalanc_1_1021XalanDocumentFragmentE", !50, i64 0}
!50 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
