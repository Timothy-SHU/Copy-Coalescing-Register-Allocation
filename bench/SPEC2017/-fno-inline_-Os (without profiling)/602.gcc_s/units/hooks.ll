; ModuleID = 'hooks.c'
source_filename = "hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_void() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_void_false() local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_void_true() local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_bool_false(i8 noundef zeroext %0) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_int_const_int_true(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_false(i32 noundef %0) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_const_rtx_false(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_mode_const_rtx_true(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_FILEptr_constcharptr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_false(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_hwi_hwi_const_tree_true(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_constcharptr_size_t_false(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_size_t_constcharptr_int_true(i64 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @default_can_output_mi_thunk_no_vcall(ptr nocapture noundef readnone %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_const_tree_0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_const_tree_const_tree_1(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_rtx_0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_rtx_bool_0(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_int_size_t_constcharptr_int_0(i64 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @hook_uint_uint_constcharptrptr_0(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_tree(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_constcharptr(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @hook_void_tree_treeptr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_true(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_const_tree_true(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_tree_false(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_tree_true(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_tree_bool_false(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_rtx_false(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_uintp_uintp_false(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @hook_bool_rtx_int_int_intp_bool_false(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  ret i8 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @hook_rtx_rtx_identity(ptr noundef readnone returned %0) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_rtx_rtx_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_rtx_tree_int_null(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @hook_tree_tree_tree_tree_3rd_identity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef readnone returned %2) local_unnamed_addr #0 {
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_tree_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_bool_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_tree_tree_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_rtx_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_const_tree_const_tree_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_int_const_tree_null(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_constcharptr_int_const_tree_const_tree_null(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @hook_tree_const_tree_null(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
