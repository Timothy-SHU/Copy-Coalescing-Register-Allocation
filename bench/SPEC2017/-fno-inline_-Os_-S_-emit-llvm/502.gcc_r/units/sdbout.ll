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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
