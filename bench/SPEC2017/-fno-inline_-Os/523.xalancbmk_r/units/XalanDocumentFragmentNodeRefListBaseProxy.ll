; ModuleID = 'XalanDocumentFragmentNodeRefListBaseProxy.cpp'
source_filename = "XalanDocumentFragmentNodeRefListBaseProxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy" = type { %"class.xalanc_1_10::NodeRefListBase", ptr }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }

@_ZTVN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE, ptr @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD2Ev, ptr @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD0Ev, ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj, ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv, ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy7indexOfEPKNS_9XalanNodeE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE = dso_local constant [59 x i8] c"N11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE\00", align 1
@_ZTIN11xalanc_1_1015NodeRefListBaseE = external constant ptr
@_ZTIN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE, ptr @_ZTIN11xalanc_1_1015NodeRefListBaseE }, align 8

@_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKNS_21XalanDocumentFragmentE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC2ERKNS_21XalanDocumentFragmentE
@_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC2ERKS0_
@_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC2ERKNS_21XalanDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  store ptr %5, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1015NodeRefListBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i32 %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy9getLengthEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxy7indexOfEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef readnone %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDocumentFragmentNodeRefListBaseProxy", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp ne ptr %4, %1
  %6 = sext i1 %5 to i32
  ret i32 %6
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1041XalanDocumentFragmentNodeRefListBaseProxyE", !43, i64 0, !39, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
