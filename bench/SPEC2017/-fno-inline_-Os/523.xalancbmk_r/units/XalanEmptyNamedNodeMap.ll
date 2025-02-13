; ModuleID = 'XalanEmptyNamedNodeMap.cpp'
source_filename = "XalanEmptyNamedNodeMap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN11xalanc_1_1022XalanEmptyNamedNodeMapE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanEmptyNamedNodeMapE, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD2Ev, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD0Ev, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap12setNamedItemEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap4itemEj, ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap12getNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap9getLengthEv, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap15removeNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap14getNamedItemNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap14setNamedItemNSEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap17removeNamedItemNSERKNS_14XalanDOMStringES3_] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022XalanEmptyNamedNodeMapE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanEmptyNamedNodeMapE\00", align 1
@_ZTIN11xalanc_1_1017XalanNamedNodeMapE = external constant ptr
@_ZTIN11xalanc_1_1022XalanEmptyNamedNodeMapE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanEmptyNamedNodeMapE, ptr @_ZTIN11xalanc_1_1017XalanNamedNodeMapE }, align 8

@_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC2Ev
@_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD2Ev
@_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC2ERKS0_

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEmptyNamedNodeMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !41 {
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !41 {
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanEmptyNamedNodeMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !41 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017XalanNamedNodeMapaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1017XalanNamedNodeMapaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMapeqERKS0_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !41 {
  ret i1 true
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap12setNamedItemEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #7
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

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap4itemEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #5 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap12getNamedItemERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #5 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap9getLengthEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !41 {
  ret i32 0
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap15removeNamedItemERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #7
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1022XalanEmptyNamedNodeMap14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #5 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap14setNamedItemNSEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #7
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

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMap17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #7
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!35 = !{ptr @_ZN11xalanc_1_1022XalanEmptyNamedNodeMapC2Ev, ptr @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 1}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"function_entry_count", i64 0}
