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
define dso_local ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = tail call fastcc ptr @find_list_elem(ptr noundef %0, ptr noundef %1) #6
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  tail call fastcc void @remove_list_node(ptr noundef nonnull %3) #6
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @find_list_elem(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #1 !prof !47 !PGOFuncName !52 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %8, label %10, label %3, !llvm.loop !54

10:                                               ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_list_node(ptr nocapture noundef %0) unnamed_addr #2 !prof !56 !PGOFuncName !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %4, ptr %0, align 8, !tbaa !48
  store ptr null, ptr %3, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !58 {
  %3 = load ptr, ptr @unused_insn_list, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !59

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  store ptr %8, ptr @unused_insn_list, align 8, !tbaa !48
  store ptr %0, ptr %6, align 8, !tbaa !53
  store ptr %1, ptr %7, align 8, !tbaa !53
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, -16711681
  store i32 %10, ptr %3, align 8
  %11 = and i32 %9, 65535
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %13, !prof !60

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
define dso_local ptr @alloc_EXPR_LIST(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !61 {
  %4 = load ptr, ptr @unused_expr_list, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !62

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  store ptr %9, ptr @unused_expr_list, align 8, !tbaa !48
  store ptr %1, ptr %7, align 8, !tbaa !53
  store ptr %2, ptr %8, align 8, !tbaa !53
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
define dso_local void @free_EXPR_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !64

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_expr_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !65 !PGOFuncName !66 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %1, @unused_insn_list
  br i1 %6, label %7, label %12, !prof !67

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11, !prof !68

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.1) #7
  br label %12

12:                                               ; preds = %2, %7, %11
  %13 = icmp eq ptr %5, null
  br i1 %13, label %26, label %14, !prof !69

14:                                               ; preds = %12, %22
  %15 = phi ptr [ %16, %22 ], [ %3, %12 ]
  %16 = phi ptr [ %24, %22 ], [ %5, %12 ]
  br i1 %6, label %17, label %22, !prof !70

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %22, label %21, !prof !71

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #7
  br label %22

22:                                               ; preds = %14, %17, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !prof !72, !llvm.loop !73

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %3, %12 ], [ %16, %22 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !53
  %30 = load ptr, ptr %0, align 8, !tbaa !48
  store ptr %30, ptr %1, align 8, !tbaa !48
  store ptr null, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !74 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !75

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_insn_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @free_EXPR_LIST_node(ptr noundef %0) local_unnamed_addr #5 !prof !76 {
  %2 = load ptr, ptr @unused_expr_list, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !53
  store ptr %0, ptr @unused_expr_list, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_node(ptr noundef %0) local_unnamed_addr #3 !prof !77 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5, !prof !78

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #7
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @unused_insn_list, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %7, ptr %8, align 8, !tbaa !53
  store ptr %0, ptr @unused_insn_list, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_free_INSN_LIST_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !47 {
  %3 = tail call ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) #6
  tail call void @free_INSN_LIST_node(ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remove_free_INSN_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  tail call fastcc void @remove_list_node(ptr noundef nonnull %0) #6
  tail call void @free_INSN_LIST_node(ptr noundef %2) #6
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @remove_free_EXPR_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @alloc_INSN_LIST, ptr @fancy_abort, i64 1}
!36 = !{ptr @alloc_INSN_LIST, ptr @gen_rtx_fmt_ue_stat, i64 495504}
!37 = !{ptr @alloc_EXPR_LIST, ptr @gen_rtx_fmt_ee_stat, i64 1094968}
!38 = !{ptr @free_EXPR_LIST_list, ptr @free_list, i64 608740}
!39 = !{ptr @free_list, ptr @fancy_abort, i64 2}
!40 = !{ptr @free_INSN_LIST_list, ptr @free_list, i64 17249187}
!41 = !{ptr @free_INSN_LIST_node, ptr @fancy_abort, i64 1}
!42 = !{ptr @remove_free_INSN_LIST_node, ptr @remove_list_node, i64 1505461}
!43 = !{ptr @remove_free_INSN_LIST_node, ptr @free_INSN_LIST_node, i64 1505461}
!44 = !{ptr @remove_free_EXPR_LIST_node, ptr @remove_list_node, i64 40748}
!45 = !{ptr @remove_free_EXPR_LIST_node, ptr @free_EXPR_LIST_node, i64 40748}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!"lists.c:find_list_elem"}
!53 = !{!50, !50, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"function_entry_count", i64 1546209}
!57 = !{!"lists.c:remove_list_node"}
!58 = !{!"function_entry_count", i64 25210681}
!59 = !{!"branch_weights", i32 495504, i32 24715179}
!60 = !{!"branch_weights", i32 24715179, i32 1}
!61 = !{!"function_entry_count", i64 1888283}
!62 = !{!"branch_weights", i32 1094969, i32 793316}
!63 = !{!"function_entry_count", i64 3164130}
!64 = !{!"branch_weights", i32 2555392, i32 608740}
!65 = !{!"function_entry_count", i64 17857927}
!66 = !{!"lists.c:free_list"}
!67 = !{!"branch_weights", i32 17249189, i32 608740}
!68 = !{!"branch_weights", i32 17249189, i32 1}
!69 = !{!"branch_weights", i32 15405528, i32 2452400}
!70 = !{!"branch_weights", i32 2388444, i32 63957}
!71 = !{!"branch_weights", i32 2388444, i32 1}
!72 = !{!"branch_weights", i32 2452400, i32 0}
!73 = distinct !{!73, !55}
!74 = !{!"function_entry_count", i64 20874613}
!75 = !{!"branch_weights", i32 3625426, i32 17249189}
!76 = !{!"function_entry_count", i64 120640}
!77 = !{!"function_entry_count", i64 5077713}
!78 = !{!"branch_weights", i32 5077714, i32 1}
!79 = !{!"function_entry_count", i64 1505461}
!80 = !{!"function_entry_count", i64 40748}
