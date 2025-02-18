; ModuleID = 'dbxout.c'
source_filename = "dbxout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dbx_file = type { ptr, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.typeinfo = type { i32, i32, i32 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@dbx_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks { ptr @dbxout_init, ptr @dbxout_finish, ptr @debug_nothing_void, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @dbxout_start_source_file, ptr @dbxout_end_source_file, ptr @dbxout_begin_block, ptr @dbxout_end_block, ptr @debug_true_const_tree, ptr @dbxout_source_line, ptr @dbxout_begin_prologue, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @dbxout_begin_function, ptr @debug_nothing_int, ptr @dbxout_function_decl, ptr @dbxout_global_decl, ptr @dbxout_type_decl, ptr @debug_nothing_tree_tree_tree_bool, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_rtx, ptr @dbxout_handle_pch, ptr @debug_nothing_rtx, ptr @debug_nothing_void, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_rtx_rtx, ptr @debug_nothing_uid, ptr @debug_nothing_tree_tree, i32 0 }, align 8
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\09.stabd\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",0,\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\09.stabn\09\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c",0,0,\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\09.stabs\09\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\22\22,\00", align 1
@debug_nesting = external local_unnamed_addr global i32, align 4
@flag_debug_only_used_symbols = external local_unnamed_addr global i32, align 4
@typevec = internal global ptr null, align 8
@preinit_symbols = internal global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@stabstr_ob = internal global %struct.obstack zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c":F\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c":f\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@use_gnu_debug_info_extensions = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c":T\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" :T\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dbxout.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"=i\00", align 1
@symbol_queue_index = external local_unnamed_addr global i32, align 4
@svr4_dbx_register_map = external local_unnamed_addr constant [53 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"(anon):\00", align 1
@lastfile = internal global ptr null, align 8
@gt_ggc_r_gt_dbxout_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lastfile, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr @preinit_symbols, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @typevec, i64 1, i64 8, ptr @gt_ggc_ma_typevec, ptr @gt_pch_na_typevec }, %struct.ggc_root_tab zeroinitializer], align 16
@lastfile_is_base = internal global i32 0, align 4
@source_label_number = internal global i32 1, align 4
@dbxout_source_line_counter = internal global i32 0, align 4
@scope_labelno = internal global i32 0, align 4
@next_file_number = internal global i32 0, align 4
@next_type_number = internal global i32 0, align 4
@typevec_len = internal global i32 0, align 4
@gt_pch_rs_gt_dbxout_h = dso_local local_unnamed_addr constant [8 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lastfile_is_base, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @source_label_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @dbxout_source_line_counter, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @scope_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_file_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_type_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @typevec_len, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"Ltext\00", align 1
@dbxout_init.cwd = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@text_section = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"gcc2_compiled.\00", align 1
@base_input_file = internal unnamed_addr global ptr null, align 8
@current_file = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"GNU C\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"GNU F77\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"GNU Fortran\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"GNU Pascal\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"GNU Objective-C\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"GNU Objective-C++\00", align 1
@pending_bincls = internal unnamed_addr global i1 false, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"LFBB\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"LBB\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"LBE\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"Lscope\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"Letext\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dbxout_type.anonymous_type_number = internal unnamed_addr global i32 0, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.32 = private unnamed_addr constant [8 x i8] c";0;127;\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c";0;\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c";-16;\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"eFalse:0,True:1,;\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"R3;\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"real:\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c";imag:\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c";@S;S\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"@V;\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"@S;\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c";0;-1;\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"xu\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"~%\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"-1;\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c",0,0;\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\22,\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str.58 = private unnamed_addr constant [60 x i8] c"common symbol debug info is not structured as symbol+offset\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_init(ptr noundef %0) #9 !prof !34 {
  %2 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #19
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 2), align 8, !tbaa !54
  %4 = tail call ptr %3() #19
  store i32 100, ptr @typevec_len, align 4, !tbaa !50
  %5 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 1200) #19
  store ptr %5, ptr @typevec, align 8, !tbaa !35
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull @stabstr_ob, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #19
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.16, i32 noundef 0)
  %8 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @dbxout_init.cwd, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = tail call ptr @get_src_pwd() #19
  store ptr %14, ptr @dbxout_init.cwd, align 8, !tbaa !35
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %19 = getelementptr i8, ptr %14, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !46
  %22 = icmp eq i8 %21, 47
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %14, ptr noundef nonnull @.str.17, ptr noundef null) #19
  br label %25

25:                                               ; preds = %13, %23
  %26 = phi ptr [ %24, %23 ], [ @.str.17, %13 ]
  store ptr %26, ptr @dbxout_init.cwd, align 8, !tbaa !35
  br label %27

27:                                               ; preds = %25, %17
  %28 = load ptr, ptr @dbxout_init.cwd, align 8, !tbaa !35
  %29 = tail call ptr @remap_debug_filename(ptr noundef %28) #19
  store ptr %29, ptr @dbxout_init.cwd, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %27, %10
  %31 = load ptr, ptr @dbxout_init.cwd, align 8, !tbaa !35
  %32 = tail call fastcc i32 @get_lang_number(), !range !62
  tail call void @dbxout_begin_simple_stabs_desc(ptr noundef %31, i32 noundef 100, i32 noundef %32)
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @assemble_name(ptr noundef %33, ptr noundef nonnull %2) #19
  %34 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %35 = call i32 @putc(i32 noundef 10, ptr noundef %34)
  br label %36

36:                                               ; preds = %30, %1
  %37 = call ptr @remap_debug_filename(ptr noundef %0) #19
  %38 = call fastcc i32 @get_lang_number(), !range !62
  call void @dbxout_begin_simple_stabs_desc(ptr noundef %37, i32 noundef 100, i32 noundef %38)
  %39 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @assemble_name(ptr noundef %39, ptr noundef nonnull %2) #19
  %40 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %41 = call i32 @putc(i32 noundef 10, ptr noundef %40)
  %42 = load ptr, ptr @text_section, align 8, !tbaa !35
  call void @switch_to_section(ptr noundef %42) #19
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %44 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void %43(ptr noundef %44, ptr noundef nonnull @.str.16, i64 noundef 0) #19
  call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.18, i32 noundef 60)
  %45 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %46 = call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %45)
  store ptr %0, ptr @lastfile, align 8, !tbaa !35
  store ptr %0, ptr @base_input_file, align 8, !tbaa !35
  store i32 1, ptr @next_type_number, align 4, !tbaa !50
  %47 = call ptr @xmalloc(i64 noundef 40) #19
  store ptr %47, ptr @current_file, align 8, !tbaa !35
  store ptr null, ptr %47, align 8, !tbaa !75
  %48 = load ptr, ptr @current_file, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.dbx_file, ptr %48, i64 0, i32 1
  store i32 0, ptr %49, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.dbx_file, ptr %48, i64 0, i32 2
  store i32 1, ptr %50, align 4, !tbaa !78
  store i32 1, ptr @next_file_number, align 4, !tbaa !50
  %51 = getelementptr inbounds %struct.dbx_file, ptr %48, i64 0, i32 3
  store i32 0, ptr %51, align 8, !tbaa !79
  %52 = getelementptr inbounds %struct.dbx_file, ptr %48, i64 0, i32 4
  %53 = icmp eq ptr %4, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  br i1 %53, label %89, label %54

54:                                               ; preds = %36, %85
  %55 = phi ptr [ %87, %85 ], [ %4, %36 ]
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 35
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %59
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 35
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64, ptr %61, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 19
  %77 = and i64 %66, 4194304
  %78 = icmp eq i64 %77, 0
  %79 = and i1 %78, %76
  br i1 %79, label %83, label %85

80:                                               ; preds = %69
  %81 = and i64 %66, 4194304
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73, %80
  %84 = call i32 @dbxout_symbol(ptr noundef nonnull %63, i32 poison), !range !80
  br label %85

85:                                               ; preds = %73, %83, %80, %65, %59, %54
  %86 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %54, !llvm.loop !81

89:                                               ; preds = %85, %36
  %90 = load ptr, ptr @preinit_symbols, align 8, !tbaa !35
  %91 = icmp eq ptr %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = call ptr @nreverse(ptr noundef nonnull %90) #19
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %92, %95
  %96 = phi ptr [ %101, %95 ], [ %93, %92 ]
  %97 = getelementptr inbounds %struct.tree_list, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = call i32 @dbxout_symbol(ptr noundef %98, i32 poison), !range !80
  %100 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95, !llvm.loop !82

103:                                              ; preds = %95, %92
  store ptr null, ptr @preinit_symbols, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %103, %89
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_finish(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @text_section, align 8, !tbaa !35
  tail call void @switch_to_section(ptr noundef %2) #19
  tail call void @dbxout_begin_empty_stabs(i32 noundef 100)
  tail call void @dbxout_stab_value_internal_label(ptr noundef nonnull @.str.31, ptr noundef null)
  tail call void @debug_free_queue() #19
  ret void
}

declare void @debug_nothing_void() #3

declare void @debug_nothing_int_charstar(i32 noundef, ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_start_source_file(i32 %0, ptr noundef %1) #9 !prof !34 {
  %3 = tail call ptr @xmalloc(i64 noundef 40) #19
  %4 = load ptr, ptr @current_file, align 8, !tbaa !35
  store ptr %4, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 2
  store i32 1, ptr %5, align 4, !tbaa !78
  %6 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 5
  store ptr null, ptr %7, align 8, !tbaa !83
  %8 = load ptr, ptr @current_file, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.dbx_file, ptr %8, i64 0, i32 5
  store ptr %3, ptr %9, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 3
  store i32 1, ptr %10, align 8, !tbaa !79
  %11 = tail call ptr @remap_debug_filename(ptr noundef %1) #19
  %12 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !84
  store i1 true, ptr @pending_bincls, align 4
  store ptr %3, ptr @current_file, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal void @dbxout_end_source_file(i32 %0) #10 !prof !34 {
  %2 = alloca [64 x i8], align 16
  %3 = load ptr, ptr @current_file, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !79
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %9 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %8)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 162, %7 ], [ %14, %10 ]
  %12 = phi i64 [ 64, %7 ], [ %17, %10 ]
  %13 = urem i32 %11, 10
  %14 = udiv i32 %11, 10
  %15 = trunc i32 %13 to i8
  %16 = or disjoint i8 %15, 48
  %17 = add nsw i64 %12, -1
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  store i8 %16, ptr %18, align 1, !tbaa !46
  %19 = icmp ult i32 %11, 10
  br i1 %19, label %20, label %10, !llvm.loop !85

20:                                               ; preds = %10, %20
  %21 = phi i64 [ %27, %20 ], [ 61, %10 ]
  %22 = getelementptr inbounds i8, ptr %2, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !46
  %24 = sext i8 %23 to i32
  %25 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %26 = tail call i32 @putc(i32 noundef %24, ptr noundef %25)
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 64
  br i1 %28, label %29, label %20, !llvm.loop !86

29:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  %30 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %31 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %30)
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %33 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load ptr, ptr @current_file, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.dbx_file, ptr %35, i64 0, i32 3
  store i32 0, ptr %36, align 8, !tbaa !79
  %37 = load ptr, ptr %35, align 8, !tbaa !75
  store ptr %37, ptr @current_file, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_begin_block(i32 %0, i32 noundef %1) #9 !prof !34 {
  %3 = load i1, ptr @pending_bincls, align 4
  br i1 %3, label %4, label %31

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ @current_file, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.dbx_file, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %4, label %10, !llvm.loop !87

10:                                               ; preds = %4, %27
  %11 = phi ptr [ %13, %27 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.dbx_file, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %21, i32 noundef 130)
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %23 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %22)
  %24 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @next_file_number, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 1
  store i32 %24, ptr %26, align 8, !tbaa !77
  store i32 2, ptr %16, align 8, !tbaa !79
  br label %27

27:                                               ; preds = %19, %15
  %28 = load ptr, ptr @current_file, align 8, !tbaa !35
  %29 = icmp eq ptr %13, %28
  br i1 %29, label %30, label %10, !llvm.loop !88

30:                                               ; preds = %27, %10
  store i1 false, ptr @pending_bincls, align 4
  br label %31

31:                                               ; preds = %2, %30
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %34 = zext i32 %1 to i64
  tail call void %32(ptr noundef %33, ptr noundef nonnull @.str.28, i64 noundef %34) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_end_block(i32 %0, i32 noundef %1) #9 !prof !34 {
  %3 = load i1, ptr @pending_bincls, align 4
  br i1 %3, label %4, label %31

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ @current_file, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.dbx_file, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %4, label %10, !llvm.loop !87

10:                                               ; preds = %4, %27
  %11 = phi ptr [ %13, %27 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.dbx_file, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %21, i32 noundef 130)
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %23 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %22)
  %24 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @next_file_number, align 4, !tbaa !50
  %26 = getelementptr inbounds %struct.dbx_file, ptr %13, i64 0, i32 1
  store i32 %24, ptr %26, align 8, !tbaa !77
  store i32 2, ptr %16, align 8, !tbaa !79
  br label %27

27:                                               ; preds = %19, %15
  %28 = load ptr, ptr @current_file, align 8, !tbaa !35
  %29 = icmp eq ptr %13, %28
  br i1 %29, label %30, label %10, !llvm.loop !88

30:                                               ; preds = %27, %10
  store i1 false, ptr @pending_bincls, align 4
  br label %31

31:                                               ; preds = %2, %30
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %33 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %34 = zext i32 %1 to i64
  tail call void %32(ptr noundef %33, ptr noundef nonnull @.str.29, i64 noundef %34) #19
  ret void
}

declare zeroext i8 @debug_true_const_tree(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_source_line(i32 noundef %0, ptr noundef %1, i32 %2, i8 zeroext %3) #9 !prof !34 {
  %5 = alloca [100 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = load ptr, ptr @lastfile, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr @lastfile_is_base, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr @base_input_file, align 8, !tbaa !35
  store ptr %13, ptr @lastfile, align 8, !tbaa !35
  store i32 0, ptr @lastfile_is_base, align 4, !tbaa !50
  br label %14

14:                                               ; preds = %12, %4
  %15 = icmp eq ptr %1, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr @lastfile, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %17)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr @text_section, align 8, !tbaa !35
  tail call void @switch_to_section(ptr noundef %26) #19
  br label %27

27:                                               ; preds = %25, %22
  %28 = tail call ptr @remap_debug_filename(ptr noundef nonnull %1) #19
  tail call void @dbxout_begin_simple_stabs(ptr noundef %28, i32 noundef 132)
  tail call void @dbxout_stab_value_internal_label(ptr noundef nonnull @.str.16, ptr noundef nonnull @source_label_number)
  store ptr %1, ptr @lastfile, align 8, !tbaa !35
  br label %29

29:                                               ; preds = %14, %19, %27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #19
  tail call void @dbxout_begin_stabn_sline(i32 noundef %0)
  %30 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.26, i32 noundef %30)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #19
  %32 = load i32, ptr @dbxout_source_line_counter, align 4, !tbaa !50
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @dbxout_source_line_counter, align 4, !tbaa !50
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.27, i32 noundef %32)
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %35 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %36 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %37 = sext i32 %32 to i64
  call void %35(ptr noundef %36, ptr noundef nonnull @.str.27, i64 noundef %37) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_begin_prologue(i32 noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  %5 = load i32, ptr @flag_debug_only_used_symbols, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @dbxout_stabd(i32 noundef 46, i32 noundef 0)
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @scope_labelno, align 4, !tbaa !50
  tail call void @dbxout_source_line(i32 noundef %0, ptr noundef %1, i32 poison, i8 zeroext poison)
  %12 = load i1, ptr @pending_bincls, align 4
  br i1 %12, label %13, label %40

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ @current_file, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.dbx_file, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !79
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %13, label %19, !llvm.loop !87

19:                                               ; preds = %13, %36
  %20 = phi ptr [ %22, %36 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.dbx_file, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dbx_file, ptr %22, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !79
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dbx_file, ptr %22, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %30, i32 noundef 130)
  %31 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %32 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %31)
  %33 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @next_file_number, align 4, !tbaa !50
  %35 = getelementptr inbounds %struct.dbx_file, ptr %22, i64 0, i32 1
  store i32 %33, ptr %35, align 8, !tbaa !77
  store i32 2, ptr %25, align 8, !tbaa !79
  br label %36

36:                                               ; preds = %28, %24
  %37 = load ptr, ptr @current_file, align 8, !tbaa !35
  %38 = icmp eq ptr %22, %37
  br i1 %38, label %39, label %19, !llvm.loop !88

39:                                               ; preds = %36, %19
  store i1 false, ptr @pending_bincls, align 4
  br label %40

40:                                               ; preds = %9, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %43 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %44 = sext i32 %43 to i64
  tail call void %41(ptr noundef %42, ptr noundef nonnull @.str.26, i64 noundef %44) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_begin_function(ptr noundef %0) #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16777216
  %4 = or i64 %2, 16777216
  store i64 %4, ptr %0, align 8
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %6, align 8
  %12 = and i64 %11, 16777216
  %13 = or i64 %11, 16777216
  store i64 %13, ptr %6, align 8
  %14 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison), !range !80
  %15 = load ptr, ptr %5, align 8, !tbaa !46
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -16777217
  %18 = or disjoint i64 %17, %12
  store i64 %18, ptr %15, align 8
  br label %21

19:                                               ; preds = %1
  %20 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison), !range !80
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, -16777217
  %24 = or disjoint i64 %23, %3
  store i64 %24, ptr %0, align 8
  %25 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  tail call void @dbxout_parms(ptr noundef %26)
  %27 = load ptr, ptr %5, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = tail call i32 @dbxout_symbol(ptr noundef %27, i32 poison), !range !80
  br label %33

33:                                               ; preds = %31, %21
  ret void
}

declare void @debug_nothing_int(i32 noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_function_decl(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = alloca [100 x i8], align 16
  %3 = alloca [20 x i8], align 16
  %4 = load i1, ptr @pending_bincls, align 4
  br i1 %4, label %5, label %32

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ @current_file, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.dbx_file, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %5, label %11, !llvm.loop !87

11:                                               ; preds = %5, %28
  %12 = phi ptr [ %14, %28 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.dbx_file, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %22, i32 noundef 130)
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %24 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %23)
  %25 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @next_file_number, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 1
  store i32 %25, ptr %27, align 8, !tbaa !77
  store i32 2, ptr %17, align 8, !tbaa !79
  br label %28

28:                                               ; preds = %20, %16
  %29 = load ptr, ptr @current_file, align 8, !tbaa !35
  %30 = icmp eq ptr %14, %29
  br i1 %30, label %31, label %11, !llvm.loop !88

31:                                               ; preds = %28, %11
  store i1 false, ptr @pending_bincls, align 4
  br label %32

32:                                               ; preds = %1, %31
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  tail call fastcc void @dbxout_block(ptr noundef %34, i32 noundef 0, ptr noundef %36)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #19
  %37 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %38 = tail call ptr @function_section(ptr noundef %37) #19
  tail call void @switch_to_section(ptr noundef %38) #19
  %39 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.30, i32 noundef %39)
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %43 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %44 = sext i32 %43 to i64
  tail call void %41(ptr noundef %42, ptr noundef nonnull @.str.30, i64 noundef %44) #19
  %45 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %46 = icmp ne i8 %45, 0
  %47 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %48 = icmp ne i8 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %65

50:                                               ; preds = %32
  %51 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36)
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !89
  %55 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !98
  tail call void @dbxout_stab_value_label_diff(ptr noundef %54, ptr noundef %55)
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36)
  %56 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8, !tbaa !99
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !100
  tail call void @dbxout_stab_value_label_diff(ptr noundef %56, ptr noundef %57)
  br label %61

58:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #19
  %59 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.26, i32 noundef %59)
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36)
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #19
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !50
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @dbxout_stabd(i32 noundef 78, i32 noundef 0)
  br label %65

65:                                               ; preds = %32, %61, %64
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_global_decl(ptr noundef %0) #9 !prof !34 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = and i64 %2, 16777216
  %12 = or i64 %2, 16777216
  store i64 %12, ptr %0, align 8
  %13 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison), !range !80
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, -16777217
  %16 = or disjoint i64 %15, %11
  store i64 %16, ptr %0, align 8
  br label %17

17:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_type_decl(ptr noundef %0, i32 noundef %1) #9 !prof !34 {
  %3 = tail call i32 @dbxout_symbol(ptr noundef %0, i32 poison), !range !80
  ret void
}

declare void @debug_nothing_tree_tree_tree_bool(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

declare void @debug_nothing_tree(ptr noundef) #3

declare void @debug_nothing_rtx(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @dbxout_handle_pch(i32 noundef %0) #9 !prof !34 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = load ptr, ptr @lastfile, align 8, !tbaa !35
  %5 = tail call ptr @xmalloc(i64 noundef 40) #19
  %6 = load ptr, ptr @current_file, align 8, !tbaa !35
  store ptr %6, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.dbx_file, ptr %5, i64 0, i32 2
  store i32 1, ptr %7, align 4, !tbaa !78
  %8 = getelementptr inbounds %struct.dbx_file, ptr %5, i64 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.dbx_file, ptr %5, i64 0, i32 5
  store ptr null, ptr %9, align 8, !tbaa !83
  %10 = load ptr, ptr @current_file, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.dbx_file, ptr %10, i64 0, i32 5
  store ptr %5, ptr %11, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.dbx_file, ptr %5, i64 0, i32 3
  store i32 1, ptr %12, align 8, !tbaa !79
  %13 = tail call ptr @remap_debug_filename(ptr noundef %4) #19
  %14 = getelementptr inbounds %struct.dbx_file, ptr %5, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !84
  store i1 true, ptr @pending_bincls, align 4
  store ptr %5, ptr @current_file, align 8, !tbaa !35
  store ptr null, ptr @lastfile, align 8, !tbaa !35
  br label %19

15:                                               ; preds = %1
  tail call void @dbxout_end_source_file(i32 poison)
  %16 = load ptr, ptr @lastfile, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, ptr @lastfile_is_base, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %15, %3
  ret void
}

declare void @debug_nothing_tree_int(ptr noundef, i32 noundef) #3

declare void @debug_nothing_rtx_rtx(ptr noundef, ptr noundef) #3

declare void @debug_nothing_uid(i32 noundef) #3

declare void @debug_nothing_tree_tree(ptr noundef, ptr noundef) #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_int(i32 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %6 = tail call i32 @putc(i32 noundef 48, ptr noundef %5)
  br label %36

7:                                                ; preds = %1
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %11 = tail call i32 @putc(i32 noundef 45, ptr noundef %10)
  %12 = sub nsw i32 0, %0
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i32 [ %0, %7 ], [ %12, %9 ]
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %19, %15 ], [ %14, %13 ]
  %17 = phi i64 [ %22, %15 ], [ 64, %13 ]
  %18 = urem i32 %16, 10
  %19 = udiv i32 %16, 10
  %20 = trunc i32 %18 to i8
  %21 = or disjoint i8 %20, 48
  %22 = add nsw i64 %17, -1
  %23 = getelementptr inbounds i8, ptr %2, i64 %22
  store i8 %21, ptr %23, align 1, !tbaa !46
  %24 = icmp ult i32 %16, 10
  br i1 %24, label %25, label %15, !llvm.loop !85

25:                                               ; preds = %15
  %26 = icmp slt i64 %17, 65
  br i1 %26, label %27, label %36

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %34, %27 ], [ %22, %25 ]
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = sext i8 %30 to i32
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %33 = tail call i32 @putc(i32 noundef %31, ptr noundef %32)
  %34 = add i64 %28, 1
  %35 = icmp eq i64 %34, 64
  br i1 %35, label %36, label %27, !llvm.loop !86

36:                                               ; preds = %27, %25, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_stab_value_zero() local_unnamed_addr #10 !prof !34 {
  %1 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_stab_value_label(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  tail call void @assemble_name(ptr noundef %2, ptr noundef %0) #19
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3)
  ret void
}

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_stab_value_label_diff(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  tail call void @assemble_name(ptr noundef %3, ptr noundef %0) #19
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = tail call i32 @putc(i32 noundef 45, ptr noundef %4)
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  tail call void @assemble_name(ptr noundef %6, ptr noundef %1) #19
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %7)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_stab_value_internal_label(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !50
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !50
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, i32 noundef %9)
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @assemble_name(ptr noundef %11, ptr noundef nonnull %3) #19
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %13 = call i32 @putc(i32 noundef 10, ptr noundef %12)
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %15 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %16 = sext i32 %9 to i64
  call void %14(ptr noundef %15, ptr noundef %0, i64 noundef %16) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_stab_value_internal_label_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4, !tbaa !50
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !50
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, i32 noundef %10)
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %4, ptr noundef %2)
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !63
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %14 = sext i32 %10 to i64
  call void %12(ptr noundef %13, ptr noundef %0, i64 noundef %14) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #19
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_stabd(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 8, i64 1, ptr %3)
  tail call void @dbxout_int(i32 noundef %0)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %5)
  tail call void @dbxout_int(i32 noundef %1)
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %7)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_begin_stabn(i32 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %2)
  tail call void @dbxout_int(i32 noundef %0)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %4)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_begin_stabn_sline(i32 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = alloca [64 x i8], align 16
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %4 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 68, %1 ], [ %9, %5 ]
  %7 = phi i64 [ 64, %1 ], [ %12, %5 ]
  %8 = urem i32 %6, 10
  %9 = udiv i32 %6, 10
  %10 = trunc i32 %8 to i8
  %11 = or disjoint i8 %10, 48
  %12 = add nsw i64 %7, -1
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  store i8 %11, ptr %13, align 1, !tbaa !46
  %14 = icmp ult i32 %6, 10
  br i1 %14, label %15, label %5, !llvm.loop !85

