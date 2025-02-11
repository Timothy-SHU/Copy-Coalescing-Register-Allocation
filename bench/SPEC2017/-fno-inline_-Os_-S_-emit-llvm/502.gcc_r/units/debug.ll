; ModuleID = 'debug.c'
source_filename = "debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@do_nothing_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks { ptr @debug_nothing_charstar, ptr @debug_nothing_charstar, ptr @debug_nothing_void, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int, ptr @debug_nothing_int_int, ptr @debug_nothing_int_int, ptr @debug_true_const_tree, ptr @debug_nothing_int_charstar_int_bool, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @debug_nothing_tree, ptr @debug_nothing_int, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_tree_tree_tree_bool, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_rtx, ptr @debug_nothing_int, ptr @debug_nothing_rtx, ptr @debug_nothing_void, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_rtx_rtx, ptr @debug_nothing_uid, ptr @debug_nothing_tree_tree, i32 0 }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_charstar(ptr nocapture readnone %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_void() #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_charstar(i32 %0, ptr nocapture readnone %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int(i32 %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_int(i32 %0, i32 %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @debug_true_const_tree(ptr nocapture readnone %0) #0 {
  ret i8 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_int_charstar_int_bool(i32 %0, ptr nocapture readnone %1, i32 %2, i8 zeroext %3) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree(ptr nocapture readnone %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_int(ptr nocapture readnone %0, i32 %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_tree_tree_bool(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 zeroext %3) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_rtx(ptr nocapture readnone %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_rtx_rtx(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_uid(i32 %0) #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @debug_nothing_tree_tree(ptr nocapture readnone %0, ptr nocapture readnone %1) #0 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
