; ModuleID = 'sdbout.c'
source_filename = "sdbout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }

@sdb_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks zeroinitializer, align 8
@preinit_symbols = internal global ptr null, align 8
@deferred_global_decls = internal global ptr null, align 8
@anonymous_types = internal global ptr null, align 8
@gt_ggc_r_gt_sdbout_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @preinit_symbols, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @deferred_global_decls, i64 1, i64 8, ptr @gt_ggc_mx_varray_head_tag, ptr @gt_pch_nx_varray_head_tag }, %struct.ggc_root_tab { ptr @anonymous_types, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@sdbout_initialized = internal global i8 0, align 1
@unnamed_struct_number = internal global i32 0, align 4
@gt_pch_rs_gt_sdbout_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @sdbout_initialized, i64 1, i64 1, ptr null, ptr null }, %struct.ggc_root_tab { ptr @unnamed_struct_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #0

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #0

; Function Attrs: optsize
declare void @gt_ggc_mx_varray_head_tag(ptr noundef) #0

; Function Attrs: optsize
declare void @gt_pch_nx_varray_head_tag(ptr noundef) #0

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
