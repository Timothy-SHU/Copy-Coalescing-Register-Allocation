; ModuleID = 'tree-optimize.c'
source_filename = "tree-optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"*all_optimizations\00", align 1
@pass_all_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_all_optimizations, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"early_local_cleanups\00", align 1
@pass_early_local_passes = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.1, ptr @gate_all_early_local_passes, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256 } }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"early_optimizations\00", align 1
@pass_all_early_optimizations = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_all_early_optimizations, ptr @execute_early_local_optimizations, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"cleanup_cfg\00", align 1
@pass_cleanup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr null, ptr @execute_cleanup_cfg_pre_ipa, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@pass_cleanup_cfg_post_optimizing = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr null, ptr @execute_cleanup_cfg_post_optimizing, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 32769 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"*free_cfg_annotations\00", align 1
@pass_fixup_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @execute_fixup_cfg, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"*init_datastructures\00", align 1
@pass_init_datastructures = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr null, ptr @execute_init_datastructures, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@all_lowering_passes = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-optimize.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@all_passes = external local_unnamed_addr global ptr, align 8
@warn_larger_than = external local_unnamed_addr global i8, align 1
@larger_than_size = external local_unnamed_addr global i64, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"size of return value of %q+D is %u bytes\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"size of return value of %q+D is larger than %wd bytes\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@global_dc = external local_unnamed_addr global ptr, align 8
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_state = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !67
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !66 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !67
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !66 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !77

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = load i8, ptr %3, align 1, !tbaa !78
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !66 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !77

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = load i8, ptr %3, align 1, !tbaa !78
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !66 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !67
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !77

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #12
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !71
  %11 = load i8, ptr %3, align 1, !tbaa !78
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !67
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !66 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !77

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !79
  store i8 %12, ptr %4, align 1, !tbaa !78
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !66 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !77

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !79
  store i8 %12, ptr %4, align 1, !tbaa !78
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !66 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !77

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #12
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !79
  store i8 %12, ptr %4, align 1, !tbaa !78
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !66 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #12
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !66 {
  %2 = load i32, ptr %0, align 8, !tbaa !81
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !66 {
  %2 = load i32, ptr %0, align 8, !tbaa !81
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !66 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !82
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !66 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !82
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !66 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !66 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !66 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !66 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !83

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !66 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_optimizations() #8 !prof !86 !PGOFuncName !87 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !82
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %23, !prof !88

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !88

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !82
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12, !prof !88

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr @cfun, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gimple_df, ptr %17, i64 0, i32 10
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 1
  br label %23

23:                                               ; preds = %8, %19, %15, %12, %0
  %24 = phi i8 [ 0, %0 ], [ 0, %15 ], [ 0, %12 ], [ %22, %19 ], [ 1, %8 ]
  ret i8 %24
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_local_passes() #9 !prof !91 !PGOFuncName !92 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !67
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !82
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13, !prof !93

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !82
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !93

9:                                                ; preds = %5
  %10 = load i8, ptr @in_lto_p, align 1, !tbaa !78
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %9, %5, %0
  %14 = phi i8 [ 0, %5 ], [ 0, %0 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_all_early_optimizations() #8 !prof !94 !PGOFuncName !95 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !82
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13, !prof !96

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !96

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !82
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @execute_early_local_optimizations() #10 !prof !94 !PGOFuncName !97 {
  %1 = load i32, ptr @cgraph_state, align 4, !tbaa !82
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %4, !prof !98

3:                                                ; preds = %0
  store i32 2, ptr @cgraph_state, align 4, !tbaa !82
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_cleanup_cfg_pre_ipa() #11 !prof !94 !PGOFuncName !99 {
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_cleanup_cfg_post_optimizing() #11 !prof !86 !PGOFuncName !100 {
  tail call void @fold_cond_expr_cond() #12
  %1 = tail call zeroext i8 @cleanup_tree_cfg() #12
  tail call void @cleanup_dead_labels() #12
  tail call void @group_case_labels() #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @execute_free_datastructures() local_unnamed_addr #11 !prof !86 {
  tail call void @free_dominance_info(i32 noundef 1) #12
  tail call void @free_dominance_info(i32 noundef 2) #12
  tail call void @delete_tree_cfg_annotations() #12
  ret i32 0
}

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @delete_tree_cfg_annotations() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @execute_fixup_cfg() #11 !prof !101 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !67
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3, !prof !102

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !103

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = shl i8 %9, 2
  %11 = and i8 %10, 4
  %12 = zext nneg i8 %11 to i32
  br label %13

13:                                               ; preds = %0, %3, %7
  %14 = phi i32 [ 0, %3 ], [ 0, %0 ], [ %12, %7 ]
  %15 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !104
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !107
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %36, label %21, !prof !109

21:                                               ; preds = %13
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !67
  %23 = tail call ptr @cgraph_node(ptr noundef %22) #12
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 23
  %25 = load i64, ptr %24, align 8, !tbaa !110
  %26 = mul nsw i64 %25, 10000
  %27 = load ptr, ptr @cfun, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !107
  %33 = sdiv i64 %32, 2
  %34 = add nsw i64 %33, %26
  %35 = sdiv i64 %34, %32
  br label %36

36:                                               ; preds = %13, %21
  %37 = phi i64 [ %35, %21 ], [ 10000, %13 ]
  %38 = load ptr, ptr @current_function_decl, align 8, !tbaa !67
  %39 = tail call ptr @cgraph_node(ptr noundef %38) #12
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %39, i64 0, i32 23
  %41 = load i64, ptr %40, align 8, !tbaa !110
  %42 = load ptr, ptr @cfun, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 8
  store i64 %41, ptr %46, align 8, !tbaa !107
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !118
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !107
  %51 = mul nsw i64 %50, %37
  %52 = add nsw i64 %51, 5000
  %53 = sdiv i64 %52, 10000
  store i64 %53, ptr %49, align 8, !tbaa !107
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = load ptr, ptr @cfun, align 8, !tbaa !67
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !118
  %61 = icmp eq ptr %55, %60
  br i1 %61, label %194, label %73, !prof !120

62:                                               ; preds = %177
  %63 = icmp eq i8 %161, 0
  %64 = select i1 %63, i32 %160, i32 %162, !prof !121
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !119
  %67 = load ptr, ptr @cfun, align 8, !tbaa !67
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !104
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !118
  %72 = icmp eq ptr %66, %71
  br i1 %72, label %194, label %73, !prof !122, !llvm.loop !123

73:                                               ; preds = %36, %62
  %74 = phi ptr [ %66, %62 ], [ %55, %36 ]
  %75 = phi i32 [ %64, %62 ], [ %14, %36 ]
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 8
  %77 = load i64, ptr %76, align 8, !tbaa !107
  %78 = mul nsw i64 %77, %37
  %79 = add nsw i64 %78, 5000
  %80 = sdiv i64 %79, 10000
  store i64 %80, ptr %76, align 8, !tbaa !107
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 13
  %82 = load i32, ptr %81, align 8, !tbaa !124, !noalias !125
  %83 = and i32 %82, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91, !prof !121

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !78, !noalias !125
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89, !prof !128

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 8, !tbaa !129, !noalias !125
  br label %91

91:                                               ; preds = %89, %85, %73
  %92 = phi ptr [ %90, %89 ], [ null, %85 ], [ null, %73 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94, !prof !128

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8, !tbaa !131, !noalias !125
  br label %96

96:                                               ; preds = %91, %94
  %97 = phi ptr [ %95, %94 ], [ null, %91 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %159, label %99, !prof !133

99:                                               ; preds = %96, %153
  %100 = phi i32 [ %154, %153 ], [ %75, %96 ]
  %101 = phi ptr [ %157, %153 ], [ %97, %96 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !134
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %106, label %125, !prof !136

106:                                              ; preds = %99
  %107 = zext nneg i32 %104 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !82
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %110
  %112 = load i64, ptr %111, align 8, !tbaa !137
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115, !prof !138

114:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1622, ptr noundef nonnull @.str.8) #12
  br label %115

115:                                              ; preds = %114, %106
  %116 = getelementptr inbounds i8, ptr %102, i64 %112
  %117 = getelementptr inbounds ptr, ptr %116, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !67
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 121
  br i1 %121, label %122, label %125, !prof !139

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.tree_exp, ptr %118, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !78
  br label %125

125:                                              ; preds = %122, %115, %99
  %126 = phi ptr [ null, %99 ], [ %124, %122 ], [ null, %115 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %153, label %128, !prof !140

128:                                              ; preds = %125
  %129 = tail call i32 @gimple_call_flags(ptr noundef nonnull %102) #12
  %130 = and i32 %129, 7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %153, label %132, !prof !141

132:                                              ; preds = %128
  %133 = load ptr, ptr @cfun, align 8, !tbaa !67
  %134 = icmp eq ptr %133, null
  br i1 %134, label %143, label %135, !prof !142

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !89
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139, !prof !143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.gimple_df, ptr %137, i64 0, i32 10
  %141 = load i8, ptr %140, align 8
  %142 = and i8 %141, 1
  br label %143

143:                                              ; preds = %132, %135, %139
  %144 = phi i8 [ 0, %135 ], [ 0, %132 ], [ %142, %139 ]
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %153, label %146, !prof !143

146:                                              ; preds = %143
  %147 = or i32 %100, 2080
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %102) #12
  %148 = load i32, ptr %102, align 8
  %149 = and i32 %148, 255
  %150 = add nsw i32 %149, -10
  %151 = icmp ult i32 %150, -9
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  tail call void @gimple_set_modified(ptr noundef nonnull %102, i8 noundef zeroext 1) #12
  tail call void @update_stmt_operands(ptr noundef nonnull %102) #12
  br label %153

153:                                              ; preds = %152, %146, %143, %128, %125
  %154 = phi i32 [ %100, %143 ], [ %100, %128 ], [ %100, %125 ], [ %147, %146 ], [ %147, %152 ]
  %155 = tail call zeroext i8 @maybe_clean_eh_stmt(ptr noundef nonnull %102) #12
  %156 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %101, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !144
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %99, !prof !145, !llvm.loop !146

159:                                              ; preds = %153, %96
  %160 = phi i32 [ %75, %96 ], [ %154, %153 ]
  %161 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %74) #12
  %162 = or i32 %160, 32
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 1
  br label %164

164:                                              ; preds = %192, %159
  %165 = phi i32 [ 0, %159 ], [ %193, %192 ]
  %166 = load ptr, ptr %163, align 8, !tbaa !67
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168, !prof !147

168:                                              ; preds = %164
  %169 = load i32, ptr %166, align 8, !tbaa !148
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i32 [ %169, %168 ], [ 0, %164 ]
  %172 = icmp eq i32 %171, %165
  br i1 %172, label %177, label %173, !prof !150

173:                                              ; preds = %170
  %174 = zext i32 %165 to i64
  %175 = getelementptr inbounds %struct.VEC_edge_base, ptr %166, i64 0, i32 2, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !67
  br label %177

177:                                              ; preds = %170, %173
  %178 = phi ptr [ %176, %173 ], [ null, %170 ]
  br i1 %172, label %62, label %179, !prof !150

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.edge_def, ptr %178, i64 0, i32 9
  %181 = load i64, ptr %180, align 8, !tbaa !151
  %182 = mul nsw i64 %181, %37
  %183 = add nsw i64 %182, 5000
  %184 = sdiv i64 %183, 10000
  store i64 %184, ptr %180, align 8, !tbaa !151
  %185 = icmp eq ptr %166, null
  br i1 %185, label %188, label %186, !prof !153

186:                                              ; preds = %179
  %187 = load i32, ptr %166, align 8, !tbaa !148
  br label %188

188:                                              ; preds = %186, %179
  %189 = phi i32 [ %187, %186 ], [ 0, %179 ]
  %190 = icmp ult i32 %165, %189
  br i1 %190, label %192, label %191, !prof !154

191:                                              ; preds = %188
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 738, ptr noundef nonnull @.str.8) #12
  br label %192

192:                                              ; preds = %188, %191
  %193 = add i32 %165, 1
  br label %164, !llvm.loop !155

194:                                              ; preds = %62, %36
  %195 = phi i32 [ %14, %36 ], [ %64, %62 ]
  %196 = icmp eq i64 %37, 10000
  br i1 %196, label %198, label %197, !prof !109

197:                                              ; preds = %194
  tail call void @compute_function_frequency() #12
  br label %198

198:                                              ; preds = %197, %194
  %199 = load ptr, ptr @dump_file, align 8, !tbaa !67
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201, !prof !109

201:                                              ; preds = %198
  %202 = load i32, ptr @dump_flags, align 4, !tbaa !82
  tail call void @gimple_dump_cfg(ptr noundef nonnull %199, i32 noundef %202) #12
  br label %203

203:                                              ; preds = %201, %198
  ret i32 %195
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @maybe_clean_eh_stmt(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare void @compute_function_frequency() local_unnamed_addr #3

declare void @gimple_dump_cfg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_init_datastructures() #11 !prof !94 !PGOFuncName !156 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !67
  tail call void @init_tree_ssa(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_lowering_passes(ptr noundef %0) local_unnamed_addr #11 !prof !94 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !67
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  tail call void @push_cfun(ptr noundef %4) #12
  tail call void @gimple_register_cfg_hooks() #12
  tail call void @bitmap_obstack_initialize(ptr noundef null) #12
  %5 = load ptr, ptr @all_lowering_passes, align 8, !tbaa !67
  tail call void @execute_pass_list(ptr noundef %5) #12
  %6 = load i32, ptr @optimize, align 4, !tbaa !82
  %7 = icmp ne i32 %6, 0
  %8 = load i8, ptr @cgraph_global_info_ready, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false, !prof !96
  br i1 %10, label %11, label %13, !prof !157

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !158
  tail call void @execute_pass_list(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %11, %1
  tail call void @free_dominance_info(i32 noundef 2) #12
  tail call void @free_dominance_info(i32 noundef 1) #12
  tail call void @compact_blocks() #12
  store ptr %2, ptr @current_function_decl, align 8, !tbaa !67
  tail call void @bitmap_obstack_release(ptr noundef null) #12
  tail call void @pop_cfun() #12
  ret void
}

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @gimple_register_cfg_hooks() local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare void @execute_pass_list(ptr noundef) local_unnamed_addr #3

declare void @compact_blocks() local_unnamed_addr #3

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @tree_rest_of_compilation(ptr noundef %0) local_unnamed_addr #11 !prof !86 {
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !78
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !88

4:                                                ; preds = %1
  tail call void @timevar_push_1(i32 noundef 116) #12
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !78
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !161

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 385, ptr noundef nonnull @.str.8) #12
  br label %9

9:                                                ; preds = %5, %8
  tail call void @bitmap_obstack_initialize(ptr noundef null) #12
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !67
  %10 = load i32, ptr @input_location, align 4, !tbaa !82
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !78
  store i32 %12, ptr @input_location, align 4, !tbaa !82
  tail call void @init_function_start(ptr noundef %0) #12
  %13 = load ptr, ptr @cfun, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8388608
  store i32 %16, ptr %14, align 8
  tail call void @gimple_register_cfg_hooks() #12
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @reg_obstack) #12
  tail call void @execute_all_ipa_transforms() #12
  %17 = tail call i32 @invoke_plugin_callbacks(i32 noundef 14, ptr noundef null) #12
  %18 = load ptr, ptr @all_passes, align 8, !tbaa !67
  tail call void @execute_pass_list(ptr noundef %18) #12
  %19 = tail call i32 @invoke_plugin_callbacks(i32 noundef 15, ptr noundef null) #12
  tail call void @bitmap_obstack_release(ptr noundef nonnull @reg_obstack) #12
  tail call void @bitmap_obstack_release(ptr noundef null) #12
  tail call void @set_cfun(ptr noundef null) #12
  %20 = load i8, ptr @warn_larger_than, align 1, !tbaa !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22, !prof !88

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 33554432
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i64, ptr @larger_than_size, align 8, !tbaa !137
  %45 = tail call i32 @compare_tree_int(ptr noundef nonnull %37, i64 noundef %44) #12
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load ptr, ptr %36, align 8, !tbaa !78
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !78
  %51 = and i64 %50, 4294967295
  %52 = tail call i32 @compare_tree_int(ptr noundef %48, i64 noundef %51) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = trunc i64 %50 to i32
  %56 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %55) #12
  br label %60

57:                                               ; preds = %47
  %58 = load i64, ptr @larger_than_size, align 8, !tbaa !137
  %59 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 121, ptr noundef nonnull @.str.10, ptr noundef %0, i64 noundef %58) #12
  br label %60