15:                                               ; preds = %5, %15
  %16 = phi i64 [ %22, %15 ], [ 62, %5 ]
  %17 = getelementptr inbounds i8, ptr %2, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = sext i8 %18 to i32
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %21 = tail call i32 @putc(i32 noundef %19, ptr noundef %20)
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp eq i64 %22, 64
  br i1 %23, label %24, label %15, !llvm.loop !86

24:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  %25 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %26 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %25)
  tail call void @dbxout_int(i32 noundef %0)
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %28 = tail call i32 @putc(i32 noundef 44, ptr noundef %27)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dbxout_begin_empty_stabs(i32 noundef %0) local_unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %3 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %2)
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 3, i64 1, ptr %4)
  tail call void @dbxout_int(i32 noundef %0)
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %7 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %6)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_begin_simple_stabs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %4 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %3)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  tail call void @output_quoted_string(ptr noundef %5, ptr noundef %0) #19
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %7 = tail call i32 @putc(i32 noundef 44, ptr noundef %6)
  tail call void @dbxout_int(i32 noundef %1)
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %9 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %8)
  ret void
}

declare void @output_quoted_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_begin_simple_stabs_desc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %5 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %4)
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  tail call void @output_quoted_string(ptr noundef %6, ptr noundef %0) #19
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %8 = tail call i32 @putc(i32 noundef 44, ptr noundef %7)
  tail call void @dbxout_int(i32 noundef %1)
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %9)
  tail call void @dbxout_int(i32 noundef %2)
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %12 = tail call i32 @putc(i32 noundef 44, ptr noundef %11)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @dbxout_symbol(ptr noundef %0, i32 %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @debug_nesting, align 4, !tbaa !50
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 1024
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10, %14
  store i32 %5, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

20:                                               ; preds = %14
  %21 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %0, align 8
  %25 = and i64 %24, 16777216
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = and i64 %24, 65535
  %29 = icmp eq i64 %28, 32
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %30
  store i32 %5, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

35:                                               ; preds = %30, %23, %20
  %36 = load ptr, ptr @typevec, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load ptr, ptr @preinit_symbols, align 8, !tbaa !35
  %40 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %0, ptr noundef %39) #19
  store ptr %40, ptr @preinit_symbols, align 8, !tbaa !35
  %41 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

43:                                               ; preds = %35
  br i1 %22, label %97, label %44

44:                                               ; preds = %43, %48
  %45 = phi ptr [ %50, %48 ], [ %4, %43 ]
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i16
  switch i16 %47, label %83 [
    i16 10, label %48
    i16 12, label %48
    i16 16, label %51
    i16 17, label %51
    i16 18, label %51
    i16 6, label %51
  ]

48:                                               ; preds = %44, %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  br label %44, !llvm.loop !101

51:                                               ; preds = %44, %44, %44, %44
  %52 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %53, %0
  %56 = or i1 %54, %55
  br i1 %56, label %97, label %57

57:                                               ; preds = %51
  %58 = load i64, ptr %53, align 8
  %59 = and i64 %58, 65535
  %60 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %97

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 1024
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %63
  tail call void @debug_queue_symbol(ptr noundef nonnull %53) #19
  %69 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %52, align 8, !tbaa !46
  %74 = icmp eq ptr %70, %73
  %75 = icmp eq ptr %70, %0
  %76 = or i1 %75, %74
  br i1 %76, label %97, label %77

77:                                               ; preds = %72
  %78 = load i64, ptr %70, align 8
  %79 = and i64 %78, 65535
  %80 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %95, label %97

83:                                               ; preds = %44
  %84 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 12
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  %87 = icmp eq ptr %85, %0
  %88 = or i1 %86, %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = load i64, ptr %85, align 8
  %91 = and i64 %90, 65535
  %92 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %77
  %96 = phi ptr [ %70, %77 ], [ %85, %89 ]
  tail call void @debug_queue_symbol(ptr noundef nonnull %96) #19
  br label %97

97:                                               ; preds = %95, %51, %68, %72, %77, %63, %57, %89, %83, %43
  %98 = load i1, ptr @pending_bincls, align 4
  br i1 %98, label %99, label %126

99:                                               ; preds = %97, %99
  %100 = phi ptr [ %101, %99 ], [ @current_file, %97 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = getelementptr inbounds %struct.dbx_file, ptr %101, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !79
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %99, label %105, !llvm.loop !87

105:                                              ; preds = %99, %122
  %106 = phi ptr [ %108, %122 ], [ %101, %99 ]
  %107 = getelementptr inbounds %struct.dbx_file, ptr %106, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !83
  %109 = icmp eq ptr %108, null
  br i1 %109, label %125, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.dbx_file, ptr %108, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !79
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.dbx_file, ptr %108, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %116, i32 noundef 130)
  %117 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %118 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %117)
  %119 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @next_file_number, align 4, !tbaa !50
  %121 = getelementptr inbounds %struct.dbx_file, ptr %108, i64 0, i32 1
  store i32 %119, ptr %121, align 8, !tbaa !77
  store i32 2, ptr %111, align 8, !tbaa !79
  br label %122

122:                                              ; preds = %114, %110
  %123 = load ptr, ptr @current_file, align 8, !tbaa !35
  %124 = icmp eq ptr %108, %123
  br i1 %124, label %125, label %105, !llvm.loop !88

125:                                              ; preds = %122, %105
  store i1 false, ptr @pending_bincls, align 4
  br label %126

126:                                              ; preds = %97, %125
  %127 = load i64, ptr %0, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %593 [
    i16 32, label %497
    i16 29, label %129
    i16 35, label %266
    i16 34, label %485
    i16 36, label %497
  ]

129:                                              ; preds = %126
  %130 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 11), align 1, !tbaa !46
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi ptr [ null, %129 ], [ %134, %132 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %140 = add nsw i32 %139, -1
  store i32 %140, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

141:                                              ; preds = %135
  %142 = load i64, ptr %15, align 8
  %143 = and i64 %142, 33554432
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %593

145:                                              ; preds = %141
  %146 = tail call ptr @decl_function_context(ptr noundef %0) #19
  %147 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %593, label %149

149:                                              ; preds = %145
  %150 = icmp eq ptr %146, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  %155 = icmp eq ptr %153, %0
  %156 = or i1 %154, %155
  br i1 %156, label %157, label %593

157:                                              ; preds = %151, %149
  %158 = load i32, ptr %136, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 43
  br i1 %160, label %161, label %593

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !46
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 45
  br i1 %166, label %167, label %593

167:                                              ; preds = %161
  %168 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !50
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  tail call fastcc void @output_used_types()
  br label %171

171:                                              ; preds = %170, %167
  tail call fastcc void @dbxout_begin_complex_stabs()
  %172 = tail call ptr @decl_assembler_name(ptr noundef %0) #19
  %173 = getelementptr inbounds %struct.tree_identifier, ptr %172, i64 0, i32 1, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !46
  %175 = zext i32 %174 to i64
  store i64 %175, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %176 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %177 = getelementptr inbounds i8, ptr %176, i64 %175
  %178 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %179 = icmp ugt ptr %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %174) #19
  br label %181

181:                                              ; preds = %171, %180
  %182 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %183 = tail call ptr @decl_assembler_name(ptr noundef %0) #19
  %184 = getelementptr inbounds %struct.tree_identifier, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %182, ptr align 1 %185, i64 %186, i1 false)
  %187 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %188 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %189 = getelementptr inbounds i8, ptr %188, i64 %187
  store ptr %189, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %190 = getelementptr inbounds i8, ptr %189, i64 2
  %191 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %192 = icmp ugt ptr %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %194

194:                                              ; preds = %181, %193
  %195 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %196 = load i64, ptr %0, align 8
  %197 = and i64 %196, 134217728
  %198 = icmp eq i64 %197, 0
  %199 = select i1 %198, ptr @.str.9, ptr @.str.8
  %200 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %195, ptr nonnull align 1 %199, i64 %200, i1 false)
  %201 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %202 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %203 = getelementptr inbounds i8, ptr %202, i64 %201
  store ptr %203, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %204 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %194
  tail call fastcc void @dbxout_type(ptr noundef nonnull %205, i32 noundef 0)
  br label %210

208:                                              ; preds = %194
  %209 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  tail call fastcc void @dbxout_type(ptr noundef %209, i32 noundef 0)
  br label %210

210:                                              ; preds = %208, %207
  br i1 %150, label %264, label %211

211:                                              ; preds = %210
  %212 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  %214 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %215 = icmp ugt ptr %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %217

217:                                              ; preds = %211, %216
  %218 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %219 = getelementptr inbounds i8, ptr %218, i64 1
  store ptr %219, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %218, align 1, !tbaa !46
  %220 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %221 = getelementptr inbounds %struct.tree_identifier, ptr %220, i64 0, i32 1, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !46
  %223 = zext i32 %222 to i64
  store i64 %223, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %224 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %225 = getelementptr inbounds i8, ptr %224, i64 %223
  %226 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %227 = icmp ugt ptr %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %217
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %222) #19
  br label %229

229:                                              ; preds = %217, %228
  %230 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %231 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %232 = getelementptr inbounds %struct.tree_identifier, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  %234 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %230, ptr align 1 %233, i64 %234, i1 false)
  %235 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %236 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %237 = getelementptr inbounds i8, ptr %236, i64 %235
  store ptr %237, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %238 = getelementptr inbounds i8, ptr %237, i64 1
  %239 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %240 = icmp ugt ptr %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %229
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %242

242:                                              ; preds = %229, %241
  %243 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %244 = getelementptr inbounds i8, ptr %243, i64 1
  store ptr %244, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %243, align 1, !tbaa !46
  %245 = getelementptr inbounds %struct.tree_decl_minimal, ptr %146, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = getelementptr inbounds %struct.tree_identifier, ptr %246, i64 0, i32 1, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !46
  %249 = zext i32 %248 to i64
  store i64 %249, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %250 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %251 = getelementptr inbounds i8, ptr %250, i64 %249
  %252 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %253 = icmp ugt ptr %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %248) #19
  br label %255

255:                                              ; preds = %242, %254
  %256 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %257 = load ptr, ptr %245, align 8, !tbaa !46
  %258 = getelementptr inbounds %struct.tree_identifier, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  %260 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %256, ptr align 1 %259, i64 %260, i1 false)
  %261 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %262 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %263 = getelementptr inbounds i8, ptr %262, i64 %261
  store ptr %263, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %264

264:                                              ; preds = %255, %210
  %265 = load ptr, ptr %162, align 8, !tbaa !46
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef nonnull %0, i32 noundef 36, ptr noundef %265, i32 noundef 0)
  br label %593

266:                                              ; preds = %126
  %267 = and i64 %127, 4194304
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i64, ptr %15, align 8
  %271 = and i64 %270, 33554432
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %266, %269
  %274 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %275 = add nsw i32 %274, -1
  store i32 %275, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

276:                                              ; preds = %269
  %277 = load ptr, ptr %7, align 8, !tbaa !46
  %278 = icmp eq ptr %277, null
  br i1 %278, label %409, label %279

279:                                              ; preds = %276
  %280 = load i64, ptr %4, align 8
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65535
  %283 = add nsw i32 %282, -16
  %284 = icmp ult i32 %283, 3
  br i1 %284, label %285, label %342

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  %288 = icmp ne ptr %287, %0
  %289 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %290 = icmp ne i8 %289, 0
  %291 = select i1 %288, i1 true, i1 %290
  br i1 %291, label %342, label %292

292:                                              ; preds = %285
  %293 = load i64, ptr %287, align 8
  %294 = and i64 %293, 4194304
  %295 = icmp ne i64 %294, 0
  %296 = and i64 %270, 4096
  %297 = icmp eq i64 %296, 0
  %298 = or i1 %297, %295
  br i1 %298, label %342, label %299

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  %302 = icmp eq ptr %301, null
  br i1 %302, label %342, label %303

303:                                              ; preds = %299
  %304 = tail call i32 @host_integerp(ptr noundef nonnull %301, i32 noundef 1) #19
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %342, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %286, align 8, !tbaa !46
  %308 = load i64, ptr %307, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 35
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.tree_decl_minimal, ptr %307, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !46
  br label %314

314:                                              ; preds = %311, %306
  %315 = phi ptr [ %313, %311 ], [ %307, %306 ]
  tail call fastcc void @dbxout_begin_complex_stabs()
  %316 = getelementptr inbounds %struct.tree_identifier, ptr %315, i64 0, i32 1
  %317 = getelementptr inbounds %struct.tree_identifier, ptr %315, i64 0, i32 1, i32 1
  %318 = load i32, ptr %317, align 8, !tbaa !46
  %319 = zext i32 %318 to i64
  store i64 %319, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %320 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %321 = getelementptr inbounds i8, ptr %320, i64 %319
  %322 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %323 = icmp ugt ptr %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %314
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %318) #19
  br label %325

325:                                              ; preds = %314, %324
  %326 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %327 = load ptr, ptr %316, align 8, !tbaa !46
  %328 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %326, ptr align 1 %327, i64 %328, i1 false)
  %329 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %330 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %331 = getelementptr inbounds i8, ptr %330, i64 %329
  store ptr %331, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %332 = getelementptr inbounds i8, ptr %331, i64 2
  %333 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %334 = icmp ugt ptr %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %325
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %336

336:                                              ; preds = %325, %335
  %337 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %338 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %337, ptr nonnull align 1 @.str.10, i64 %338, i1 false)
  %339 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %340 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %341 = getelementptr inbounds i8, ptr %340, i64 %339
  store ptr %341, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0)
  br label %342

342:                                              ; preds = %279, %336, %303, %299, %292, %285
  tail call fastcc void @dbxout_begin_complex_stabs()
  %343 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %342
  tail call fastcc void @dbxout_class_name_qualifiers(ptr noundef %0)
  br label %346

346:                                              ; preds = %345, %342
  %347 = load ptr, ptr %7, align 8, !tbaa !46
  %348 = getelementptr inbounds %struct.tree_identifier, ptr %347, i64 0, i32 1, i32 1
  %349 = load i32, ptr %348, align 8, !tbaa !46
  %350 = zext i32 %349 to i64
  store i64 %350, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %351 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %352 = getelementptr inbounds i8, ptr %351, i64 %350
  %353 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %354 = icmp ugt ptr %352, %353
  br i1 %354, label %355, label %356

355:                                              ; preds = %346
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %349) #19
  br label %356

356:                                              ; preds = %346, %355
  %357 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %358 = load ptr, ptr %7, align 8, !tbaa !46
  %359 = getelementptr inbounds %struct.tree_identifier, ptr %358, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !46
  %361 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %357, ptr align 1 %360, i64 %361, i1 false)
  %362 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %363 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %364 = getelementptr inbounds i8, ptr %363, i64 %362
  store ptr %364, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %365 = getelementptr inbounds i8, ptr %364, i64 1
  %366 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %367 = icmp ugt ptr %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %356
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %369

369:                                              ; preds = %356, %368
  %370 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %371 = getelementptr inbounds i8, ptr %370, i64 1
  store ptr %371, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %370, align 1, !tbaa !46
  %372 = load i64, ptr %4, align 8
  %373 = trunc i64 %372 to i32
  %374 = and i32 %373, 65535
  %375 = add nsw i32 %374, -16
  %376 = icmp ult i32 %375, 3
  br i1 %376, label %377, label %400

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %379 = load ptr, ptr %378, align 8, !tbaa !46
  %380 = icmp eq ptr %379, %0
  br i1 %380, label %381, label %400

381:                                              ; preds = %377
  %382 = load i64, ptr %15, align 8
  %383 = and i64 %382, 4096
  %384 = icmp ne i64 %383, 0
  %385 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %386 = icmp ne i8 %385, 0
  %387 = select i1 %384, i1 %386, i1 false
  br i1 %387, label %388, label %400

388:                                              ; preds = %381
  %389 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %390 = getelementptr inbounds i8, ptr %389, i64 1
  %391 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %392 = icmp ugt ptr %390, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %388
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %394

394:                                              ; preds = %388, %393
  %395 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %396 = getelementptr inbounds i8, ptr %395, i64 1
  store ptr %396, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 84, ptr %395, align 1, !tbaa !46
  %397 = load ptr, ptr %378, align 8, !tbaa !46
  %398 = load i64, ptr %397, align 8
  %399 = or i64 %398, 4194304
  store i64 %399, ptr %397, align 8
  br label %400

400:                                              ; preds = %369, %394, %381, %377
  %401 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %402 = getelementptr inbounds i8, ptr %401, i64 1
  %403 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %404 = icmp ugt ptr %402, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %406

406:                                              ; preds = %400, %405
  %407 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %408, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 116, ptr %407, align 1, !tbaa !46
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef %0, i32 noundef 128, ptr noundef null, i32 noundef 0)
  br label %409

409:                                              ; preds = %406, %276
  %410 = phi i32 [ 1, %406 ], [ 0, %276 ]
  br i1 %278, label %411, label %463

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  %414 = icmp eq ptr %413, null
  br i1 %414, label %463, label %415

415:                                              ; preds = %411
  %416 = load i64, ptr %413, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 1
  br i1 %418, label %423, label %419

419:                                              ; preds = %415
  %420 = getelementptr inbounds %struct.tree_decl_minimal, ptr %413, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !46
  %422 = icmp eq ptr %421, null
  br i1 %422, label %463, label %423

423:                                              ; preds = %419, %415
  %424 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = icmp ne ptr %425, null
  %427 = and i64 %416, 4194304
  %428 = icmp eq i64 %427, 0
  %429 = and i1 %428, %426
  br i1 %429, label %430, label %463

430:                                              ; preds = %423
  %431 = icmp eq i64 %417, 35
  br i1 %431, label %432, label %435

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.tree_decl_minimal, ptr %413, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !46
  br label %435

435:                                              ; preds = %432, %430
  %436 = phi ptr [ %434, %432 ], [ %413, %430 ]
  tail call fastcc void @dbxout_begin_complex_stabs()
  %437 = getelementptr inbounds %struct.tree_identifier, ptr %436, i64 0, i32 1
  %438 = getelementptr inbounds %struct.tree_identifier, ptr %436, i64 0, i32 1, i32 1
  %439 = load i32, ptr %438, align 8, !tbaa !46
  %440 = zext i32 %439 to i64
  store i64 %440, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %441 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %442 = getelementptr inbounds i8, ptr %441, i64 %440
  %443 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %444 = icmp ugt ptr %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %435
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %439) #19
  br label %446

446:                                              ; preds = %435, %445
  %447 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %448 = load ptr, ptr %437, align 8, !tbaa !46
  %449 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %447, ptr align 1 %448, i64 %449, i1 false)
  %450 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %451 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %452 = getelementptr inbounds i8, ptr %451, i64 %450
  store ptr %452, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %453 = getelementptr inbounds i8, ptr %452, i64 2
  %454 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %455 = icmp ugt ptr %453, %454
  br i1 %455, label %456, label %457

456:                                              ; preds = %446
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %457

457:                                              ; preds = %446, %456
  %458 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %459 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %458, ptr nonnull align 1 @.str.10, i64 %459, i1 false)
  %460 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %461 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %462 = getelementptr inbounds i8, ptr %461, i64 %460
  store ptr %462, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  tail call fastcc void @dbxout_type(ptr noundef %4, i32 noundef 1)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0)
  br label %463

463:                                              ; preds = %419, %457, %423, %411, %409
  %464 = phi i32 [ 1, %457 ], [ %410, %423 ], [ %410, %411 ], [ %410, %409 ], [ %410, %419 ]
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %482

466:                                              ; preds = %463
  %467 = load i64, ptr %4, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 6
  br i1 %469, label %470, label %482

470:                                              ; preds = %466
  tail call fastcc void @dbxout_begin_complex_stabs()
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %471 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %472 = getelementptr inbounds i8, ptr %471, i64 3
  %473 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %474 = icmp ugt ptr %472, %473
  br i1 %474, label %475, label %476

475:                                              ; preds = %470
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %476

476:                                              ; preds = %470, %475
  %477 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %478 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %477, ptr nonnull align 1 @.str.11, i64 %478, i1 false)
  %479 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %480 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %481 = getelementptr inbounds i8, ptr %480, i64 %479
  store ptr %481, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0)
  br label %482

482:                                              ; preds = %476, %466, %463
  %483 = load i64, ptr %0, align 8
  %484 = or i64 %483, 4194304
  store i64 %484, ptr %0, align 8
  br label %593

485:                                              ; preds = %126
  %486 = load i64, ptr %15, align 8
  %487 = and i64 %486, 67108864
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %491, label %489

489:                                              ; preds = %485
  %490 = tail call ptr @decl_value_expr_lookup(ptr noundef %0) #19
  br label %491

491:                                              ; preds = %489, %485
  %492 = phi ptr [ %490, %489 ], [ %0, %485 ]
  %493 = load i64, ptr %492, align 8
  %494 = and i64 %493, 65535
  %495 = icmp eq i64 %494, 32
  br i1 %495, label %497, label %496

496:                                              ; preds = %491
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2801, ptr noundef nonnull @.str.13) #19
  br label %497

497:                                              ; preds = %126, %496, %491, %126
  %498 = phi ptr [ %492, %491 ], [ %492, %496 ], [ %0, %126 ], [ %0, %126 ]
  %499 = getelementptr inbounds %struct.tree_decl_common, ptr %498, i64 0, i32 2
  %500 = load i64, ptr %499, align 8
  %501 = and i64 %500, 33554432
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %593

503:                                              ; preds = %497
  %504 = load i64, ptr %498, align 8
  %505 = and i64 %504, 68157440
  %506 = icmp eq i64 %505, 68157440
  br i1 %506, label %507, label %584

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.tree_decl_common, ptr %498, i64 0, i32 5
  %509 = load ptr, ptr %508, align 8, !tbaa !46
  %510 = icmp eq ptr %509, null
  br i1 %510, label %584, label %511

511:                                              ; preds = %507
  %512 = tail call i32 @host_integerp(ptr noundef nonnull %509, i32 noundef 0) #19
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %584, label %514

514:                                              ; preds = %511
  %515 = load i64, ptr %498, align 8
  %516 = and i64 %515, 4194304
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %584

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.tree_decl_minimal, ptr %498, i64 0, i32 4
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = icmp eq ptr %520, null
  br i1 %521, label %525, label %522

522:                                              ; preds = %518
  %523 = load i64, ptr %520, align 8
  %524 = trunc i64 %523 to i16
  switch i16 %524, label %584 [
    i16 4, label %525
    i16 38, label %525
  ]

525:                                              ; preds = %522, %522, %518
  %526 = and i64 %515, 134217728
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %584

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.tree_common, ptr %498, i64 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  %531 = load i64, ptr %530, align 8
  %532 = trunc i64 %531 to i16
  switch i16 %532, label %593 [
    i16 8, label %533
    i16 6, label %533
  ]

533:                                              ; preds = %528, %528
  %534 = load ptr, ptr %508, align 8, !tbaa !46
  %535 = getelementptr inbounds %struct.tree_int_cst, ptr %534, i64 0, i32 1
  %536 = load i64, ptr %535, align 8, !tbaa !46
  tail call fastcc void @dbxout_begin_complex_stabs()
  tail call fastcc void @dbxout_symbol_name(ptr noundef nonnull %498, ptr noundef null, i32 noundef 99)
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %537 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %538 = getelementptr inbounds i8, ptr %537, i64 2
  %539 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %540 = icmp ugt ptr %538, %539
  br i1 %540, label %541, label %542

541:                                              ; preds = %533
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %542

542:                                              ; preds = %533, %541
  %543 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %544 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %543, ptr nonnull align 1 @.str.14, i64 %544, i1 false)
  %545 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %546 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %547 = getelementptr inbounds i8, ptr %546, i64 %545
  store ptr %547, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  tail call fastcc void @stabstr_D(i64 noundef %536)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0)
  %548 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %549 = add nsw i32 %548, -1
  store i32 %549, ptr @debug_nesting, align 4, !tbaa !50
  %550 = icmp eq i32 %549, 0
  %551 = load i32, ptr @symbol_queue_index, align 4
  %552 = icmp sgt i32 %551, 0
  %553 = select i1 %550, i1 %552, i1 false
  br i1 %553, label %554, label %631

