; ModuleID = 'debug.c'
source_filename = "debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@do_nothing_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks { ptr @debug_nothing_charstar, ptr @debug_nothing_charstar, ptr @debug_nothing_void, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int, ptr @debug_nothing_int_int, ptr @debug_nothing_int_int, ptr @debug_true_const_tree, ptr @debug_nothing_int_charstar_int_bool, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_tree, ptr @debug_nothing_int, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_tree_tree_tree_bool, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_rtx, ptr @debug_nothing_int, ptr @debug_nothing_rtx, ptr @debug_nothing_void, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_rtx_rtx, ptr @debug_nothing_uid, ptr @debug_nothing_tree_tree, i32 0 }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_charstar(ptr nocapture readnone %0) #0 !prof !34 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_void() #0 !prof !35 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_charstar(i32 %0, ptr nocapture readnone %1) #0 !prof !36 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int(i32 %0) #0 !prof !37 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_int(i32 %0, i32 %1) #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @debug_true_const_tree(ptr nocapture readnone %0) #0 !prof !39 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_charstar_int_bool(i32 %0, ptr nocapture readnone %1, i32 %2, i8 zeroext %3) #0 !prof !40 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree(ptr nocapture readnone %0) #0 !prof !41 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_int(ptr nocapture readnone %0, i32 %1) #0 !prof !42 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_tree_tree_bool(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 zeroext %3) #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_rtx(ptr nocapture readnone %0) #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_rtx_rtx(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_uid(i32 %0) #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_tree(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 !prof !38 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 2}
!35 = !{!"function_entry_count", i64 1}
!36 = !{!"function_entry_count", i64 114}
!37 = !{!"function_entry_count", i64 38}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!"function_entry_count", i64 1163}
!40 = !{!"function_entry_count", i64 225903}
!41 = !{!"function_entry_count", i64 18057}
!42 = !{!"function_entry_count", i64 755}