60:                                               ; preds = %31, %35, %39, %43, %57, %54, %27, %22, %9
  tail call void @gimple_set_body(ptr noundef %0, ptr noundef null) #12
  %61 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %75, !prof !161

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node(ptr noundef %0) #12
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !162
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !78
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @global_trees, align 16, !tbaa !67
  store ptr %74, ptr %70, align 8, !tbaa !78
  br label %75

75:                                               ; preds = %69, %73, %64, %60
  store i32 %10, ptr @input_location, align 4, !tbaa !82
  tail call void @ggc_collect() #12
  %76 = load i8, ptr @timevar_enable, align 1, !tbaa !78
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78, !prof !88

78:                                               ; preds = %75
  tail call void @timevar_pop_1(i32 noundef 116) #12
  br label %79

79:                                               ; preds = %78, %75
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @init_function_start(ptr noundef) local_unnamed_addr #3

declare void @execute_all_ipa_transforms() local_unnamed_addr #3

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_cfun(ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ggc_collect() local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

declare void @fold_cond_expr_cond() local_unnamed_addr #3

declare void @cleanup_dead_labels() local_unnamed_addr #3

declare void @group_case_labels() local_unnamed_addr #3

declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

declare void @init_tree_ssa(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!65}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @execute_cleanup_cfg_pre_ipa, ptr @cleanup_tree_cfg, i64 40}
!36 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @fold_cond_expr_cond, i64 38}
!37 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @cleanup_tree_cfg, i64 38}
!38 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @cleanup_dead_labels, i64 38}
!39 = !{ptr @execute_cleanup_cfg_post_optimizing, ptr @group_case_labels, i64 38}
!40 = !{ptr @execute_free_datastructures, ptr @free_dominance_info, i64 76}
!41 = !{ptr @execute_free_datastructures, ptr @delete_tree_cfg_annotations, i64 38}
!42 = !{ptr @execute_fixup_cfg, ptr @cgraph_node, i64 118}
!43 = !{ptr @execute_fixup_cfg, ptr @gimple_call_flags, i64 207393}
!44 = !{ptr @execute_fixup_cfg, ptr @maybe_clean_eh_stmt, i64 1114432}
!45 = !{ptr @execute_fixup_cfg, ptr @gimple_purge_dead_eh_edges, i64 480642}
!46 = !{ptr @execute_init_datastructures, ptr @init_tree_ssa, i64 40}
!47 = !{ptr @tree_lowering_passes, ptr @push_cfun, i64 40}
!48 = !{ptr @tree_lowering_passes, ptr @gimple_register_cfg_hooks, i64 40}
!49 = !{ptr @tree_lowering_passes, ptr @bitmap_obstack_initialize, i64 40}
!50 = !{ptr @tree_lowering_passes, ptr @execute_pass_list, i64 40}
!51 = !{ptr @tree_lowering_passes, ptr @free_dominance_info, i64 80}
!52 = !{ptr @tree_lowering_passes, ptr @compact_blocks, i64 40}
!53 = !{ptr @tree_lowering_passes, ptr @bitmap_obstack_release, i64 40}
!54 = !{ptr @tree_lowering_passes, ptr @pop_cfun, i64 40}
!55 = !{ptr @tree_rest_of_compilation, ptr @bitmap_obstack_initialize, i64 76}
!56 = !{ptr @tree_rest_of_compilation, ptr @init_function_start, i64 38}
!57 = !{ptr @tree_rest_of_compilation, ptr @gimple_register_cfg_hooks, i64 38}
!58 = !{ptr @tree_rest_of_compilation, ptr @execute_all_ipa_transforms, i64 38}
!59 = !{ptr @tree_rest_of_compilation, ptr @invoke_plugin_callbacks, i64 76}
!60 = !{ptr @tree_rest_of_compilation, ptr @execute_pass_list, i64 38}
!61 = !{ptr @tree_rest_of_compilation, ptr @bitmap_obstack_release, i64 76}
!62 = !{ptr @tree_rest_of_compilation, ptr @set_cfun, i64 38}
!63 = !{ptr @tree_rest_of_compilation, ptr @gimple_set_body, i64 38}
!64 = !{ptr @tree_rest_of_compilation, ptr @ggc_collect, i64 38}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!72, !68, i64 8}
!72 = !{!"_IO_FILE", !73, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !68, i64 72, !68, i64 80, !68, i64 88, !68, i64 96, !68, i64 104, !73, i64 112, !73, i64 116, !74, i64 120, !75, i64 128, !69, i64 130, !69, i64 131, !68, i64 136, !74, i64 144, !68, i64 152, !68, i64 160, !68, i64 168, !68, i64 176, !74, i64 184, !73, i64 192, !69, i64 196}
!73 = !{!"int", !69, i64 0}
!74 = !{!"long", !69, i64 0}
!75 = !{!"short", !69, i64 0}
!76 = !{!72, !68, i64 16}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!69, !69, i64 0}
!79 = !{!72, !68, i64 40}
!80 = !{!72, !68, i64 48}
!81 = !{!72, !73, i64 0}
!82 = !{!73, !73, i64 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"function_entry_count", i64 38}
!87 = !{!"tree-optimize.c;gate_all_optimizations"}
!88 = !{!"branch_weights", i32 38, i32 0}
!89 = !{!90, !68, i64 24}
!90 = !{!"function", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !68, i64 72, !68, i64 80, !68, i64 88, !68, i64 96, !73, i64 104, !73, i64 108, !73, i64 112, !73, i64 116, !73, i64 120, !73, i64 124, !68, i64 128, !73, i64 136, !73, i64 137, !73, i64 138, !73, i64 138, !73, i64 138, !73, i64 138, !73, i64 138, !73, i64 138, !73, i64 138, !73, i64 139, !73, i64 139, !73, i64 139, !73, i64 139, !73, i64 139, !73, i64 139, !73, i64 139}
!91 = !{!"function_entry_count", i64 1}
!92 = !{!"tree-optimize.c;gate_all_early_local_passes"}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = !{!"function_entry_count", i64 40}
!95 = !{!"tree-optimize.c;gate_all_early_optimizations"}
!96 = !{!"branch_weights", i32 40, i32 0}
!97 = !{!"tree-optimize.c;execute_early_local_optimizations"}
!98 = !{!"branch_weights", i32 1, i32 39}
!99 = !{!"tree-optimize.c;execute_cleanup_cfg_pre_ipa"}
!100 = !{!"tree-optimize.c;execute_cleanup_cfg_post_optimizing"}
!101 = !{!"function_entry_count", i64 118}
!102 = !{!"branch_weights", i32 0, i32 118}
!103 = !{!"branch_weights", i32 40, i32 78}
!104 = !{!90, !68, i64 8}
!105 = !{!106, !68, i64 0}
!106 = !{!"control_flow_graph", !68, i64 0, !68, i64 8, !68, i64 16, !73, i64 24, !73, i64 28, !73, i64 32, !68, i64 40, !73, i64 48, !69, i64 52, !69, i64 60, !73, i64 68, !73, i64 72}
!107 = !{!108, !74, i64 72}
!108 = !{!"basic_block_def", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !69, i64 32, !68, i64 48, !68, i64 56, !69, i64 64, !74, i64 72, !73, i64 80, !73, i64 84, !73, i64 88, !73, i64 92, !73, i64 96}
!109 = !{!"branch_weights", i32 118, i32 0}
!110 = !{!111, !74, i64 288}
!111 = !{!"cgraph_node", !68, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !68, i64 56, !68, i64 64, !68, i64 72, !68, i64 80, !68, i64 88, !68, i64 96, !68, i64 104, !68, i64 112, !68, i64 120, !68, i64 128, !68, i64 136, !112, i64 144, !114, i64 184, !115, i64 224, !116, i64 232, !117, i64 256, !74, i64 288, !73, i64 296, !73, i64 300, !73, i64 304, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 308, !73, i64 309, !73, i64 309}
!112 = !{!"cgraph_local_info", !68, i64 0, !113, i64 8, !73, i64 32, !73, i64 32, !73, i64 32, !73, i64 32, !73, i64 32, !73, i64 32, !73, i64 32, !73, i64 32}
!113 = !{!"inline_summary", !74, i64 0, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20}
!114 = !{!"cgraph_global_info", !74, i64 0, !74, i64 8, !68, i64 16, !73, i64 24, !73, i64 28, !73, i64 32, !69, i64 36}
!115 = !{!"cgraph_rtl_info", !73, i64 0}
!116 = !{!"cgraph_clone_info", !68, i64 0, !68, i64 8, !68, i64 16}
!117 = !{!"cgraph_thunk_info", !74, i64 0, !74, i64 8, !68, i64 16, !69, i64 24, !69, i64 25, !69, i64 26}
!118 = !{!106, !68, i64 8}
!119 = !{!108, !68, i64 56}
!120 = !{!"branch_weights", i32 1, i32 235}
!121 = !{!"branch_weights", i32 480642, i32 0}
!122 = !{!"branch_weights", i32 235, i32 961049}
!123 = distinct !{!123, !84, !85}
!124 = !{!108, !73, i64 96}
!125 = !{!126}
!126 = distinct !{!126, !127, !"gsi_start_bb: argument 0"}
!127 = distinct !{!127, !"gsi_start_bb"}
!128 = !{!"branch_weights", i32 0, i32 480642}
!129 = !{!130, !68, i64 0}
!130 = !{!"gimple_bb_info", !68, i64 0, !68, i64 8}
!131 = !{!132, !68, i64 0}
!132 = !{!"gimple_seq_d", !68, i64 0, !68, i64 8, !68, i64 16}
!133 = !{!"branch_weights", i32 1, i32 480641}
!134 = !{!135, !68, i64 0}
!135 = !{!"gimple_seq_node_d", !68, i64 0, !68, i64 8, !68, i64 16}
!136 = !{!"branch_weights", i32 207393, i32 907039}
!137 = !{!74, !74, i64 0}
!138 = !{!"branch_weights", i32 0, i32 207393}
!139 = !{!"branch_weights", i32 207393, i32 0}
!140 = !{!"branch_weights", i32 907039, i32 207393}
!141 = !{!"branch_weights", i32 207387, i32 6}
!142 = !{!"branch_weights", i32 0, i32 6}
!143 = !{!"branch_weights", i32 6, i32 0}
!144 = !{!135, !68, i64 16}
!145 = !{!"branch_weights", i32 480641, i32 633791}
!146 = distinct !{!146, !84, !85}
!147 = !{!"branch_weights", i32 63, i32 1399755}
!148 = !{!149, !73, i64 0}
!149 = !{!"VEC_edge_base", !73, i64 0, !73, i64 4, !69, i64 8}
!150 = !{!"branch_weights", i32 480642, i32 919176}
!151 = !{!152, !74, i64 56}
!152 = !{!"edge_def", !68, i64 0, !68, i64 8, !69, i64 16, !68, i64 24, !68, i64 32, !73, i64 40, !73, i64 44, !73, i64 48, !73, i64 52, !74, i64 56}
!153 = !{!"branch_weights", i32 0, i32 919176}
!154 = !{!"branch_weights", i32 919176, i32 0}
!155 = distinct !{!155, !84, !85}
!156 = !{!"tree-optimize.c;execute_init_datastructures"}
!157 = !{!"branch_weights", i32 0, i32 40}
!158 = !{!159, !68, i64 32}
!159 = !{!"simple_ipa_opt_pass", !160, i64 0}
!160 = !{!"opt_pass", !73, i64 0, !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !73, i64 48, !73, i64 52, !73, i64 56, !73, i64 60, !73, i64 64, !73, i64 68, !73, i64 72}
!161 = !{!"branch_weights", i32 0, i32 38}
!162 = !{!111, !68, i64 40}