554:                                              ; preds = %542
  %555 = load i1, ptr @pending_bincls, align 4
  br i1 %555, label %556, label %583

556:                                              ; preds = %554, %556
  %557 = phi ptr [ %558, %556 ], [ @current_file, %554 ]
  %558 = load ptr, ptr %557, align 8, !tbaa !35
  %559 = getelementptr inbounds %struct.dbx_file, ptr %558, i64 0, i32 3
  %560 = load i32, ptr %559, align 8, !tbaa !79
  %561 = icmp eq i32 %560, 1
  br i1 %561, label %556, label %562, !llvm.loop !87

562:                                              ; preds = %556, %579
  %563 = phi ptr [ %565, %579 ], [ %558, %556 ]
  %564 = getelementptr inbounds %struct.dbx_file, ptr %563, i64 0, i32 5
  %565 = load ptr, ptr %564, align 8, !tbaa !83
  %566 = icmp eq ptr %565, null
  br i1 %566, label %582, label %567

567:                                              ; preds = %562
  %568 = getelementptr inbounds %struct.dbx_file, ptr %565, i64 0, i32 3
  %569 = load i32, ptr %568, align 8, !tbaa !79
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %571, label %579

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.dbx_file, ptr %565, i64 0, i32 4
  %573 = load ptr, ptr %572, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %573, i32 noundef 130)
  %574 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %575 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %574)
  %576 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %577 = add nsw i32 %576, 1
  store i32 %577, ptr @next_file_number, align 4, !tbaa !50
  %578 = getelementptr inbounds %struct.dbx_file, ptr %565, i64 0, i32 1
  store i32 %576, ptr %578, align 8, !tbaa !77
  store i32 2, ptr %568, align 8, !tbaa !79
  br label %579

579:                                              ; preds = %571, %567
  %580 = load ptr, ptr @current_file, align 8, !tbaa !35
  %581 = icmp eq ptr %565, %580
  br i1 %581, label %582, label %562, !llvm.loop !88

582:                                              ; preds = %579, %562
  store i1 false, ptr @pending_bincls, align 4
  br label %583

583:                                              ; preds = %554, %582
  tail call void @debug_flush_symbol_queue() #19
  br label %631

584:                                              ; preds = %522, %525, %514, %511, %507, %503
  %585 = tail call fastcc ptr @dbxout_expand_expr(ptr noundef nonnull %498)
  %586 = icmp eq ptr %585, null
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %589 = add nsw i32 %588, -1
  store i32 %589, ptr @debug_nesting, align 4, !tbaa !50
  br label %631

590:                                              ; preds = %584
  %591 = tail call ptr @eliminate_regs(ptr noundef nonnull %585, i32 noundef 0, ptr noundef null) #19
  %592 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %498, ptr noundef %4, ptr noundef null, ptr noundef %591), !range !80
  br label %593

593:                                              ; preds = %151, %126, %528, %497, %157, %161, %145, %141, %590, %482, %264
  %594 = phi i32 [ 0, %497 ], [ %592, %590 ], [ 1, %482 ], [ 0, %141 ], [ 0, %145 ], [ 0, %161 ], [ 1, %264 ], [ 0, %157 ], [ 0, %528 ], [ 0, %126 ], [ 0, %151 ]
  %595 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %596 = add nsw i32 %595, -1
  store i32 %596, ptr @debug_nesting, align 4, !tbaa !50
  %597 = icmp eq i32 %596, 0
  %598 = load i32, ptr @symbol_queue_index, align 4
  %599 = icmp sgt i32 %598, 0
  %600 = select i1 %597, i1 %599, i1 false
  br i1 %600, label %601, label %631

601:                                              ; preds = %593
  %602 = load i1, ptr @pending_bincls, align 4
  br i1 %602, label %603, label %630

603:                                              ; preds = %601, %603
  %604 = phi ptr [ %605, %603 ], [ @current_file, %601 ]
  %605 = load ptr, ptr %604, align 8, !tbaa !35
  %606 = getelementptr inbounds %struct.dbx_file, ptr %605, i64 0, i32 3
  %607 = load i32, ptr %606, align 8, !tbaa !79
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %603, label %609, !llvm.loop !87

609:                                              ; preds = %603, %626
  %610 = phi ptr [ %612, %626 ], [ %605, %603 ]
  %611 = getelementptr inbounds %struct.dbx_file, ptr %610, i64 0, i32 5
  %612 = load ptr, ptr %611, align 8, !tbaa !83
  %613 = icmp eq ptr %612, null
  br i1 %613, label %629, label %614

614:                                              ; preds = %609
  %615 = getelementptr inbounds %struct.dbx_file, ptr %612, i64 0, i32 3
  %616 = load i32, ptr %615, align 8, !tbaa !79
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %618, label %626

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.dbx_file, ptr %612, i64 0, i32 4
  %620 = load ptr, ptr %619, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %620, i32 noundef 130)
  %621 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %622 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %621)
  %623 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %624 = add nsw i32 %623, 1
  store i32 %624, ptr @next_file_number, align 4, !tbaa !50
  %625 = getelementptr inbounds %struct.dbx_file, ptr %612, i64 0, i32 1
  store i32 %623, ptr %625, align 8, !tbaa !77
  store i32 2, ptr %615, align 8, !tbaa !79
  br label %626

626:                                              ; preds = %618, %614
  %627 = load ptr, ptr @current_file, align 8, !tbaa !35
  %628 = icmp eq ptr %612, %627
  br i1 %628, label %629, label %609, !llvm.loop !88

629:                                              ; preds = %626, %609
  store i1 false, ptr @pending_bincls, align 4
  br label %630

630:                                              ; preds = %601, %629
  tail call void @debug_flush_symbol_queue() #19
  br label %631

631:                                              ; preds = %542, %593, %630, %583, %587, %273, %138, %38, %34, %19
  %632 = phi i32 [ 0, %19 ], [ 0, %587 ], [ 0, %273 ], [ 0, %138 ], [ 0, %38 ], [ 0, %34 ], [ 1, %583 ], [ %594, %630 ], [ %594, %593 ], [ 1, %542 ]
  ret i32 %632
}

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @debug_queue_symbol(ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_used_types() unnamed_addr #9 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %9 = tail call i64 @htab_elements(ptr noundef nonnull %6) #19
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %10) #19
  store ptr %11, ptr %1, align 8, !tbaa !35
  %12 = load ptr, ptr @cfun, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  call void @htab_traverse(ptr noundef %14, ptr noundef nonnull @output_used_types_helper, ptr noundef nonnull %1) #19
  %15 = load ptr, ptr %1, align 8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2
  %18 = select i1 %16, ptr null, ptr %17
  br i1 %16, label %22, label %19

19:                                               ; preds = %8
  %20 = load i32, ptr %15, align 8, !tbaa !108
  %21 = zext i32 %20 to i64
  br label %22

22:                                               ; preds = %8, %19
  %23 = phi i64 [ %21, %19 ], [ 0, %8 ]
  call void @spec_qsort(ptr noundef %18, i64 noundef %23, i64 noundef 8, ptr noundef nonnull @output_types_sort) #19
  br label %24

24:                                               ; preds = %38, %22
  %25 = phi i64 [ %39, %38 ], [ 0, %22 ]
  %26 = load ptr, ptr %1, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 8, !tbaa !108
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %26, i64 0, i32 2, i64 %25
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %24, %28, %32
  %36 = phi ptr [ %34, %32 ], [ null, %28 ], [ null, %24 ]
  %37 = phi i1 [ false, %32 ], [ true, %28 ], [ true, %24 ]
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  call void @debug_queue_symbol(ptr noundef %36) #19
  %39 = add nuw i64 %25, 1
  br label %24, !llvm.loop !110

40:                                               ; preds = %35
  br i1 %27, label %42, label %41

41:                                               ; preds = %40
  call void @free(ptr noundef %26)
  br label %42

42:                                               ; preds = %40, %41
  store ptr null, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  br label %43

43:                                               ; preds = %42, %4, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_begin_complex_stabs() unnamed_addr #9 !prof !34 {
  %1 = load i1, ptr @pending_bincls, align 4
  br i1 %1, label %2, label %29

2:                                                ; preds = %0, %2
  %3 = phi ptr [ %4, %2 ], [ @current_file, %0 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.dbx_file, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %2, label %8, !llvm.loop !87

8:                                                ; preds = %2, %25
  %9 = phi ptr [ %11, %25 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.dbx_file, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dbx_file, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !79
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dbx_file, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %19, i32 noundef 130)
  %20 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %21 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %20)
  %22 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @next_file_number, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.dbx_file, ptr %11, i64 0, i32 1
  store i32 %22, ptr %24, align 8, !tbaa !77
  store i32 2, ptr %14, align 8, !tbaa !79
  br label %25

25:                                               ; preds = %17, %13
  %26 = load ptr, ptr @current_file, align 8, !tbaa !35
  %27 = icmp eq ptr %11, %26
  br i1 %27, label %28, label %8, !llvm.loop !88

28:                                               ; preds = %25, %8
  store i1 false, ptr @pending_bincls, align 4
  br label %29

29:                                               ; preds = %0, %28
  %30 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %31 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %30)
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %33 = tail call i32 @putc(i32 noundef 34, ptr noundef %32)
  ret void
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_type(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 14
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi ptr [ %14, %8 ], [ %0, %2 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  store ptr %26, ptr %3, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  store ptr %28, ptr %4, align 8, !tbaa !35
  br label %38

29:                                               ; preds = %20
  %30 = call zeroext i8 @subrange_type_for_debug_p(ptr noundef nonnull %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load ptr, ptr %21, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  store ptr %35, ptr %3, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  store ptr %37, ptr %4, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %24, %29, %32, %15
  %39 = phi ptr [ %16, %24 ], [ %16, %29 ], [ %33, %32 ], [ %16, %15 ]
  %40 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  br label %58

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 35
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 33554432
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, i32 %1, i32 0
  br label %58

58:                                               ; preds = %52, %44, %48, %42
  %59 = phi i32 [ %1, %42 ], [ %1, %48 ], [ %1, %44 ], [ %57, %52 ]
  %60 = phi ptr [ %43, %42 ], [ %39, %48 ], [ %39, %44 ], [ %39, %52 ]
  %61 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %58
  %65 = load i64, ptr %62, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 35
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_decl_non_common, ptr %62, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  br label %76

74:                                               ; preds = %68, %64, %58
  %75 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 16
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, ptr %78, ptr %60
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %76
  %86 = load i32, ptr @next_type_number, align 4, !tbaa !50
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @next_type_number, align 4, !tbaa !50
  store i32 %86, ptr %82, align 8, !tbaa !46
  %88 = load i32, ptr @typevec_len, align 4, !tbaa !50
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load ptr, ptr @typevec, align 8, !tbaa !35
  %92 = shl nsw i32 %88, 1
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, 12
  %95 = call ptr @ggc_realloc_stat(ptr noundef %91, i64 noundef %94) #19
  store ptr %95, ptr @typevec, align 8, !tbaa !35
  %96 = load i32, ptr @typevec_len, align 4, !tbaa !50
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.typeinfo, ptr %95, i64 %97
  %99 = mul nsw i64 %97, 12
  call void @llvm.memset.p0.i64(ptr align 4 %98, i8 0, i64 %99, i1 false)
  %100 = load i32, ptr @typevec_len, align 4, !tbaa !50
  %101 = shl nsw i32 %100, 1
  store i32 %101, ptr @typevec_len, align 4, !tbaa !50
  br label %102

102:                                              ; preds = %90, %85
  %103 = load i1, ptr @pending_bincls, align 4
  br i1 %103, label %104, label %131

104:                                              ; preds = %102, %104
  %105 = phi ptr [ %106, %104 ], [ @current_file, %102 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !35
  %107 = getelementptr inbounds %struct.dbx_file, ptr %106, i64 0, i32 3
  %108 = load i32, ptr %107, align 8, !tbaa !79
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %104, label %110, !llvm.loop !87

110:                                              ; preds = %104, %127
  %111 = phi ptr [ %113, %127 ], [ %106, %104 ]
  %112 = getelementptr inbounds %struct.dbx_file, ptr %111, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !83
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.dbx_file, ptr %113, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !79
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.dbx_file, ptr %113, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !84
  call void @dbxout_begin_simple_stabs(ptr noundef %121, i32 noundef 130)
  %122 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %123 = call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %122)
  %124 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr @next_file_number, align 4, !tbaa !50
  %126 = getelementptr inbounds %struct.dbx_file, ptr %113, i64 0, i32 1
  store i32 %124, ptr %126, align 8, !tbaa !77
  store i32 2, ptr %116, align 8, !tbaa !79
  br label %127

127:                                              ; preds = %119, %115
  %128 = load ptr, ptr @current_file, align 8, !tbaa !35
  %129 = icmp eq ptr %113, %128
  br i1 %129, label %130, label %110, !llvm.loop !88

130:                                              ; preds = %127, %110
  store i1 false, ptr @pending_bincls, align 4
  br label %131

131:                                              ; preds = %102, %130
  %132 = load ptr, ptr @current_file, align 8, !tbaa !35
  %133 = getelementptr inbounds %struct.dbx_file, ptr %132, i64 0, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !77
  %135 = load ptr, ptr @typevec, align 8, !tbaa !35
  %136 = load i32, ptr %82, align 8, !tbaa !46
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.typeinfo, ptr %135, i64 %137, i32 1
  store i32 %134, ptr %138, align 4, !tbaa !111
  %139 = getelementptr inbounds %struct.dbx_file, ptr %132, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !78
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %139, align 4, !tbaa !78
  %142 = load i32, ptr %82, align 8, !tbaa !46
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.typeinfo, ptr %135, i64 %143, i32 2
  store i32 %140, ptr %144, align 4, !tbaa !113
  br label %145

145:                                              ; preds = %131, %76
  %146 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !50
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %176, label %148

148:                                              ; preds = %145
  %149 = load i64, ptr %81, align 8
  %150 = trunc i64 %149 to i16
  switch i16 %150, label %166 [
    i16 16, label %151
    i16 17, label %151
    i16 18, label %151
    i16 6, label %151
  ]

151:                                              ; preds = %148, %148, %148, %148
  %152 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %166, label %155

155:                                              ; preds = %151
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 65535
  %158 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.tree_decl_common, ptr %153, i64 0, i32 2
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 1024
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %148, %161, %155, %151
  %167 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 12
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = load i64, ptr %168, align 8
  %172 = and i64 %171, 65535
  %173 = icmp eq i64 %172, 35
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %161
  %175 = phi ptr [ %153, %161 ], [ %168, %170 ]
  call void @debug_queue_symbol(ptr noundef nonnull %175) #19
  br label %176

176:                                              ; preds = %174, %170, %166, %145
  call fastcc void @dbxout_type_index(ptr noundef %81)
  %177 = load ptr, ptr @typevec, align 8, !tbaa !35
  %178 = load i32, ptr %82, align 8, !tbaa !46
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.typeinfo, ptr %177, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !114
  switch i32 %181, label %191 [
    i32 2, label %1295
    i32 1, label %182
  ]

182:                                              ; preds = %176
  %183 = icmp eq i32 %59, 0
  br i1 %183, label %1295, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = icmp eq ptr %186, null
  br i1 %187, label %1295, label %188

188:                                              ; preds = %184
  %189 = call i32 @host_integerp(ptr noundef nonnull %186, i32 noundef 1) #19
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %1295, label %191

191:                                              ; preds = %188, %176
  %192 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  %194 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %195 = icmp ugt ptr %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %197

197:                                              ; preds = %191, %196
  %198 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  store ptr %199, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 61, ptr %198, align 1, !tbaa !46
  %200 = load ptr, ptr @typevec, align 8, !tbaa !35
  %201 = load i32, ptr %82, align 8, !tbaa !46
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.typeinfo, ptr %200, i64 %202
  store i32 2, ptr %203, align 4, !tbaa !114
  %204 = load i64, ptr %81, align 8
  %205 = trunc i64 %204 to i32
  %206 = lshr i32 %205, 20
  %207 = and i32 %206, 1
  %208 = load i64, ptr %78, align 8
  %209 = trunc i64 %208 to i32
  %210 = lshr i32 %209, 20
  %211 = and i32 %210, 1
  %212 = icmp ugt i32 %207, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %197
  %214 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %215 = getelementptr inbounds i8, ptr %214, i64 1
  %216 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %217 = icmp ugt ptr %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %219

219:                                              ; preds = %213, %218
  %220 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 107, ptr %220, align 1, !tbaa !46
  %222 = load i64, ptr %81, align 8
  %223 = trunc i64 %222 to i32
  %224 = lshr i32 %223, 18
  %225 = and i32 %224, 2
  %226 = call ptr @build_qualified_type(ptr noundef nonnull %81, i32 noundef %225) #19
  call fastcc void @dbxout_type(ptr noundef %226, i32 noundef 0)
  br label %1295

227:                                              ; preds = %197
  %228 = lshr i32 %205, 19
  %229 = and i32 %228, 1
  %230 = lshr i32 %209, 19
  %231 = and i32 %230, 1
  %232 = icmp ugt i32 %229, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %227
  %234 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %235 = getelementptr inbounds i8, ptr %234, i64 1
  %236 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %237 = icmp ugt ptr %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %239

239:                                              ; preds = %233, %238
  %240 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %241 = getelementptr inbounds i8, ptr %240, i64 1
  store ptr %241, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 66, ptr %240, align 1, !tbaa !46
  %242 = load i64, ptr %81, align 8
  %243 = trunc i64 %242 to i32
  %244 = lshr i32 %243, 20
  %245 = and i32 %244, 1
  %246 = call ptr @build_qualified_type(ptr noundef nonnull %81, i32 noundef %245) #19
  call fastcc void @dbxout_type(ptr noundef %246, i32 noundef 0)
  br label %1295

247:                                              ; preds = %227
  %248 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 16
  %249 = load ptr, ptr %248, align 8, !tbaa !46
  %250 = icmp eq ptr %78, %249
  br i1 %250, label %276, label %251

251:                                              ; preds = %247
  %252 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !50
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %271, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 12
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = getelementptr inbounds %struct.tree_decl_non_common, ptr %256, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !46
  %259 = load i64, ptr %258, align 8
  %260 = trunc i64 %259 to i16
  switch i16 %260, label %271 [
    i16 16, label %261
    i16 17, label %261
    i16 18, label %261
    i16 6, label %261
  ]

261:                                              ; preds = %254, %254, %254, %254
  %262 = getelementptr inbounds %struct.tree_common, ptr %258, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = icmp eq ptr %263, null
  br i1 %264, label %271, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.tree_decl_common, ptr %263, i64 0, i32 2
  %267 = load i64, ptr %266, align 8
  %268 = and i64 %267, 1024
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  call void @debug_queue_symbol(ptr noundef nonnull %263) #19
  br label %271

271:                                              ; preds = %254, %261, %265, %270, %251
  %272 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 12
  %273 = load ptr, ptr %272, align 8, !tbaa !46
  %274 = getelementptr inbounds %struct.tree_decl_non_common, ptr %273, i64 0, i32 3
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %275, i32 noundef 0)
  br label %1295

276:                                              ; preds = %247
  %277 = trunc i64 %204 to i16
  switch i16 %277, label %1294 [
    i16 19, label %278
    i16 22, label %278
    i16 8, label %279
    i16 9, label %430
    i16 11, label %430
    i16 7, label %460
    i16 13, label %500
    i16 15, label %619
    i16 16, label %730
    i16 17, label %730
    i16 18, label %730
    i16 6, label %1028
    i16 10, label %1189
    i16 21, label %1200
    i16 5, label %1237
    i16 12, label %1263
    i16 20, label %1283
  ]

278:                                              ; preds = %276, %276
  call fastcc void @dbxout_type_index(ptr noundef nonnull %81)
  br label %1295

279:                                              ; preds = %276
  %280 = load ptr, ptr @integer_types, align 16, !tbaa !35
  %281 = icmp eq ptr %81, %280
  %282 = and i64 %204, 2097152
  %283 = icmp eq i64 %282, 0
  %284 = and i1 %283, %281
  br i1 %284, label %285, label %305

285:                                              ; preds = %279
  %286 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %287 = getelementptr inbounds i8, ptr %286, i64 1
  %288 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %289 = icmp ugt ptr %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %285
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %291

291:                                              ; preds = %285, %290
  %292 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %293 = getelementptr inbounds i8, ptr %292, i64 1
  store ptr %293, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 114, ptr %292, align 1, !tbaa !46
  call fastcc void @dbxout_type_index(ptr noundef nonnull %81)
  store i64 7, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %294 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %295 = getelementptr inbounds i8, ptr %294, i64 7
  %296 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %297 = icmp ugt ptr %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %291
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 7) #19
  br label %299

299:                                              ; preds = %291, %298
  %300 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %301 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %300, ptr nonnull align 1 @.str.32, i64 %301, i1 false)
  %302 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %303 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %304 = getelementptr inbounds i8, ptr %303, i64 %302
  store ptr %304, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

305:                                              ; preds = %279
  %306 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !46
  %308 = icmp eq ptr %307, null
  br i1 %308, label %351, label %309

309:                                              ; preds = %305
  %310 = load i64, ptr %307, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 8
  br i1 %312, label %313, label %351

313:                                              ; preds = %309
  %314 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %348, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %318 = load i32, ptr %317, align 4
  %319 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %320 = getelementptr inbounds %struct.tree_type, ptr %319, i64 0, i32 6
  %321 = load i32, ptr %320, align 4
  %322 = xor i32 %321, %318
  %323 = and i32 %322, 1023
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %348, label %325

325:                                              ; preds = %316
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %326 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %327 = getelementptr inbounds i8, ptr %326, i64 2
  %328 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %329 = icmp ugt ptr %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %331

331:                                              ; preds = %325, %330
  %332 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %333 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %332, ptr nonnull align 1 @.str.33, i64 %333, i1 false)
  %334 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %335 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %336 = getelementptr inbounds i8, ptr %335, i64 %334
  store ptr %336, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %337 = load i32, ptr %317, align 4
  %338 = and i32 %337, 1023
  %339 = zext nneg i32 %338 to i64
  call fastcc void @stabstr_D(i64 noundef %339)
  %340 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %341 = getelementptr inbounds i8, ptr %340, i64 1
  %342 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %343 = icmp ugt ptr %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %331
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %345

345:                                              ; preds = %331, %344
  %346 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %347 = getelementptr inbounds i8, ptr %346, i64 1
  store ptr %347, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %346, align 1, !tbaa !46
  br label %348

348:                                              ; preds = %345, %316, %313
  %349 = load ptr, ptr %3, align 8, !tbaa !35
  %350 = load ptr, ptr %4, align 8, !tbaa !35
  call fastcc void @dbxout_range_type(ptr noundef nonnull %81, ptr noundef %349, ptr noundef %350)
  br label %1295

351:                                              ; preds = %309, %305
  %352 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %386, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %356 = load i32, ptr %355, align 4
  %357 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %358 = getelementptr inbounds %struct.tree_type, ptr %357, i64 0, i32 6
  %359 = load i32, ptr %358, align 4
  %360 = xor i32 %359, %356
  %361 = and i32 %360, 1023
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %386, label %363

363:                                              ; preds = %354
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %364 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %365 = getelementptr inbounds i8, ptr %364, i64 2
  %366 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %367 = icmp ugt ptr %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %369

369:                                              ; preds = %363, %368
  %370 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %371 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %370, ptr nonnull align 1 @.str.33, i64 %371, i1 false)
  %372 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %373 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %374 = getelementptr inbounds i8, ptr %373, i64 %372
  store ptr %374, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %375 = load i32, ptr %355, align 4
  %376 = and i32 %375, 1023
  %377 = zext nneg i32 %376 to i64
  call fastcc void @stabstr_D(i64 noundef %377)
  %378 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %379 = getelementptr inbounds i8, ptr %378, i64 1
  %380 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %381 = icmp ugt ptr %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %369
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %383

383:                                              ; preds = %369, %382
  %384 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %385 = getelementptr inbounds i8, ptr %384, i64 1
  store ptr %385, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %384, align 1, !tbaa !46
  br label %386

386:                                              ; preds = %383, %354, %351
  %387 = load ptr, ptr %3, align 8, !tbaa !35
  %388 = load ptr, ptr %4, align 8, !tbaa !35
  %389 = call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef nonnull %81, ptr noundef %387, ptr noundef %388), !range !115
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %429, label %391

391:                                              ; preds = %386
  %392 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %393 = getelementptr inbounds i8, ptr %392, i64 1
  %394 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %395 = icmp ugt ptr %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %397

