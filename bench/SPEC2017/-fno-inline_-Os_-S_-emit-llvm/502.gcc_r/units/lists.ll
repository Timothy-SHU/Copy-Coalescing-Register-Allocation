; ModuleID = 'lists.c'
source_filename = "lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }

@unused_insn_list = internal global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"lists.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@unused_expr_list = internal global ptr null, align 8
@gt_ggc_rd_gt_lists_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @unused_expr_list, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab { ptr @unused_insn_list, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @find_list_elem(ptr noundef %0, ptr noundef %1) #6
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  tail call fastcc void @remove_list_node(ptr noundef nonnull %3) #6
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @find_list_elem(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %8, label %10, label %3, !llvm.loop !10

10:                                               ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_list_node(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  store ptr %4, ptr %0, align 8, !tbaa !5
  store ptr null, ptr %3, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @unused_insn_list, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  store ptr %8, ptr @unused_insn_list, align 8, !tbaa !5
  store ptr %0, ptr %6, align 8, !tbaa !9
  store ptr %1, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, -16711681
  store i32 %10, ptr %3, align 8
  %11 = and i32 %9, 65535
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #7
  br label %16

14:                                               ; preds = %2
  %15 = tail call ptr @gen_rtx_fmt_ue_stat(i32 noundef 4, i32 noundef 0, ptr noundef %0, ptr noundef %1) #7
  br label %16

16:                                               ; preds = %13, %5, %14
  %17 = phi ptr [ %3, %5 ], [ %3, %13 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ue_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_EXPR_LIST(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @unused_expr_list, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  store ptr %9, ptr @unused_expr_list, align 8, !tbaa !5
  store ptr %1, ptr %7, align 8, !tbaa !9
  store ptr %2, ptr %8, align 8, !tbaa !9
  %10 = load i32, ptr %4, align 8
  %11 = shl i32 %0, 16
  %12 = and i32 %11, 16711680
  %13 = and i32 %10, -16711681
  %14 = or disjoint i32 %13, %12
  store i32 %14, ptr %4, align 8
  br label %17

15:                                               ; preds = %3
  %16 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi ptr [ %4, %6 ], [ %16, %15 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_EXPR_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_expr_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = icmp eq ptr %1, @unused_insn_list
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.1) #7
  br label %12

12:                                               ; preds = %2, %7, %11
  %13 = icmp eq ptr %5, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %12, %22
  %15 = phi ptr [ %16, %22 ], [ %3, %12 ]
  %16 = phi ptr [ %24, %22 ], [ %5, %12 ]
  br i1 %6, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #7
  br label %22

22:                                               ; preds = %14, %17, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !12

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %3, %12 ], [ %16, %22 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !9
  %30 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %30, ptr %1, align 8, !tbaa !5
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_insn_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @free_EXPR_LIST_node(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @unused_expr_list, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !9
  store ptr %0, ptr @unused_expr_list, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_node(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #7
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @unused_insn_list, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %7, ptr %8, align 8, !tbaa !9
  store ptr %0, ptr @unused_insn_list, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_free_INSN_LIST_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) #6
  tail call void @free_INSN_LIST_node(ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remove_free_INSN_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  tail call fastcc void @remove_list_node(ptr noundef nonnull %0) #6
  tail call void @free_INSN_LIST_node(ptr noundef %2) #6
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @remove_free_EXPR_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  tail call fastcc void @remove_list_node(ptr noundef nonnull %0) #6
  tail call void @free_EXPR_LIST_node(ptr noundef %2) #6
  ret ptr %4
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
