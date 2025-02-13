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
define dso_local ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = tail call fastcc ptr @find_list_elem(ptr noundef %0, ptr noundef %1) #6
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  tail call fastcc void @remove_list_node(ptr noundef nonnull %3) #6
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @find_list_elem(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #1 !prof !44 !PGOFuncName !49 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %8, label %10, label %3, !llvm.loop !51

10:                                               ; preds = %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_list_node(ptr nocapture noundef %0) unnamed_addr #2 !prof !44 !PGOFuncName !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %4, ptr %0, align 8, !tbaa !45
  store ptr null, ptr %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !54 {
  %3 = load ptr, ptr @unused_insn_list, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !55

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  store ptr %8, ptr @unused_insn_list, align 8, !tbaa !45
  store ptr %0, ptr %6, align 8, !tbaa !50
  store ptr %1, ptr %7, align 8, !tbaa !50
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, -16711681
  store i32 %10, ptr %3, align 8
  %11 = and i32 %9, 65535
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %16, label %13, !prof !56

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
define dso_local ptr @alloc_EXPR_LIST(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !57 {
  %4 = load ptr, ptr @unused_expr_list, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !58

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  store ptr %9, ptr @unused_expr_list, align 8, !tbaa !45
  store ptr %1, ptr %7, align 8, !tbaa !50
  store ptr %2, ptr %8, align 8, !tbaa !50
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
define dso_local void @free_EXPR_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !60

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_expr_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !61 !PGOFuncName !62 {
  %3 = load ptr, ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %1, @unused_insn_list
  br i1 %6, label %7, label %12, !prof !63

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11, !prof !64

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.1) #7
  br label %12

12:                                               ; preds = %2, %7, %11
  %13 = icmp eq ptr %5, null
  br i1 %13, label %26, label %14, !prof !65

14:                                               ; preds = %12, %22
  %15 = phi ptr [ %16, %22 ], [ %3, %12 ]
  %16 = phi ptr [ %24, %22 ], [ %5, %12 ]
  br i1 %6, label %17, label %22, !prof !66

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %22, label %21, !prof !67

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.1) #7
  br label %22

22:                                               ; preds = %14, %17, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !prof !68, !llvm.loop !69

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %3, %12 ], [ %16, %22 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !50
  %30 = load ptr, ptr %0, align 8, !tbaa !45
  store ptr %30, ptr %1, align 8, !tbaa !45
  store ptr null, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_list(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !70 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !71

4:                                                ; preds = %1
  tail call fastcc void @free_list(ptr noundef nonnull %0, ptr noundef nonnull @unused_insn_list) #6
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @free_EXPR_LIST_node(ptr noundef %0) local_unnamed_addr #5 !prof !72 {
  %2 = load ptr, ptr @unused_expr_list, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !50
  store ptr %0, ptr @unused_expr_list, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_INSN_LIST_node(ptr noundef %0) local_unnamed_addr #3 !prof !73 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5, !prof !74

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.1) #7
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @unused_insn_list, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %7, ptr %8, align 8, !tbaa !50
  store ptr %0, ptr @unused_insn_list, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_free_INSN_LIST_elem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !44 {
  %3 = tail call ptr @remove_list_elem(ptr noundef %0, ptr noundef %1) #6
  tail call void @free_INSN_LIST_node(ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remove_free_INSN_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  tail call fastcc void @remove_list_node(ptr noundef nonnull %0) #6
  tail call void @free_INSN_LIST_node(ptr noundef %2) #6
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @remove_free_EXPR_LIST_node(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!43}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42}
!36 = !{ptr @alloc_INSN_LIST, ptr @fancy_abort, i64 1}
!37 = !{ptr @alloc_INSN_LIST, ptr @gen_rtx_fmt_ue_stat, i64 263881}
!38 = !{ptr @alloc_EXPR_LIST, ptr @gen_rtx_fmt_ee_stat, i64 2002147}
!39 = !{ptr @free_EXPR_LIST_list, ptr @free_list, i64 374960}
!40 = !{ptr @free_list, ptr @fancy_abort, i64 2}
!41 = !{ptr @free_INSN_LIST_list, ptr @free_list, i64 8730084}
!42 = !{ptr @free_INSN_LIST_node, ptr @fancy_abort, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!"lists.c:find_list_elem"}
!50 = !{!47, !47, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"lists.c:remove_list_node"}
!54 = !{!"function_entry_count", i64 20302831}
!55 = !{!"branch_weights", i32 263881, i32 20038952}
!56 = !{!"branch_weights", i32 20038952, i32 1}
!57 = !{!"function_entry_count", i64 5767421}
!58 = !{!"branch_weights", i32 2002148, i32 3765275}
!59 = !{!"function_entry_count", i64 1284419}
!60 = !{!"branch_weights", i32 909460, i32 374961}
!61 = !{!"function_entry_count", i64 9105045}
!62 = !{!"lists.c:free_list"}
!63 = !{!"branch_weights", i32 8730086, i32 374961}
!64 = !{!"branch_weights", i32 8730086, i32 1}
!65 = !{!"branch_weights", i32 5886954, i32 3218092}
!66 = !{!"branch_weights", i32 2845098, i32 372995}
!67 = !{!"branch_weights", i32 2845098, i32 1}
!68 = !{!"branch_weights", i32 3218092, i32 0}
!69 = distinct !{!69, !52}
!70 = !{!"function_entry_count", i64 11126189}
!71 = !{!"branch_weights", i32 2396105, i32 8730086}
!72 = !{!"function_entry_count", i64 3017323}
!73 = !{!"function_entry_count", i64 8465582}
!74 = !{!"branch_weights", i32 8465583, i32 1}