397:                                              ; preds = %391, %396
  %398 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %399 = getelementptr inbounds i8, ptr %398, i64 1
  store ptr %399, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 114, ptr %398, align 1, !tbaa !46
  %400 = load ptr, ptr %306, align 8, !tbaa !46
  %401 = icmp eq ptr %400, null
  %402 = select i1 %401, ptr %81, ptr %400
  call fastcc void @dbxout_type_index(ptr noundef nonnull %402)
  %403 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %406 = icmp ugt ptr %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %397
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %408

408:                                              ; preds = %397, %407
  %409 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %410 = getelementptr inbounds i8, ptr %409, i64 1
  store ptr %410, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %409, align 1, !tbaa !46
  %411 = load ptr, ptr %3, align 8, !tbaa !35
  call fastcc void @stabstr_O(ptr noundef %411)
  %412 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %413 = getelementptr inbounds i8, ptr %412, i64 1
  %414 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %415 = icmp ugt ptr %413, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %408
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %417

417:                                              ; preds = %408, %416
  %418 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %419 = getelementptr inbounds i8, ptr %418, i64 1
  store ptr %419, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %418, align 1, !tbaa !46
  %420 = load ptr, ptr %4, align 8, !tbaa !35
  call fastcc void @stabstr_O(ptr noundef %420)
  %421 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  %423 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %424 = icmp ugt ptr %422, %423
  br i1 %424, label %425, label %426

425:                                              ; preds = %417
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %426

426:                                              ; preds = %417, %425
  %427 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %428 = getelementptr inbounds i8, ptr %427, i64 1
  store ptr %428, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %427, align 1, !tbaa !46
  br label %1295

429:                                              ; preds = %386
  call fastcc void @dbxout_range_type(ptr noundef nonnull %81, ptr noundef %387, ptr noundef %388)
  br label %1295

430:                                              ; preds = %276, %276
  %431 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %432 = getelementptr inbounds i8, ptr %431, i64 1
  %433 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %434 = icmp ugt ptr %432, %433
  br i1 %434, label %435, label %436

435:                                              ; preds = %430
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %436

436:                                              ; preds = %430, %435
  %437 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %438 = getelementptr inbounds i8, ptr %437, i64 1
  store ptr %438, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 114, ptr %437, align 1, !tbaa !46
  %439 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  call fastcc void @dbxout_type_index(ptr noundef %439)
  %440 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %441 = getelementptr inbounds i8, ptr %440, i64 1
  %442 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %443 = icmp ugt ptr %441, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %436
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %445

445:                                              ; preds = %436, %444
  %446 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %447 = getelementptr inbounds i8, ptr %446, i64 1
  store ptr %447, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %446, align 1, !tbaa !46
  %448 = call i64 @int_size_in_bytes(ptr noundef nonnull %81) #19
  call fastcc void @stabstr_D(i64 noundef %448)
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %449 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %450 = getelementptr inbounds i8, ptr %449, i64 3
  %451 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %452 = icmp ugt ptr %450, %451
  br i1 %452, label %453, label %454

453:                                              ; preds = %445
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %454

454:                                              ; preds = %445, %453
  %455 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %456 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %455, ptr nonnull align 1 @.str.34, i64 %456, i1 false)
  %457 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %458 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %459 = getelementptr inbounds i8, ptr %458, i64 %457
  store ptr %459, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

460:                                              ; preds = %276
  %461 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %488, label %463

463:                                              ; preds = %460
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %464 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %465 = getelementptr inbounds i8, ptr %464, i64 2
  %466 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %467 = icmp ugt ptr %465, %466
  br i1 %467, label %468, label %469

468:                                              ; preds = %463
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %469

469:                                              ; preds = %463, %468
  %470 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %471 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr nonnull align 1 @.str.33, i64 %471, i1 false)
  %472 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %473 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %474 = getelementptr inbounds i8, ptr %473, i64 %472
  store ptr %474, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %475 = call i64 @int_size_in_bytes(ptr noundef nonnull %81) #19
  %476 = shl nsw i64 %475, 3
  call fastcc void @stabstr_D(i64 noundef %476)
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %477 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %478 = getelementptr inbounds i8, ptr %477, i64 5
  %479 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %480 = icmp ugt ptr %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %469
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #19
  br label %482

482:                                              ; preds = %469, %481
  %483 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %484 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %483, ptr nonnull align 1 @.str.35, i64 %484, i1 false)
  %485 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %486 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %487 = getelementptr inbounds i8, ptr %486, i64 %485
  store ptr %487, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

488:                                              ; preds = %460
  store i64 17, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %489 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %490 = getelementptr inbounds i8, ptr %489, i64 17
  %491 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %492 = icmp ugt ptr %490, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %488
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 17) #19
  br label %494

494:                                              ; preds = %488, %493
  %495 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %496 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %495, ptr nonnull align 1 @.str.36, i64 %496, i1 false)
  %497 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %498 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %499 = getelementptr inbounds i8, ptr %498, i64 %497
  store ptr %499, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

500:                                              ; preds = %276
  %501 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !46
  %503 = load i64, ptr %502, align 8
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 9
  br i1 %505, label %506, label %532

506:                                              ; preds = %500
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %507 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %508 = getelementptr inbounds i8, ptr %507, i64 3
  %509 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %510 = icmp ugt ptr %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %506
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %512

512:                                              ; preds = %506, %511
  %513 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %514 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr nonnull align 1 @.str.37, i64 %514, i1 false)
  %515 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %516 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %517 = getelementptr inbounds i8, ptr %516, i64 %515
  store ptr %517, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %518 = load ptr, ptr %501, align 8, !tbaa !46
  %519 = call i64 @int_size_in_bytes(ptr noundef %518) #19
  %520 = shl nsw i64 %519, 1
  call fastcc void @stabstr_D(i64 noundef %520)
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %521 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %522 = getelementptr inbounds i8, ptr %521, i64 3
  %523 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %524 = icmp ugt ptr %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %512
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %526

526:                                              ; preds = %512, %525
  %527 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %528 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %527, ptr nonnull align 1 @.str.34, i64 %528, i1 false)
  %529 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %530 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %531 = getelementptr inbounds i8, ptr %530, i64 %529
  store ptr %531, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

532:                                              ; preds = %500
  %533 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %534 = getelementptr inbounds i8, ptr %533, i64 1
  %535 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %536 = icmp ugt ptr %534, %535
  br i1 %536, label %537, label %538

537:                                              ; preds = %532
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %538

538:                                              ; preds = %532, %537
  %539 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %540 = getelementptr inbounds i8, ptr %539, i64 1
  store ptr %540, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 115, ptr %539, align 1, !tbaa !46
  %541 = call i64 @int_size_in_bytes(ptr noundef nonnull %81) #19
  call fastcc void @stabstr_D(i64 noundef %541)
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %542 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %543 = getelementptr inbounds i8, ptr %542, i64 5
  %544 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %545 = icmp ugt ptr %543, %544
  br i1 %545, label %546, label %547

546:                                              ; preds = %538
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #19
  br label %547

547:                                              ; preds = %538, %546
  %548 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %549 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr nonnull align 1 @.str.38, i64 %549, i1 false)
  %550 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %551 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %552 = getelementptr inbounds i8, ptr %551, i64 %550
  store ptr %552, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %553 = load ptr, ptr %501, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %553, i32 noundef 0)
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %554 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %555 = getelementptr inbounds i8, ptr %554, i64 3
  %556 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %557 = icmp ugt ptr %555, %556
  br i1 %557, label %558, label %559

558:                                              ; preds = %547
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %559

559:                                              ; preds = %547, %558
  %560 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %561 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %560, ptr nonnull align 1 @.str.3, i64 %561, i1 false)
  %562 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %563 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %564 = getelementptr inbounds i8, ptr %563, i64 %562
  store ptr %564, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %565 = load ptr, ptr %501, align 8, !tbaa !46
  %566 = getelementptr inbounds %struct.tree_type, ptr %565, i64 0, i32 6
  %567 = load i32, ptr %566, align 4
  %568 = and i32 %567, 1023
  %569 = zext nneg i32 %568 to i64
  call fastcc void @stabstr_D(i64 noundef %569)
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %570 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %571 = getelementptr inbounds i8, ptr %570, i64 6
  %572 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %573 = icmp ugt ptr %571, %572
  br i1 %573, label %574, label %575

574:                                              ; preds = %559
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #19
  br label %575

575:                                              ; preds = %559, %574
  %576 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %577 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr nonnull align 1 @.str.39, i64 %577, i1 false)
  %578 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %579 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %580 = getelementptr inbounds i8, ptr %579, i64 %578
  store ptr %580, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %581 = load ptr, ptr %501, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %581, i32 noundef 0)
  %582 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %583 = getelementptr inbounds i8, ptr %582, i64 1
  %584 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %585 = icmp ugt ptr %583, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %575
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %587

587:                                              ; preds = %575, %586
  %588 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %589 = getelementptr inbounds i8, ptr %588, i64 1
  store ptr %589, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %588, align 1, !tbaa !46
  %590 = load ptr, ptr %501, align 8, !tbaa !46
  %591 = getelementptr inbounds %struct.tree_type, ptr %590, i64 0, i32 6
  %592 = load i32, ptr %591, align 4
  %593 = and i32 %592, 1023
  %594 = zext nneg i32 %593 to i64
  call fastcc void @stabstr_D(i64 noundef %594)
  %595 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %596 = getelementptr inbounds i8, ptr %595, i64 1
  %597 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %598 = icmp ugt ptr %596, %597
  br i1 %598, label %599, label %600

599:                                              ; preds = %587
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %600

600:                                              ; preds = %587, %599
  %601 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %602 = getelementptr inbounds i8, ptr %601, i64 1
  store ptr %602, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %601, align 1, !tbaa !46
  %603 = load ptr, ptr %501, align 8, !tbaa !46
  %604 = getelementptr inbounds %struct.tree_type, ptr %603, i64 0, i32 6
  %605 = load i32, ptr %604, align 4
  %606 = and i32 %605, 1023
  %607 = zext nneg i32 %606 to i64
  call fastcc void @stabstr_D(i64 noundef %607)
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %608 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %609 = getelementptr inbounds i8, ptr %608, i64 2
  %610 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %611 = icmp ugt ptr %609, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %600
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %613

613:                                              ; preds = %600, %612
  %614 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %615 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %614, ptr nonnull align 1 @.str.40, i64 %615, i1 false)
  %616 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %617 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %618 = getelementptr inbounds i8, ptr %617, i64 %616
  store ptr %618, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %1295

619:                                              ; preds = %276
  %620 = and i64 %204, 2199023255552
  %621 = icmp ne i64 %620, 0
  %622 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %623 = icmp ne i8 %622, 0
  %624 = select i1 %621, i1 %623, i1 false
  br i1 %624, label %625, label %652

625:                                              ; preds = %619
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %626 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %627 = getelementptr inbounds i8, ptr %626, i64 2
  %628 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %629 = icmp ugt ptr %627, %628
  br i1 %629, label %630, label %631

630:                                              ; preds = %625
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %631

631:                                              ; preds = %625, %630
  %632 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %633 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %632, ptr nonnull align 1 @.str.33, i64 %633, i1 false)
  %634 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %635 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %636 = getelementptr inbounds i8, ptr %635, i64 %634
  store ptr %636, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %637 = call i64 @int_size_in_bytes(ptr noundef nonnull %81) #19
  %638 = shl nsw i64 %637, 3
  call fastcc void @stabstr_D(i64 noundef %638)
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %639 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %640 = getelementptr inbounds i8, ptr %639, i64 5
  %641 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %642 = icmp ugt ptr %640, %641
  br i1 %642, label %643, label %644

643:                                              ; preds = %631
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #19
  br label %644

644:                                              ; preds = %631, %643
  %645 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %646 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %645, ptr nonnull align 1 @.str.41, i64 %646, i1 false)
  %647 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %648 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %649 = getelementptr inbounds i8, ptr %648, i64 %647
  store ptr %649, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %650 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %651, i32 noundef 0)
  br label %1295

652:                                              ; preds = %619
  %653 = and i1 %7, %623
  br i1 %653, label %654, label %666

654:                                              ; preds = %652
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %655 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %656 = getelementptr inbounds i8, ptr %655, i64 3
  %657 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %658 = icmp ugt ptr %656, %657
  br i1 %658, label %659, label %660

659:                                              ; preds = %654
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %660

660:                                              ; preds = %654, %659
  %661 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %662 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %661, ptr nonnull align 1 @.str.42, i64 %662, i1 false)
  %663 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %664 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %665 = getelementptr inbounds i8, ptr %664, i64 %663
  store ptr %665, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %666

666:                                              ; preds = %660, %652
  %667 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %668 = load i32, ptr %667, align 4
  %669 = and i32 %668, 16777216
  %670 = icmp ne i32 %669, 0
  %671 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %672 = icmp ne i8 %671, 0
  %673 = select i1 %670, i1 %672, i1 false
  br i1 %673, label %674, label %686

674:                                              ; preds = %666
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %675 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %676 = getelementptr inbounds i8, ptr %675, i64 3
  %677 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %678 = icmp ugt ptr %676, %677
  br i1 %678, label %679, label %680

679:                                              ; preds = %674
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %680

680:                                              ; preds = %674, %679
  %681 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %682 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %681, ptr nonnull align 1 @.str.43, i64 %682, i1 false)
  %683 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %684 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %685 = getelementptr inbounds i8, ptr %684, i64 %683
  store ptr %685, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %686

686:                                              ; preds = %680, %666
  %687 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 1
  %688 = load ptr, ptr %687, align 8, !tbaa !46
  %689 = icmp eq ptr %688, null
  br i1 %689, label %690, label %714

690:                                              ; preds = %686
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %691 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %692 = getelementptr inbounds i8, ptr %691, i64 2
  %693 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %694 = icmp ugt ptr %692, %693
  br i1 %694, label %695, label %696

695:                                              ; preds = %690
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %696

696:                                              ; preds = %690, %695
  %697 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %698 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %697, ptr nonnull align 1 @.str.44, i64 %698, i1 false)
  %699 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %700 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %701 = getelementptr inbounds i8, ptr %700, i64 %699
  store ptr %701, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %702 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  call fastcc void @dbxout_type_index(ptr noundef %702)
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %703 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %704 = getelementptr inbounds i8, ptr %703, i64 6
  %705 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %706 = icmp ugt ptr %704, %705
  br i1 %706, label %707, label %708

707:                                              ; preds = %696
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #19
  br label %708

708:                                              ; preds = %696, %707
  %709 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %710 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %709, ptr nonnull align 1 @.str.45, i64 %710, i1 false)
  %711 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %712 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %713 = getelementptr inbounds i8, ptr %712, i64 %711
  store ptr %713, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %727

714:                                              ; preds = %686
  %715 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %716 = getelementptr inbounds i8, ptr %715, i64 1
  %717 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %718 = icmp ugt ptr %716, %717
  br i1 %718, label %719, label %720

719:                                              ; preds = %714
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %720

720:                                              ; preds = %714, %719
  %721 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %722 = getelementptr inbounds i8, ptr %721, i64 1
  store ptr %722, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 97, ptr %721, align 1, !tbaa !46
  %723 = getelementptr inbounds %struct.tree_type, ptr %688, i64 0, i32 13
  %724 = load ptr, ptr %723, align 8, !tbaa !46
  %725 = getelementptr inbounds %struct.tree_type, ptr %688, i64 0, i32 14
  %726 = load ptr, ptr %725, align 8, !tbaa !46
  call fastcc void @dbxout_range_type(ptr noundef nonnull %688, ptr noundef %724, ptr noundef %726)
  br label %727

727:                                              ; preds = %720, %708
  %728 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %729, i32 noundef 0)
  br label %1295

730:                                              ; preds = %276, %276, %276
  %731 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 17
  %732 = load ptr, ptr %731, align 8, !tbaa !46
  %733 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 12
  %734 = load ptr, ptr %733, align 8, !tbaa !46
  %735 = icmp eq ptr %734, null
  br i1 %735, label %749, label %736

736:                                              ; preds = %730
  %737 = load i64, ptr %734, align 8
  %738 = and i64 %737, 65535
  %739 = icmp eq i64 %738, 35
  br i1 %739, label %740, label %747

740:                                              ; preds = %736
  %741 = getelementptr inbounds %struct.tree_decl_common, ptr %734, i64 0, i32 2
  %742 = load i64, ptr %741, align 8
  %743 = and i64 %742, 1024
  %744 = icmp ne i64 %743, 0
  %745 = icmp ne i32 %59, 0
  %746 = or i1 %745, %744
  br i1 %746, label %749, label %756

747:                                              ; preds = %736
  %748 = icmp eq i32 %59, 0
  br i1 %748, label %756, label %749

749:                                              ; preds = %747, %740, %730
  %750 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 2
  %751 = load ptr, ptr %750, align 8, !tbaa !46
  %752 = icmp eq ptr %751, null
  br i1 %752, label %756, label %753

753:                                              ; preds = %749
  %754 = call i32 @host_integerp(ptr noundef nonnull %751, i32 noundef 1) #19
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %810

756:                                              ; preds = %747, %740, %753, %749
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %757 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %758 = getelementptr inbounds i8, ptr %757, i64 2
  %759 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %760 = icmp ugt ptr %758, %759
  br i1 %760, label %761, label %762

761:                                              ; preds = %756
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %762

762:                                              ; preds = %756, %761
  %763 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %764 = load i64, ptr %81, align 8
  %765 = and i64 %764, 65535
  %766 = icmp eq i64 %765, 16
  %767 = select i1 %766, ptr @.str.46, ptr @.str.47
  %768 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %763, ptr nonnull align 1 %767, i64 %768, i1 false)
  %769 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %770 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %771 = getelementptr inbounds i8, ptr %770, i64 %769
  store ptr %771, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %772 = load ptr, ptr %733, align 8, !tbaa !46
  %773 = icmp eq ptr %772, null
  br i1 %773, label %783, label %774

774:                                              ; preds = %762
  %775 = load i64, ptr %772, align 8
  %776 = and i64 %775, 65535
  %777 = icmp eq i64 %776, 35
  br i1 %777, label %778, label %782

778:                                              ; preds = %774
  %779 = getelementptr inbounds %struct.tree_decl_minimal, ptr %772, i64 0, i32 3
  %780 = load ptr, ptr %779, align 8, !tbaa !46
  %781 = icmp eq ptr %780, null
  br i1 %781, label %783, label %782

782:                                              ; preds = %778, %774
  call fastcc void @dbxout_type_name(ptr noundef nonnull %81)
  br label %797

783:                                              ; preds = %778, %762
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %784 = getelementptr inbounds i8, ptr %771, i64 2
  %785 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %786 = icmp ugt ptr %784, %785
  br i1 %786, label %787, label %788

787:                                              ; preds = %783
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %788

788:                                              ; preds = %783, %787
  %789 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %790 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %789, ptr nonnull align 1 @.str.48, i64 %790, i1 false)
  %791 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %792 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %793 = getelementptr inbounds i8, ptr %792, i64 %791
  store ptr %793, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %794 = load i32, ptr @dbxout_type.anonymous_type_number, align 4, !tbaa !50
  %795 = add nsw i32 %794, 1
  store i32 %795, ptr @dbxout_type.anonymous_type_number, align 4, !tbaa !50
  %796 = sext i32 %794 to i64
  call fastcc void @stabstr_D(i64 noundef %796)
  br label %797

797:                                              ; preds = %788, %782
  %798 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %799 = getelementptr inbounds i8, ptr %798, i64 1
  %800 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %801 = icmp ugt ptr %799, %800
  br i1 %801, label %802, label %803

802:                                              ; preds = %797
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %803

803:                                              ; preds = %797, %802
  %804 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %805 = getelementptr inbounds i8, ptr %804, i64 1
  store ptr %805, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %804, align 1, !tbaa !46
  %806 = load ptr, ptr @typevec, align 8, !tbaa !35
  %807 = load i32, ptr %82, align 8, !tbaa !46
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.typeinfo, ptr %806, i64 %808
  store i32 1, ptr %809, align 4, !tbaa !114
  br label %1295

810:                                              ; preds = %753
  %811 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %812 = getelementptr inbounds i8, ptr %811, i64 1
  %813 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %814 = icmp ugt ptr %812, %813
  br i1 %814, label %815, label %816

815:                                              ; preds = %810
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %816

816:                                              ; preds = %810, %815
  %817 = load i64, ptr %81, align 8
  %818 = and i64 %817, 65535
  %819 = icmp eq i64 %818, 16
  %820 = select i1 %819, i8 115, i8 117
  %821 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %822 = getelementptr inbounds i8, ptr %821, i64 1
  store ptr %822, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %820, ptr %821, align 1, !tbaa !46
  %823 = call i64 @int_size_in_bytes(ptr noundef nonnull %81) #19
  call fastcc void @stabstr_D(i64 noundef %823)
  %824 = icmp eq ptr %732, null
  br i1 %824, label %978, label %825

825:                                              ; preds = %816
  %826 = getelementptr inbounds %struct.tree_binfo, ptr %732, i64 0, i32 5
  %827 = load ptr, ptr %826, align 8, !tbaa !46
  %828 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %829 = icmp eq i8 %828, 0
  br i1 %829, label %853, label %830

830:                                              ; preds = %825
  %831 = getelementptr inbounds %struct.tree_binfo, ptr %732, i64 0, i32 9
  %832 = load i32, ptr %831, align 8, !tbaa !108
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %853, label %834

834:                                              ; preds = %830
  %835 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %836 = getelementptr inbounds i8, ptr %835, i64 1
  %837 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %838 = icmp ugt ptr %836, %837
  br i1 %838, label %839, label %840

839:                                              ; preds = %834
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %840

840:                                              ; preds = %834, %839
  %841 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %842 = getelementptr inbounds i8, ptr %841, i64 1
  store ptr %842, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 33, ptr %841, align 1, !tbaa !46
  %843 = load i32, ptr %831, align 8, !tbaa !108
  %844 = zext i32 %843 to i64
  call fastcc void @stabstr_U(i64 noundef %844)
  %845 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %846 = getelementptr inbounds i8, ptr %845, i64 1
  %847 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %848 = icmp ugt ptr %846, %847
  br i1 %848, label %849, label %850

849:                                              ; preds = %840
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %850

850:                                              ; preds = %840, %849
  %851 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %852 = getelementptr inbounds i8, ptr %851, i64 1
  store ptr %852, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %851, align 1, !tbaa !46
  br label %853

853:                                              ; preds = %830, %850, %825
  %854 = getelementptr inbounds %struct.tree_binfo, ptr %732, i64 0, i32 9
  %855 = icmp eq ptr %827, null
  br label %856

856:                                              ; preds = %974, %853
  %857 = phi i64 [ %977, %974 ], [ 0, %853 ]
  %858 = load i32, ptr %854, align 8, !tbaa !108
  %859 = zext i32 %858 to i64
  %860 = icmp ult i64 %857, %859
  br i1 %860, label %861, label %864

861:                                              ; preds = %856
  %862 = getelementptr inbounds %struct.VEC_tree_base, ptr %854, i64 0, i32 2, i64 %857
  %863 = load ptr, ptr %862, align 8, !tbaa !35
  br label %864

864:                                              ; preds = %856, %861
  %865 = phi ptr [ %863, %861 ], [ null, %856 ]
  br i1 %860, label %866, label %978

866:                                              ; preds = %864
  %867 = getelementptr inbounds %struct.VEC_tree_base, ptr %827, i64 0, i32 2, i64 %857
  %868 = select i1 %855, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), ptr %867
  %869 = load ptr, ptr %868, align 8, !tbaa !35
  %870 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %871 = icmp eq i8 %870, 0
  br i1 %871, label %932, label %872

872:                                              ; preds = %866
  %873 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %874 = getelementptr inbounds i8, ptr %873, i64 1
  %875 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %876 = icmp ugt ptr %874, %875
  br i1 %876, label %877, label %878

877:                                              ; preds = %872
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %878

878:                                              ; preds = %872, %877
  %879 = load i64, ptr %865, align 8
  %880 = and i64 %879, 67108864
  %881 = icmp eq i64 %880, 0
  %882 = select i1 %881, i8 48, i8 49
  %883 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %884 = getelementptr inbounds i8, ptr %883, i64 1
  store ptr %884, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %882, ptr %883, align 1, !tbaa !46
  %885 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %886 = getelementptr inbounds i8, ptr %885, i64 1
  %887 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %888 = icmp ugt ptr %886, %887
  br i1 %888, label %889, label %890

889:                                              ; preds = %878
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %890

890:                                              ; preds = %878, %889
  %891 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !35
  %892 = icmp eq ptr %869, %891
  %893 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 23), align 8
  %894 = icmp eq ptr %869, %893
  %895 = select i1 %894, i8 49, i8 48
  %896 = select i1 %892, i8 50, i8 %895
  %897 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %898 = getelementptr inbounds i8, ptr %897, i64 1
  store ptr %898, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %896, ptr %897, align 1, !tbaa !46
  %899 = load i64, ptr %865, align 8
  %900 = and i64 %899, 67108864
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %911, label %902

