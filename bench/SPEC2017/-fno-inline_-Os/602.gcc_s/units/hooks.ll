; ModuleID = 'hooks.c'
source_filename = "hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_void() local_unnamed_addr #0 !prof !35 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_void_false() local_unnamed_addr #0 !prof !36 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_void_true() local_unnamed_addr #0 !prof !37 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_bool_false(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_int_const_int_true(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !38 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_false(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_const_rtx_false(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_const_rtx_true(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !39 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_FILEptr_constcharptr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_false(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_true(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 !prof !38 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_constcharptr_size_t_false(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_size_t_constcharptr_int_true(i64 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 !prof !38 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_can_output_mi_thunk_no_vcall(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 !prof !38 {
  %5 = icmp eq i64 %2, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_const_tree_0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_const_tree_const_tree_1(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_rtx_0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_rtx_bool_0(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_size_t_constcharptr_int_0(i64 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 !prof !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_uint_uint_constcharptrptr_0(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !40 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_constcharptr(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_tree_treeptr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !41 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !42 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_true(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_true(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !43 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_tree_false(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_tree_true(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_bool_false(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_rtx_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_uintp_uintp_false(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_rtx_int_int_intp_bool_false(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !38 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @hook_rtx_rtx_identity(ptr noundef readnone returned %0) local_unnamed_addr #0 !prof !38 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_rtx_rtx_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_rtx_tree_int_null(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @hook_tree_tree_tree_tree_3rd_identity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef readnone returned %2) local_unnamed_addr #0 !prof !38 {
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_tree_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !44 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_bool_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !45 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_rtx_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_tree_const_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !46 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_int_const_tree_null(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 !prof !47 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_int_const_tree_const_tree_null(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 !prof !48 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_const_tree_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !49 {
  ret ptr null
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 6655}
!36 = !{!"function_entry_count", i64 127774}
!37 = !{!"function_entry_count", i64 1305682}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!"function_entry_count", i64 219}
!40 = !{!"function_entry_count", i64 164215}
!41 = !{!"function_entry_count", i64 167312}
!42 = !{!"function_entry_count", i64 127516}
!43 = !{!"function_entry_count", i64 188258}
!44 = !{!"function_entry_count", i64 56748}
!45 = !{!"function_entry_count", i64 529667}
!46 = !{!"function_entry_count", i64 745906}
!47 = !{!"function_entry_count", i64 152822}
!48 = !{!"function_entry_count", i64 264789}
!49 = !{!"function_entry_count", i64 829827}
