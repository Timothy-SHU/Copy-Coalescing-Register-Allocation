; ModuleID = 'source/base/conditional_ostream.cc'
source_filename = "source/base/conditional_ostream.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::ConditionalOStream" = type <{ ptr, i8, [7 x i8] }>

@_ZN6dealii18ConditionalOStreamC1ERSob = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN6dealii18ConditionalOStreamC2ERSob

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii18ConditionalOStreamC2ERSob(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = zext i1 %2 to i8
  store ptr %1, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.dealii::ConditionalOStream", ptr %0, i64 0, i32 1
  store i8 %4, ptr %5, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii18ConditionalOStream13set_conditionEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(9) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.dealii::ConditionalOStream", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6dealii18ConditionalOStream9is_activeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0) local_unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.dealii::ConditionalOStream", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !39, !range !42, !noundef !43
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN6dealii18ConditionalOStreamE", !36, i64 0, !41, i64 8}
!41 = !{!"bool", !37, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