902:                                              ; preds = %890
  %903 = load ptr, ptr @lang_hooks, align 8, !tbaa !116
  %904 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %903, ptr noundef nonnull dereferenceable(8) @.str.20)
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %909, label %906

906:                                              ; preds = %902
  %907 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %903, ptr noundef nonnull dereferenceable(18) @.str.25)
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %911

909:                                              ; preds = %906, %902
  %910 = getelementptr inbounds %struct.tree_binfo, ptr %865, i64 0, i32 4
  br label %913

911:                                              ; preds = %906, %890
  %912 = getelementptr inbounds %struct.tree_binfo, ptr %865, i64 0, i32 1
  br label %913

913:                                              ; preds = %911, %909
  %914 = phi ptr [ %912, %911 ], [ %910, %909 ]
  %915 = load ptr, ptr %914, align 8, !tbaa !46
  %916 = call i64 @tree_low_cst(ptr noundef %915, i32 noundef 0) #19
  %917 = shl nsw i64 %916, 3
  call fastcc void @stabstr_D(i64 noundef %917)
  %918 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %919 = getelementptr inbounds i8, ptr %918, i64 1
  %920 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %921 = icmp ugt ptr %919, %920
  br i1 %921, label %922, label %923

922:                                              ; preds = %913
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %923

923:                                              ; preds = %913, %922
  %924 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %925 = getelementptr inbounds i8, ptr %924, i64 1
  store ptr %925, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %924, align 1, !tbaa !46
  %926 = getelementptr inbounds %struct.tree_common, ptr %865, i64 0, i32 2
  %927 = load ptr, ptr %926, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %927, i32 noundef 0)
  %928 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %929 = getelementptr inbounds i8, ptr %928, i64 1
  %930 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %931 = icmp ugt ptr %929, %930
  br i1 %931, label %973, label %974

932:                                              ; preds = %866
  %933 = getelementptr inbounds %struct.tree_common, ptr %865, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8, !tbaa !46
  call fastcc void @dbxout_type_name(ptr noundef %934)
  %935 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %936 = getelementptr inbounds i8, ptr %935, i64 1
  %937 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %938 = icmp ugt ptr %936, %937
  br i1 %938, label %939, label %940

939:                                              ; preds = %932
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %940

940:                                              ; preds = %932, %939
  %941 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %942 = getelementptr inbounds i8, ptr %941, i64 1
  store ptr %942, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %941, align 1, !tbaa !46
  %943 = load ptr, ptr %933, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %943, i32 noundef %59)
  %944 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %945 = getelementptr inbounds i8, ptr %944, i64 1
  %946 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %947 = icmp ugt ptr %945, %946
  br i1 %947, label %948, label %949

948:                                              ; preds = %940
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %949

949:                                              ; preds = %940, %948
  %950 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %951 = getelementptr inbounds i8, ptr %950, i64 1
  store ptr %951, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %950, align 1, !tbaa !46
  %952 = getelementptr inbounds %struct.tree_binfo, ptr %865, i64 0, i32 1
  %953 = load ptr, ptr %952, align 8, !tbaa !46
  %954 = call i64 @tree_low_cst(ptr noundef %953, i32 noundef 0) #19
  %955 = shl nsw i64 %954, 3
  call fastcc void @stabstr_D(i64 noundef %955)
  %956 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %957 = getelementptr inbounds i8, ptr %956, i64 1
  %958 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %959 = icmp ugt ptr %957, %958
  br i1 %959, label %960, label %961

960:                                              ; preds = %949
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %961

961:                                              ; preds = %949, %960
  %962 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %963 = getelementptr inbounds i8, ptr %962, i64 1
  store ptr %963, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %962, align 1, !tbaa !46
  %964 = load ptr, ptr %933, align 8, !tbaa !46
  %965 = getelementptr inbounds %struct.tree_type, ptr %964, i64 0, i32 2
  %966 = load ptr, ptr %965, align 8, !tbaa !46
  %967 = call i64 @tree_low_cst(ptr noundef %966, i32 noundef 0) #19
  %968 = shl nsw i64 %967, 3
  call fastcc void @stabstr_D(i64 noundef %968)
  %969 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %970 = getelementptr inbounds i8, ptr %969, i64 1
  %971 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %972 = icmp ugt ptr %970, %971
  br i1 %972, label %973, label %974

973:                                              ; preds = %961, %923
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %974

974:                                              ; preds = %973, %961, %923
  %975 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %976 = getelementptr inbounds i8, ptr %975, i64 1
  store ptr %976, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %975, align 1, !tbaa !46
  %977 = add nuw i64 %857, 1
  br label %856, !llvm.loop !117

978:                                              ; preds = %864, %816
  call fastcc void @dbxout_type_fields(ptr noundef nonnull %81)
  %979 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %986, label %981

981:                                              ; preds = %978
  %982 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 14
  %983 = load ptr, ptr %982, align 8, !tbaa !46
  %984 = icmp eq ptr %983, null
  br i1 %984, label %986, label %985

985:                                              ; preds = %981
  call fastcc void @dbxout_type_methods(ptr noundef nonnull %81)
  br label %986

986:                                              ; preds = %985, %981, %978
  %987 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %988 = getelementptr inbounds i8, ptr %987, i64 1
  %989 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %990 = icmp ugt ptr %988, %989
  br i1 %990, label %991, label %992

991:                                              ; preds = %986
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %992

992:                                              ; preds = %986, %991
  %993 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %994 = getelementptr inbounds i8, ptr %993, i64 1
  store ptr %994, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %993, align 1, !tbaa !46
  %995 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %1295, label %997

997:                                              ; preds = %992
  %998 = load i64, ptr %81, align 8
  %999 = and i64 %998, 65535
  %1000 = icmp eq i64 %999, 16
  br i1 %1000, label %1001, label %1295

1001:                                             ; preds = %997
  %1002 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 13
  %1003 = load ptr, ptr %1002, align 8, !tbaa !46
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1295, label %1005

1005:                                             ; preds = %1001
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1006 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1007 = getelementptr inbounds i8, ptr %1006, i64 2
  %1008 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1009 = icmp ugt ptr %1007, %1008
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1005
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %1011

1011:                                             ; preds = %1005, %1010
  %1012 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1013 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1012, ptr nonnull align 1 @.str.49, i64 %1013, i1 false)
  %1014 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1015 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1016 = getelementptr inbounds i8, ptr %1015, i64 %1014
  store ptr %1016, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1017 = load ptr, ptr %1002, align 8, !tbaa !46
  %1018 = getelementptr inbounds %struct.tree_field_decl, ptr %1017, i64 0, i32 5
  %1019 = load ptr, ptr %1018, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1019, i32 noundef 0)
  %1020 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1021 = getelementptr inbounds i8, ptr %1020, i64 1
  %1022 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1023 = icmp ugt ptr %1021, %1022
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1011
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1025

1025:                                             ; preds = %1011, %1024
  %1026 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1027 = getelementptr inbounds i8, ptr %1026, i64 1
  store ptr %1027, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %1026, align 1, !tbaa !46
  br label %1295

1028:                                             ; preds = %276
  %1029 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 12
  %1030 = load ptr, ptr %1029, align 8, !tbaa !46
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1045, label %1032

1032:                                             ; preds = %1028
  %1033 = load i64, ptr %1030, align 8
  %1034 = and i64 %1033, 65535
  %1035 = icmp eq i64 %1034, 35
  br i1 %1035, label %1036, label %1043

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds %struct.tree_decl_common, ptr %1030, i64 0, i32 2
  %1038 = load i64, ptr %1037, align 8
  %1039 = and i64 %1038, 1024
  %1040 = icmp ne i64 %1039, 0
  %1041 = icmp ne i32 %59, 0
  %1042 = or i1 %1041, %1040
  br i1 %1042, label %1045, label %1049

1043:                                             ; preds = %1032
  %1044 = icmp eq i32 %59, 0
  br i1 %1044, label %1049, label %1045

1045:                                             ; preds = %1043, %1036, %1028
  %1046 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 2
  %1047 = load ptr, ptr %1046, align 8, !tbaa !46
  %1048 = icmp eq ptr %1047, null
  br i1 %1048, label %1049, label %1073

1049:                                             ; preds = %1043, %1036, %1045
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1050 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1051 = getelementptr inbounds i8, ptr %1050, i64 2
  %1052 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1053 = icmp ugt ptr %1051, %1052
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1049
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %1055

1055:                                             ; preds = %1049, %1054
  %1056 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1057 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1056, ptr nonnull align 1 @.str.50, i64 %1057, i1 false)
  %1058 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1059 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1060 = getelementptr inbounds i8, ptr %1059, i64 %1058
  store ptr %1060, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  call fastcc void @dbxout_type_name(ptr noundef nonnull %81)
  %1061 = load ptr, ptr @typevec, align 8, !tbaa !35
  %1062 = load i32, ptr %82, align 8, !tbaa !46
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds %struct.typeinfo, ptr %1061, i64 %1063
  store i32 1, ptr %1064, align 4, !tbaa !114
  %1065 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1066 = getelementptr inbounds i8, ptr %1065, i64 1
  %1067 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1068 = icmp ugt ptr %1066, %1067
  br i1 %1068, label %1069, label %1070

1069:                                             ; preds = %1055
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1070

1070:                                             ; preds = %1055, %1069
  %1071 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1072 = getelementptr inbounds i8, ptr %1071, i64 1
  store ptr %1072, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %1071, align 1, !tbaa !46
  br label %1295

1073:                                             ; preds = %1045
  %1074 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %1075 = icmp eq i8 %1074, 0
  br i1 %1075, label %1108, label %1076

1076:                                             ; preds = %1073
  %1077 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %1078 = load i32, ptr %1077, align 4
  %1079 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %1080 = getelementptr inbounds %struct.tree_type, ptr %1079, i64 0, i32 6
  %1081 = load i32, ptr %1080, align 4
  %1082 = xor i32 %1081, %1078
  %1083 = and i32 %1082, 1023
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1108, label %1085

1085:                                             ; preds = %1076
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1086 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1087 = getelementptr inbounds i8, ptr %1086, i64 2
  %1088 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1089 = icmp ugt ptr %1087, %1088
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1085
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %1091

1091:                                             ; preds = %1085, %1090
  %1092 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1093 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1092, ptr nonnull align 1 @.str.33, i64 %1093, i1 false)
  %1094 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1095 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1096 = getelementptr inbounds i8, ptr %1095, i64 %1094
  store ptr %1096, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1097 = load i32, ptr %1077, align 4
  %1098 = and i32 %1097, 1023
  %1099 = zext nneg i32 %1098 to i64
  call fastcc void @stabstr_D(i64 noundef %1099)
  %1100 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1101 = getelementptr inbounds i8, ptr %1100, i64 1
  %1102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1103 = icmp ugt ptr %1101, %1102
  br i1 %1103, label %1104, label %1105

1104:                                             ; preds = %1091
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1105

1105:                                             ; preds = %1091, %1104
  %1106 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1107 = getelementptr inbounds i8, ptr %1106, i64 1
  store ptr %1107, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %1106, align 1, !tbaa !46
  br label %1108

1108:                                             ; preds = %1105, %1076, %1073
  %1109 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1110 = getelementptr inbounds i8, ptr %1109, i64 1
  %1111 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1112 = icmp ugt ptr %1110, %1111
  br i1 %1112, label %1113, label %1114

1113:                                             ; preds = %1108
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1114

1114:                                             ; preds = %1108, %1113
  %1115 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1116 = getelementptr inbounds i8, ptr %1115, i64 1
  store ptr %1116, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 101, ptr %1115, align 1, !tbaa !46
  %1117 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 1
  %1118 = load ptr, ptr %1117, align 8, !tbaa !46
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1180, label %1120

1120:                                             ; preds = %1114, %1174
  %1121 = phi ptr [ %1178, %1174 ], [ %1118, %1114 ]
  %1122 = getelementptr inbounds %struct.tree_list, ptr %1121, i64 0, i32 2
  %1123 = load ptr, ptr %1122, align 8, !tbaa !46
  %1124 = getelementptr inbounds %struct.tree_list, ptr %1121, i64 0, i32 1
  %1125 = load ptr, ptr %1124, align 8, !tbaa !46
  %1126 = getelementptr inbounds %struct.tree_identifier, ptr %1125, i64 0, i32 1, i32 1
  %1127 = load i32, ptr %1126, align 8, !tbaa !46
  %1128 = zext i32 %1127 to i64
  store i64 %1128, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1129 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1130 = getelementptr inbounds i8, ptr %1129, i64 %1128
  %1131 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1132 = icmp ugt ptr %1130, %1131
  br i1 %1132, label %1133, label %1134

1133:                                             ; preds = %1120
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %1127) #19
  br label %1134

1134:                                             ; preds = %1120, %1133
  %1135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1136 = load ptr, ptr %1124, align 8, !tbaa !46
  %1137 = getelementptr inbounds %struct.tree_identifier, ptr %1136, i64 0, i32 1
  %1138 = load ptr, ptr %1137, align 8, !tbaa !46
  %1139 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1135, ptr align 1 %1138, i64 %1139, i1 false)
  %1140 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %1141 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1142 = getelementptr inbounds i8, ptr %1141, i64 %1140
  store ptr %1142, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1143 = getelementptr inbounds i8, ptr %1142, i64 1
  %1144 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1145 = icmp ugt ptr %1143, %1144
  br i1 %1145, label %1146, label %1147

1146:                                             ; preds = %1134
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1147

1147:                                             ; preds = %1134, %1146
  %1148 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1149 = getelementptr inbounds i8, ptr %1148, i64 1
  store ptr %1149, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %1148, align 1, !tbaa !46
  %1150 = load i64, ptr %1123, align 8
  %1151 = and i64 %1150, 65535
  %1152 = icmp eq i64 %1151, 33
  br i1 %1152, label %1153, label %1156

1153:                                             ; preds = %1147
  %1154 = getelementptr inbounds %struct.tree_decl_common, ptr %1123, i64 0, i32 5
  %1155 = load ptr, ptr %1154, align 8, !tbaa !46
  br label %1156

1156:                                             ; preds = %1153, %1147
  %1157 = phi ptr [ %1155, %1153 ], [ %1123, %1147 ]
  %1158 = getelementptr inbounds %struct.tree_int_cst, ptr %1157, i64 0, i32 1
  %1159 = getelementptr inbounds %struct.tree_int_cst, ptr %1157, i64 0, i32 1, i32 1
  %1160 = load i64, ptr %1159, align 8, !tbaa !46
  switch i64 %1160, label %1167 [
    i64 0, label %1161
    i64 -1, label %1163
  ]

1161:                                             ; preds = %1156
  %1162 = load i64, ptr %1158, align 8, !tbaa !46
  call fastcc void @stabstr_D(i64 noundef %1162)
  br label %1168

1163:                                             ; preds = %1156
  %1164 = load i64, ptr %1158, align 8, !tbaa !46
  %1165 = icmp slt i64 %1164, 0
  br i1 %1165, label %1166, label %1167

1166:                                             ; preds = %1163
  call fastcc void @stabstr_D(i64 noundef %1164)
  br label %1168

1167:                                             ; preds = %1156, %1163
  call fastcc void @stabstr_O(ptr noundef %1157)
  br label %1168

1168:                                             ; preds = %1166, %1167, %1161
  %1169 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1170 = getelementptr inbounds i8, ptr %1169, i64 1
  %1171 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1172 = icmp ugt ptr %1170, %1171
  br i1 %1172, label %1173, label %1174

1173:                                             ; preds = %1168
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1174

1174:                                             ; preds = %1168, %1173
  %1175 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1176 = getelementptr inbounds i8, ptr %1175, i64 1
  store ptr %1176, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %1175, align 1, !tbaa !46
  %1177 = getelementptr inbounds %struct.tree_common, ptr %1121, i64 0, i32 1
  %1178 = load ptr, ptr %1177, align 8, !tbaa !46
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1180, label %1120, !llvm.loop !118

1180:                                             ; preds = %1174, %1114
  %1181 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1182 = getelementptr inbounds i8, ptr %1181, i64 1
  %1183 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1184 = icmp ugt ptr %1182, %1183
  br i1 %1184, label %1185, label %1186

1185:                                             ; preds = %1180
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1186

1186:                                             ; preds = %1180, %1185
  %1187 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1188 = getelementptr inbounds i8, ptr %1187, i64 1
  store ptr %1188, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %1187, align 1, !tbaa !46
  br label %1295

1189:                                             ; preds = %276
  %1190 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1191 = getelementptr inbounds i8, ptr %1190, i64 1
  %1192 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1193 = icmp ugt ptr %1191, %1192
  br i1 %1193, label %1194, label %1195

1194:                                             ; preds = %1189
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1195

1195:                                             ; preds = %1189, %1194
  %1196 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1197 = getelementptr inbounds i8, ptr %1196, i64 1
  store ptr %1197, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 42, ptr %1196, align 1, !tbaa !46
  %1198 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1199 = load ptr, ptr %1198, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1199, i32 noundef 0)
  br label %1295

1200:                                             ; preds = %276
  %1201 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %1202 = icmp eq i8 %1201, 0
  br i1 %1202, label %1234, label %1203

1203:                                             ; preds = %1200
  %1204 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1205 = getelementptr inbounds i8, ptr %1204, i64 1
  %1206 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1207 = icmp ugt ptr %1205, %1206
  br i1 %1207, label %1208, label %1209

1208:                                             ; preds = %1203
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1209

1209:                                             ; preds = %1203, %1208
  %1210 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1211 = getelementptr inbounds i8, ptr %1210, i64 1
  store ptr %1211, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 35, ptr %1210, align 1, !tbaa !46
  %1212 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 14
  %1213 = load ptr, ptr %1212, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1213, i32 noundef 0)
  %1214 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1215 = getelementptr inbounds i8, ptr %1214, i64 1
  %1216 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1217 = icmp ugt ptr %1215, %1216
  br i1 %1217, label %1218, label %1219

1218:                                             ; preds = %1209
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1219

1219:                                             ; preds = %1209, %1218
  %1220 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1221 = getelementptr inbounds i8, ptr %1220, i64 1
  store ptr %1221, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %1220, align 1, !tbaa !46
  %1222 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1223 = load ptr, ptr %1222, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1223, i32 noundef 0)
  %1224 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !46
  call fastcc void @dbxout_args(ptr noundef %1225)
  %1226 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1227 = getelementptr inbounds i8, ptr %1226, i64 1
  %1228 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1229 = icmp ugt ptr %1227, %1228
  br i1 %1229, label %1230, label %1231

1230:                                             ; preds = %1219
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1231

1231:                                             ; preds = %1219, %1230
  %1232 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1233 = getelementptr inbounds i8, ptr %1232, i64 1
  store ptr %1233, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %1232, align 1, !tbaa !46
  br label %1295

1234:                                             ; preds = %1200
  %1235 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1236 = load ptr, ptr %1235, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1236, i32 noundef 0)
  br label %1295

1237:                                             ; preds = %276
  %1238 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %1239 = icmp eq i8 %1238, 0
  br i1 %1239, label %1261, label %1240

1240:                                             ; preds = %1237
  %1241 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1242 = getelementptr inbounds i8, ptr %1241, i64 1
  %1243 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1244 = icmp ugt ptr %1242, %1243
  br i1 %1244, label %1245, label %1246

1245:                                             ; preds = %1240
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1246

1246:                                             ; preds = %1240, %1245
  %1247 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1248 = getelementptr inbounds i8, ptr %1247, i64 1
  store ptr %1248, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 64, ptr %1247, align 1, !tbaa !46
  %1249 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 14
  %1250 = load ptr, ptr %1249, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1250, i32 noundef 0)
  %1251 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1252 = getelementptr inbounds i8, ptr %1251, i64 1
  %1253 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1254 = icmp ugt ptr %1252, %1253
  br i1 %1254, label %1255, label %1256

1255:                                             ; preds = %1246
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1256

1256:                                             ; preds = %1246, %1255
  %1257 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1258 = getelementptr inbounds i8, ptr %1257, i64 1
  store ptr %1258, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %1257, align 1, !tbaa !46
  %1259 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1260 = load ptr, ptr %1259, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1260, i32 noundef 0)
  br label %1295

1261:                                             ; preds = %1237
  %1262 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  call fastcc void @dbxout_type(ptr noundef %1262, i32 noundef 0)
  br label %1295

1263:                                             ; preds = %276
  %1264 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %1265 = icmp eq i8 %1264, 0
  %1266 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1267 = getelementptr inbounds i8, ptr %1266, i64 1
  %1268 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1269 = icmp ugt ptr %1267, %1268
  br i1 %1265, label %1275, label %1270

1270:                                             ; preds = %1263
  br i1 %1269, label %1271, label %1272

1271:                                             ; preds = %1270
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1272

1272:                                             ; preds = %1270, %1271
  %1273 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1274 = getelementptr inbounds i8, ptr %1273, i64 1
  store ptr %1274, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 38, ptr %1273, align 1, !tbaa !46
  br label %1280

1275:                                             ; preds = %1263
  br i1 %1269, label %1276, label %1277

1276:                                             ; preds = %1275
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1277

1277:                                             ; preds = %1275, %1276
  %1278 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1279 = getelementptr inbounds i8, ptr %1278, i64 1
  store ptr %1279, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 42, ptr %1278, align 1, !tbaa !46
  br label %1280

1280:                                             ; preds = %1277, %1272
  %1281 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1282 = load ptr, ptr %1281, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1282, i32 noundef 0)
  br label %1295

1283:                                             ; preds = %276
  %1284 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1285 = getelementptr inbounds i8, ptr %1284, i64 1
  %1286 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %1287 = icmp ugt ptr %1285, %1286
  br i1 %1287, label %1288, label %1289

1288:                                             ; preds = %1283
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %1289

1289:                                             ; preds = %1283, %1288
  %1290 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %1291 = getelementptr inbounds i8, ptr %1290, i64 1
  store ptr %1291, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 102, ptr %1290, align 1, !tbaa !46
  %1292 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1293 = load ptr, ptr %1292, align 8, !tbaa !46
  call fastcc void @dbxout_type(ptr noundef %1293, i32 noundef 0)
  br label %1295

1294:                                             ; preds = %276
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2280, ptr noundef nonnull @.str.13) #19
  br label %1295

1295:                                             ; preds = %188, %803, %278, %454, %644, %727, %1186, %1195, %1280, %1289, %1294, %348, %429, %426, %299, %494, %482, %613, %526, %1025, %1001, %997, %992, %1234, %1231, %1261, %1256, %176, %182, %184, %1070, %271, %239, %219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_finish_complex_stabs(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %9) #19
  %10 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !119
  br label %12

12:                                               ; preds = %4, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %4 ]
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %15 = getelementptr inbounds i8, ptr %14, i64 2
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %17 = icmp ugt ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %19

19:                                               ; preds = %12, %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %21 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr nonnull align 1 @.str.54, i64 %21, i1 false)
  %22 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !121
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = and i64 %28, 4294967295
  %30 = icmp eq ptr %24, %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 10), align 8
  %33 = or i8 %32, 2
  store i8 %33, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 10), align 8
  br label %34

34:                                               ; preds = %19, %31
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %35 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 6), align 8, !tbaa !122
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %26
  %38 = xor i32 %35, -1
  %39 = sext i32 %38 to i64
  %40 = and i64 %37, %39
  %41 = inttoptr i64 %40 to ptr
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 1), align 8, !tbaa !123
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %40, %43
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %46, %43
  %48 = icmp sgt i64 %44, %47
  %49 = select i1 %48, ptr %45, ptr %41
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !121
  %50 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %51 = call i64 @fwrite(ptr noundef %25, i64 noundef 1, i64 noundef %29, ptr noundef %50)
  %52 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 %13
  call void @dbxout_int(i32 noundef %1)
  %55 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %56 = call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %55)
  call void @dbxout_int(i32 noundef %54)
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %58 = call i32 @putc(i32 noundef 44, ptr noundef %57)
  %59 = icmp eq ptr %2, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %34
  %61 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  call void @output_addr_const(ptr noundef %61, ptr noundef nonnull %2) #19
  br label %63

62:                                               ; preds = %34
  call void @dbxout_int(i32 noundef %3)
  br label %63

63:                                               ; preds = %62, %60
  %64 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %65 = call i32 @putc(i32 noundef 10, ptr noundef %64)
  %66 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 1), align 8, !tbaa !123
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %27, %67
  store i64 %68, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %72, %67
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %66, i64 %68
  store ptr %76, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !121
  store ptr %76, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %79

77:                                               ; preds = %70, %63
  %78 = getelementptr inbounds i8, ptr %66, i64 %68
  call void @obstack_free(ptr noundef nonnull @stabstr_ob, ptr noundef %78) #19
  br label %79

79:                                               ; preds = %77, %75
  ret void
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_class_name_qualifiers(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @decl_type_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 16
  br i1 %7, label %8, label %53

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = icmp eq i64 %14, 35
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  tail call fastcc void @dbxout_class_name_qualifiers(ptr noundef nonnull %10)
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %12, %22, %20
  %26 = phi ptr [ %24, %22 ], [ %10, %20 ], [ %10, %12 ]
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %26, i64 0, i32 1
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %26, i64 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !46
  %30 = zext i32 %29 to i64
  store i64 %30, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %34 = icmp ugt ptr %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %29) #19
  br label %36

36:                                               ; preds = %25, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %38 = load ptr, ptr %27, align 8, !tbaa !46
  %39 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %39, i1 false)
  %40 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %43 = getelementptr inbounds i8, ptr %42, i64 2
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %45 = icmp ugt ptr %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %47

47:                                               ; preds = %36, %46
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %49 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr nonnull align 1 @.str.53, i64 %49, i1 false)
  %50 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %51 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %52 = getelementptr inbounds i8, ptr %51, i64 %50
  store ptr %52, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %53

53:                                               ; preds = %47, %16, %8, %4, %1
  ret void
}

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_symbol_name(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 2
  %13 = icmp eq i64 %9, 38
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call ptr @decl_assembler_name(ptr noundef %0) #19
  br label %20

17:                                               ; preds = %7, %3
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %16, %15 ], [ %19, %17 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %21, i64 0, i32 1
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %21, i64 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !46
  %27 = zext i32 %26 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %26) #19
  br label %33

33:                                               ; preds = %23, %32
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %35 = load ptr, ptr %24, align 8, !tbaa !46
  %36 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %35, i64 %36, i1 false)
  br label %46

37:                                               ; preds = %20
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %39 = getelementptr inbounds i8, ptr %38, i64 6
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %41 = icmp ugt ptr %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #19
  br label %43

43:                                               ; preds = %37, %42
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %45 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr nonnull align 1 @.str.57, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  store ptr %49, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %50 = icmp eq ptr %1, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  store i64 %52, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %55 = icmp ugt ptr %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = trunc i64 %52 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %57) #19
  br label %58

58:                                               ; preds = %51, %56
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %60 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr nonnull align 1 %1, i64 %60, i1 false)
  %61 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %62 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %63 = getelementptr inbounds i8, ptr %62, i64 %61
  store ptr %63, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %64

64:                                               ; preds = %58, %46
  %65 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %68 = icmp ugt ptr %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %70

70:                                               ; preds = %64, %69
  %71 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %72, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %71, align 1, !tbaa !46
  %73 = icmp eq i32 %2, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %78 = icmp ugt ptr %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %80

80:                                               ; preds = %74, %79
  %81 = trunc i32 %2 to i8
  %82 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %83, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %81, ptr %82, align 1, !tbaa !46
  br label %84

84:                                               ; preds = %80, %70
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @stabstr_D(i64 noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  %3 = getelementptr inbounds i8, ptr %2, i64 64
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 48, ptr %12, align 1, !tbaa !46
  br label %56

14:                                               ; preds = %1
  %15 = icmp slt i64 %0, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %20 = icmp ugt ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %22

22:                                               ; preds = %16, %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 45, ptr %23, align 1, !tbaa !46
  %25 = trunc i64 %0 to i32
  %26 = sub i32 0, %25
  br label %29

27:                                               ; preds = %14
  %28 = trunc i64 %0 to i32
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %28, %27 ], [ %26, %22 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i32 [ %35, %31 ], [ %30, %29 ]
  %33 = phi ptr [ %38, %31 ], [ %3, %29 ]
  %34 = urem i32 %32, 10
  %35 = udiv i32 %32, 10
  %36 = trunc i32 %34 to i8
  %37 = or disjoint i8 %36, 48
  %38 = getelementptr inbounds i8, ptr %33, i64 -1
  store i8 %37, ptr %38, align 1, !tbaa !46
  %39 = icmp ult i32 %32, 10
  br i1 %39, label %40, label %31, !llvm.loop !124

40:                                               ; preds = %31
  %41 = ptrtoint ptr %3 to i64
  %42 = ptrtoint ptr %38 to i64
  %43 = sub i64 %41, %42
  store i64 %43, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %47 = icmp ugt ptr %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = trunc i64 %43 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %49) #19
  br label %50

50:                                               ; preds = %40, %48
  %51 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %52 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr nonnull align 1 %38, i64 %52, i1 false)
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %56

56:                                               ; preds = %50, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

declare void @debug_flush_symbol_queue() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @dbxout_expand_expr(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = phi ptr [ %0, %1 ], [ %26, %25 ]
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %66 [
    i16 32, label %12
    i16 34, label %20
    i16 33, label %27
    i16 36, label %27
    i16 23, label %35
    i16 41, label %37
    i16 45, label %37
    i16 46, label %37
    i16 42, label %37
  ]

12:                                               ; preds = %8
  %13 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !125
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %9, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 49152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %15, %12, %8
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 67108864
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %9) #19
  br label %8

27:                                               ; preds = %20, %8, %8
  %28 = and i64 %10, 65535
  %29 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %28, i64 11
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  br label %66

35:                                               ; preds = %8
  %36 = tail call ptr @expand_expr_real(ptr noundef nonnull %9, ptr noundef null, i32 noundef 0, i32 noundef 4, ptr noundef null) #19
  br label %66

37:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !tbaa !50
  %38 = call ptr @get_inner_reference(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %6, i8 noundef zeroext 1) #19
  %39 = call fastcc ptr @dbxout_expand_expr(ptr noundef %38)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 0) #19
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %2, align 4, !tbaa !50
  %53 = load ptr, ptr %5, align 8, !tbaa !35
  %54 = call i64 @tree_low_cst(ptr noundef %53, i32 noundef 0) #19
  %55 = call ptr @adjust_address_1(ptr noundef nonnull %39, i32 noundef %52, i64 noundef %54, i32 noundef 0, i32 noundef 1) #19
  br label %56

56:                                               ; preds = %51, %45
  %57 = phi ptr [ %55, %51 ], [ %39, %45 ]
  %58 = load i64, ptr %4, align 8, !tbaa !126
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %2, align 4, !tbaa !50
  %62 = sdiv i64 %58, 8
  %63 = call ptr @adjust_address_1(ptr noundef %57, i32 noundef %61, i64 noundef %62, i32 noundef 0, i32 noundef 1) #19
  br label %64

64:                                               ; preds = %56, %60, %48, %37, %41
  %65 = phi ptr [ null, %41 ], [ null, %37 ], [ null, %48 ], [ %63, %60 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %66

66:                                               ; preds = %8, %32, %27, %15, %64, %35
  %67 = phi ptr [ %65, %64 ], [ %36, %35 ], [ null, %15 ], [ null, %27 ], [ %34, %32 ], [ null, %8 ]
  ret ptr %67
}

declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %3, ptr %5, align 8, !tbaa !35
  %10 = load i32, ptr %3, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 39
  br i1 %12, label %13, label %26

13:                                               ; preds = %4, %17
  %14 = phi ptr [ %19, %17 ], [ %3, %4 ]
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %24 [
    i16 39, label %17
    i16 37, label %20
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %13, !llvm.loop !127

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = icmp ugt i32 %22, 52
  br i1 %23, label %250, label %24

24:                                               ; preds = %13, %20
  %25 = call ptr @alter_subreg(ptr noundef nonnull %5) #19
  store ptr %25, ptr %5, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %24, %4
  %27 = load ptr, ptr %5, align 8, !tbaa !35
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !46
  %34 = icmp sgt i32 %33, 52
  br i1 %34, label %250, label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %33, %31 ], [ -1, %26 ]
  %37 = icmp eq i32 %29, 43
  br i1 %37, label %38, label %104

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %104

44:                                               ; preds = %38
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 134217728
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %49 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %50 = icmp eq ptr %49, null
  %51 = load i32, ptr %6, align 4
  %52 = select i1 %50, i32 71, i32 86
  %53 = select i1 %50, i32 0, i32 %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %211

54:                                               ; preds = %44
  %55 = call ptr @decl_function_context(ptr noundef nonnull %0) #19
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, i32 83, i32 86
  %58 = load i32, ptr %40, align 8
  %59 = and i32 %58, 67174399
  %60 = icmp eq i32 %59, 67108909
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %62 = call ptr @get_pool_constant_mark(ptr noundef nonnull %40, ptr noundef nonnull %7) #19
  %63 = load i32, ptr %62, align 8
  %64 = trunc i32 %63 to i16
  switch i16 %64, label %72 [
    i16 45, label %65
    i16 44, label %71
  ]

65:                                               ; preds = %61
  %66 = and i32 %63, 67108864
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call ptr @get_pool_constant_mark(ptr noundef nonnull %62, ptr noundef nonnull %7) #19
  br label %72

70:                                               ; preds = %65
  store i8 1, ptr %7, align 1, !tbaa !46
  br label %72

71:                                               ; preds = %61
  store i8 1, ptr %7, align 1, !tbaa !46
  br label %72

72:                                               ; preds = %61, %71, %68, %70
  %73 = phi ptr [ %62, %68 ], [ %62, %70 ], [ %62, %71 ], [ %40, %61 ]
  %74 = load i8, ptr %7, align 1, !tbaa !46
  %75 = icmp eq i8 %74, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  br i1 %75, label %250, label %76

76:                                               ; preds = %72, %54
  %77 = phi ptr [ %73, %72 ], [ %40, %54 ]
  %78 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr @lang_hooks, align 8, !tbaa !116
  %83 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %82, ptr noundef nonnull dereferenceable(8) @.str.20)
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr @global_trees, align 16
  %86 = icmp eq ptr %79, %85
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %98

88:                                               ; preds = %81, %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %89 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %0, ptr noundef nonnull %8)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %8, align 4, !tbaa !50
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ 86, %91 ], [ %57, %88 ]
  %95 = phi i32 [ 32, %91 ], [ 40, %88 ]
  %96 = phi ptr [ null, %91 ], [ %77, %88 ]
  %97 = phi i32 [ %92, %91 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  br label %211

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 38, i32 36
  br label %211

104:                                              ; preds = %38, %35
  %105 = icmp sgt i32 %36, -1
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = zext nneg i32 %36 to i64
  %108 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !50
  br label %211

110:                                              ; preds = %104
  br i1 %37, label %111, label %195

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = load i32, ptr %113, align 8
  %115 = trunc i32 %114 to i16
  switch i16 %115, label %149 [
    i16 43, label %119
    i16 37, label %116
  ]

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !46
  switch i32 %118, label %119 [
    i32 6, label %149
    i32 7, label %149
    i32 16, label %149
  ]

119:                                              ; preds = %116, %111
  %120 = and i32 %114, 65535
  %121 = icmp eq i32 %120, 37
  %122 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  br i1 %121, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, ptr %122, align 8, !tbaa !46
  %125 = icmp ugt i32 %124, 52
  br i1 %125, label %250, label %126

126:                                              ; preds = %123
  %127 = zext nneg i32 %124 to i64
  %128 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !50
  br label %141

130:                                              ; preds = %119
  %131 = load ptr, ptr %122, align 8, !tbaa !46
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 49
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !46
  %140 = trunc i64 %139 to i32
  br label %141

141:                                              ; preds = %135, %130, %126
  %142 = phi i32 [ 114, %126 ], [ 0, %130 ], [ 0, %135 ]
  %143 = phi i32 [ 64, %126 ], [ 128, %130 ], [ 128, %135 ]
  %144 = phi i32 [ %129, %126 ], [ 0, %130 ], [ %140, %135 ]
  %145 = call ptr @make_node_stat(i32 noundef 10) #19
  %146 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  %148 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  store ptr %147, ptr %148, align 8, !tbaa !46
  br label %211

149:                                              ; preds = %116, %116, %116, %111
  br i1 %37, label %150, label %195

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 37
  br i1 %155, label %211, label %156

156:                                              ; preds = %150
  br i1 %37, label %157, label %195

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 49
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = load i32, ptr %165, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 30
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !46
  %172 = trunc i64 %171 to i32
  br label %211

173:                                              ; preds = %163, %157
  br i1 %37, label %174, label %195

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !46
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 35
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %181 = call fastcc ptr @dbxout_common_check(ptr noundef %0, ptr noundef nonnull %9)
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load ptr, ptr %5, align 8, !tbaa !35
  %185 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !46
  br label %191

189:                                              ; preds = %180
  %190 = load i32, ptr %9, align 4, !tbaa !50
  br label %191

191:                                              ; preds = %189, %183
  %192 = phi i32 [ 40, %183 ], [ 32, %189 ]
  %193 = phi ptr [ %188, %183 ], [ null, %189 ]
  %194 = phi i32 [ 0, %183 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  br label %211

195:                                              ; preds = %110, %149, %156, %174, %173
  %196 = icmp eq i32 %29, 41
  br i1 %196, label %197, label %250

197:                                              ; preds = %195
  %198 = load i64, ptr %1, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 13
  br i1 %200, label %201, label %250

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = call fastcc i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %203, ptr noundef nonnull @.str.55, ptr noundef %205), !range !80
  %207 = load ptr, ptr %5, align 8, !tbaa !35
  %208 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = call fastcc i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %203, ptr noundef nonnull @.str.56, ptr noundef %209), !range !80
  br label %250

211:                                              ; preds = %150, %98, %106, %191, %169, %141, %48, %93
  %212 = phi i32 [ %52, %48 ], [ %94, %93 ], [ 114, %106 ], [ %142, %141 ], [ 0, %169 ], [ 86, %191 ], [ %57, %98 ], [ 0, %150 ]
  %213 = phi i32 [ 32, %48 ], [ %95, %93 ], [ 64, %106 ], [ %143, %141 ], [ 128, %169 ], [ %192, %191 ], [ %103, %98 ], [ 128, %150 ]
  %214 = phi ptr [ null, %48 ], [ %96, %93 ], [ null, %106 ], [ null, %141 ], [ null, %169 ], [ %193, %191 ], [ %77, %98 ], [ null, %150 ]
  %215 = phi i32 [ %53, %48 ], [ %97, %93 ], [ %109, %106 ], [ %144, %141 ], [ %172, %169 ], [ %194, %191 ], [ 0, %98 ], [ 0, %150 ]
  %216 = phi ptr [ %1, %48 ], [ %1, %93 ], [ %1, %106 ], [ %145, %141 ], [ %1, %169 ], [ %1, %191 ], [ %1, %98 ], [ %1, %150 ]
  %217 = load i1, ptr @pending_bincls, align 4
  br i1 %217, label %218, label %245

218:                                              ; preds = %211, %218
  %219 = phi ptr [ %220, %218 ], [ @current_file, %211 ]
  %220 = load ptr, ptr %219, align 8, !tbaa !35
  %221 = getelementptr inbounds %struct.dbx_file, ptr %220, i64 0, i32 3
  %222 = load i32, ptr %221, align 8, !tbaa !79
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %218, label %224, !llvm.loop !87

224:                                              ; preds = %218, %241
  %225 = phi ptr [ %227, %241 ], [ %220, %218 ]
  %226 = getelementptr inbounds %struct.dbx_file, ptr %225, i64 0, i32 5
  %227 = load ptr, ptr %226, align 8, !tbaa !83
  %228 = icmp eq ptr %227, null
  br i1 %228, label %244, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.dbx_file, ptr %227, i64 0, i32 3
  %231 = load i32, ptr %230, align 8, !tbaa !79
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.dbx_file, ptr %227, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !84
  call void @dbxout_begin_simple_stabs(ptr noundef %235, i32 noundef 130)
  %236 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %237 = call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %236)
  %238 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr @next_file_number, align 4, !tbaa !50
  %240 = getelementptr inbounds %struct.dbx_file, ptr %227, i64 0, i32 1
  store i32 %238, ptr %240, align 8, !tbaa !77
  store i32 2, ptr %230, align 8, !tbaa !79
  br label %241

241:                                              ; preds = %233, %229
  %242 = load ptr, ptr @current_file, align 8, !tbaa !35
  %243 = icmp eq ptr %227, %242
  br i1 %243, label %244, label %224, !llvm.loop !88

244:                                              ; preds = %241, %224
  store i1 false, ptr @pending_bincls, align 4
  br label %245

245:                                              ; preds = %211, %244
  %246 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %247 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %246)
  %248 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %249 = call i32 @putc(i32 noundef 34, ptr noundef %248)
  call fastcc void @dbxout_symbol_name(ptr noundef %0, ptr noundef %2, i32 noundef %212)
  call fastcc void @dbxout_type(ptr noundef %216, i32 noundef 0)
  call fastcc void @dbxout_finish_complex_stabs(ptr noundef %0, i32 noundef %213, ptr noundef %214, i32 noundef %215)
  br label %250

250:                                              ; preds = %195, %201, %197, %123, %31, %20, %72, %245
  %251 = phi i32 [ 1, %245 ], [ 0, %72 ], [ 0, %20 ], [ 0, %31 ], [ 0, %123 ], [ 1, %201 ], [ 0, %197 ], [ 0, %195 ]
  ret i32 %251
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dbxout_syms(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1, %26
  %5 = phi ptr [ %31, %26 ], [ %0, %1 ]
  %6 = phi i32 [ %29, %26 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %26 ], [ null, %1 ]
  %8 = phi ptr [ %27, %26 ], [ null, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %9 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %5, ptr noundef nonnull %2)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %7, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %7)
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %13, %4
  %17 = phi i1 [ false, %4 ], [ true, %11 ], [ %15, %13 ]
  %18 = icmp eq ptr %7, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  br i1 %10, label %23, label %20

20:                                               ; preds = %19
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %7)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %20
  tail call fastcc void @dbxout_common_name(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 228)
  br label %24

24:                                               ; preds = %16, %23, %20
  br i1 %17, label %25, label %26

25:                                               ; preds = %24
  tail call fastcc void @dbxout_common_name(ptr noundef nonnull %5, ptr noundef %9, i32 noundef 226)
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi ptr [ %5, %25 ], [ %8, %24 ]
  %28 = tail call i32 @dbxout_symbol(ptr noundef nonnull %5, i32 poison), !range !80
  %29 = add nuw nsw i32 %28, %6
  %30 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %4, !llvm.loop !128

33:                                               ; preds = %26, %1
  %34 = phi ptr [ null, %1 ], [ %27, %26 ]
  %35 = phi ptr [ null, %1 ], [ %9, %26 ]
  %36 = phi i32 [ 0, %1 ], [ %29, %26 ]
  %37 = icmp eq ptr %35, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call fastcc void @dbxout_common_name(ptr noundef %34, ptr noundef nonnull %35, i32 noundef 228)
  br label %39

39:                                               ; preds = %38, %33
  ret i32 %36
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @dbxout_common_check(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67174399
  %5 = icmp eq i64 %4, 67108896
  br i1 %5, label %6, label %120

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 67108864
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %120, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 49152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @get_lang_number(), !range !62
  %18 = and i32 %17, 61
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %25 = load ptr, ptr %21, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %120, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %120

33:                                               ; preds = %29
  %34 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %0) #19
  %35 = tail call fastcc ptr @dbxout_expand_expr(ptr noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi ptr [ %49, %47 ], [ %43, %41 ]
  %52 = load i32, ptr %51, align 8
  %53 = trunc i32 %52 to i16
  switch i16 %53, label %120 [
    i16 45, label %54
    i16 49, label %54
  ]

54:                                               ; preds = %50, %50
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %120

58:                                               ; preds = %54
  switch i16 %53, label %110 [
    i16 49, label %59
    i16 45, label %99
  ]

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 30
  %65 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !129
  br i1 %64, label %66, label %83

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = tail call ptr %65(ptr noundef %70) #19
  %72 = load ptr, ptr %60, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !46
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %1, align 4, !tbaa !50
  %76 = load ptr, ptr %67, align 8, !tbaa !46
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 67108864
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  br label %111

83:                                               ; preds = %59
  %84 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = tail call ptr %65(ptr noundef %85) #19
  %87 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !46
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %1, align 4, !tbaa !50
  %92 = load ptr, ptr %60, align 8, !tbaa !46
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 67108864
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 2
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  br label %111

99:                                               ; preds = %58
  %100 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !129
  %101 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = tail call ptr %100(ptr noundef %102) #19
  store i32 0, ptr %1, align 4, !tbaa !50
  %104 = load i32, ptr %51, align 8
  %105 = and i32 %104, 67108864
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  br label %111

110:                                              ; preds = %58
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.58) #19
  br label %111

111:                                              ; preds = %107, %99, %96, %83, %80, %66, %110
  %112 = phi ptr [ null, %110 ], [ %71, %66 ], [ %71, %80 ], [ %86, %83 ], [ %86, %96 ], [ %103, %99 ], [ %103, %107 ]
  %113 = phi ptr [ null, %110 ], [ null, %66 ], [ %82, %80 ], [ null, %83 ], [ %98, %96 ], [ null, %99 ], [ %109, %107 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i64, ptr %113, align 8
  %117 = and i64 %116, 134217728
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %50, %119, %115, %54, %33, %37, %26, %29, %2, %6, %11, %16
  %121 = phi ptr [ null, %16 ], [ null, %11 ], [ null, %6 ], [ null, %2 ], [ null, %29 ], [ null, %26 ], [ null, %37 ], [ null, %33 ], [ null, %119 ], [ %112, %115 ], [ null, %54 ], [ null, %50 ]
  ret ptr %121
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_common_name(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  tail call fastcc void @dbxout_begin_complex_stabs()
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  store i64 %4, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %6 = getelementptr inbounds i8, ptr %5, i64 %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %10) #19
  br label %11

11:                                               ; preds = %3, %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %13 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %1, i64 %13, i1 false)
  %14 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store ptr %16, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef %0, i32 noundef %2, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_parms(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @debug_nesting, align 4, !tbaa !50
  %4 = load i1, ptr @pending_bincls, align 4
  br i1 %4, label %5, label %32

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ @current_file, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.dbx_file, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %5, label %11, !llvm.loop !87

11:                                               ; preds = %5, %28
  %12 = phi ptr [ %14, %28 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.dbx_file, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %22, i32 noundef 130)
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %24 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %23)
  %25 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @next_file_number, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.dbx_file, ptr %14, i64 0, i32 1
  store i32 %25, ptr %27, align 8, !tbaa !77
  store i32 2, ptr %17, align 8, !tbaa !79
  br label %28

28:                                               ; preds = %20, %16
  %29 = load ptr, ptr @current_file, align 8, !tbaa !35
  %30 = icmp eq ptr %14, %29
  br i1 %30, label %31, label %11, !llvm.loop !88

31:                                               ; preds = %28, %11
  store i1 false, ptr @pending_bincls, align 4
  br label %32

32:                                               ; preds = %1, %31
  %33 = icmp eq ptr %0, null
  br i1 %33, label %399, label %34

34:                                               ; preds = %32, %395
  %35 = phi ptr [ %397, %395 ], [ %0, %32 ]
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %395, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %395, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %35, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %46, i64 11
  %48 = load i8, ptr %47, align 1, !tbaa !46
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %395, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %35, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %395, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_parm_decl, ptr %35, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %395, label %58

58:                                               ; preds = %54
  %59 = tail call ptr @eliminate_regs(ptr noundef nonnull %56, i32 noundef 0, ptr noundef null) #19
  store ptr %59, ptr %55, align 8, !tbaa !46
  %60 = load ptr, ptr %51, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %63 = load ptr, ptr %51, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %58, %62
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  %66 = tail call ptr @eliminate_regs(ptr noundef %65, i32 noundef 0, ptr noundef null) #19
  tail call void @set_decl_rtl(ptr noundef nonnull %35, ptr noundef %66) #19
  %67 = load ptr, ptr %55, align 8, !tbaa !46
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 43
  br i1 %70, label %71, label %91

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 30
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !46
  %86 = trunc i64 %85 to i32
  br label %87

87:                                               ; preds = %71, %77, %83
  %88 = phi i32 [ %86, %83 ], [ 0, %77 ], [ 0, %71 ]
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  br label %342

91:                                               ; preds = %64
  %92 = load ptr, ptr %51, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %95 = load ptr, ptr %51, align 8, !tbaa !46
  br label %96

96:                                               ; preds = %91, %94
  %97 = phi ptr [ %95, %94 ], [ %92, %91 ]
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %137

101:                                              ; preds = %96
  %102 = load ptr, ptr %40, align 8, !tbaa !46
  %103 = load ptr, ptr %51, align 8, !tbaa !46
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %106 = load ptr, ptr %51, align 8, !tbaa !46
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi ptr [ %106, %105 ], [ %103, %101 ]
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = icmp ult i32 %110, 53
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load ptr, ptr %51, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  br label %127

116:                                              ; preds = %107
  %117 = load ptr, ptr %55, align 8, !tbaa !46
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 15
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = getelementptr inbounds %struct.rtvec_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  br label %127

127:                                              ; preds = %121, %115
  %128 = phi ptr [ %51, %115 ], [ %126, %121 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  br label %130

130:                                              ; preds = %127, %116, %112
  %131 = phi ptr [ %113, %112 ], [ %117, %116 ], [ %129, %127 ]
  %132 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !46
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  br label %342

137:                                              ; preds = %96
  %138 = load ptr, ptr %51, align 8, !tbaa !46
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %141 = load ptr, ptr %51, align 8, !tbaa !46
  br label %142

142:                                              ; preds = %137, %140
  %143 = phi ptr [ %141, %140 ], [ %138, %137 ]
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 43
  br i1 %146, label %147, label %226

147:                                              ; preds = %142
  %148 = load ptr, ptr %51, align 8, !tbaa !46
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %151 = load ptr, ptr %51, align 8, !tbaa !46
  br label %152

152:                                              ; preds = %147, %150
  %153 = phi ptr [ %151, %150 ], [ %148, %147 ]
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %159, label %226

159:                                              ; preds = %152
  %160 = load ptr, ptr %51, align 8, !tbaa !46
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %163 = load ptr, ptr %51, align 8, !tbaa !46
  br label %164

164:                                              ; preds = %159, %162
  %165 = phi ptr [ %163, %162 ], [ %160, %159 ]
  %166 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !46
  %170 = icmp eq i32 %169, 6
  br i1 %170, label %226, label %171

171:                                              ; preds = %164
  %172 = load ptr, ptr %51, align 8, !tbaa !46
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %175 = load ptr, ptr %51, align 8, !tbaa !46
  br label %176

176:                                              ; preds = %171, %174
  %177 = phi ptr [ %175, %174 ], [ %172, %171 ]
  %178 = getelementptr inbounds %struct.rtx_def, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %181 = load i32, ptr %180, align 8, !tbaa !46
  %182 = icmp eq i32 %181, 7
  br i1 %182, label %226, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %51, align 8, !tbaa !46
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %187 = load ptr, ptr %51, align 8, !tbaa !46
  br label %188

188:                                              ; preds = %183, %186
  %189 = phi ptr [ %187, %186 ], [ %184, %183 ]
  %190 = getelementptr inbounds %struct.rtx_def, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !46
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !46
  %194 = icmp eq i32 %193, 16
  br i1 %194, label %226, label %195

195:                                              ; preds = %188
  %196 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %197 = icmp eq i8 %196, 0
  %198 = select i1 %197, i8 80, i8 97
  %199 = load ptr, ptr %40, align 8, !tbaa !46
  %200 = load ptr, ptr %51, align 8, !tbaa !46
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %203 = load ptr, ptr %51, align 8, !tbaa !46
  br label %204

204:                                              ; preds = %195, %202
  %205 = phi ptr [ %203, %202 ], [ %200, %195 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !46
  %210 = icmp ult i32 %209, 53
  br i1 %210, label %211, label %222

211:                                              ; preds = %204
  %212 = load ptr, ptr %51, align 8, !tbaa !46
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %215 = load ptr, ptr %51, align 8, !tbaa !46
  br label %216

216:                                              ; preds = %211, %214
  %217 = phi ptr [ %215, %214 ], [ %212, %211 ]
  %218 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %221 = load i32, ptr %220, align 8, !tbaa !46
  br label %342

222:                                              ; preds = %204
  %223 = load ptr, ptr %55, align 8, !tbaa !46
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !46
  br label %342

226:                                              ; preds = %188, %176, %164, %152, %142
  %227 = load ptr, ptr %51, align 8, !tbaa !46
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %230 = load ptr, ptr %51, align 8, !tbaa !46
  br label %231

231:                                              ; preds = %226, %229
  %232 = phi ptr [ %230, %229 ], [ %227, %226 ]
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 43
  br i1 %235, label %236, label %279

236:                                              ; preds = %231
  %237 = load ptr, ptr %51, align 8, !tbaa !46
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %240 = load ptr, ptr %51, align 8, !tbaa !46
  br label %241

241:                                              ; preds = %236, %239
  %242 = phi ptr [ %240, %239 ], [ %237, %236 ]
  %243 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 43
  br i1 %247, label %248, label %279

248:                                              ; preds = %241
  %249 = load ptr, ptr %40, align 8, !tbaa !46
  %250 = load ptr, ptr %51, align 8, !tbaa !46
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %253 = load ptr, ptr %51, align 8, !tbaa !46
  br label %254

254:                                              ; preds = %248, %252
  %255 = phi ptr [ %253, %252 ], [ %250, %248 ]
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  %260 = load i32, ptr %259, align 8
  %261 = and i32 %260, 65535
  %262 = icmp eq i32 %261, 37
  br i1 %262, label %342, label %263

263:                                              ; preds = %254
  %264 = load ptr, ptr %51, align 8, !tbaa !46
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %267 = load ptr, ptr %51, align 8, !tbaa !46
  br label %268

268:                                              ; preds = %263, %266
  %269 = phi ptr [ %267, %266 ], [ %264, %263 ]
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !46
  %272 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !46
  %274 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  %276 = getelementptr inbounds %struct.rtx_def, ptr %275, i64 0, i32 1
  %277 = load i64, ptr %276, align 8, !tbaa !46
  %278 = trunc i64 %277 to i32
  br label %342

279:                                              ; preds = %241, %231
  %280 = load ptr, ptr %51, align 8, !tbaa !46
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %283 = load ptr, ptr %51, align 8, !tbaa !46
  br label %284

284:                                              ; preds = %279, %282
  %285 = phi ptr [ %283, %282 ], [ %280, %279 ]
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 65535
  %288 = icmp eq i32 %287, 43
  br i1 %288, label %289, label %395

289:                                              ; preds = %284
  %290 = load ptr, ptr %51, align 8, !tbaa !46
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %293 = load ptr, ptr %51, align 8, !tbaa !46
  br label %294

294:                                              ; preds = %289, %292
  %295 = phi ptr [ %293, %292 ], [ %290, %289 ]
  %296 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !46
  %298 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %395, label %300

300:                                              ; preds = %294
  %301 = load ptr, ptr %51, align 8, !tbaa !46
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %304 = load ptr, ptr %51, align 8, !tbaa !46
  br label %305

305:                                              ; preds = %300, %303
  %306 = phi ptr [ %304, %303 ], [ %301, %300 ]
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  %309 = load i32, ptr %308, align 8
  %310 = and i32 %309, 65535
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !50
  %314 = icmp eq i32 %313, 9
  br i1 %314, label %395, label %315

315:                                              ; preds = %305
  %316 = load ptr, ptr %40, align 8, !tbaa !46
  %317 = load ptr, ptr %51, align 8, !tbaa !46
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %320 = load ptr, ptr %51, align 8, !tbaa !46
  br label %321

321:                                              ; preds = %315, %319
  %322 = phi ptr [ %320, %319 ], [ %317, %315 ]
  %323 = getelementptr inbounds %struct.rtx_def, ptr %322, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !46
  %325 = load i32, ptr %324, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 37
  br i1 %327, label %342, label %328

328:                                              ; preds = %321
  %329 = load ptr, ptr %51, align 8, !tbaa !46
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  tail call void @make_decl_rtl(ptr noundef nonnull %35) #19
  %332 = load ptr, ptr %51, align 8, !tbaa !46
  br label %333

333:                                              ; preds = %328, %331
  %334 = phi ptr [ %332, %331 ], [ %329, %328 ]
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1, i32 0, i32 0, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !46
  %341 = trunc i64 %340 to i32
  br label %342

342:                                              ; preds = %321, %268, %254, %130, %333, %216, %222, %87
  %343 = phi ptr [ %90, %87 ], [ %102, %130 ], [ %199, %216 ], [ %199, %222 ], [ %316, %333 ], [ %249, %254 ], [ %249, %268 ], [ %316, %321 ]
  %344 = phi i8 [ 112, %87 ], [ 80, %130 ], [ %198, %216 ], [ %198, %222 ], [ 112, %333 ], [ 118, %254 ], [ 118, %268 ], [ 112, %321 ]
  %345 = phi i32 [ 160, %87 ], [ 64, %130 ], [ 64, %216 ], [ 64, %222 ], [ 160, %333 ], [ 160, %254 ], [ 160, %268 ], [ 160, %321 ]
  %346 = phi i32 [ %88, %87 ], [ %136, %130 ], [ %221, %216 ], [ %225, %222 ], [ %341, %333 ], [ 0, %254 ], [ %278, %268 ], [ 0, %321 ]
  tail call fastcc void @dbxout_begin_complex_stabs()
  %347 = load ptr, ptr %36, align 8, !tbaa !46
  %348 = icmp eq ptr %347, null
  br i1 %348, label %374, label %349

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.tree_identifier, ptr %347, i64 0, i32 1, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !46
  %352 = zext i32 %351 to i64
  store i64 %352, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %353 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %354 = getelementptr inbounds i8, ptr %353, i64 %352
  %355 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %356 = icmp ugt ptr %354, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %349
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %351) #19
  br label %358

358:                                              ; preds = %349, %357
  %359 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %360 = load ptr, ptr %36, align 8, !tbaa !46
  %361 = getelementptr inbounds %struct.tree_identifier, ptr %360, i64 0, i32 1
  %362 = load ptr, ptr %361, align 8, !tbaa !46
  %363 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %359, ptr align 1 %362, i64 %363, i1 false)
  %364 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %365 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %366 = getelementptr inbounds i8, ptr %365, i64 %364
  store ptr %366, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %367 = getelementptr inbounds i8, ptr %366, i64 1
  %368 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %369 = icmp ugt ptr %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %358
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %371

371:                                              ; preds = %358, %370
  %372 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %373 = getelementptr inbounds i8, ptr %372, i64 1
  store ptr %373, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %372, align 1, !tbaa !46
  br label %386

374:                                              ; preds = %342
  store i64 7, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %375 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %376 = getelementptr inbounds i8, ptr %375, i64 7
  %377 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %378 = icmp ugt ptr %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 7) #19
  br label %380

380:                                              ; preds = %374, %379
  %381 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %382 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %381, ptr nonnull align 1 @.str.15, i64 %382, i1 false)
  %383 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %384 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %385 = getelementptr inbounds i8, ptr %384, i64 %383
  store ptr %385, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %386

386:                                              ; preds = %380, %371
  %387 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %388 = getelementptr inbounds i8, ptr %387, i64 1
  %389 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %390 = icmp ugt ptr %388, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %392

392:                                              ; preds = %386, %391
  %393 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %394 = getelementptr inbounds i8, ptr %393, i64 1
  store ptr %394, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %344, ptr %393, align 1, !tbaa !46
  tail call fastcc void @dbxout_type(ptr noundef %343, i32 noundef 0)
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef nonnull %35, i32 noundef %345, ptr noundef null, i32 noundef %346)
  br label %395

395:                                              ; preds = %392, %305, %294, %284, %34, %39, %44, %50, %54
  %396 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !46
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %34, !llvm.loop !130

399:                                              ; preds = %395, %32
  %400 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %401 = add nsw i32 %400, -1
  store i32 %401, ptr @debug_nesting, align 4, !tbaa !50
  %402 = icmp eq i32 %401, 0
  %403 = load i32, ptr @symbol_queue_index, align 4
  %404 = icmp sgt i32 %403, 0
  %405 = select i1 %402, i1 %404, i1 false
  br i1 %405, label %406, label %436

406:                                              ; preds = %399
  %407 = load i1, ptr @pending_bincls, align 4
  br i1 %407, label %408, label %435

408:                                              ; preds = %406, %408
  %409 = phi ptr [ %410, %408 ], [ @current_file, %406 ]
  %410 = load ptr, ptr %409, align 8, !tbaa !35
  %411 = getelementptr inbounds %struct.dbx_file, ptr %410, i64 0, i32 3
  %412 = load i32, ptr %411, align 8, !tbaa !79
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %408, label %414, !llvm.loop !87

414:                                              ; preds = %408, %431
  %415 = phi ptr [ %417, %431 ], [ %410, %408 ]
  %416 = getelementptr inbounds %struct.dbx_file, ptr %415, i64 0, i32 5
  %417 = load ptr, ptr %416, align 8, !tbaa !83
  %418 = icmp eq ptr %417, null
  br i1 %418, label %434, label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.dbx_file, ptr %417, i64 0, i32 3
  %421 = load i32, ptr %420, align 8, !tbaa !79
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %423, label %431

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.dbx_file, ptr %417, i64 0, i32 4
  %425 = load ptr, ptr %424, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %425, i32 noundef 130)
  %426 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %427 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %426)
  %428 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %429 = add nsw i32 %428, 1
  store i32 %429, ptr @next_file_number, align 4, !tbaa !50
  %430 = getelementptr inbounds %struct.dbx_file, ptr %417, i64 0, i32 1
  store i32 %428, ptr %430, align 8, !tbaa !77
  store i32 2, ptr %420, align 8, !tbaa !79
  br label %431

431:                                              ; preds = %423, %419
  %432 = load ptr, ptr @current_file, align 8, !tbaa !35
  %433 = icmp eq ptr %417, %432
  br i1 %433, label %434, label %414, !llvm.loop !88

434:                                              ; preds = %431, %414
  store i1 false, ptr @pending_bincls, align 4
  br label %435

435:                                              ; preds = %406, %434
  tail call void @debug_flush_symbol_queue() #19
  br label %436

436:                                              ; preds = %435, %399
  ret void
}

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dbxout_reg_parms(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @debug_nesting, align 4, !tbaa !50
  %4 = icmp eq ptr %0, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %1, %97
  %6 = phi ptr [ %99, %97 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %97, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_parm_decl, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %97

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %21 = load ptr, ptr %17, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load ptr, ptr %17, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %31 = load ptr, ptr %17, align 8, !tbaa !46
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %27 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = icmp ult i32 %35, 53
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load ptr, ptr %17, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %43 = load ptr, ptr %17, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %43, %42 ], [ %40, %37 ]
  %46 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %39, ptr noundef null, ptr noundef %45), !range !80
  br label %97

47:                                               ; preds = %32, %22
  %48 = load ptr, ptr %17, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %51 = load ptr, ptr %17, align 8, !tbaa !46
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi ptr [ %51, %50 ], [ %48, %47 ]
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 41
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = load ptr, ptr %17, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %63 = load ptr, ptr %17, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %57, %62
  %65 = phi ptr [ %63, %62 ], [ %60, %57 ]
  %66 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %59, ptr noundef null, ptr noundef %65), !range !80
  br label %97

67:                                               ; preds = %52
  %68 = load ptr, ptr %17, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %71 = load ptr, ptr %17, align 8, !tbaa !46
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi ptr [ %71, %70 ], [ %68, %67 ]
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 43
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load ptr, ptr %17, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %81 = load ptr, ptr %17, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %77, %80
  %83 = phi ptr [ %81, %80 ], [ %78, %77 ]
  %84 = load ptr, ptr %11, align 8, !tbaa !46
  %85 = tail call i32 @rtx_equal_p(ptr noundef %83, ptr noundef %84) #19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = load ptr, ptr %17, align 8, !tbaa !46
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #19
  %93 = load ptr, ptr %17, align 8, !tbaa !46
  br label %94

94:                                               ; preds = %87, %92
  %95 = phi ptr [ %93, %92 ], [ %90, %87 ]
  %96 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %89, ptr noundef null, ptr noundef %95), !range !80
  br label %97

97:                                               ; preds = %5, %10, %64, %94, %82, %72, %44
  %98 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %5, !llvm.loop !131

101:                                              ; preds = %97, %1
  %102 = load i32, ptr @debug_nesting, align 4, !tbaa !50
  %103 = add nsw i32 %102, -1
  store i32 %103, ptr @debug_nesting, align 4, !tbaa !50
  %104 = icmp eq i32 %103, 0
  %105 = load i32, ptr @symbol_queue_index, align 4
  %106 = icmp sgt i32 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %138

108:                                              ; preds = %101
  %109 = load i1, ptr @pending_bincls, align 4
  br i1 %109, label %110, label %137

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %112, %110 ], [ @current_file, %108 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.dbx_file, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !79
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %110, label %116, !llvm.loop !87

116:                                              ; preds = %110, %133
  %117 = phi ptr [ %119, %133 ], [ %112, %110 ]
  %118 = getelementptr inbounds %struct.dbx_file, ptr %117, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !83
  %120 = icmp eq ptr %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.dbx_file, ptr %119, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !79
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.dbx_file, ptr %119, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !84
  tail call void @dbxout_begin_simple_stabs(ptr noundef %127, i32 noundef 130)
  %128 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %129 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %128)
  %130 = load i32, ptr @next_file_number, align 4, !tbaa !50
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr @next_file_number, align 4, !tbaa !50
  %132 = getelementptr inbounds %struct.dbx_file, ptr %119, i64 0, i32 1
  store i32 %130, ptr %132, align 8, !tbaa !77
  store i32 2, ptr %122, align 8, !tbaa !79
  br label %133

133:                                              ; preds = %125, %121
  %134 = load ptr, ptr @current_file, align 8, !tbaa !35
  %135 = icmp eq ptr %119, %134
  br i1 %135, label %136, label %116, !llvm.loop !88

136:                                              ; preds = %133, %116
  store i1 false, ptr @pending_bincls, align 4
  br label %137

137:                                              ; preds = %108, %136
  tail call void @debug_flush_symbol_queue() #19
  br label %138

138:                                              ; preds = %137, %101
  ret void
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_typeinfo(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #19
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_typeinfo(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8typeinfo, i32 noundef 92) #19
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_p_8typeinfo(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #13 !prof !34 {
  ret void
}

declare void @gt_ggc_m_S(ptr noundef) #3

declare void @gt_pch_n_S(ptr noundef) #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_typevec(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !35
  %3 = icmp ult ptr %2, inttoptr (i64 2 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %2) #19
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_typevec(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %2, ptr noundef nonnull @typevec, ptr noundef nonnull @gt_pch_pa_typevec, i32 noundef 217) #19
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #14

declare ptr @get_src_pwd() local_unnamed_addr #3

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @remap_debug_filename(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_lang_number() unnamed_addr #15 !prof !34 {
  %1 = load ptr, ptr @lang_hooks, align 8, !tbaa !116
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.19)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.20)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.21)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.22)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.23)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.24)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.25)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 51, i32 0
  br label %23

23:                                               ; preds = %19, %16, %13, %10, %7, %4, %0
  %24 = phi i32 [ 2, %0 ], [ 4, %4 ], [ 5, %7 ], [ 7, %10 ], [ 6, %13 ], [ 50, %16 ], [ %22, %19 ]
  ret i32 %24
}

declare void @switch_to_section(ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_block(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  %8 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #19
  %9 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.26, i32 noundef %9)
  %11 = icmp eq ptr %0, null
  br i1 %11, label %106, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %1, 0
  %14 = icmp eq ptr %2, null
  br label %15

15:                                               ; preds = %12, %102
  %16 = phi ptr [ %0, %12 ], [ %104, %102 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 20971520
  %19 = icmp eq i64 %18, 20971520
  br i1 %19, label %20, label %102

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 1
  %24 = load i32, ptr @debug_info_level, align 4, !tbaa !50
  %25 = icmp ne i32 %24, 1
  %26 = or i1 %13, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = call i32 @dbxout_syms(ptr noundef %29)
  br label %31

31:                                               ; preds = %20, %27
  %32 = phi i32 [ %30, %27 ], [ 0, %20 ]
  br i1 %14, label %34, label %33

33:                                               ; preds = %31
  call void @dbxout_reg_parms(ptr noundef nonnull %2)
  br label %34

34:                                               ; preds = %33, %31
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %98, label %36

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #19
  br i1 %13, label %39, label %37

37:                                               ; preds = %36
  %38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.28, i32 noundef %23)
  br label %39

39:                                               ; preds = %36, %37
  %40 = phi ptr [ %7, %37 ], [ %6, %36 ]
  %41 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %42 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %41)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i32 [ 192, %39 ], [ %47, %43 ]
  %45 = phi i64 [ 64, %39 ], [ %50, %43 ]
  %46 = urem i32 %44, 10
  %47 = udiv i32 %44, 10
  %48 = trunc i32 %46 to i8
  %49 = or disjoint i8 %48, 48
  %50 = add nsw i64 %45, -1
  %51 = getelementptr inbounds i8, ptr %5, i64 %50
  store i8 %49, ptr %51, align 1, !tbaa !46
  %52 = icmp ult i32 %44, 10
  br i1 %52, label %53, label %43, !llvm.loop !85

53:                                               ; preds = %43, %53
  %54 = phi i64 [ %60, %53 ], [ 61, %43 ]
  %55 = getelementptr inbounds i8, ptr %5, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !46
  %57 = sext i8 %56 to i32
  %58 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %59 = call i32 @putc(i32 noundef %57, ptr noundef %58)
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, 64
  br i1 %61, label %62, label %53, !llvm.loop !86

62:                                               ; preds = %53
  %63 = add nsw i32 %1, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  %64 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %65 = call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %64)
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %40, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #19
  %66 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  call fastcc void @dbxout_block(ptr noundef %67, i32 noundef %63, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #19
  br i1 %13, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, ptr @scope_labelno, align 4, !tbaa !50
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.30, i32 noundef %69)
  br label %73

71:                                               ; preds = %62
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @.str.29, i32 noundef %23)
  br label %73

73:                                               ; preds = %71, %68
  %74 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %75 = call i64 @fwrite(ptr nonnull @.str.4, i64 8, i64 1, ptr %74)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  br label %76

76:                                               ; preds = %76, %73
  %77 = phi i32 [ 224, %73 ], [ %80, %76 ]
  %78 = phi i64 [ 64, %73 ], [ %83, %76 ]
  %79 = urem i32 %77, 10
  %80 = udiv i32 %77, 10
  %81 = trunc i32 %79 to i8
  %82 = or disjoint i8 %81, 48
  %83 = add nsw i64 %78, -1
  %84 = getelementptr inbounds i8, ptr %4, i64 %83
  store i8 %82, ptr %84, align 1, !tbaa !46
  %85 = icmp ult i32 %77, 10
  br i1 %85, label %86, label %76, !llvm.loop !85

86:                                               ; preds = %76, %86
  %87 = phi i64 [ %93, %86 ], [ 61, %76 ]
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !46
  %90 = sext i8 %89 to i32
  %91 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %92 = call i32 @putc(i32 noundef %90, ptr noundef %91)
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %93, 64
  br i1 %94, label %95, label %86, !llvm.loop !86

95:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  %96 = load ptr, ptr @asm_out_file, align 8, !tbaa !35
  %97 = call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %96)
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %8, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #19
  br label %102

98:                                               ; preds = %34
  %99 = add nsw i32 %1, 1
  %100 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  call fastcc void @dbxout_block(ptr noundef %101, i32 noundef %99, ptr noundef null)
  br label %102

102:                                              ; preds = %95, %98, %15
  %103 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %15, !llvm.loop !132

106:                                              ; preds = %102, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #19
  ret void
}

declare ptr @function_section(ptr noundef) local_unnamed_addr #3

declare void @debug_free_queue() local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @output_used_types_helper(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %21 [
    i16 16, label %6
    i16 17, label %6
    i16 18, label %6
    i16 6, label %6
  ]

6:                                                ; preds = %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 1024
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2, %16, %10, %6
  %22 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 35
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %16
  %30 = phi ptr [ %8, %16 ], [ %23, %25 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = load i32, ptr %31, align 8, !tbaa !108
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !108
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_tree_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %30, ptr %35, align 8, !tbaa !35
  br label %36

36:                                               ; preds = %29, %21, %25
  ret i32 1
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @output_types_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 2
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 2
  br i1 %9, label %15, label %22

15:                                               ; preds = %2
  br i1 %14, label %16, label %29

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = sub i32 %18, %20
  br label %29

22:                                               ; preds = %2
  br i1 %14, label %29, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = sub i32 %25, %27
  br label %29

29:                                               ; preds = %22, %15, %23, %16
  %30 = phi i32 [ %21, %16 ], [ %28, %23 ], [ 1, %15 ], [ -1, %22 ]
  ret i32 %30
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @subrange_type_for_debug_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_type_index(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = sext i32 %4 to i64
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 40, ptr %12, align 1, !tbaa !46
  %14 = getelementptr inbounds %struct.typeinfo, ptr %2, i64 %5, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !111
  %16 = sext i32 %15 to i64
  tail call fastcc void @stabstr_D(i64 noundef %16)
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %20 = icmp ugt ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %22

22:                                               ; preds = %11, %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %23, align 1, !tbaa !46
  %25 = getelementptr inbounds %struct.typeinfo, ptr %2, i64 %5, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !113
  %27 = sext i32 %26 to i64
  tail call fastcc void @stabstr_D(i64 noundef %27)
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %33

33:                                               ; preds = %22, %32
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 41, ptr %34, align 1, !tbaa !46
  ret void
}

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_range_type(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 114, ptr %10, align 1, !tbaa !46
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @dbxout_type(ptr noundef nonnull %13, i32 noundef 0)
  br label %28

16:                                               ; preds = %9
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call fastcc void @dbxout_type(ptr noundef nonnull %0, i32 noundef 0)
  br label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call fastcc void @dbxout_type_index(ptr noundef nonnull %0)
  br label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  tail call fastcc void @dbxout_type_index(ptr noundef %27)
  br label %28

28:                                               ; preds = %20, %26, %25, %15
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %32 = icmp ugt ptr %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %35, align 1, !tbaa !46
  %37 = icmp eq ptr %1, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2), !range !115
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call fastcc void @stabstr_O(ptr noundef nonnull %1)
  br label %56

45:                                               ; preds = %41
  %46 = tail call i64 @tree_low_cst(ptr noundef nonnull %1, i32 noundef 0) #19
  tail call fastcc void @stabstr_D(i64 noundef %46)
  br label %56

47:                                               ; preds = %38, %34
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %51 = icmp ugt ptr %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %53

53:                                               ; preds = %47, %52
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 48, ptr %54, align 1, !tbaa !46
  br label %56

56:                                               ; preds = %44, %45, %53
  %57 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %60 = icmp ugt ptr %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %62

62:                                               ; preds = %56, %61
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %63, align 1, !tbaa !46
  %65 = icmp eq ptr %2, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !range !115
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call fastcc void @stabstr_O(ptr noundef nonnull %2)
  br label %75

73:                                               ; preds = %69
  %74 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 0) #19
  tail call fastcc void @stabstr_D(i64 noundef %74)
  br label %75

75:                                               ; preds = %73, %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %79 = icmp ugt ptr %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %81

81:                                               ; preds = %75, %80
  %82 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %83, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %82, align 1, !tbaa !46
  br label %96

84:                                               ; preds = %66, %62
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %85 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %86 = getelementptr inbounds i8, ptr %85, i64 3
  %87 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %88 = icmp ugt ptr %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #19
  br label %90

90:                                               ; preds = %84, %89
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %92 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %91, ptr nonnull align 1 @.str.51, i64 %92, i1 false)
  %93 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %95 = getelementptr inbounds i8, ptr %94, i64 %93
  store ptr %95, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %96

96:                                               ; preds = %90, %81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @print_int_cst_bounds_in_octal_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #17 !prof !34 {
  %4 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %5 = icmp ne i8 %4, 0
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %43

14:                                               ; preds = %8
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1023
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1023
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = icmp eq i32 %21, %25
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 2097152
  %32 = icmp ne i64 %31, 0
  %33 = icmp ugt i32 %21, 64
  %34 = or i1 %33, %32
  br i1 %34, label %44, label %37

35:                                               ; preds = %27
  %36 = icmp ugt i32 %21, 64
  br i1 %36, label %44, label %37

37:                                               ; preds = %29, %35
  %38 = icmp eq i32 %21, 64
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 2097152
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %37, %14, %8, %3
  br label %44

44:                                               ; preds = %29, %18, %35, %39, %43
  %45 = phi i8 [ 0, %43 ], [ 1, %39 ], [ 1, %35 ], [ 1, %18 ], [ 1, %29 ]
  ret i8 %45
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @stabstr_O(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !46
  %6 = load i64, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #19
  %7 = getelementptr inbounds i8, ptr %2, i64 128
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1023
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = icmp ugt i32 %12, 64
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = add nsw i32 %12, -64
  %18 = zext nneg i32 %17 to i64
  %19 = shl nsw i64 -1, %18
  %20 = xor i64 %19, -1
  %21 = and i64 %5, %20
  br label %29

22:                                               ; preds = %14
  %23 = icmp eq i32 %12, 64
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = zext nneg i32 %12 to i64
  %26 = shl nsw i64 -1, %25
  %27 = xor i64 %26, -1
  %28 = and i64 %6, %27
  br label %29

29:                                               ; preds = %22, %16, %24, %1
  %30 = phi i64 [ %6, %1 ], [ %6, %16 ], [ %28, %24 ], [ %6, %22 ]
  %31 = phi i64 [ %5, %1 ], [ %21, %16 ], [ 0, %24 ], [ 0, %22 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %35 = icmp ugt ptr %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %37

37:                                               ; preds = %29, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 48, ptr %38, align 1, !tbaa !46
  %40 = icmp eq i64 %31, 0
  %41 = icmp eq i64 %30, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %103, label %43

43:                                               ; preds = %37
  br i1 %40, label %44, label %53

44:                                               ; preds = %43, %44
  %45 = phi ptr [ %51, %44 ], [ %7, %43 ]
  %46 = phi i64 [ %49, %44 ], [ %30, %43 ]
  %47 = trunc i64 %46 to i8
  %48 = and i8 %47, 7
  %49 = lshr i64 %46, 3
  %50 = or disjoint i8 %48, 48
  %51 = getelementptr inbounds i8, ptr %45, i64 -1
  store i8 %50, ptr %51, align 1, !tbaa !46
  %52 = icmp ult i64 %46, 8
  br i1 %52, label %86, label %44, !llvm.loop !133

53:                                               ; preds = %43, %53
  %54 = phi i64 [ %59, %53 ], [ %30, %43 ]
  %55 = phi ptr [ %61, %53 ], [ %7, %43 ]
  %56 = phi i32 [ %62, %53 ], [ 1, %43 ]
  %57 = trunc i64 %54 to i8
  %58 = and i8 %57, 7
  %59 = lshr i64 %54, 3
  %60 = or disjoint i8 %58, 48
  %61 = getelementptr inbounds i8, ptr %55, i64 -1
  store i8 %60, ptr %61, align 1, !tbaa !46
  %62 = add nuw nsw i32 %56, 1
  %63 = icmp eq i32 %62, 22
  br i1 %63, label %64, label %53, !llvm.loop !134

64:                                               ; preds = %53
  %65 = icmp ult i64 %54, 16
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 764, ptr noundef nonnull @.str.13) #19
  br label %67

67:                                               ; preds = %64, %66
  %68 = shl i64 %31, 1
  %69 = and i64 %68, 6
  %70 = or i64 %59, %69
  %71 = trunc i64 %70 to i8
  %72 = add i8 %71, 48
  %73 = getelementptr inbounds i8, ptr %55, i64 -2
  store i8 %72, ptr %73, align 1, !tbaa !46
  %74 = icmp ult i64 %31, 4
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = lshr i64 %31, 2
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %84, %77 ], [ %73, %75 ]
  %79 = phi i64 [ %82, %77 ], [ %76, %75 ]
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 7
  %82 = lshr i64 %79, 3
  %83 = or disjoint i8 %81, 48
  %84 = getelementptr inbounds i8, ptr %78, i64 -1
  store i8 %83, ptr %84, align 1, !tbaa !46
  %85 = icmp ult i64 %79, 8
  br i1 %85, label %86, label %77, !llvm.loop !135

86:                                               ; preds = %77, %44, %67
  %87 = phi ptr [ %73, %67 ], [ %51, %44 ], [ %84, %77 ]
  %88 = ptrtoint ptr %7 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  store i64 %90, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %91 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %92 = getelementptr inbounds i8, ptr %91, i64 %90
  %93 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %94 = icmp ugt ptr %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = trunc i64 %90 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %96) #19
  br label %97

97:                                               ; preds = %86, %95
  %98 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %99 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %98, ptr nonnull align 1 %87, i64 %99, i1 false)
  %100 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %101 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %102 = getelementptr inbounds i8, ptr %101, i64 %100
  store ptr %102, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %103

103:                                              ; preds = %37, %97
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #19
  ret void
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_type_name(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2324, ptr noundef nonnull @.str.13) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %12 [
    i16 1, label %13
    i16 35, label %9
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2333, ptr noundef nonnull @.str.13) #19
  br label %13

13:                                               ; preds = %12, %9, %6
  %14 = phi ptr [ %3, %12 ], [ %11, %9 ], [ %3, %6 ]
  %15 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = zext i32 %16 to i64
  store i64 %17, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %16) #19
  br label %23

23:                                               ; preds = %13, %22
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %26 = load ptr, ptr %24, align 8, !tbaa !46
  %27 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %27, i1 false)
  %28 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %30 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %30, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @stabstr_U(i64 noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  %3 = getelementptr inbounds i8, ptr %2, i64 64
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 48, ptr %12, align 1, !tbaa !46
  br label %39

14:                                               ; preds = %1, %14
  %15 = phi ptr [ %21, %14 ], [ %3, %1 ]
  %16 = phi i64 [ %19, %14 ], [ %0, %1 ]
  %17 = urem i64 %16, 10
  %18 = trunc i64 %17 to i8
  %19 = udiv i64 %16, 10
  %20 = or disjoint i8 %18, 48
  %21 = getelementptr inbounds i8, ptr %15, i64 -1
  store i8 %20, ptr %21, align 1, !tbaa !46
  %22 = icmp ult i64 %16, 10
  br i1 %22, label %23, label %14, !llvm.loop !136

23:                                               ; preds = %14
  %24 = ptrtoint ptr %3 to i64
  %25 = ptrtoint ptr %21 to i64
  %26 = sub i64 %24, %25
  store i64 %26, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %30 = icmp ugt ptr %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = trunc i64 %26 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %32) #19
  br label %33

33:                                               ; preds = %23, %31
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %35 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr nonnull align 1 %21, i64 %35, i1 false)
  %36 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %38 = getelementptr inbounds i8, ptr %37, i64 %36
  store ptr %38, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %39

39:                                               ; preds = %33, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_type_fields(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %200, label %5

5:                                                ; preds = %1, %196
  %6 = phi ptr [ %198, %196 ], [ %3, %1 ]
  %7 = load ptr, ptr @global_trees, align 16, !tbaa !35
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %200, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %200, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %196, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 1024
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %196

23:                                               ; preds = %18
  %24 = icmp eq i32 %16, 31
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = tail call ptr @bit_position(ptr noundef nonnull %6) #19
  %27 = tail call i32 @host_integerp(ptr noundef %26, i32 noundef 0) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %196, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %196, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @host_integerp(ptr noundef nonnull %31, i32 noundef 1) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %196, label %36

36:                                               ; preds = %33, %23
  %37 = load i64, ptr %6, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 33
  br i1 %39, label %196, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_identifier, ptr %42, i64 0, i32 1, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !46
  %47 = zext i32 %46 to i64
  store i64 %47, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %51 = icmp ugt ptr %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %46) #19
  br label %53

53:                                               ; preds = %44, %52
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %55 = load ptr, ptr %41, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.tree_identifier, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %57, i64 %58, i1 false)
  %59 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %60 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %61 = getelementptr inbounds i8, ptr %60, i64 %59
  store ptr %61, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %62

62:                                               ; preds = %53, %40
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %66 = icmp ugt ptr %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %68

68:                                               ; preds = %62, %67
  %69 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %69, align 1, !tbaa !46
  %71 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !46
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %68
  %74 = load i64, ptr %6, align 8
  %75 = and i64 %74, 805371903
  %76 = icmp eq i64 %75, 31
  br i1 %76, label %101, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  %80 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %81 = icmp ugt ptr %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %83

83:                                               ; preds = %77, %82
  %84 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %85, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 47, ptr %84, align 1, !tbaa !46
  %86 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %89 = icmp ugt ptr %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %91

91:                                               ; preds = %83, %90
  %92 = load i64, ptr %6, align 8
  %93 = and i64 %92, 268435456
  %94 = icmp eq i64 %93, 0
  %95 = and i64 %92, 536870912
  %96 = icmp eq i64 %95, 0
  %97 = select i1 %96, i8 50, i8 49
  %98 = select i1 %94, i8 %97, i8 48
  %99 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %100, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %98, ptr %99, align 1, !tbaa !46
  br label %101

101:                                              ; preds = %73, %91, %68
  %102 = load i64, ptr %6, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 31
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tree_field_decl, ptr %6, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = load ptr, ptr %10, align 8, !tbaa !46
  br label %111

111:                                              ; preds = %105, %109
  %112 = phi ptr [ %110, %109 ], [ %107, %105 ]
  tail call fastcc void @dbxout_type(ptr noundef %112, i32 noundef 0)
  %113 = load i64, ptr %6, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 32
  br i1 %115, label %116, label %167

116:                                              ; preds = %111
  %117 = and i64 %113, 67108864
  %118 = icmp ne i64 %117, 0
  %119 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %120 = icmp ne i8 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %155

122:                                              ; preds = %116
  %123 = tail call ptr @decl_assembler_name(ptr noundef nonnull %6) #19
  %124 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %127 = icmp ugt ptr %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %129

129:                                              ; preds = %122, %128
  %130 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %131, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %130, align 1, !tbaa !46
  %132 = getelementptr inbounds %struct.tree_identifier, ptr %123, i64 0, i32 1
  %133 = getelementptr inbounds %struct.tree_identifier, ptr %123, i64 0, i32 1, i32 1
  %134 = load i32, ptr %133, align 8, !tbaa !46
  %135 = zext i32 %134 to i64
  store i64 %135, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %136 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %137 = getelementptr inbounds i8, ptr %136, i64 %135
  %138 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %139 = icmp ugt ptr %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %134) #19
  br label %141

141:                                              ; preds = %129, %140
  %142 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %143 = load ptr, ptr %132, align 8, !tbaa !46
  %144 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %142, ptr align 1 %143, i64 %144, i1 false)
  %145 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %146 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %147 = getelementptr inbounds i8, ptr %146, i64 %145
  store ptr %147, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %150 = icmp ugt ptr %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %152

152:                                              ; preds = %141, %151
  %153 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  store ptr %154, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %153, align 1, !tbaa !46
  br label %196

155:                                              ; preds = %116
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %156 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %157 = getelementptr inbounds i8, ptr %156, i64 5
  %158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %159 = icmp ugt ptr %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #19
  br label %161

161:                                              ; preds = %155, %160
  %162 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %163 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr nonnull align 1 @.str.52, i64 %163, i1 false)
  %164 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %165 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %166 = getelementptr inbounds i8, ptr %165, i64 %164
  store ptr %166, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %196

167:                                              ; preds = %111
  %168 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %169 = getelementptr inbounds i8, ptr %168, i64 1
  %170 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %171 = icmp ugt ptr %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %173

173:                                              ; preds = %167, %172
  %174 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %175, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %174, align 1, !tbaa !46
  %176 = tail call i64 @int_bit_position(ptr noundef nonnull %6) #19
  tail call fastcc void @stabstr_D(i64 noundef %176)
  %177 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  %179 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %180 = icmp ugt ptr %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %182

182:                                              ; preds = %173, %181
  %183 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  store ptr %184, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %183, align 1, !tbaa !46
  %185 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = tail call i64 @tree_low_cst(ptr noundef %186, i32 noundef 1) #19
  tail call fastcc void @stabstr_D(i64 noundef %187)
  %188 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  %190 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %191 = icmp ugt ptr %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %193

193:                                              ; preds = %182, %192
  %194 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %195 = getelementptr inbounds i8, ptr %194, i64 1
  store ptr %195, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %194, align 1, !tbaa !46
  br label %196

196:                                              ; preds = %33, %193, %161, %152, %36, %13, %18, %25, %29
  %197 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !46
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %5, !llvm.loop !137

200:                                              ; preds = %9, %5, %196, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_type_methods(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %216, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %9, %5, %13
  %17 = phi ptr [ %15, %13 ], [ %3, %5 ], [ %11, %9 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %216, label %19

19:                                               ; preds = %16, %197
  %20 = phi i32 [ %198, %197 ], [ 1, %16 ]
  %21 = phi ptr [ %199, %197 ], [ null, %16 ]
  %22 = phi ptr [ %200, %197 ], [ %17, %16 ]
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %201

30:                                               ; preds = %19, %24
  %31 = load i64, ptr %22, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 29
  br i1 %33, label %34, label %191

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 3072
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %191

39:                                               ; preds = %34
  %40 = icmp eq i32 %20, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.tree_identifier, ptr %43, i64 0, i32 1, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !46
  %46 = zext i32 %45 to i64
  store i64 %46, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %48 = getelementptr inbounds i8, ptr %47, i64 %46
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %50 = icmp ugt ptr %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %45) #19
  br label %52

52:                                               ; preds = %41, %51
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %54 = load ptr, ptr %42, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.tree_identifier, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %56, i64 %57, i1 false)
  %58 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %60 = getelementptr inbounds i8, ptr %59, i64 %58
  store ptr %60, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %61 = getelementptr inbounds i8, ptr %60, i64 2
  %62 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %63 = icmp ugt ptr %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #19
  br label %65

65:                                               ; preds = %52, %64
  %66 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %67 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 @.str.53, i64 %67, i1 false)
  %68 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %69 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %70 = getelementptr inbounds i8, ptr %69, i64 %68
  store ptr %70, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  br label %71

71:                                               ; preds = %65, %39
  %72 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  tail call fastcc void @dbxout_type(ptr noundef %73, i32 noundef 0)
  %74 = load ptr, ptr %72, align 8, !tbaa !46
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 20
  br i1 %77, label %97, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.tree_list, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 1048576
  %87 = icmp eq i64 %86, 0
  %88 = select i1 %87, i8 65, i8 66
  %89 = lshr i64 %85, 18
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 2
  %92 = add nuw nsw i8 %88, %91
  %93 = getelementptr inbounds %struct.tree_decl_non_common, ptr %22, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, i8 46, i8 42
  br label %97

97:                                               ; preds = %78, %71
  %98 = phi i8 [ %96, %78 ], [ 63, %71 ]
  %99 = phi i8 [ %92, %78 ], [ 65, %71 ]
  %100 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %103 = icmp ugt ptr %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %105

105:                                              ; preds = %104, %97
  %106 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 58, ptr %106, align 1, !tbaa !46
  %108 = tail call ptr @decl_assembler_name(ptr noundef nonnull %22) #19
  %109 = getelementptr inbounds %struct.tree_identifier, ptr %108, i64 0, i32 1, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = zext i32 %110 to i64
  store i64 %111, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %112 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %113 = getelementptr inbounds i8, ptr %112, i64 %111
  %114 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %115 = icmp ugt ptr %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %110) #19
  br label %117

117:                                              ; preds = %116, %105
  %118 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %119 = tail call ptr @decl_assembler_name(ptr noundef nonnull %22) #19
  %120 = getelementptr inbounds %struct.tree_identifier, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %121, i64 %122, i1 false)
  %123 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !102
  %124 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %125 = getelementptr inbounds i8, ptr %124, i64 %123
  store ptr %125, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  %127 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %128 = icmp ugt ptr %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %130

130:                                              ; preds = %129, %117
  %131 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %132 = getelementptr inbounds i8, ptr %131, i64 1
  store ptr %132, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %131, align 1, !tbaa !46
  %133 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  %135 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %136 = icmp ugt ptr %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i64, ptr %22, align 8
  %140 = and i64 %139, 268435456
  %141 = icmp eq i64 %140, 0
  %142 = and i64 %139, 536870912
  %143 = icmp eq i64 %142, 0
  %144 = select i1 %143, i8 50, i8 49
  %145 = select i1 %141, i8 %144, i8 48
  %146 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %147, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %145, ptr %146, align 1, !tbaa !46
  %148 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %151 = icmp ugt ptr %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %153

153:                                              ; preds = %152, %138
  %154 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %155, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %99, ptr %154, align 1, !tbaa !46
  %156 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %157 = getelementptr inbounds i8, ptr %156, i64 1
  %158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %159 = icmp ugt ptr %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %161

161:                                              ; preds = %160, %153
  %162 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %163, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 %98, ptr %162, align 1, !tbaa !46
  %164 = getelementptr inbounds %struct.tree_decl_non_common, ptr %22, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = icmp eq ptr %165, null
  br i1 %166, label %191, label %167

167:                                              ; preds = %161
  %168 = tail call i32 @host_integerp(ptr noundef nonnull %165, i32 noundef 0) #19
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %191, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %164, align 8, !tbaa !46
  %172 = tail call i64 @tree_low_cst(ptr noundef %171, i32 noundef 0) #19
  tail call fastcc void @stabstr_D(i64 noundef %172)
  %173 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %176 = icmp ugt ptr %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %178

178:                                              ; preds = %177, %170
  %179 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %180, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %179, align 1, !tbaa !46
  %181 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  tail call fastcc void @dbxout_type(ptr noundef %182, i32 noundef 0)
  %183 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  %185 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %186 = icmp ugt ptr %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %188

188:                                              ; preds = %187, %178
  %189 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %190 = getelementptr inbounds i8, ptr %189, i64 1
  store ptr %190, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %189, align 1, !tbaa !46
  br label %191

191:                                              ; preds = %188, %167, %161, %34, %30
  %192 = phi ptr [ %21, %30 ], [ %22, %34 ], [ %22, %161 ], [ %22, %167 ], [ %22, %188 ]
  %193 = phi i32 [ %20, %30 ], [ %20, %34 ], [ 0, %161 ], [ 0, %167 ], [ 0, %188 ]
  %194 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !46
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %191, %214
  %198 = phi i32 [ %193, %191 ], [ 1, %214 ]
  %199 = phi ptr [ %192, %191 ], [ null, %214 ]
  %200 = phi ptr [ %195, %191 ], [ %202, %214 ]
  br label %19, !llvm.loop !138

201:                                              ; preds = %191, %24
  %202 = phi ptr [ %195, %191 ], [ %22, %24 ]
  %203 = phi i32 [ %193, %191 ], [ %20, %24 ]
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  %208 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %209 = icmp ugt ptr %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %211

211:                                              ; preds = %205, %210
  %212 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  store ptr %213, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 59, ptr %212, align 1, !tbaa !46
  br label %214

214:                                              ; preds = %211, %201
  %215 = icmp eq ptr %202, null
  br i1 %215, label %216, label %197

216:                                              ; preds = %214, %16, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dbxout_args(ptr noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %16, %10 ], [ %0, %1 ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !105
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #19
  br label %10

10:                                               ; preds = %3, %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %12, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !104
  store i8 44, ptr %11, align 1, !tbaa !46
  %13 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call fastcc void @dbxout_type(ptr noundef %14, i32 noundef 0)
  %15 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !139

18:                                               ; preds = %10, %1
  ret void
}

declare ptr @bit_position(ptr noundef) local_unnamed_addr #3

declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_type_context(ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alter_subreg(ptr noundef) local_unnamed_addr #3

declare ptr @get_pool_constant_mark(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_typevec(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load ptr, ptr @typevec, align 8, !tbaa !35
  %6 = icmp ne ptr %5, null
  %7 = icmp eq ptr %0, @typevec
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull @typevec, ptr noundef %3) #19
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 288}
!55 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !56, i64 240, !57, i64 248, !58, i64 256, !59, i64 272, !60, i64 432, !61, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!56 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!57 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!58 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!59 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!60 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!61 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!62 = !{i32 0, i32 52}
!63 = !{!64, !36, i64 136}
!64 = !{!"gcc_target", !65, i64 0, !67, i64 368, !68, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !69, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !70, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !71, i64 1784, !72, i64 1792, !73, i64 1896, !74, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!65 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !66, i64 24, !66, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!66 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!67 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!68 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!69 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!70 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!71 = !{!"c", !36, i64 0}
!72 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!73 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!74 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!75 = !{!76, !36, i64 0}
!76 = !{!"dbx_file", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 24, !36, i64 32}
!77 = !{!76, !41, i64 8}
!78 = !{!76, !41, i64 12}
!79 = !{!76, !41, i64 16}
!80 = !{i32 0, i32 2}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = !{!76, !36, i64 32}
!84 = !{!76, !36, i64 24}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !36, i64 224}
!90 = !{!"rtl_data", !91, i64 0, !92, i64 40, !93, i64 96, !94, i64 112, !96, i64 208, !97, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!91 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!92 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!93 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!94 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !95, i64 24, !36, i64 88}
!95 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!96 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!97 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!98 = !{!90, !36, i64 208}
!99 = !{!90, !36, i64 232}
!100 = !{!90, !36, i64 216}
!101 = distinct !{!101, !52, !53}
!102 = !{!103, !42, i64 40}
!103 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!104 = !{!103, !36, i64 24}
!105 = !{!103, !36, i64 32}
!106 = !{!107, !36, i64 96}
!107 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!108 = !{!109, !41, i64 0}
!109 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!110 = distinct !{!110, !52, !53}
!111 = !{!112, !41, i64 4}
!112 = !{!"typeinfo", !41, i64 0, !41, i64 4, !41, i64 8}
!113 = !{!112, !41, i64 8}
!114 = !{!112, !41, i64 0}
!115 = !{i8 0, i8 2}
!116 = !{!55, !36, i64 0}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!120, !41, i64 8}
!120 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!121 = !{!103, !36, i64 16}
!122 = !{!103, !41, i64 48}
!123 = !{!103, !36, i64 8}
!124 = distinct !{!124, !52, !53}
!125 = !{!64, !37, i64 2028}
!126 = !{!42, !42, i64 0}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = !{!64, !36, i64 1136}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
