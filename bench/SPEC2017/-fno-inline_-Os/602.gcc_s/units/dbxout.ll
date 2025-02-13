; ModuleID = 'dbxout.c'
source_filename = "dbxout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.dbx_file = type { ptr, i32, i32, i32, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.typeinfo = type { i32, i32, i32 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }

@dbx_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks { ptr @dbxout_init, ptr @dbxout_finish, ptr @debug_nothing_void, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @dbxout_start_source_file, ptr @dbxout_end_source_file, ptr @dbxout_begin_block, ptr @dbxout_end_block, ptr @debug_true_const_tree, ptr @dbxout_source_line, ptr @dbxout_begin_prologue, ptr @debug_nothing_int_charstar, ptr @debug_nothing_int_charstar, ptr @dbxout_begin_function, ptr @debug_nothing_int, ptr @dbxout_function_decl, ptr @dbxout_global_decl, ptr @dbxout_type_decl, ptr @debug_nothing_tree_tree_tree_bool, ptr @debug_nothing_tree, ptr @debug_nothing_tree, ptr @debug_nothing_rtx, ptr @dbxout_handle_pch, ptr @debug_nothing_rtx, ptr @debug_nothing_void, ptr @debug_nothing_tree, ptr @debug_nothing_tree_int, ptr @debug_nothing_rtx_rtx, ptr @debug_nothing_uid, ptr @debug_nothing_tree_tree, i32 0 }, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@typevec_len = internal global i32 0, align 4
@typevec = internal global ptr null, align 8
@stabstr_ob = internal global %struct.obstack zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Ltext\00", align 1
@use_gnu_debug_info_extensions = external local_unnamed_addr global i8, align 1
@dbxout_init.cwd = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@text_section = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"gcc2_compiled.\00", align 1
@lastfile = internal global ptr null, align 8
@base_input_file = internal unnamed_addr global ptr null, align 8
@next_type_number = internal global i32 0, align 4
@current_file = internal unnamed_addr global ptr null, align 8
@next_file_number = internal global i32 0, align 4
@preinit_symbols = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"GNU C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"GNU F77\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"GNU Fortran\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"GNU Pascal\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"GNU Objective-C\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"GNU Objective-C++\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Letext\00", align 1
@pending_bincls = internal unnamed_addr global i1 false, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"LBB\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"LBE\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LFBB\00", align 1
@scope_labelno = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@dbxout_source_line_counter = internal global i32 0, align 4
@lastfile_is_base = internal global i32 0, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@source_label_number = internal global i32 1, align 4
@flag_debug_only_used_symbols = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"Lscope\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\09.stabd\09\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c",0,\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\09.stabn\09\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",0,0,\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"\09.stabs\09\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"\22\22,\00", align 1
@debug_nesting = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.24 = private unnamed_addr constant [3 x i8] c":F\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c":f\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.26 = private unnamed_addr constant [3 x i8] c":T\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" :T\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"dbxout.c\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"=i\00", align 1
@symbol_queue_index = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dbxout_type.anonymous_type_number = internal unnamed_addr global i32 0, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.31 = private unnamed_addr constant [8 x i8] c";0;127;\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c";0;\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c";-16;\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"eFalse:0,True:1,;\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"R3;\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"real:\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c";imag:\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c";@S;S\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"@V;\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"@S;\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c";0;-1;\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"xu\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"~%\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"-1;\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c",0,0;\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\22,\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@svr4_dbx_register_map = external local_unnamed_addr constant [53 x i32], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@.str.57 = private unnamed_addr constant [60 x i8] c"common symbol debug info is not structured as symbol+offset\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.58 = private unnamed_addr constant [8 x i8] c"(anon):\00", align 1
@gt_ggc_r_gt_dbxout_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lastfile, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr @preinit_symbols, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @typevec, i64 1, i64 8, ptr @gt_ggc_ma_typevec, ptr @gt_pch_na_typevec }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_dbxout_h = dso_local local_unnamed_addr constant [8 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @lastfile_is_base, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @source_label_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @dbxout_source_line_counter, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @scope_labelno, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_file_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_type_number, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @typevec_len, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_init(ptr noundef %0) #0 !prof !35 !PGOFuncName !36 {
  %2 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #16
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 2), align 8, !tbaa !37
  %4 = tail call ptr %3() #17
  store i32 100, ptr @typevec_len, align 4, !tbaa !49
  %5 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 1200) #17
  store ptr %5, ptr @typevec, align 8, !tbaa !51
  %6 = tail call i32 @_obstack_begin(ptr noundef nonnull @stabstr_ob, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #17
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 0) #18
  %8 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @dbxout_init.cwd, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = tail call ptr @get_src_pwd() #17
  store ptr %14, ptr @dbxout_init.cwd, align 8, !tbaa !51
  %15 = load i8, ptr %14, align 1, !tbaa !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #18
  %19 = getelementptr i8, ptr %14, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1, !tbaa !52
  %22 = icmp eq i8 %21, 47
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %14, ptr noundef nonnull @.str.2, ptr noundef null) #17
  br label %25

25:                                               ; preds = %13, %23
  %26 = phi ptr [ %24, %23 ], [ @.str.2, %13 ]
  store ptr %26, ptr @dbxout_init.cwd, align 8, !tbaa !51
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi ptr [ %14, %17 ], [ %26, %25 ]
  %29 = tail call ptr @remap_debug_filename(ptr noundef %28) #17
  store ptr %29, ptr @dbxout_init.cwd, align 8, !tbaa !51
  br label %30

30:                                               ; preds = %27, %10
  %31 = phi ptr [ %29, %27 ], [ %11, %10 ]
  %32 = tail call fastcc i32 @get_lang_number() #18, !range !53
  tail call void @dbxout_begin_simple_stabs_desc(ptr noundef %31, i32 noundef 100, i32 noundef %32) #18
  call void @dbxout_stab_value_label(ptr noundef nonnull %2) #18
  br label %33

33:                                               ; preds = %30, %1
  %34 = call ptr @remap_debug_filename(ptr noundef %0) #17
  %35 = call fastcc i32 @get_lang_number() #18, !range !53
  call void @dbxout_begin_simple_stabs_desc(ptr noundef %34, i32 noundef 100, i32 noundef %35) #18
  call void @dbxout_stab_value_label(ptr noundef nonnull %2) #18
  %36 = load ptr, ptr @text_section, align 8, !tbaa !51
  call void @switch_to_section(ptr noundef %36) #17
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %38 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  call void %37(ptr noundef %38, ptr noundef nonnull @.str.1, i64 noundef 0) #17
  call void @dbxout_begin_simple_stabs(ptr noundef nonnull @.str.3, i32 noundef 60) #18
  call void @dbxout_stab_value_zero() #18
  store ptr %0, ptr @lastfile, align 8, !tbaa !51
  store ptr %0, ptr @base_input_file, align 8, !tbaa !51
  store i32 1, ptr @next_type_number, align 4, !tbaa !49
  %39 = call ptr @xmalloc(i64 noundef 40) #17
  store ptr %39, ptr @current_file, align 8, !tbaa !51
  store ptr null, ptr %39, align 8, !tbaa !66
  %40 = load ptr, ptr @current_file, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.dbx_file, ptr %40, i64 0, i32 1
  store i32 0, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.dbx_file, ptr %40, i64 0, i32 2
  store i32 1, ptr %42, align 4, !tbaa !69
  store i32 1, ptr @next_file_number, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.dbx_file, ptr %40, i64 0, i32 3
  store i32 0, ptr %43, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.dbx_file, ptr %40, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  call fastcc void @dbxout_typedefs(ptr noundef %4) #18
  %45 = load ptr, ptr @preinit_symbols, align 8, !tbaa !51
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %33
  %48 = call ptr @nreverse(ptr noundef nonnull %45) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %56, %50 ], [ %48, %47 ]
  %52 = getelementptr inbounds %struct.tree_list, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = call i32 @dbxout_symbol(ptr noundef %53, i32 poison) #18, !range !71
  %55 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %50, !llvm.loop !72

58:                                               ; preds = %50, %47
  store ptr null, ptr @preinit_symbols, align 8, !tbaa !51
  br label %59

59:                                               ; preds = %58, %33
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_finish(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !74 {
  %2 = load ptr, ptr @text_section, align 8, !tbaa !51
  tail call void @switch_to_section(ptr noundef %2) #17
  tail call void @dbxout_begin_empty_stabs(i32 noundef 100) #18
  tail call void @dbxout_stab_value_internal_label(ptr noundef nonnull @.str.11, ptr noundef null) #18
  tail call void @debug_free_queue() #17
  ret void
}

; Function Attrs: optsize
declare void @debug_nothing_void() #1

; Function Attrs: optsize
declare void @debug_nothing_int_charstar(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_start_source_file(i32 %0, ptr noundef %1) #0 !prof !35 !PGOFuncName !75 {
  %3 = tail call ptr @xmalloc(i64 noundef 40) #17
  %4 = load ptr, ptr @current_file, align 8, !tbaa !51
  store ptr %4, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 2
  store i32 1, ptr %5, align 4, !tbaa !69
  %6 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 5
  store ptr null, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.dbx_file, ptr %4, i64 0, i32 5
  store ptr %3, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !70
  %10 = tail call ptr @remap_debug_filename(ptr noundef %1) #17
  %11 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !77
  store i1 true, ptr @pending_bincls, align 4
  store ptr %3, ptr @current_file, align 8, !tbaa !51
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @dbxout_end_source_file(i32 %0) #2 !prof !35 !PGOFuncName !78 {
  %2 = load ptr, ptr @current_file, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.dbx_file, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @dbxout_begin_stabn(i32 noundef 162) #18
  tail call void @dbxout_stab_value_zero() #18
  %7 = load ptr, ptr @current_file, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.dbx_file, ptr %9, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !70
  %11 = load ptr, ptr %9, align 8, !tbaa !66
  store ptr %11, ptr @current_file, align 8, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_begin_block(i32 %0, i32 noundef %1) #0 !prof !35 !PGOFuncName !79 {
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = zext i32 %1 to i64
  tail call void %3(ptr noundef %4, ptr noundef nonnull @.str.12, i64 noundef %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_end_block(i32 %0, i32 noundef %1) #0 !prof !35 !PGOFuncName !80 {
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = zext i32 %1 to i64
  tail call void %3(ptr noundef %4, ptr noundef nonnull @.str.13, i64 noundef %5) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @debug_true_const_tree(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_source_line(i32 noundef %0, ptr noundef %1, i32 %2, i8 zeroext %3) #0 !prof !35 !PGOFuncName !81 {
  %5 = alloca [20 x i8], align 16
  tail call fastcc void @dbxout_source_file(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  tail call void @dbxout_begin_stabn_sline(i32 noundef %0) #18
  %6 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.14, i32 noundef %6) #18
  call void @dbxout_stab_value_internal_label_diff(ptr noundef nonnull @.str.15, ptr noundef nonnull @dbxout_source_line_counter, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_begin_prologue(i32 noundef %0, ptr noundef %1) #0 !prof !35 !PGOFuncName !82 {
  %3 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %4 = icmp eq i8 %3, 0
  %5 = load i32, ptr @flag_debug_only_used_symbols, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @dbxout_stabd(i32 noundef 46, i32 noundef 0) #18
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @scope_labelno, align 4, !tbaa !49
  tail call void @dbxout_source_line(i32 noundef %0, ptr noundef %1, i32 poison, i8 zeroext poison) #18
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %14 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %15 = sext i32 %14 to i64
  tail call void %12(ptr noundef %13, ptr noundef nonnull @.str.14, i64 noundef %15) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_begin_function(ptr noundef %0) #0 !prof !35 !PGOFuncName !83 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16777216
  %4 = or i64 %2, 16777216
  store i64 %4, ptr %0, align 8
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %6, align 8
  %12 = and i64 %11, 16777216
  %13 = or i64 %11, 16777216
  store i64 %13, ptr %6, align 8
  %14 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison) #18, !range !71
  %15 = load ptr, ptr %5, align 8, !tbaa !52
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -16777217
  %18 = or disjoint i64 %17, %12
  store i64 %18, ptr %15, align 8
  br label %21

19:                                               ; preds = %1
  %20 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison) #18, !range !71
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, -16777217
  %24 = or disjoint i64 %23, %3
  store i64 %24, ptr %0, align 8
  %25 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  tail call void @dbxout_parms(ptr noundef %26) #18
  %27 = load ptr, ptr %5, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = tail call i32 @dbxout_symbol(ptr noundef nonnull %27, i32 poison) #18, !range !71
  br label %33

33:                                               ; preds = %31, %21
  ret void
}

; Function Attrs: optsize
declare void @debug_nothing_int(i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_function_decl(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !84 {
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call fastcc void @dbxout_block(ptr noundef %3, i32 noundef 0, ptr noundef %5) #18
  tail call fastcc void @dbxout_function_end() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_global_decl(ptr noundef %0) #0 !prof !35 !PGOFuncName !85 {
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
  %13 = tail call i32 @dbxout_symbol(ptr noundef nonnull %0, i32 poison) #18, !range !71
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, -16777217
  %16 = or disjoint i64 %15, %11
  store i64 %16, ptr %0, align 8
  br label %17

17:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_type_decl(ptr noundef %0, i32 noundef %1) #0 !prof !35 !PGOFuncName !86 {
  %3 = tail call i32 @dbxout_symbol(ptr noundef %0, i32 poison) #18, !range !71
  ret void
}

; Function Attrs: optsize
declare void @debug_nothing_tree_tree_tree_bool(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: optsize
declare void @debug_nothing_tree(ptr noundef) #1

; Function Attrs: optsize
declare void @debug_nothing_rtx(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dbxout_handle_pch(i32 noundef %0) #0 !prof !35 !PGOFuncName !87 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load ptr, ptr @lastfile, align 8, !tbaa !51
  tail call void @dbxout_start_source_file(i32 poison, ptr noundef %4) #18
  store ptr null, ptr @lastfile, align 8, !tbaa !51
  br label %9

5:                                                ; preds = %1
  tail call void @dbxout_end_source_file(i32 poison) #18
  %6 = load ptr, ptr @lastfile, align 8, !tbaa !51
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i32
  store i32 %8, ptr @lastfile_is_base, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare void @debug_nothing_tree_int(ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @debug_nothing_rtx_rtx(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @debug_nothing_uid(i32 noundef) #1

; Function Attrs: optsize
declare void @debug_nothing_tree_tree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_src_pwd() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @remap_debug_filename(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_begin_simple_stabs_desc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %4) #18
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  tail call void @output_quoted_string(ptr noundef %6, ptr noundef %0) #17
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %8 = tail call i32 @putc(i32 noundef 44, ptr noundef %7) #18
  tail call void @dbxout_int(i32 noundef %1) #18
  %9 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %10 = tail call i32 @fputs(ptr noundef nonnull @.str.19, ptr noundef %9) #18
  tail call void @dbxout_int(i32 noundef %2) #18
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %12 = tail call i32 @putc(i32 noundef 44, ptr noundef %11) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_lang_number() unnamed_addr #7 !prof !35 !PGOFuncName !88 {
  %1 = load ptr, ptr @lang_hooks, align 8, !tbaa !89
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.4) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.5) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.6) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.7) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.8) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.9) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.10) #18
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 51, i32 0
  br label %23

23:                                               ; preds = %19, %16, %13, %10, %7, %4, %0
  %24 = phi i32 [ 2, %0 ], [ 4, %4 ], [ 5, %7 ], [ 7, %10 ], [ 6, %13 ], [ 50, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_stab_value_label(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  tail call void @assemble_name(ptr noundef %2, ptr noundef %0) #17
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %4 = tail call i32 @putc(i32 noundef 10, ptr noundef %3) #18
  ret void
}

; Function Attrs: optsize
declare void @switch_to_section(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_begin_simple_stabs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %3) #18
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  tail call void @output_quoted_string(ptr noundef %5, ptr noundef %0) #17
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %7 = tail call i32 @putc(i32 noundef 44, ptr noundef %6) #18
  tail call void @dbxout_int(i32 noundef %1) #18
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %9 = tail call i32 @fputs(ptr noundef nonnull @.str.21, ptr noundef %8) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_stab_value_zero() local_unnamed_addr #2 !prof !35 {
  %1 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.17, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_typedefs(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !90 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1, %34
  %4 = phi ptr [ %36, %34 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 35
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 35
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, ptr %10, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 19
  %26 = and i64 %15, 4194304
  %27 = icmp eq i64 %26, 0
  %28 = and i1 %27, %25
  br i1 %28, label %32, label %34

29:                                               ; preds = %18
  %30 = and i64 %15, 4194304
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22, %29
  %33 = tail call i32 @dbxout_symbol(ptr noundef nonnull %12, i32 poison) #18, !range !71
  br label %34

34:                                               ; preds = %8, %14, %22, %29, %32, %3
  %35 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %3, !llvm.loop !91

38:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dbxout_symbol(ptr noundef %0, i32 %1) local_unnamed_addr #0 !prof !35 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @debug_nesting, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
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
  store i32 %5, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

20:                                               ; preds = %14
  %21 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

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
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %30
  store i32 %5, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

35:                                               ; preds = %30, %23
  %36 = load ptr, ptr @typevec, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %46

38:                                               ; preds = %20
  %39 = load ptr, ptr @typevec, align 8, !tbaa !51
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %99

41:                                               ; preds = %38, %35
  %42 = load ptr, ptr @preinit_symbols, align 8, !tbaa !51
  %43 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %0, ptr noundef %42) #17
  store ptr %43, ptr @preinit_symbols, align 8, !tbaa !51
  %44 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

46:                                               ; preds = %35, %50
  %47 = phi ptr [ %52, %50 ], [ %4, %35 ]
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %85 [
    i16 10, label %50
    i16 12, label %50
    i16 16, label %53
    i16 17, label %53
    i16 18, label %53
    i16 6, label %53
  ]

50:                                               ; preds = %46, %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  br label %46, !llvm.loop !92

53:                                               ; preds = %46, %46, %46, %46
  %54 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  %56 = icmp eq ptr %55, null
  %57 = icmp eq ptr %55, %0
  %58 = or i1 %56, %57
  br i1 %58, label %99, label %59

59:                                               ; preds = %53
  %60 = load i64, ptr %55, align 8
  %61 = and i64 %60, 65535
  %62 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !49
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %99

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 1024
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  tail call void @debug_queue_symbol(ptr noundef nonnull %55) #17
  %71 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = icmp eq ptr %72, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %54, align 8, !tbaa !52
  %76 = icmp eq ptr %72, %75
  %77 = icmp eq ptr %72, %0
  %78 = or i1 %77, %76
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %72, align 8
  %81 = and i64 %80, 65535
  %82 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !49
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %97, label %99

85:                                               ; preds = %46
  %86 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  %88 = icmp eq ptr %87, null
  %89 = icmp eq ptr %87, %0
  %90 = or i1 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i64, ptr %87, align 8
  %93 = and i64 %92, 65535
  %94 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !49
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %91, %79
  %98 = phi ptr [ %72, %79 ], [ %87, %91 ]
  tail call void @debug_queue_symbol(ptr noundef nonnull %98) #17
  br label %99

99:                                               ; preds = %97, %38, %70, %74, %79, %65, %59, %53, %91, %85
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %100 = load i64, ptr %0, align 8
  %101 = trunc i64 %100 to i16
  switch i16 %101, label %559 [
    i16 32, label %490
    i16 29, label %102
    i16 35, label %245
    i16 34, label %477
    i16 36, label %490
  ]

102:                                              ; preds = %99
  %103 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 11), align 1, !tbaa !52
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !52
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %102, %105
  %110 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %111 = add nsw i32 %110, -1
  store i32 %111, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

112:                                              ; preds = %105
  %113 = load i64, ptr %15, align 8
  %114 = and i64 %113, 33554432
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %559

116:                                              ; preds = %112
  %117 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #17
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %559, label %120

120:                                              ; preds = %116
  %121 = icmp eq ptr %117, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  %125 = icmp eq ptr %124, null
  %126 = icmp eq ptr %124, %0
  %127 = or i1 %125, %126
  br i1 %127, label %128, label %559

128:                                              ; preds = %122, %120
  %129 = load i32, ptr %107, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 43
  br i1 %131, label %132, label %559

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !52
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 45
  br i1 %137, label %138, label %559

138:                                              ; preds = %132
  %139 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !49
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  tail call fastcc void @output_used_types() #18
  br label %142

142:                                              ; preds = %141, %138
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %143 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %144 = getelementptr inbounds %struct.tree_identifier, ptr %143, i64 0, i32 1, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !52
  %146 = zext i32 %145 to i64
  store i64 %146, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %147 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %148 = getelementptr inbounds i8, ptr %147, i64 %146
  %149 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %150 = icmp ugt ptr %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %145) #17
  %152 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %153

153:                                              ; preds = %142, %151
  %154 = phi ptr [ %147, %142 ], [ %152, %151 ]
  %155 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %156 = getelementptr inbounds %struct.tree_identifier, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !52
  %158 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %154, ptr align 1 %157, i64 %158, i1 false)
  %159 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %160 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %161 = getelementptr inbounds i8, ptr %160, i64 %159
  store ptr %161, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %162 = getelementptr inbounds i8, ptr %161, i64 2
  %163 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %164 = icmp ugt ptr %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %166 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %167 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %168

168:                                              ; preds = %153, %165
  %169 = phi i64 [ 2, %153 ], [ %167, %165 ]
  %170 = phi ptr [ %161, %153 ], [ %166, %165 ]
  %171 = load i64, ptr %0, align 8
  %172 = and i64 %171, 134217728
  %173 = icmp eq i64 %172, 0
  %174 = select i1 %173, ptr @.str.25, ptr @.str.24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr nonnull align 1 %174, i64 %169, i1 false)
  %175 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %176 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %177 = getelementptr inbounds i8, ptr %176, i64 %175
  store ptr %177, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %178 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !52
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %168
  tail call fastcc void @dbxout_type(ptr noundef nonnull %179, i32 noundef 0) #18
  br label %184

182:                                              ; preds = %168
  %183 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !51
  tail call fastcc void @dbxout_type(ptr noundef %183, i32 noundef 0) #18
  br label %184

184:                                              ; preds = %182, %181
  br i1 %121, label %243, label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  %188 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %189 = icmp ugt ptr %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %191 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %192

192:                                              ; preds = %185, %190
  %193 = phi ptr [ %186, %185 ], [ %191, %190 ]
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  store ptr %194, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %193, align 1, !tbaa !52
  %195 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %196 = getelementptr inbounds %struct.tree_identifier, ptr %195, i64 0, i32 1, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !52
  %198 = zext i32 %197 to i64
  store i64 %198, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %199 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %200 = getelementptr inbounds i8, ptr %199, i64 %198
  %201 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %202 = icmp ugt ptr %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %197) #17
  %204 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %205

205:                                              ; preds = %192, %203
  %206 = phi ptr [ %199, %192 ], [ %204, %203 ]
  %207 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %208 = getelementptr inbounds %struct.tree_identifier, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !52
  %210 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr align 1 %209, i64 %210, i1 false)
  %211 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %212 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %213 = getelementptr inbounds i8, ptr %212, i64 %211
  store ptr %213, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %214 = getelementptr inbounds i8, ptr %213, i64 1
  %215 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %216 = icmp ugt ptr %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %205
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %218 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %219

219:                                              ; preds = %205, %217
  %220 = phi ptr [ %213, %205 ], [ %218, %217 ]
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %220, align 1, !tbaa !52
  %222 = getelementptr inbounds %struct.tree_decl_minimal, ptr %117, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !52
  %224 = getelementptr inbounds %struct.tree_identifier, ptr %223, i64 0, i32 1, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !52
  %226 = zext i32 %225 to i64
  store i64 %226, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %227 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %228 = getelementptr inbounds i8, ptr %227, i64 %226
  %229 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %230 = icmp ugt ptr %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %219
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %225) #17
  %232 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %233 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %234

234:                                              ; preds = %219, %231
  %235 = phi i64 [ %226, %219 ], [ %233, %231 ]
  %236 = phi ptr [ %227, %219 ], [ %232, %231 ]
  %237 = load ptr, ptr %222, align 8, !tbaa !52
  %238 = getelementptr inbounds %struct.tree_identifier, ptr %237, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %236, ptr align 1 %239, i64 %235, i1 false)
  %240 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %241 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %242 = getelementptr inbounds i8, ptr %241, i64 %240
  store ptr %242, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %243

243:                                              ; preds = %234, %184
  %244 = load ptr, ptr %133, align 8, !tbaa !52
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef nonnull %0, i32 noundef 36, ptr noundef %244, i32 noundef 0) #18
  br label %559

245:                                              ; preds = %99
  %246 = and i64 %100, 4194304
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i64, ptr %15, align 8
  %250 = and i64 %249, 33554432
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %245, %248
  %253 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %254 = add nsw i32 %253, -1
  store i32 %254, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

255:                                              ; preds = %248
  %256 = load ptr, ptr %7, align 8, !tbaa !52
  %257 = icmp eq ptr %256, null
  br i1 %257, label %393, label %258

258:                                              ; preds = %255
  %259 = load i64, ptr %4, align 8
  %260 = trunc i64 %259 to i32
  %261 = and i32 %260, 65535
  %262 = add nsw i32 %261, -16
  %263 = icmp ult i32 %262, 3
  br i1 %263, label %264, label %321

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %266 = load ptr, ptr %265, align 8, !tbaa !52
  %267 = icmp ne ptr %266, %0
  %268 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %269 = icmp ne i8 %268, 0
  %270 = select i1 %267, i1 true, i1 %269
  %271 = and i64 %249, 4096
  %272 = icmp eq i64 %271, 0
  %273 = or i1 %270, %272
  br i1 %273, label %321, label %274

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !52
  %277 = icmp eq ptr %276, null
  br i1 %277, label %321, label %278

278:                                              ; preds = %274
  %279 = tail call i32 @host_integerp(ptr noundef nonnull %276, i32 noundef 1) #17
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %321, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %265, align 8, !tbaa !52
  %283 = load i64, ptr %282, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 35
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.tree_decl_minimal, ptr %282, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !52
  br label %289

289:                                              ; preds = %286, %281
  %290 = phi ptr [ %288, %286 ], [ %282, %281 ]
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %291 = getelementptr inbounds %struct.tree_identifier, ptr %290, i64 0, i32 1
  %292 = getelementptr inbounds %struct.tree_identifier, ptr %290, i64 0, i32 1, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !52
  %294 = zext i32 %293 to i64
  store i64 %294, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %295 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %296 = getelementptr inbounds i8, ptr %295, i64 %294
  %297 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %298 = icmp ugt ptr %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %289
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %293) #17
  %300 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %301 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %302

302:                                              ; preds = %289, %299
  %303 = phi i64 [ %294, %289 ], [ %301, %299 ]
  %304 = phi ptr [ %295, %289 ], [ %300, %299 ]
  %305 = load ptr, ptr %291, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %304, ptr align 1 %305, i64 %303, i1 false)
  %306 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %307 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %308 = getelementptr inbounds i8, ptr %307, i64 %306
  store ptr %308, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %309 = getelementptr inbounds i8, ptr %308, i64 2
  %310 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %311 = icmp ugt ptr %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %302
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %313 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %314 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %315

315:                                              ; preds = %302, %312
  %316 = phi i64 [ 2, %302 ], [ %314, %312 ]
  %317 = phi ptr [ %308, %302 ], [ %313, %312 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %317, ptr nonnull align 1 @.str.26, i64 %316, i1 false)
  %318 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %319 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %320 = getelementptr inbounds i8, ptr %319, i64 %318
  store ptr %320, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0) #18
  br label %321

321:                                              ; preds = %258, %315, %278, %274, %264
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %322 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  tail call fastcc void @dbxout_class_name_qualifiers(ptr noundef nonnull %0) #18
  br label %325

325:                                              ; preds = %324, %321
  %326 = load ptr, ptr %7, align 8, !tbaa !52
  %327 = getelementptr inbounds %struct.tree_identifier, ptr %326, i64 0, i32 1, i32 1
  %328 = load i32, ptr %327, align 8, !tbaa !52
  %329 = zext i32 %328 to i64
  store i64 %329, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %330 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %331 = getelementptr inbounds i8, ptr %330, i64 %329
  %332 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %333 = icmp ugt ptr %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %325
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %328) #17
  %335 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %336 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %337

337:                                              ; preds = %325, %334
  %338 = phi i64 [ %329, %325 ], [ %336, %334 ]
  %339 = phi ptr [ %330, %325 ], [ %335, %334 ]
  %340 = load ptr, ptr %7, align 8, !tbaa !52
  %341 = getelementptr inbounds %struct.tree_identifier, ptr %340, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %339, ptr align 1 %342, i64 %338, i1 false)
  %343 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %344 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %345 = getelementptr inbounds i8, ptr %344, i64 %343
  store ptr %345, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %348 = icmp ugt ptr %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %337
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %350 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %351

351:                                              ; preds = %337, %349
  %352 = phi ptr [ %345, %337 ], [ %350, %349 ]
  %353 = getelementptr inbounds i8, ptr %352, i64 1
  store ptr %353, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %352, align 1, !tbaa !52
  %354 = load i64, ptr %4, align 8
  %355 = trunc i64 %354 to i32
  %356 = and i32 %355, 65535
  %357 = add nsw i32 %356, -16
  %358 = icmp ult i32 %357, 3
  br i1 %358, label %359, label %383

359:                                              ; preds = %351
  %360 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %361 = load ptr, ptr %360, align 8, !tbaa !52
  %362 = icmp eq ptr %361, %0
  br i1 %362, label %363, label %383

363:                                              ; preds = %359
  %364 = load i64, ptr %15, align 8
  %365 = and i64 %364, 4096
  %366 = icmp ne i64 %365, 0
  %367 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %368 = icmp ne i8 %367, 0
  %369 = select i1 %366, i1 %368, i1 false
  br i1 %369, label %370, label %383

370:                                              ; preds = %363
  %371 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %372 = getelementptr inbounds i8, ptr %371, i64 1
  %373 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %374 = icmp ugt ptr %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %376 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %377

377:                                              ; preds = %370, %375
  %378 = phi ptr [ %371, %370 ], [ %376, %375 ]
  %379 = getelementptr inbounds i8, ptr %378, i64 1
  store ptr %379, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 84, ptr %378, align 1, !tbaa !52
  %380 = load ptr, ptr %360, align 8, !tbaa !52
  %381 = load i64, ptr %380, align 8
  %382 = or i64 %381, 4194304
  store i64 %382, ptr %380, align 8
  br label %383

383:                                              ; preds = %351, %377, %363, %359
  %384 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %385 = getelementptr inbounds i8, ptr %384, i64 1
  %386 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %387 = icmp ugt ptr %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %389 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %390

390:                                              ; preds = %388, %383
  %391 = phi ptr [ %389, %388 ], [ %384, %383 ]
  %392 = getelementptr inbounds i8, ptr %391, i64 1
  store ptr %392, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 116, ptr %391, align 1, !tbaa !52
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef nonnull %0, i32 noundef 128, ptr noundef null, i32 noundef 0) #18
  br label %474

393:                                              ; preds = %255
  %394 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %395 = load ptr, ptr %394, align 8, !tbaa !52
  %396 = icmp eq ptr %395, null
  br i1 %396, label %456, label %397

397:                                              ; preds = %393
  %398 = load i64, ptr %395, align 8
  %399 = and i64 %398, 65535
  %400 = icmp eq i64 %399, 1
  br i1 %400, label %412, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.tree_decl_minimal, ptr %395, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !52
  %404 = icmp eq ptr %403, null
  br i1 %404, label %456, label %405

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !52
  %408 = icmp ne ptr %407, null
  %409 = and i64 %398, 4194304
  %410 = icmp eq i64 %409, 0
  %411 = and i1 %410, %408
  br i1 %411, label %419, label %456

412:                                              ; preds = %397
  %413 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !52
  %415 = icmp ne ptr %414, null
  %416 = and i64 %398, 4194304
  %417 = icmp eq i64 %416, 0
  %418 = and i1 %417, %415
  br i1 %418, label %424, label %456

419:                                              ; preds = %405
  %420 = icmp eq i64 %399, 35
  br i1 %420, label %421, label %424

421:                                              ; preds = %419
  %422 = getelementptr inbounds %struct.tree_decl_minimal, ptr %395, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !52
  br label %424

424:                                              ; preds = %412, %421, %419
  %425 = phi ptr [ %423, %421 ], [ %395, %419 ], [ %395, %412 ]
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %426 = getelementptr inbounds %struct.tree_identifier, ptr %425, i64 0, i32 1
  %427 = getelementptr inbounds %struct.tree_identifier, ptr %425, i64 0, i32 1, i32 1
  %428 = load i32, ptr %427, align 8, !tbaa !52
  %429 = zext i32 %428 to i64
  store i64 %429, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %430 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %431 = getelementptr inbounds i8, ptr %430, i64 %429
  %432 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %433 = icmp ugt ptr %431, %432
  br i1 %433, label %434, label %437

434:                                              ; preds = %424
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %428) #17
  %435 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %436 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %437

437:                                              ; preds = %424, %434
  %438 = phi i64 [ %429, %424 ], [ %436, %434 ]
  %439 = phi ptr [ %430, %424 ], [ %435, %434 ]
  %440 = load ptr, ptr %426, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %439, ptr align 1 %440, i64 %438, i1 false)
  %441 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %442 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %443 = getelementptr inbounds i8, ptr %442, i64 %441
  store ptr %443, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %444 = getelementptr inbounds i8, ptr %443, i64 2
  %445 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %446 = icmp ugt ptr %444, %445
  br i1 %446, label %447, label %450

447:                                              ; preds = %437
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %448 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %449 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %450

450:                                              ; preds = %437, %447
  %451 = phi i64 [ 2, %437 ], [ %449, %447 ]
  %452 = phi ptr [ %443, %437 ], [ %448, %447 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %452, ptr nonnull align 1 @.str.26, i64 %451, i1 false)
  %453 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %454 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %455 = getelementptr inbounds i8, ptr %454, i64 %453
  store ptr %455, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0) #18
  br label %474

456:                                              ; preds = %412, %405, %401, %393
  %457 = load i64, ptr %4, align 8
  %458 = and i64 %457, 65535
  %459 = icmp eq i64 %458, 6
  br i1 %459, label %460, label %474

460:                                              ; preds = %456
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %461 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %462 = getelementptr inbounds i8, ptr %461, i64 3
  %463 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %464 = icmp ugt ptr %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %460
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %466 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %467 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %468

468:                                              ; preds = %460, %465
  %469 = phi i64 [ 3, %460 ], [ %467, %465 ]
  %470 = phi ptr [ %461, %460 ], [ %466, %465 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr nonnull align 1 @.str.27, i64 %469, i1 false)
  %471 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %472 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %473 = getelementptr inbounds i8, ptr %472, i64 %471
  store ptr %473, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  tail call fastcc void @dbxout_type(ptr noundef nonnull %4, i32 noundef 1) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0) #18
  br label %474

474:                                              ; preds = %450, %390, %468, %456
  %475 = load i64, ptr %0, align 8
  %476 = or i64 %475, 4194304
  store i64 %476, ptr %0, align 8
  br label %559

477:                                              ; preds = %99
  %478 = load i64, ptr %15, align 8
  %479 = and i64 %478, 67108864
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %477
  %482 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %0) #17
  %483 = load i64, ptr %482, align 8
  br label %484

484:                                              ; preds = %481, %477
  %485 = phi i64 [ %483, %481 ], [ %100, %477 ]
  %486 = phi ptr [ %482, %481 ], [ %0, %477 ]
  %487 = and i64 %485, 65535
  %488 = icmp eq i64 %487, 32
  br i1 %488, label %490, label %489

489:                                              ; preds = %484
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 2801, ptr noundef nonnull @.str.29) #17
  br label %490

490:                                              ; preds = %489, %484, %99, %99
  %491 = phi ptr [ %486, %484 ], [ %486, %489 ], [ %0, %99 ], [ %0, %99 ]
  %492 = getelementptr inbounds %struct.tree_decl_common, ptr %491, i64 0, i32 2
  %493 = load i64, ptr %492, align 8
  %494 = and i64 %493, 33554432
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %496, label %559

496:                                              ; preds = %490
  %497 = load i64, ptr %491, align 8
  %498 = and i64 %497, 68157440
  %499 = icmp eq i64 %498, 68157440
  br i1 %499, label %500, label %550

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.tree_decl_common, ptr %491, i64 0, i32 5
  %502 = load ptr, ptr %501, align 8, !tbaa !52
  %503 = icmp eq ptr %502, null
  br i1 %503, label %550, label %504

504:                                              ; preds = %500
  %505 = tail call i32 @host_integerp(ptr noundef nonnull %502, i32 noundef 0) #17
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %550, label %507

507:                                              ; preds = %504
  %508 = load i64, ptr %491, align 8
  %509 = and i64 %508, 4194304
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %511, label %550

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.tree_decl_minimal, ptr %491, i64 0, i32 4
  %513 = load ptr, ptr %512, align 8, !tbaa !52
  %514 = icmp eq ptr %513, null
  br i1 %514, label %518, label %515

515:                                              ; preds = %511
  %516 = load i64, ptr %513, align 8
  %517 = trunc i64 %516 to i16
  switch i16 %517, label %550 [
    i16 4, label %518
    i16 38, label %518
  ]

518:                                              ; preds = %515, %515, %511
  %519 = and i64 %508, 134217728
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %550

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.tree_common, ptr %491, i64 0, i32 2
  %523 = load ptr, ptr %522, align 8, !tbaa !52
  %524 = load i64, ptr %523, align 8
  %525 = trunc i64 %524 to i16
  switch i16 %525, label %559 [
    i16 8, label %526
    i16 6, label %526
  ]

526:                                              ; preds = %521, %521
  %527 = load ptr, ptr %501, align 8, !tbaa !52
  %528 = getelementptr inbounds %struct.tree_int_cst, ptr %527, i64 0, i32 1
  %529 = load i64, ptr %528, align 8, !tbaa !52
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  tail call fastcc void @dbxout_symbol_name(ptr noundef nonnull %491, ptr noundef null, i32 noundef 99) #18
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %530 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %531 = getelementptr inbounds i8, ptr %530, i64 2
  %532 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %533 = icmp ugt ptr %531, %532
  br i1 %533, label %534, label %537

534:                                              ; preds = %526
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %535 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %536 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %537

537:                                              ; preds = %526, %534
  %538 = phi i64 [ 2, %526 ], [ %536, %534 ]
  %539 = phi ptr [ %530, %526 ], [ %535, %534 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %539, ptr nonnull align 1 @.str.30, i64 %538, i1 false)
  %540 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %541 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %542 = getelementptr inbounds i8, ptr %541, i64 %540
  store ptr %542, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  tail call fastcc void @stabstr_D(i64 noundef %529) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef null, i32 noundef 128, ptr noundef null, i32 noundef 0) #18
  %543 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %544 = add nsw i32 %543, -1
  store i32 %544, ptr @debug_nesting, align 4, !tbaa !49
  %545 = icmp eq i32 %544, 0
  %546 = load i32, ptr @symbol_queue_index, align 4
  %547 = icmp sgt i32 %546, 0
  %548 = select i1 %545, i1 %547, i1 false
  br i1 %548, label %549, label %568

549:                                              ; preds = %537
  tail call fastcc void @emit_pending_bincls_if_required() #18
  tail call void @debug_flush_symbol_queue() #17
  br label %568

550:                                              ; preds = %515, %518, %507, %504, %500, %496
  %551 = tail call fastcc ptr @dbxout_expand_expr(ptr noundef nonnull %491) #18
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %556

553:                                              ; preds = %550
  %554 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %555 = add nsw i32 %554, -1
  store i32 %555, ptr @debug_nesting, align 4, !tbaa !49
  br label %568

556:                                              ; preds = %550
  %557 = tail call ptr @eliminate_regs(ptr noundef nonnull %551, i32 noundef 0, ptr noundef null) #17
  %558 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %491, ptr noundef %4, ptr noundef null, ptr noundef %557) #18, !range !71
  br label %559

559:                                              ; preds = %521, %122, %99, %490, %128, %132, %116, %112, %556, %474, %243
  %560 = phi i32 [ 0, %99 ], [ 0, %490 ], [ %558, %556 ], [ 1, %474 ], [ 0, %112 ], [ 0, %116 ], [ 0, %132 ], [ 1, %243 ], [ 0, %128 ], [ 0, %122 ], [ 0, %521 ]
  %561 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %562 = add nsw i32 %561, -1
  store i32 %562, ptr @debug_nesting, align 4, !tbaa !49
  %563 = icmp eq i32 %562, 0
  %564 = load i32, ptr @symbol_queue_index, align 4
  %565 = icmp sgt i32 %564, 0
  %566 = select i1 %563, i1 %565, i1 false
  br i1 %566, label %567, label %568

567:                                              ; preds = %559
  tail call fastcc void @emit_pending_bincls_if_required() #18
  tail call void @debug_flush_symbol_queue() #17
  br label %568

568:                                              ; preds = %559, %567, %537, %549, %553, %252, %109, %41, %34, %19
  %569 = phi i32 [ 0, %19 ], [ 0, %553 ], [ 0, %252 ], [ 0, %109 ], [ 0, %41 ], [ 0, %34 ], [ 1, %549 ], [ 1, %537 ], [ %560, %567 ], [ %560, %559 ]
  ret i32 %569
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_begin_empty_stabs(i32 noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %3 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %2) #18
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.23, ptr noundef %4) #18
  tail call void @dbxout_int(i32 noundef %0) #18
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.21, ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_stab_value_internal_label(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !49
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !49
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %9) #18
  call void @dbxout_stab_value_label(ptr noundef nonnull %3) #18
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %13 = sext i32 %9 to i64
  call void %11(ptr noundef %12, ptr noundef %0, i64 noundef %13) #17
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @debug_free_queue() local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_begin_stabn(i32 noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %3 = tail call i32 @fputs(ptr noundef nonnull @.str.20, ptr noundef %2) #18
  tail call void @dbxout_int(i32 noundef %0) #18
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.21, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_pending_bincls_if_required() unnamed_addr #0 !prof !35 !PGOFuncName !97 {
  %1 = load i1, ptr @pending_bincls, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call fastcc void @emit_pending_bincls() #18
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_pending_bincls() unnamed_addr #0 !prof !35 !PGOFuncName !98 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ @current_file, %0 ], [ %3, %1 ]
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.dbx_file, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %1, label %7, !llvm.loop !99

7:                                                ; preds = %1, %22
  %8 = phi ptr [ %10, %22 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.dbx_file, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dbx_file, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dbx_file, ptr %10, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  tail call fastcc void @emit_bincl_stab(ptr noundef %18) #18
  %19 = load i32, ptr @next_file_number, align 4, !tbaa !49
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @next_file_number, align 4, !tbaa !49
  %21 = getelementptr inbounds %struct.dbx_file, ptr %10, i64 0, i32 1
  store i32 %19, ptr %21, align 8, !tbaa !68
  store i32 2, ptr %13, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %16, %12
  %23 = load ptr, ptr @current_file, align 8, !tbaa !51
  %24 = icmp eq ptr %10, %23
  br i1 %24, label %25, label %7, !llvm.loop !100

25:                                               ; preds = %22, %7
  store i1 false, ptr @pending_bincls, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_bincl_stab(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !101 {
  tail call void @dbxout_begin_simple_stabs(ptr noundef %0, i32 noundef 130) #18
  tail call void @dbxout_stab_value_zero() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_source_file(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !102 {
  %2 = load ptr, ptr @lastfile, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  %4 = load i32, ptr @lastfile_is_base, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr @base_input_file, align 8, !tbaa !51
  store ptr %8, ptr @lastfile, align 8, !tbaa !51
  store i32 0, ptr @lastfile_is_base, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %2, %1 ]
  %11 = icmp eq ptr %0, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %10, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %10) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %12
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr @text_section, align 8, !tbaa !51
  tail call void @switch_to_section(ptr noundef %21) #17
  br label %22

22:                                               ; preds = %20, %17
  %23 = tail call ptr @remap_debug_filename(ptr noundef nonnull %0) #17
  tail call void @dbxout_begin_simple_stabs(ptr noundef %23, i32 noundef 132) #18
  tail call void @dbxout_stab_value_internal_label(ptr noundef nonnull @.str.1, ptr noundef nonnull @source_label_number) #18
  store ptr %0, ptr @lastfile, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %22, %14, %9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_begin_stabn_sline(i32 noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %3 = tail call i32 @fputs(ptr noundef nonnull @.str.20, ptr noundef %2) #18
  tail call void @dbxout_int(i32 noundef 68) #18
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.19, ptr noundef %4) #18
  tail call void @dbxout_int(i32 noundef %0) #18
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %7 = tail call i32 @putc(i32 noundef 44, ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_stab_value_internal_label_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4, !tbaa !49
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !49
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %10) #18
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %4, ptr noundef %2) #18
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %14 = sext i32 %10 to i64
  call void %12(ptr noundef %13, ptr noundef %0, i64 noundef %14) #17
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_stabd(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 !prof !35 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.18, ptr noundef %3) #18
  tail call void @dbxout_int(i32 noundef %0) #18
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %6 = tail call i32 @fputs(ptr noundef nonnull @.str.19, ptr noundef %5) #18
  tail call void @dbxout_int(i32 noundef %1) #18
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_parms(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @debug_nesting, align 4, !tbaa !49
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %4 = icmp eq ptr %0, null
  br i1 %4, label %224, label %5

5:                                                ; preds = %1, %220
  %6 = phi ptr [ %222, %220 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %220, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !51
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %220, label %15

15:                                               ; preds = %10
  %16 = load i64, ptr %6, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 11
  %19 = load i8, ptr %18, align 1, !tbaa !52
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %220, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %220, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_parm_decl, ptr %6, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %220, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @eliminate_regs(ptr noundef nonnull %27, i32 noundef 0, ptr noundef null) #17
  store ptr %30, ptr %26, align 8, !tbaa !52
  %31 = load ptr, ptr %22, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #17
  %34 = load ptr, ptr %22, align 8, !tbaa !52
  br label %35

35:                                               ; preds = %29, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %37 = tail call ptr @eliminate_regs(ptr noundef %36, i32 noundef 0, ptr noundef null) #17
  tail call void @set_decl_rtl(ptr noundef nonnull %6, ptr noundef %37) #17
  %38 = load ptr, ptr %26, align 8, !tbaa !52
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 49
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 30
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !52
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %42, %48, %54
  %59 = phi i32 [ %57, %54 ], [ 0, %48 ], [ 0, %42 ]
  %60 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  br label %160

62:                                               ; preds = %35
  %63 = load ptr, ptr %22, align 8, !tbaa !52
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #17
  %66 = load ptr, ptr %22, align 8, !tbaa !52
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi ptr [ %66, %65 ], [ %63, %62 ]
  %69 = load i32, ptr %68, align 8
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %220 [
    i16 37, label %71
    i16 43, label %93
  ]

71:                                               ; preds = %67
  %72 = load ptr, ptr %11, align 8, !tbaa !52
  %73 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %68) #18
  %74 = icmp ult i32 %73, 53
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %26, align 8, !tbaa !52
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !51
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !52
  br label %87

87:                                               ; preds = %71, %75, %80
  %88 = phi ptr [ %86, %80 ], [ %76, %75 ], [ %68, %71 ]
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef %88) #18
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !49
  br label %160

93:                                               ; preds = %67
  %94 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %120

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #18
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #18
  %104 = icmp eq i32 %103, 7
  br i1 %104, label %120, label %105

105:                                              ; preds = %102
  %106 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #18
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i8 80, i8 97
  %112 = load ptr, ptr %11, align 8, !tbaa !52
  %113 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #18
  %114 = icmp ult i32 %113, 53
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #18
  br label %160

117:                                              ; preds = %108
  %118 = load ptr, ptr %26, align 8, !tbaa !52
  %119 = tail call fastcc i32 @rhs_regno(ptr noundef %118) #18
  br label %160

120:                                              ; preds = %93, %99, %102, %105
  %121 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !52
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 43
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load ptr, ptr %11, align 8, !tbaa !52
  %128 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !52
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 37
  br i1 %132, label %160, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !52
  %136 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !52
  %138 = trunc i64 %137 to i32
  br label %160

139:                                              ; preds = %120
  %140 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !52
  %142 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !51
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %220, label %144

144:                                              ; preds = %139
  %145 = load i32, ptr %141, align 8
  %146 = and i32 %145, 65535
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !49
  %150 = icmp eq i32 %149, 9
  br i1 %150, label %220, label %151

151:                                              ; preds = %144
  %152 = load ptr, ptr %11, align 8, !tbaa !52
  %153 = icmp eq i32 %146, 37
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !52
  %157 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !52
  %159 = trunc i64 %158 to i32
  br label %160

160:                                              ; preds = %151, %133, %126, %87, %154, %115, %117, %58
  %161 = phi ptr [ %61, %58 ], [ %72, %87 ], [ %112, %115 ], [ %112, %117 ], [ %152, %154 ], [ %127, %126 ], [ %127, %133 ], [ %152, %151 ]
  %162 = phi i8 [ 112, %58 ], [ 80, %87 ], [ %111, %115 ], [ %111, %117 ], [ 112, %154 ], [ 118, %126 ], [ 118, %133 ], [ 112, %151 ]
  %163 = phi i32 [ 160, %58 ], [ 64, %87 ], [ 64, %115 ], [ 64, %117 ], [ 160, %154 ], [ 160, %126 ], [ 160, %133 ], [ 160, %151 ]
  %164 = phi i32 [ %59, %58 ], [ %92, %87 ], [ %116, %115 ], [ %119, %117 ], [ %159, %154 ], [ 0, %126 ], [ %138, %133 ], [ 0, %151 ]
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %165 = load ptr, ptr %7, align 8, !tbaa !52
  %166 = icmp eq ptr %165, null
  br i1 %166, label %196, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.tree_identifier, ptr %165, i64 0, i32 1, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !52
  %170 = zext i32 %169 to i64
  store i64 %170, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %171 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %172 = getelementptr inbounds i8, ptr %171, i64 %170
  %173 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %174 = icmp ugt ptr %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %169) #17
  %176 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %177 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %178

178:                                              ; preds = %167, %175
  %179 = phi i64 [ %170, %167 ], [ %177, %175 ]
  %180 = phi ptr [ %171, %167 ], [ %176, %175 ]
  %181 = load ptr, ptr %7, align 8, !tbaa !52
  %182 = getelementptr inbounds %struct.tree_identifier, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %180, ptr align 1 %183, i64 %179, i1 false)
  %184 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %185 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %186 = getelementptr inbounds i8, ptr %185, i64 %184
  store ptr %186, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  %188 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %189 = icmp ugt ptr %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %191 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %192

192:                                              ; preds = %178, %190
  %193 = phi ptr [ %186, %178 ], [ %191, %190 ]
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  store ptr %194, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %193, align 1, !tbaa !52
  %195 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %210

196:                                              ; preds = %160
  store i64 7, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %197 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %198 = getelementptr inbounds i8, ptr %197, i64 7
  %199 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %200 = icmp ugt ptr %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 7) #17
  %202 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %203 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %204

204:                                              ; preds = %196, %201
  %205 = phi i64 [ 7, %196 ], [ %203, %201 ]
  %206 = phi ptr [ %197, %196 ], [ %202, %201 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr nonnull align 1 @.str.58, i64 %205, i1 false)
  %207 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %208 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %209 = getelementptr inbounds i8, ptr %208, i64 %207
  store ptr %209, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %210

210:                                              ; preds = %204, %192
  %211 = phi ptr [ %209, %204 ], [ %195, %192 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 1
  %213 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %214 = icmp ugt ptr %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %216 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %217

217:                                              ; preds = %210, %215
  %218 = phi ptr [ %211, %210 ], [ %216, %215 ]
  %219 = getelementptr inbounds i8, ptr %218, i64 1
  store ptr %219, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %162, ptr %218, align 1, !tbaa !52
  tail call fastcc void @dbxout_type(ptr noundef %161, i32 noundef 0) #18
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef nonnull %6, i32 noundef %163, ptr noundef null, i32 noundef %164) #18
  br label %220

220:                                              ; preds = %67, %217, %144, %139, %5, %10, %15, %21, %25
  %221 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !52
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %5, !llvm.loop !103

224:                                              ; preds = %220, %1
  %225 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %226 = add nsw i32 %225, -1
  store i32 %226, ptr @debug_nesting, align 4, !tbaa !49
  %227 = icmp eq i32 %226, 0
  %228 = load i32, ptr @symbol_queue_index, align 4
  %229 = icmp sgt i32 %228, 0
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  tail call fastcc void @emit_pending_bincls_if_required() #18
  tail call void @debug_flush_symbol_queue() #17
  br label %232

232:                                              ; preds = %231, %224
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_block(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !104 {
  %4 = alloca [20 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  %7 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.14, i32 noundef %7) #18
  %9 = icmp eq ptr %0, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  %12 = icmp eq ptr %2, null
  %13 = add nsw i32 %1, 1
  br label %14

14:                                               ; preds = %10, %50
  %15 = phi ptr [ %0, %10 ], [ %52, %50 ]
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 20971520
  %18 = icmp eq i64 %17, 20971520
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_block, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 1
  %23 = load i32, ptr @debug_info_level, align 4, !tbaa !49
  %24 = icmp ne i32 %23, 1
  %25 = or i1 %11, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.tree_block, ptr %15, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = call i32 @dbxout_syms(ptr noundef %28) #18
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %29, %26 ], [ 0, %19 ]
  br i1 %12, label %33, label %32

32:                                               ; preds = %30
  call void @dbxout_reg_parms(ptr noundef nonnull %2) #18
  br label %33

33:                                               ; preds = %32, %30
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  br i1 %11, label %41, label %36

36:                                               ; preds = %35
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.12, i32 noundef %22) #18
  call fastcc void @dbx_output_lbrac(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  %38 = getelementptr inbounds %struct.tree_block, ptr %15, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  call fastcc void @dbxout_block(ptr noundef %39, i32 noundef %13, ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #16
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.13, i32 noundef %22) #18
  br label %46

41:                                               ; preds = %35
  call fastcc void @dbx_output_lbrac(ptr noundef nonnull %4, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  %42 = getelementptr inbounds %struct.tree_block, ptr %15, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  call fastcc void @dbxout_block(ptr noundef %43, i32 noundef 1, ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #16
  %44 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.16, i32 noundef %44) #18
  br label %46

46:                                               ; preds = %36, %41
  call fastcc void @dbx_output_rbrac(ptr noundef nonnull %6, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #16
  br label %50

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.tree_block, ptr %15, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !52
  call fastcc void @dbxout_block(ptr noundef %49, i32 noundef %13, ptr noundef null) #18
  br label %50

50:                                               ; preds = %46, %47, %14
  %51 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %14, !llvm.loop !105

54:                                               ; preds = %50, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_function_end() unnamed_addr #0 !prof !35 !PGOFuncName !106 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %1) #16
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !51
  %4 = tail call ptr @function_section(ptr noundef %3) #17
  tail call void @switch_to_section(ptr noundef %4) #17
  %5 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.16, i32 noundef %5) #18
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !54
  %8 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %9 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %10 = sext i32 %9 to i64
  tail call void %7(ptr noundef %8, ptr noundef nonnull @.str.16, i64 noundef %10) #17
  %11 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %12 = icmp ne i8 %11, 0
  %13 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %0
  %17 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !49
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36) #18
  %20 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 2), align 8, !tbaa !107
  %21 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4), align 8, !tbaa !116
  tail call void @dbxout_stab_value_label_diff(ptr noundef %20, ptr noundef %21) #18
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36) #18
  %22 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 3), align 8, !tbaa !117
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), align 8, !tbaa !118
  tail call void @dbxout_stab_value_label_diff(ptr noundef %22, ptr noundef %23) #18
  br label %27

24:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  %25 = load i32, ptr @scope_labelno, align 4, !tbaa !49
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.14, i32 noundef %25) #18
  tail call void @dbxout_begin_empty_stabs(i32 noundef 36) #18
  call void @dbxout_stab_value_label_diff(ptr noundef nonnull %1, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !49
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @dbxout_stabd(i32 noundef 78, i32 noundef 0) #18
  br label %31

31:                                               ; preds = %27, %30, %0
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dbxout_syms(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %20
  %5 = phi ptr [ %25, %20 ], [ %0, %1 ]
  %6 = phi i32 [ %23, %20 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %20 ], [ null, %1 ]
  %8 = phi ptr [ %21, %20 ], [ null, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %9 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %5, ptr noundef nonnull %2) #18
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %7, null
  br i1 %10, label %13, label %12

12:                                               ; preds = %4
  br i1 %11, label %19, label %15

13:                                               ; preds = %4
  br i1 %11, label %20, label %14

14:                                               ; preds = %13
  tail call fastcc void @dbxout_common_name(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 228) #18
  br label %20

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %7) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call fastcc void @dbxout_common_name(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 228) #18
  br label %19

19:                                               ; preds = %18, %12
  tail call fastcc void @dbxout_common_name(ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef 226) #18
  br label %20

20:                                               ; preds = %15, %14, %13, %19
  %21 = phi ptr [ %5, %19 ], [ %8, %13 ], [ %8, %14 ], [ %8, %15 ]
  %22 = tail call i32 @dbxout_symbol(ptr noundef nonnull %5, i32 poison) #18, !range !71
  %23 = add nuw nsw i32 %22, %6
  %24 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !119

27:                                               ; preds = %20
  %28 = icmp eq ptr %9, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call fastcc void @dbxout_common_name(ptr noundef %21, ptr noundef nonnull %9, i32 noundef 228) #18
  br label %30

30:                                               ; preds = %1, %29, %27
  %31 = phi i32 [ %23, %29 ], [ %23, %27 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_reg_parms(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @debug_nesting, align 4, !tbaa !49
  %4 = icmp eq ptr %0, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %51
  %6 = phi ptr [ %53, %51 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_parm_decl, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #17
  %21 = load ptr, ptr %17, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ]
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %51 [
    i16 37, label %26
    i16 41, label %33
    i16 43, label %37
  ]

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %23) #18
  %28 = icmp ult i32 %27, 53
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %31, ptr noundef null, ptr noundef nonnull %23) #18, !range !71
  br label %51

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  %36 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %35, ptr noundef null, ptr noundef nonnull %23) #18, !range !71
  br label %51

37:                                               ; preds = %22
  %38 = load ptr, ptr %11, align 8, !tbaa !52
  %39 = tail call i32 @rtx_equal_p(ptr noundef nonnull %23, ptr noundef %38) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = load ptr, ptr %17, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  tail call void @make_decl_rtl(ptr noundef nonnull %6) #17
  %47 = load ptr, ptr %17, align 8, !tbaa !52
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %47, %46 ], [ %44, %41 ]
  %50 = tail call fastcc i32 @dbxout_symbol_location(ptr noundef nonnull %6, ptr noundef %43, ptr noundef null, ptr noundef %49) #18, !range !71
  br label %51

51:                                               ; preds = %22, %26, %5, %10, %33, %48, %37, %29
  %52 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %5, !llvm.loop !120

55:                                               ; preds = %51
  %56 = load i32, ptr @debug_nesting, align 4, !tbaa !49
  %57 = add nsw i32 %56, -1
  br label %58

58:                                               ; preds = %55, %1
  %59 = phi i32 [ %57, %55 ], [ %2, %1 ]
  store i32 %59, ptr @debug_nesting, align 4, !tbaa !49
  %60 = icmp eq i32 %59, 0
  %61 = load i32, ptr @symbol_queue_index, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call fastcc void @emit_pending_bincls_if_required() #18
  tail call void @debug_flush_symbol_queue() #17
  br label %65

65:                                               ; preds = %64, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbx_output_lbrac(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !121 {
  tail call void @dbxout_begin_stabn(i32 noundef 192) #18
  tail call void @dbxout_stab_value_label_diff(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbx_output_rbrac(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !122 {
  tail call void @dbxout_begin_stabn(i32 noundef 224) #18
  tail call void @dbxout_stab_value_label_diff(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dbxout_stab_value_label_diff(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !35 {
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  tail call void @assemble_name(ptr noundef %3, ptr noundef %0) #17
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %5 = tail call i32 @putc(i32 noundef 45, ptr noundef %4) #18
  %6 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  tail call void @assemble_name(ptr noundef %6, ptr noundef %1) #17
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %8 = tail call i32 @putc(i32 noundef 10, ptr noundef %7) #18
  ret void
}

; Function Attrs: optsize
declare ptr @function_section(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dbxout_int(i32 noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %6 = tail call i32 @putc(i32 noundef 48, ptr noundef %5) #18
  br label %36

7:                                                ; preds = %1
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %11 = tail call i32 @putc(i32 noundef 45, ptr noundef %10) #18
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
  store i8 %21, ptr %23, align 1, !tbaa !52
  %24 = icmp ult i32 %16, 10
  br i1 %24, label %25, label %15, !llvm.loop !123

25:                                               ; preds = %15
  %26 = icmp slt i64 %17, 65
  br i1 %26, label %27, label %36

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %34, %27 ], [ %22, %25 ]
  %29 = getelementptr inbounds i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !52
  %31 = sext i8 %30 to i32
  %32 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %33 = tail call i32 @putc(i32 noundef %31, ptr noundef %32) #18
  %34 = add i64 %28, 1
  %35 = icmp eq i64 %34, 64
  br i1 %35, label %36, label %27, !llvm.loop !124

36:                                               ; preds = %27, %25, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @output_quoted_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_queue_symbol(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_used_types() unnamed_addr #0 !prof !35 !PGOFuncName !125 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %10 = tail call i64 @htab_elements(ptr noundef nonnull %7) #17
  %11 = trunc i64 %10 to i32
  %12 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %11) #18
  store ptr %12, ptr %1, align 8, !tbaa !51
  %13 = load ptr, ptr @cfun, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @output_used_types_helper, ptr noundef nonnull %1) #17
  %16 = load ptr, ptr %1, align 8
  %17 = call fastcc ptr @VEC_tree_base_address(ptr noundef %16) #18
  %18 = call fastcc i32 @VEC_tree_base_length(ptr noundef %16) #18
  %19 = zext i32 %18 to i64
  call void @spec_qsort(ptr noundef %17, i64 noundef %19, i64 noundef 8, ptr noundef nonnull @output_types_sort) #17
  %20 = load ptr, ptr %1, align 8
  %21 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %2) #18, !range !71
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %9, %23
  %24 = phi i32 [ %26, %23 ], [ 0, %9 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !51
  call void @debug_queue_symbol(ptr noundef %25) #17
  %26 = add nuw nsw i32 %24, 1
  %27 = load ptr, ptr %1, align 8
  %28 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %27, i32 noundef %26, ptr noundef nonnull %2) #18, !range !71
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %23, !llvm.loop !128

30:                                               ; preds = %23, %9
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  br label %31

31:                                               ; preds = %30, %5, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_begin_complex_stabs() unnamed_addr #0 !prof !35 !PGOFuncName !129 {
  tail call fastcc void @emit_pending_bincls_if_required() #18
  %1 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %1) #18
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %4 = tail call i32 @putc(i32 noundef 34, ptr noundef %3) #18
  ret void
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !130 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = load i64, ptr %15, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i64 [ %16, %9 ], [ %6, %2 ]
  %19 = phi ptr [ %15, %9 ], [ %0, %2 ]
  %20 = and i64 %18, 65535
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  store ptr %28, ptr %3, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  store ptr %30, ptr %4, align 8, !tbaa !51
  br label %40

31:                                               ; preds = %22
  %32 = call zeroext i8 @subrange_type_for_debug_p(ptr noundef nonnull %19, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load ptr, ptr %23, align 8, !tbaa !52
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  store ptr %37, ptr %3, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  store ptr %39, ptr %4, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %26, %31, %34, %17
  %41 = phi ptr [ %19, %26 ], [ %19, %31 ], [ %35, %34 ], [ %19, %17 ]
  %42 = load ptr, ptr @global_trees, align 16, !tbaa !51
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = icmp eq ptr %46, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 35
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 33554432
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, i32 %1, i32 0
  br label %63

58:                                               ; preds = %40
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  %60 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %52, %48, %58
  %64 = phi ptr [ %59, %58 ], [ %41, %48 ], [ %41, %52 ]
  %65 = phi i32 [ %1, %58 ], [ %1, %48 ], [ %57, %52 ]
  %66 = phi ptr [ %61, %58 ], [ %46, %48 ], [ %46, %52 ]
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 35
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.tree_decl_non_common, ptr %66, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  br label %80

76:                                               ; preds = %44, %70, %63, %58
  %77 = phi ptr [ %64, %70 ], [ %64, %63 ], [ %59, %58 ], [ %41, %44 ]
  %78 = phi i32 [ %65, %70 ], [ %65, %63 ], [ %1, %58 ], [ %1, %44 ]
  %79 = getelementptr inbounds %struct.tree_type, ptr %77, i64 0, i32 16
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi ptr [ %64, %74 ], [ %77, %76 ]
  %82 = phi i32 [ %65, %74 ], [ %78, %76 ]
  %83 = phi ptr [ %75, %74 ], [ %79, %76 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, ptr %84, ptr %81
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 11
  %89 = load i32, ptr %88, align 8, !tbaa !52
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %80
  %92 = load i32, ptr @next_type_number, align 4, !tbaa !49
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr @next_type_number, align 4, !tbaa !49
  store i32 %92, ptr %88, align 8, !tbaa !52
  %94 = load i32, ptr @typevec_len, align 4, !tbaa !49
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load ptr, ptr @typevec, align 8, !tbaa !51
  %98 = shl nsw i32 %93, 1
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, 12
  %101 = call ptr @ggc_realloc_stat(ptr noundef %97, i64 noundef %100) #17
  store ptr %101, ptr @typevec, align 8, !tbaa !51
  %102 = load i32, ptr @typevec_len, align 4, !tbaa !49
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.typeinfo, ptr %101, i64 %103
  %105 = mul nsw i64 %103, 12
  call void @llvm.memset.p0.i64(ptr align 4 %104, i8 0, i64 %105, i1 false)
  %106 = load i32, ptr @typevec_len, align 4, !tbaa !49
  %107 = shl nsw i32 %106, 1
  store i32 %107, ptr @typevec_len, align 4, !tbaa !49
  br label %108

108:                                              ; preds = %96, %91
  call fastcc void @emit_pending_bincls_if_required() #18
  %109 = load ptr, ptr @current_file, align 8, !tbaa !51
  %110 = getelementptr inbounds %struct.dbx_file, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !68
  %112 = load ptr, ptr @typevec, align 8, !tbaa !51
  %113 = load i32, ptr %88, align 8, !tbaa !52
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.typeinfo, ptr %112, i64 %114, i32 1
  store i32 %111, ptr %115, align 4, !tbaa !131
  %116 = getelementptr inbounds %struct.dbx_file, ptr %109, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !69
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %116, align 4, !tbaa !69
  %119 = load i32, ptr %88, align 8, !tbaa !52
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.typeinfo, ptr %112, i64 %120, i32 2
  store i32 %117, ptr %121, align 4, !tbaa !133
  br label %122

122:                                              ; preds = %108, %80
  %123 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !49
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %153, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %87, align 8
  %127 = trunc i64 %126 to i16
  switch i16 %127, label %143 [
    i16 16, label %128
    i16 17, label %128
    i16 18, label %128
    i16 6, label %128
  ]

128:                                              ; preds = %125, %125, %125, %125
  %129 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !52
  %131 = icmp eq ptr %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %128
  %133 = load i64, ptr %130, align 8
  %134 = and i64 %133, 65535
  %135 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !49
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %130, i64 0, i32 2
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 1024
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %125, %138, %132, %128
  %144 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 12
  %145 = load ptr, ptr %144, align 8, !tbaa !52
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load i64, ptr %145, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 35
  br i1 %150, label %151, label %153

151:                                              ; preds = %147, %138
  %152 = phi ptr [ %130, %138 ], [ %145, %147 ]
  call void @debug_queue_symbol(ptr noundef nonnull %152) #17
  br label %153

153:                                              ; preds = %151, %147, %143, %122
  call fastcc void @dbxout_type_index(ptr noundef nonnull %87) #18
  %154 = load ptr, ptr @typevec, align 8, !tbaa !51
  %155 = load i32, ptr %88, align 8, !tbaa !52
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.typeinfo, ptr %154, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !134
  switch i32 %158, label %168 [
    i32 2, label %1369
    i32 1, label %159
  ]

159:                                              ; preds = %153
  %160 = icmp eq i32 %82, 0
  br i1 %160, label %1369, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !52
  %164 = icmp eq ptr %163, null
  br i1 %164, label %1369, label %165

165:                                              ; preds = %161
  %166 = call i32 @host_integerp(ptr noundef nonnull %163, i32 noundef 1) #17
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %1369, label %168

168:                                              ; preds = %165, %153
  %169 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %172 = icmp ugt ptr %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %174 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %175

175:                                              ; preds = %168, %173
  %176 = phi ptr [ %169, %168 ], [ %174, %173 ]
  %177 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %177, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 61, ptr %176, align 1, !tbaa !52
  %178 = load ptr, ptr @typevec, align 8, !tbaa !51
  %179 = load i32, ptr %88, align 8, !tbaa !52
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.typeinfo, ptr %178, i64 %180
  store i32 2, ptr %181, align 4, !tbaa !134
  %182 = load i64, ptr %87, align 8
  %183 = trunc i64 %182 to i32
  %184 = lshr i32 %183, 20
  %185 = and i32 %184, 1
  %186 = load i64, ptr %84, align 8
  %187 = trunc i64 %186 to i32
  %188 = lshr i32 %187, 20
  %189 = and i32 %188, 1
  %190 = icmp ugt i32 %185, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %175
  %192 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  %194 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %195 = icmp ugt ptr %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %197 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %198

198:                                              ; preds = %191, %196
  %199 = phi ptr [ %192, %191 ], [ %197, %196 ]
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  store ptr %200, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 107, ptr %199, align 1, !tbaa !52
  %201 = load i64, ptr %87, align 8
  %202 = trunc i64 %201 to i32
  %203 = lshr i32 %202, 18
  %204 = and i32 %203, 2
  %205 = call ptr @build_qualified_type(ptr noundef nonnull %87, i32 noundef %204) #17
  call fastcc void @dbxout_type(ptr noundef %205, i32 noundef 0) #18
  br label %1369

206:                                              ; preds = %175
  %207 = lshr i32 %183, 19
  %208 = and i32 %207, 1
  %209 = lshr i32 %187, 19
  %210 = and i32 %209, 1
  %211 = icmp ugt i32 %208, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %206
  %213 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %214 = getelementptr inbounds i8, ptr %213, i64 1
  %215 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %216 = icmp ugt ptr %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %218 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %219

219:                                              ; preds = %212, %217
  %220 = phi ptr [ %213, %212 ], [ %218, %217 ]
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 66, ptr %220, align 1, !tbaa !52
  %222 = load i64, ptr %87, align 8
  %223 = trunc i64 %222 to i32
  %224 = lshr i32 %223, 20
  %225 = and i32 %224, 1
  %226 = call ptr @build_qualified_type(ptr noundef nonnull %87, i32 noundef %225) #17
  call fastcc void @dbxout_type(ptr noundef %226, i32 noundef 0) #18
  br label %1369

227:                                              ; preds = %206
  %228 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 16
  %229 = load ptr, ptr %228, align 8, !tbaa !52
  %230 = icmp eq ptr %84, %229
  br i1 %230, label %256, label %231

231:                                              ; preds = %227
  %232 = load i32, ptr @flag_debug_only_used_symbols, align 4, !tbaa !49
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %251, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 12
  %236 = load ptr, ptr %235, align 8, !tbaa !52
  %237 = getelementptr inbounds %struct.tree_decl_non_common, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !52
  %239 = load i64, ptr %238, align 8
  %240 = trunc i64 %239 to i16
  switch i16 %240, label %251 [
    i16 16, label %241
    i16 17, label %241
    i16 18, label %241
    i16 6, label %241
  ]

241:                                              ; preds = %234, %234, %234, %234
  %242 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !52
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.tree_decl_common, ptr %243, i64 0, i32 2
  %247 = load i64, ptr %246, align 8
  %248 = and i64 %247, 1024
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  call void @debug_queue_symbol(ptr noundef nonnull %243) #17
  br label %251

251:                                              ; preds = %241, %245, %250, %234, %231
  %252 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 12
  %253 = load ptr, ptr %252, align 8, !tbaa !52
  %254 = getelementptr inbounds %struct.tree_decl_non_common, ptr %253, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %255, i32 noundef 0) #18
  br label %1369

256:                                              ; preds = %227
  %257 = trunc i64 %182 to i16
  switch i16 %257, label %1368 [
    i16 19, label %258
    i16 22, label %258
    i16 8, label %259
    i16 9, label %423
    i16 11, label %423
    i16 7, label %457
    i16 13, label %503
    i16 15, label %637
    i16 16, label %762
    i16 17, label %762
    i16 18, label %762
    i16 6, label %1081
    i16 10, label %1254
    i16 21, label %1266
    i16 5, label %1306
    i16 12, label %1334
    i16 20, label %1356
  ]

258:                                              ; preds = %256, %256
  call fastcc void @dbxout_type_index(ptr noundef nonnull %87) #18
  br label %1369

259:                                              ; preds = %256
  %260 = load ptr, ptr @integer_types, align 16, !tbaa !51
  %261 = icmp eq ptr %87, %260
  %262 = and i64 %182, 2097152
  %263 = icmp eq i64 %262, 0
  %264 = and i1 %263, %261
  br i1 %264, label %265, label %288

265:                                              ; preds = %259
  %266 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %267 = getelementptr inbounds i8, ptr %266, i64 1
  %268 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %269 = icmp ugt ptr %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %271 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %272

272:                                              ; preds = %265, %270
  %273 = phi ptr [ %266, %265 ], [ %271, %270 ]
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  store ptr %274, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 114, ptr %273, align 1, !tbaa !52
  call fastcc void @dbxout_type_index(ptr noundef nonnull %87) #18
  store i64 7, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %275 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %276 = getelementptr inbounds i8, ptr %275, i64 7
  %277 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %278 = icmp ugt ptr %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 7) #17
  %280 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %281 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %282

282:                                              ; preds = %272, %279
  %283 = phi i64 [ 7, %272 ], [ %281, %279 ]
  %284 = phi ptr [ %275, %272 ], [ %280, %279 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %284, ptr nonnull align 1 @.str.31, i64 %283, i1 false)
  %285 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %286 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %287 = getelementptr inbounds i8, ptr %286, i64 %285
  store ptr %287, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

288:                                              ; preds = %259
  %289 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !52
  %291 = icmp eq ptr %290, null
  br i1 %291, label %337, label %292

292:                                              ; preds = %288
  %293 = load i64, ptr %290, align 8
  %294 = and i64 %293, 65535
  %295 = icmp eq i64 %294, 8
  br i1 %295, label %296, label %337

296:                                              ; preds = %292
  %297 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %334, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %301 = load i32, ptr %300, align 4
  %302 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  %303 = getelementptr inbounds %struct.tree_type, ptr %302, i64 0, i32 6
  %304 = load i32, ptr %303, align 4
  %305 = xor i32 %304, %301
  %306 = and i32 %305, 1023
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %334, label %308

308:                                              ; preds = %299
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %309 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %310 = getelementptr inbounds i8, ptr %309, i64 2
  %311 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %312 = icmp ugt ptr %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %314 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %315 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %316

316:                                              ; preds = %308, %313
  %317 = phi i64 [ 2, %308 ], [ %315, %313 ]
  %318 = phi ptr [ %309, %308 ], [ %314, %313 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr nonnull align 1 @.str.32, i64 %317, i1 false)
  %319 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %320 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %321 = getelementptr inbounds i8, ptr %320, i64 %319
  store ptr %321, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %322 = load i32, ptr %300, align 4
  %323 = and i32 %322, 1023
  %324 = zext nneg i32 %323 to i64
  call fastcc void @stabstr_D(i64 noundef %324) #18
  %325 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %326 = getelementptr inbounds i8, ptr %325, i64 1
  %327 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %328 = icmp ugt ptr %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %316
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %330 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %331

331:                                              ; preds = %316, %329
  %332 = phi ptr [ %325, %316 ], [ %330, %329 ]
  %333 = getelementptr inbounds i8, ptr %332, i64 1
  store ptr %333, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %332, align 1, !tbaa !52
  br label %334

334:                                              ; preds = %331, %299, %296
  %335 = load ptr, ptr %3, align 8, !tbaa !51
  %336 = load ptr, ptr %4, align 8, !tbaa !51
  call fastcc void @dbxout_range_type(ptr noundef nonnull %87, ptr noundef %335, ptr noundef %336) #18
  br label %1369

337:                                              ; preds = %292, %288
  %338 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %375, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %342 = load i32, ptr %341, align 4
  %343 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  %344 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 6
  %345 = load i32, ptr %344, align 4
  %346 = xor i32 %345, %342
  %347 = and i32 %346, 1023
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %375, label %349

349:                                              ; preds = %340
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %350 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %351 = getelementptr inbounds i8, ptr %350, i64 2
  %352 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %353 = icmp ugt ptr %351, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %355 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %356 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %357

357:                                              ; preds = %349, %354
  %358 = phi i64 [ 2, %349 ], [ %356, %354 ]
  %359 = phi ptr [ %350, %349 ], [ %355, %354 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %359, ptr nonnull align 1 @.str.32, i64 %358, i1 false)
  %360 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %361 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %362 = getelementptr inbounds i8, ptr %361, i64 %360
  store ptr %362, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %363 = load i32, ptr %341, align 4
  %364 = and i32 %363, 1023
  %365 = zext nneg i32 %364 to i64
  call fastcc void @stabstr_D(i64 noundef %365) #18
  %366 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %367 = getelementptr inbounds i8, ptr %366, i64 1
  %368 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %369 = icmp ugt ptr %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %357
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %371 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %372

372:                                              ; preds = %357, %370
  %373 = phi ptr [ %366, %357 ], [ %371, %370 ]
  %374 = getelementptr inbounds i8, ptr %373, i64 1
  store ptr %374, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %373, align 1, !tbaa !52
  br label %375

375:                                              ; preds = %372, %340, %337
  %376 = load ptr, ptr %3, align 8, !tbaa !51
  %377 = load ptr, ptr %4, align 8, !tbaa !51
  %378 = call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef nonnull %87, ptr noundef %376, ptr noundef %377) #18, !range !135
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %422, label %380

380:                                              ; preds = %375
  %381 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %382 = getelementptr inbounds i8, ptr %381, i64 1
  %383 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %384 = icmp ugt ptr %382, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %386 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %387

387:                                              ; preds = %380, %385
  %388 = phi ptr [ %381, %380 ], [ %386, %385 ]
  %389 = getelementptr inbounds i8, ptr %388, i64 1
  store ptr %389, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 114, ptr %388, align 1, !tbaa !52
  %390 = load ptr, ptr %289, align 8, !tbaa !52
  %391 = icmp eq ptr %390, null
  %392 = select i1 %391, ptr %87, ptr %390
  call fastcc void @dbxout_type_index(ptr noundef nonnull %392) #18
  %393 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %394 = getelementptr inbounds i8, ptr %393, i64 1
  %395 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %396 = icmp ugt ptr %394, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %387
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %398 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %399

399:                                              ; preds = %387, %397
  %400 = phi ptr [ %393, %387 ], [ %398, %397 ]
  %401 = getelementptr inbounds i8, ptr %400, i64 1
  store ptr %401, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %400, align 1, !tbaa !52
  %402 = load ptr, ptr %3, align 8, !tbaa !51
  call fastcc void @stabstr_O(ptr noundef %402) #18
  %403 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %406 = icmp ugt ptr %404, %405
  br i1 %406, label %407, label %409

407:                                              ; preds = %399
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %408 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %409

409:                                              ; preds = %399, %407
  %410 = phi ptr [ %403, %399 ], [ %408, %407 ]
  %411 = getelementptr inbounds i8, ptr %410, i64 1
  store ptr %411, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %410, align 1, !tbaa !52
  %412 = load ptr, ptr %4, align 8, !tbaa !51
  call fastcc void @stabstr_O(ptr noundef %412) #18
  %413 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %414 = getelementptr inbounds i8, ptr %413, i64 1
  %415 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %416 = icmp ugt ptr %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %418 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %419

419:                                              ; preds = %409, %417
  %420 = phi ptr [ %413, %409 ], [ %418, %417 ]
  %421 = getelementptr inbounds i8, ptr %420, i64 1
  store ptr %421, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %420, align 1, !tbaa !52
  br label %1369

422:                                              ; preds = %375
  call fastcc void @dbxout_range_type(ptr noundef nonnull %87, ptr noundef %376, ptr noundef %377) #18
  br label %1369

423:                                              ; preds = %256, %256
  %424 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %425 = getelementptr inbounds i8, ptr %424, i64 1
  %426 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %427 = icmp ugt ptr %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %423
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %429 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %430

430:                                              ; preds = %423, %428
  %431 = phi ptr [ %424, %423 ], [ %429, %428 ]
  %432 = getelementptr inbounds i8, ptr %431, i64 1
  store ptr %432, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 114, ptr %431, align 1, !tbaa !52
  %433 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  call fastcc void @dbxout_type_index(ptr noundef %433) #18
  %434 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %435 = getelementptr inbounds i8, ptr %434, i64 1
  %436 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %437 = icmp ugt ptr %435, %436
  br i1 %437, label %438, label %440

438:                                              ; preds = %430
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %439 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %440

440:                                              ; preds = %430, %438
  %441 = phi ptr [ %434, %430 ], [ %439, %438 ]
  %442 = getelementptr inbounds i8, ptr %441, i64 1
  store ptr %442, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %441, align 1, !tbaa !52
  %443 = call i64 @int_size_in_bytes(ptr noundef nonnull %87) #17
  call fastcc void @stabstr_D(i64 noundef %443) #18
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %444 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %445 = getelementptr inbounds i8, ptr %444, i64 3
  %446 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %447 = icmp ugt ptr %445, %446
  br i1 %447, label %448, label %451

448:                                              ; preds = %440
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %449 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %450 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %451

451:                                              ; preds = %440, %448
  %452 = phi i64 [ 3, %440 ], [ %450, %448 ]
  %453 = phi ptr [ %444, %440 ], [ %449, %448 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %453, ptr nonnull align 1 @.str.33, i64 %452, i1 false)
  %454 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %455 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %456 = getelementptr inbounds i8, ptr %455, i64 %454
  store ptr %456, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

457:                                              ; preds = %256
  %458 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %489, label %460

460:                                              ; preds = %457
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %461 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %462 = getelementptr inbounds i8, ptr %461, i64 2
  %463 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %464 = icmp ugt ptr %462, %463
  br i1 %464, label %465, label %468

465:                                              ; preds = %460
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %466 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %467 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %468

468:                                              ; preds = %460, %465
  %469 = phi i64 [ 2, %460 ], [ %467, %465 ]
  %470 = phi ptr [ %461, %460 ], [ %466, %465 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr nonnull align 1 @.str.32, i64 %469, i1 false)
  %471 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %472 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %473 = getelementptr inbounds i8, ptr %472, i64 %471
  store ptr %473, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %474 = call i64 @int_size_in_bytes(ptr noundef nonnull %87) #17
  %475 = shl nsw i64 %474, 3
  call fastcc void @stabstr_D(i64 noundef %475) #18
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %476 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %477 = getelementptr inbounds i8, ptr %476, i64 5
  %478 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %479 = icmp ugt ptr %477, %478
  br i1 %479, label %480, label %483

480:                                              ; preds = %468
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #17
  %481 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %482 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %483

483:                                              ; preds = %468, %480
  %484 = phi i64 [ 5, %468 ], [ %482, %480 ]
  %485 = phi ptr [ %476, %468 ], [ %481, %480 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %485, ptr nonnull align 1 @.str.34, i64 %484, i1 false)
  %486 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %487 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %488 = getelementptr inbounds i8, ptr %487, i64 %486
  store ptr %488, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

489:                                              ; preds = %457
  store i64 17, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %490 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %491 = getelementptr inbounds i8, ptr %490, i64 17
  %492 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %493 = icmp ugt ptr %491, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %489
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 17) #17
  %495 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %496 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %497

497:                                              ; preds = %489, %494
  %498 = phi i64 [ 17, %489 ], [ %496, %494 ]
  %499 = phi ptr [ %490, %489 ], [ %495, %494 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %499, ptr nonnull align 1 @.str.35, i64 %498, i1 false)
  %500 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %501 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %502 = getelementptr inbounds i8, ptr %501, i64 %500
  store ptr %502, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

503:                                              ; preds = %256
  %504 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !52
  %506 = load i64, ptr %505, align 8
  %507 = and i64 %506, 65535
  %508 = icmp eq i64 %507, 9
  br i1 %508, label %509, label %539

509:                                              ; preds = %503
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %510 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %511 = getelementptr inbounds i8, ptr %510, i64 3
  %512 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %513 = icmp ugt ptr %511, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %509
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %515 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %516 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %517

517:                                              ; preds = %509, %514
  %518 = phi i64 [ 3, %509 ], [ %516, %514 ]
  %519 = phi ptr [ %510, %509 ], [ %515, %514 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %519, ptr nonnull align 1 @.str.36, i64 %518, i1 false)
  %520 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %521 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %522 = getelementptr inbounds i8, ptr %521, i64 %520
  store ptr %522, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %523 = load ptr, ptr %504, align 8, !tbaa !52
  %524 = call i64 @int_size_in_bytes(ptr noundef %523) #17
  %525 = shl nsw i64 %524, 1
  call fastcc void @stabstr_D(i64 noundef %525) #18
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %526 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %527 = getelementptr inbounds i8, ptr %526, i64 3
  %528 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %529 = icmp ugt ptr %527, %528
  br i1 %529, label %530, label %533

530:                                              ; preds = %517
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %531 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %532 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %533

533:                                              ; preds = %517, %530
  %534 = phi i64 [ 3, %517 ], [ %532, %530 ]
  %535 = phi ptr [ %526, %517 ], [ %531, %530 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %535, ptr nonnull align 1 @.str.33, i64 %534, i1 false)
  %536 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %537 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %538 = getelementptr inbounds i8, ptr %537, i64 %536
  store ptr %538, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

539:                                              ; preds = %503
  %540 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %541 = getelementptr inbounds i8, ptr %540, i64 1
  %542 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %543 = icmp ugt ptr %541, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %539
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %545 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %546

546:                                              ; preds = %539, %544
  %547 = phi ptr [ %540, %539 ], [ %545, %544 ]
  %548 = getelementptr inbounds i8, ptr %547, i64 1
  store ptr %548, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 115, ptr %547, align 1, !tbaa !52
  %549 = call i64 @int_size_in_bytes(ptr noundef nonnull %87) #17
  call fastcc void @stabstr_D(i64 noundef %549) #18
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %550 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %551 = getelementptr inbounds i8, ptr %550, i64 5
  %552 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %553 = icmp ugt ptr %551, %552
  br i1 %553, label %554, label %557

554:                                              ; preds = %546
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #17
  %555 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %556 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %557

557:                                              ; preds = %546, %554
  %558 = phi i64 [ 5, %546 ], [ %556, %554 ]
  %559 = phi ptr [ %550, %546 ], [ %555, %554 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %559, ptr nonnull align 1 @.str.37, i64 %558, i1 false)
  %560 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %561 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %562 = getelementptr inbounds i8, ptr %561, i64 %560
  store ptr %562, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %563 = load ptr, ptr %504, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %563, i32 noundef 0) #18
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %564 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %565 = getelementptr inbounds i8, ptr %564, i64 3
  %566 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %567 = icmp ugt ptr %565, %566
  br i1 %567, label %568, label %571

568:                                              ; preds = %557
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %569 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %570 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %571

571:                                              ; preds = %557, %568
  %572 = phi i64 [ 3, %557 ], [ %570, %568 ]
  %573 = phi ptr [ %564, %557 ], [ %569, %568 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %573, ptr nonnull align 1 @.str.19, i64 %572, i1 false)
  %574 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %575 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %576 = getelementptr inbounds i8, ptr %575, i64 %574
  store ptr %576, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %577 = load ptr, ptr %504, align 8, !tbaa !52
  %578 = getelementptr inbounds %struct.tree_type, ptr %577, i64 0, i32 6
  %579 = load i32, ptr %578, align 4
  %580 = and i32 %579, 1023
  %581 = zext nneg i32 %580 to i64
  call fastcc void @stabstr_D(i64 noundef %581) #18
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %582 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %583 = getelementptr inbounds i8, ptr %582, i64 6
  %584 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %585 = icmp ugt ptr %583, %584
  br i1 %585, label %586, label %589

586:                                              ; preds = %571
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #17
  %587 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %588 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %589

589:                                              ; preds = %571, %586
  %590 = phi i64 [ 6, %571 ], [ %588, %586 ]
  %591 = phi ptr [ %582, %571 ], [ %587, %586 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %591, ptr nonnull align 1 @.str.38, i64 %590, i1 false)
  %592 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %593 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %594 = getelementptr inbounds i8, ptr %593, i64 %592
  store ptr %594, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %595 = load ptr, ptr %504, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %595, i32 noundef 0) #18
  %596 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %597 = getelementptr inbounds i8, ptr %596, i64 1
  %598 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %599 = icmp ugt ptr %597, %598
  br i1 %599, label %600, label %602

600:                                              ; preds = %589
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %601 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %602

602:                                              ; preds = %589, %600
  %603 = phi ptr [ %596, %589 ], [ %601, %600 ]
  %604 = getelementptr inbounds i8, ptr %603, i64 1
  store ptr %604, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %603, align 1, !tbaa !52
  %605 = load ptr, ptr %504, align 8, !tbaa !52
  %606 = getelementptr inbounds %struct.tree_type, ptr %605, i64 0, i32 6
  %607 = load i32, ptr %606, align 4
  %608 = and i32 %607, 1023
  %609 = zext nneg i32 %608 to i64
  call fastcc void @stabstr_D(i64 noundef %609) #18
  %610 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %611 = getelementptr inbounds i8, ptr %610, i64 1
  %612 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %613 = icmp ugt ptr %611, %612
  br i1 %613, label %614, label %616

614:                                              ; preds = %602
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %615 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %616

616:                                              ; preds = %602, %614
  %617 = phi ptr [ %610, %602 ], [ %615, %614 ]
  %618 = getelementptr inbounds i8, ptr %617, i64 1
  store ptr %618, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %617, align 1, !tbaa !52
  %619 = load ptr, ptr %504, align 8, !tbaa !52
  %620 = getelementptr inbounds %struct.tree_type, ptr %619, i64 0, i32 6
  %621 = load i32, ptr %620, align 4
  %622 = and i32 %621, 1023
  %623 = zext nneg i32 %622 to i64
  call fastcc void @stabstr_D(i64 noundef %623) #18
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %624 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %625 = getelementptr inbounds i8, ptr %624, i64 2
  %626 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %627 = icmp ugt ptr %625, %626
  br i1 %627, label %628, label %631

628:                                              ; preds = %616
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %629 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %630 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %631

631:                                              ; preds = %616, %628
  %632 = phi i64 [ 2, %616 ], [ %630, %628 ]
  %633 = phi ptr [ %624, %616 ], [ %629, %628 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %633, ptr nonnull align 1 @.str.39, i64 %632, i1 false)
  %634 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %635 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %636 = getelementptr inbounds i8, ptr %635, i64 %634
  store ptr %636, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1369

637:                                              ; preds = %256
  %638 = and i64 %182, 2199023255552
  %639 = icmp ne i64 %638, 0
  %640 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %641 = icmp ne i8 %640, 0
  %642 = select i1 %639, i1 %641, i1 false
  br i1 %642, label %643, label %674

643:                                              ; preds = %637
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %644 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %645 = getelementptr inbounds i8, ptr %644, i64 2
  %646 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %647 = icmp ugt ptr %645, %646
  br i1 %647, label %648, label %651

648:                                              ; preds = %643
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %649 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %650 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %651

651:                                              ; preds = %643, %648
  %652 = phi i64 [ 2, %643 ], [ %650, %648 ]
  %653 = phi ptr [ %644, %643 ], [ %649, %648 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %653, ptr nonnull align 1 @.str.32, i64 %652, i1 false)
  %654 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %655 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %656 = getelementptr inbounds i8, ptr %655, i64 %654
  store ptr %656, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %657 = call i64 @int_size_in_bytes(ptr noundef nonnull %87) #17
  %658 = shl nsw i64 %657, 3
  call fastcc void @stabstr_D(i64 noundef %658) #18
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %659 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %660 = getelementptr inbounds i8, ptr %659, i64 5
  %661 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %662 = icmp ugt ptr %660, %661
  br i1 %662, label %663, label %666

663:                                              ; preds = %651
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #17
  %664 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %665 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %666

666:                                              ; preds = %651, %663
  %667 = phi i64 [ 5, %651 ], [ %665, %663 ]
  %668 = phi ptr [ %659, %651 ], [ %664, %663 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %668, ptr nonnull align 1 @.str.40, i64 %667, i1 false)
  %669 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %670 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %671 = getelementptr inbounds i8, ptr %670, i64 %669
  store ptr %671, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %672 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 1
  %673 = load ptr, ptr %672, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %673, i32 noundef 0) #18
  br label %1369

674:                                              ; preds = %637
  %675 = and i1 %8, %641
  br i1 %675, label %676, label %691

676:                                              ; preds = %674
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %677 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %678 = getelementptr inbounds i8, ptr %677, i64 3
  %679 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %680 = icmp ugt ptr %678, %679
  br i1 %680, label %681, label %684

681:                                              ; preds = %676
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %682 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %683 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %684

684:                                              ; preds = %676, %681
  %685 = phi i64 [ 3, %676 ], [ %683, %681 ]
  %686 = phi ptr [ %677, %676 ], [ %682, %681 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %686, ptr nonnull align 1 @.str.41, i64 %685, i1 false)
  %687 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %688 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %689 = getelementptr inbounds i8, ptr %688, i64 %687
  store ptr %689, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %690 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  br label %691

691:                                              ; preds = %684, %674
  %692 = phi i8 [ %690, %684 ], [ %640, %674 ]
  %693 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %694 = load i32, ptr %693, align 4
  %695 = and i32 %694, 16777216
  %696 = icmp ne i32 %695, 0
  %697 = icmp ne i8 %692, 0
  %698 = select i1 %696, i1 %697, i1 false
  br i1 %698, label %699, label %713

699:                                              ; preds = %691
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %700 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %701 = getelementptr inbounds i8, ptr %700, i64 3
  %702 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %703 = icmp ugt ptr %701, %702
  br i1 %703, label %704, label %707

704:                                              ; preds = %699
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %705 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %706 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %707

707:                                              ; preds = %699, %704
  %708 = phi i64 [ 3, %699 ], [ %706, %704 ]
  %709 = phi ptr [ %700, %699 ], [ %705, %704 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %709, ptr nonnull align 1 @.str.42, i64 %708, i1 false)
  %710 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %711 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %712 = getelementptr inbounds i8, ptr %711, i64 %710
  store ptr %712, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %713

713:                                              ; preds = %707, %691
  %714 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !52
  %716 = icmp eq ptr %715, null
  br i1 %716, label %717, label %745

717:                                              ; preds = %713
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %718 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %719 = getelementptr inbounds i8, ptr %718, i64 2
  %720 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %721 = icmp ugt ptr %719, %720
  br i1 %721, label %722, label %725

722:                                              ; preds = %717
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %723 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %724 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %725

725:                                              ; preds = %717, %722
  %726 = phi i64 [ 2, %717 ], [ %724, %722 ]
  %727 = phi ptr [ %718, %717 ], [ %723, %722 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %727, ptr nonnull align 1 @.str.43, i64 %726, i1 false)
  %728 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %729 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %730 = getelementptr inbounds i8, ptr %729, i64 %728
  store ptr %730, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %731 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  call fastcc void @dbxout_type_index(ptr noundef %731) #18
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %732 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %733 = getelementptr inbounds i8, ptr %732, i64 6
  %734 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %735 = icmp ugt ptr %733, %734
  br i1 %735, label %736, label %739

736:                                              ; preds = %725
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #17
  %737 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %738 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %739

739:                                              ; preds = %725, %736
  %740 = phi i64 [ 6, %725 ], [ %738, %736 ]
  %741 = phi ptr [ %732, %725 ], [ %737, %736 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %741, ptr nonnull align 1 @.str.44, i64 %740, i1 false)
  %742 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %743 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %744 = getelementptr inbounds i8, ptr %743, i64 %742
  store ptr %744, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %759

745:                                              ; preds = %713
  %746 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %747 = getelementptr inbounds i8, ptr %746, i64 1
  %748 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %749 = icmp ugt ptr %747, %748
  br i1 %749, label %750, label %752

750:                                              ; preds = %745
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %751 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %752

752:                                              ; preds = %745, %750
  %753 = phi ptr [ %746, %745 ], [ %751, %750 ]
  %754 = getelementptr inbounds i8, ptr %753, i64 1
  store ptr %754, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 97, ptr %753, align 1, !tbaa !52
  %755 = getelementptr inbounds %struct.tree_type, ptr %715, i64 0, i32 13
  %756 = load ptr, ptr %755, align 8, !tbaa !52
  %757 = getelementptr inbounds %struct.tree_type, ptr %715, i64 0, i32 14
  %758 = load ptr, ptr %757, align 8, !tbaa !52
  call fastcc void @dbxout_range_type(ptr noundef nonnull %715, ptr noundef %756, ptr noundef %758) #18
  br label %759

759:                                              ; preds = %752, %739
  %760 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %761 = load ptr, ptr %760, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %761, i32 noundef 0) #18
  br label %1369

762:                                              ; preds = %256, %256, %256
  %763 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 17
  %764 = load ptr, ptr %763, align 8, !tbaa !52
  %765 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 12
  %766 = load ptr, ptr %765, align 8, !tbaa !52
  %767 = icmp eq ptr %766, null
  br i1 %767, label %781, label %768

768:                                              ; preds = %762
  %769 = load i64, ptr %766, align 8
  %770 = and i64 %769, 65535
  %771 = icmp eq i64 %770, 35
  br i1 %771, label %772, label %779

772:                                              ; preds = %768
  %773 = getelementptr inbounds %struct.tree_decl_common, ptr %766, i64 0, i32 2
  %774 = load i64, ptr %773, align 8
  %775 = and i64 %774, 1024
  %776 = icmp ne i64 %775, 0
  %777 = icmp ne i32 %82, 0
  %778 = or i1 %777, %776
  br i1 %778, label %781, label %788

779:                                              ; preds = %768
  %780 = icmp eq i32 %82, 0
  br i1 %780, label %788, label %781

781:                                              ; preds = %779, %772, %762
  %782 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 2
  %783 = load ptr, ptr %782, align 8, !tbaa !52
  %784 = icmp eq ptr %783, null
  br i1 %784, label %788, label %785

785:                                              ; preds = %781
  %786 = call i32 @host_integerp(ptr noundef nonnull %783, i32 noundef 1) #17
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %840

788:                                              ; preds = %772, %785, %781, %779
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %789 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %790 = getelementptr inbounds i8, ptr %789, i64 2
  %791 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %792 = icmp ugt ptr %790, %791
  br i1 %792, label %793, label %796

793:                                              ; preds = %788
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %794 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %795 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %796

796:                                              ; preds = %788, %793
  %797 = phi i64 [ 2, %788 ], [ %795, %793 ]
  %798 = phi ptr [ %789, %788 ], [ %794, %793 ]
  %799 = load i64, ptr %87, align 8
  %800 = and i64 %799, 65535
  %801 = icmp eq i64 %800, 16
  %802 = select i1 %801, ptr @.str.45, ptr @.str.46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %798, ptr nonnull align 1 %802, i64 %797, i1 false)
  %803 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %804 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %805 = getelementptr inbounds i8, ptr %804, i64 %803
  store ptr %805, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %806 = load ptr, ptr %765, align 8, !tbaa !52
  %807 = icmp eq ptr %806, null
  br i1 %807, label %817, label %808

808:                                              ; preds = %796
  %809 = load i64, ptr %806, align 8
  %810 = and i64 %809, 65535
  %811 = icmp eq i64 %810, 35
  br i1 %811, label %812, label %816

812:                                              ; preds = %808
  %813 = getelementptr inbounds %struct.tree_decl_minimal, ptr %806, i64 0, i32 3
  %814 = load ptr, ptr %813, align 8, !tbaa !52
  %815 = icmp eq ptr %814, null
  br i1 %815, label %817, label %816

816:                                              ; preds = %812, %808
  call fastcc void @dbxout_type_name(ptr noundef nonnull %87) #18
  br label %833

817:                                              ; preds = %812, %796
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %818 = getelementptr inbounds i8, ptr %805, i64 2
  %819 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %820 = icmp ugt ptr %818, %819
  br i1 %820, label %821, label %824

821:                                              ; preds = %817
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %822 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %823 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %824

824:                                              ; preds = %817, %821
  %825 = phi i64 [ 2, %817 ], [ %823, %821 ]
  %826 = phi ptr [ %805, %817 ], [ %822, %821 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %826, ptr nonnull align 1 @.str.47, i64 %825, i1 false)
  %827 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %828 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %829 = getelementptr inbounds i8, ptr %828, i64 %827
  store ptr %829, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %830 = load i32, ptr @dbxout_type.anonymous_type_number, align 4, !tbaa !49
  %831 = add nsw i32 %830, 1
  store i32 %831, ptr @dbxout_type.anonymous_type_number, align 4, !tbaa !49
  %832 = sext i32 %830 to i64
  call fastcc void @stabstr_D(i64 noundef %832) #18
  br label %833

833:                                              ; preds = %824, %816
  %834 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %835 = getelementptr inbounds i8, ptr %834, i64 1
  %836 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %837 = icmp ugt ptr %835, %836
  br i1 %837, label %838, label %1020

838:                                              ; preds = %833
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %839 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1020

840:                                              ; preds = %785
  %841 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %842 = getelementptr inbounds i8, ptr %841, i64 1
  %843 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %844 = icmp ugt ptr %842, %843
  br i1 %844, label %845, label %847

845:                                              ; preds = %840
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %846 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %847

847:                                              ; preds = %840, %845
  %848 = phi ptr [ %841, %840 ], [ %846, %845 ]
  %849 = load i64, ptr %87, align 8
  %850 = and i64 %849, 65535
  %851 = icmp eq i64 %850, 16
  %852 = select i1 %851, i8 115, i8 117
  %853 = getelementptr inbounds i8, ptr %848, i64 1
  store ptr %853, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %852, ptr %848, align 1, !tbaa !52
  %854 = call i64 @int_size_in_bytes(ptr noundef nonnull %87) #17
  call fastcc void @stabstr_D(i64 noundef %854) #18
  %855 = icmp eq ptr %764, null
  br i1 %855, label %1027, label %856

856:                                              ; preds = %847
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %857 = getelementptr inbounds %struct.tree_binfo, ptr %764, i64 0, i32 5
  %858 = load ptr, ptr %857, align 8, !tbaa !52
  %859 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %886, label %861

861:                                              ; preds = %856
  %862 = getelementptr inbounds %struct.tree_binfo, ptr %764, i64 0, i32 9
  %863 = call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %862) #18
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %886, label %865

865:                                              ; preds = %861
  %866 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %867 = getelementptr inbounds i8, ptr %866, i64 1
  %868 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %869 = icmp ugt ptr %867, %868
  br i1 %869, label %870, label %872

870:                                              ; preds = %865
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %871 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %872

872:                                              ; preds = %865, %870
  %873 = phi ptr [ %866, %865 ], [ %871, %870 ]
  %874 = getelementptr inbounds i8, ptr %873, i64 1
  store ptr %874, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 33, ptr %873, align 1, !tbaa !52
  %875 = call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %862) #18
  %876 = zext i32 %875 to i64
  call fastcc void @stabstr_U(i64 noundef %876) #18
  %877 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %878 = getelementptr inbounds i8, ptr %877, i64 1
  %879 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %880 = icmp ugt ptr %878, %879
  br i1 %880, label %881, label %883

881:                                              ; preds = %872
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %882 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %883

883:                                              ; preds = %872, %881
  %884 = phi ptr [ %877, %872 ], [ %882, %881 ]
  %885 = getelementptr inbounds i8, ptr %884, i64 1
  store ptr %885, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %884, align 1, !tbaa !52
  br label %886

886:                                              ; preds = %861, %883, %856
  %887 = getelementptr inbounds %struct.tree_binfo, ptr %764, i64 0, i32 9
  %888 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %887, i32 noundef 0, ptr noundef nonnull %5) #18, !range !71
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %1019, label %890

890:                                              ; preds = %886
  %891 = icmp eq ptr %858, null
  br label %892

892:                                              ; preds = %890, %1013
  %893 = phi i32 [ 0, %890 ], [ %1016, %1013 ]
  br i1 %891, label %896, label %894

894:                                              ; preds = %892
  %895 = call fastcc ptr @VEC_tree_base_index(ptr noundef nonnull %858, i32 noundef %893) #18
  br label %898

896:                                              ; preds = %892
  %897 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !51
  br label %898

898:                                              ; preds = %896, %894
  %899 = phi ptr [ %895, %894 ], [ %897, %896 ]
  %900 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %901 = icmp eq i8 %900, 0
  br i1 %901, label %966, label %902

902:                                              ; preds = %898
  %903 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %904 = getelementptr inbounds i8, ptr %903, i64 1
  %905 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %906 = icmp ugt ptr %904, %905
  br i1 %906, label %907, label %909

907:                                              ; preds = %902
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %908 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %909

909:                                              ; preds = %902, %907
  %910 = phi ptr [ %903, %902 ], [ %908, %907 ]
  %911 = load ptr, ptr %5, align 8, !tbaa !51
  %912 = load i64, ptr %911, align 8
  %913 = and i64 %912, 67108864
  %914 = icmp eq i64 %913, 0
  %915 = select i1 %914, i8 48, i8 49
  %916 = getelementptr inbounds i8, ptr %910, i64 1
  store ptr %916, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %915, ptr %910, align 1, !tbaa !52
  %917 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %918 = getelementptr inbounds i8, ptr %917, i64 1
  %919 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %920 = icmp ugt ptr %918, %919
  br i1 %920, label %921, label %923

921:                                              ; preds = %909
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %922 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %923

923:                                              ; preds = %909, %921
  %924 = phi ptr [ %917, %909 ], [ %922, %921 ]
  %925 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !51
  %926 = icmp eq ptr %899, %925
  %927 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 23), align 8
  %928 = icmp eq ptr %899, %927
  %929 = select i1 %928, i8 49, i8 48
  %930 = select i1 %926, i8 50, i8 %929
  %931 = getelementptr inbounds i8, ptr %924, i64 1
  store ptr %931, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %930, ptr %924, align 1, !tbaa !52
  %932 = load i64, ptr %911, align 8
  %933 = and i64 %932, 67108864
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %944, label %935

935:                                              ; preds = %923
  %936 = load ptr, ptr @lang_hooks, align 8, !tbaa !89
  %937 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %936, ptr noundef nonnull dereferenceable(8) @.str.5) #18
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %942, label %939

939:                                              ; preds = %935
  %940 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %936, ptr noundef nonnull dereferenceable(18) @.str.10) #18
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %944

942:                                              ; preds = %939, %935
  %943 = getelementptr inbounds %struct.tree_binfo, ptr %911, i64 0, i32 4
  br label %946

944:                                              ; preds = %939, %923
  %945 = getelementptr inbounds %struct.tree_binfo, ptr %911, i64 0, i32 1
  br label %946

946:                                              ; preds = %944, %942
  %947 = phi ptr [ %945, %944 ], [ %943, %942 ]
  %948 = load ptr, ptr %947, align 8, !tbaa !52
  %949 = call i64 @tree_low_cst(ptr noundef %948, i32 noundef 0) #17
  %950 = shl nsw i64 %949, 3
  call fastcc void @stabstr_D(i64 noundef %950) #18
  %951 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %952 = getelementptr inbounds i8, ptr %951, i64 1
  %953 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %954 = icmp ugt ptr %952, %953
  br i1 %954, label %955, label %957

955:                                              ; preds = %946
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %956 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %957

957:                                              ; preds = %946, %955
  %958 = phi ptr [ %951, %946 ], [ %956, %955 ]
  %959 = getelementptr inbounds i8, ptr %958, i64 1
  store ptr %959, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %958, align 1, !tbaa !52
  %960 = getelementptr inbounds %struct.tree_common, ptr %911, i64 0, i32 2
  %961 = load ptr, ptr %960, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %961, i32 noundef 0) #18
  %962 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %963 = getelementptr inbounds i8, ptr %962, i64 1
  %964 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %965 = icmp ugt ptr %963, %964
  br i1 %965, label %1011, label %1013

966:                                              ; preds = %898
  %967 = load ptr, ptr %5, align 8, !tbaa !51
  %968 = getelementptr inbounds %struct.tree_common, ptr %967, i64 0, i32 2
  %969 = load ptr, ptr %968, align 8, !tbaa !52
  call fastcc void @dbxout_type_name(ptr noundef %969) #18
  %970 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %971 = getelementptr inbounds i8, ptr %970, i64 1
  %972 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %973 = icmp ugt ptr %971, %972
  br i1 %973, label %974, label %976

974:                                              ; preds = %966
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %975 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %976

976:                                              ; preds = %966, %974
  %977 = phi ptr [ %970, %966 ], [ %975, %974 ]
  %978 = getelementptr inbounds i8, ptr %977, i64 1
  store ptr %978, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %977, align 1, !tbaa !52
  %979 = load ptr, ptr %968, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %979, i32 noundef %82) #18
  %980 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %981 = getelementptr inbounds i8, ptr %980, i64 1
  %982 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %983 = icmp ugt ptr %981, %982
  br i1 %983, label %984, label %986

984:                                              ; preds = %976
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %985 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %986

986:                                              ; preds = %976, %984
  %987 = phi ptr [ %980, %976 ], [ %985, %984 ]
  %988 = getelementptr inbounds i8, ptr %987, i64 1
  store ptr %988, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %987, align 1, !tbaa !52
  %989 = getelementptr inbounds %struct.tree_binfo, ptr %967, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !52
  %991 = call i64 @tree_low_cst(ptr noundef %990, i32 noundef 0) #17
  %992 = shl nsw i64 %991, 3
  call fastcc void @stabstr_D(i64 noundef %992) #18
  %993 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %994 = getelementptr inbounds i8, ptr %993, i64 1
  %995 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %996 = icmp ugt ptr %994, %995
  br i1 %996, label %997, label %999

997:                                              ; preds = %986
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %998 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %999

999:                                              ; preds = %986, %997
  %1000 = phi ptr [ %993, %986 ], [ %998, %997 ]
  %1001 = getelementptr inbounds i8, ptr %1000, i64 1
  store ptr %1001, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %1000, align 1, !tbaa !52
  %1002 = load ptr, ptr %968, align 8, !tbaa !52
  %1003 = getelementptr inbounds %struct.tree_type, ptr %1002, i64 0, i32 2
  %1004 = load ptr, ptr %1003, align 8, !tbaa !52
  %1005 = call i64 @tree_low_cst(ptr noundef %1004, i32 noundef 0) #17
  %1006 = shl nsw i64 %1005, 3
  call fastcc void @stabstr_D(i64 noundef %1006) #18
  %1007 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1008 = getelementptr inbounds i8, ptr %1007, i64 1
  %1009 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1010 = icmp ugt ptr %1008, %1009
  br i1 %1010, label %1011, label %1013

1011:                                             ; preds = %999, %957
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1012 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1013

1013:                                             ; preds = %1011, %999, %957
  %1014 = phi ptr [ %962, %957 ], [ %1007, %999 ], [ %1012, %1011 ]
  %1015 = getelementptr inbounds i8, ptr %1014, i64 1
  store ptr %1015, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1014, align 1, !tbaa !52
  %1016 = add nuw nsw i32 %893, 1
  %1017 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %887, i32 noundef %1016, ptr noundef nonnull %5) #18, !range !71
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %892, !llvm.loop !136

1019:                                             ; preds = %1013, %886
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %1027

1020:                                             ; preds = %838, %833
  %1021 = phi ptr [ %839, %838 ], [ %834, %833 ]
  %1022 = getelementptr inbounds i8, ptr %1021, i64 1
  store ptr %1022, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %1021, align 1, !tbaa !52
  %1023 = load ptr, ptr @typevec, align 8, !tbaa !51
  %1024 = load i32, ptr %88, align 8, !tbaa !52
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds %struct.typeinfo, ptr %1023, i64 %1025
  store i32 1, ptr %1026, align 4, !tbaa !134
  br label %1369

1027:                                             ; preds = %1019, %847
  call fastcc void @dbxout_type_fields(ptr noundef nonnull %87) #18
  %1028 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1035, label %1030

1030:                                             ; preds = %1027
  %1031 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 14
  %1032 = load ptr, ptr %1031, align 8, !tbaa !52
  %1033 = icmp eq ptr %1032, null
  br i1 %1033, label %1035, label %1034

1034:                                             ; preds = %1030
  call fastcc void @dbxout_type_methods(ptr noundef nonnull %87) #18
  br label %1035

1035:                                             ; preds = %1034, %1030, %1027
  %1036 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1037 = getelementptr inbounds i8, ptr %1036, i64 1
  %1038 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1039 = icmp ugt ptr %1037, %1038
  br i1 %1039, label %1040, label %1042

1040:                                             ; preds = %1035
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1041 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1042

1042:                                             ; preds = %1035, %1040
  %1043 = phi ptr [ %1036, %1035 ], [ %1041, %1040 ]
  %1044 = getelementptr inbounds i8, ptr %1043, i64 1
  store ptr %1044, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1043, align 1, !tbaa !52
  %1045 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1046 = icmp eq i8 %1045, 0
  br i1 %1046, label %1369, label %1047

1047:                                             ; preds = %1042
  %1048 = load i64, ptr %87, align 8
  %1049 = and i64 %1048, 65535
  %1050 = icmp eq i64 %1049, 16
  br i1 %1050, label %1051, label %1369

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 13
  %1053 = load ptr, ptr %1052, align 8, !tbaa !52
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1369, label %1055

1055:                                             ; preds = %1051
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1056 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1057 = getelementptr inbounds i8, ptr %1056, i64 2
  %1058 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1059 = icmp ugt ptr %1057, %1058
  br i1 %1059, label %1060, label %1063

1060:                                             ; preds = %1055
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %1061 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1062 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %1063

1063:                                             ; preds = %1055, %1060
  %1064 = phi i64 [ 2, %1055 ], [ %1062, %1060 ]
  %1065 = phi ptr [ %1056, %1055 ], [ %1061, %1060 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1065, ptr nonnull align 1 @.str.48, i64 %1064, i1 false)
  %1066 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1067 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1068 = getelementptr inbounds i8, ptr %1067, i64 %1066
  store ptr %1068, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1069 = load ptr, ptr %1052, align 8, !tbaa !52
  %1070 = getelementptr inbounds %struct.tree_field_decl, ptr %1069, i64 0, i32 5
  %1071 = load ptr, ptr %1070, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1071, i32 noundef 0) #18
  %1072 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1073 = getelementptr inbounds i8, ptr %1072, i64 1
  %1074 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1075 = icmp ugt ptr %1073, %1074
  br i1 %1075, label %1076, label %1078

1076:                                             ; preds = %1063
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1077 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1078

1078:                                             ; preds = %1063, %1076
  %1079 = phi ptr [ %1072, %1063 ], [ %1077, %1076 ]
  %1080 = getelementptr inbounds i8, ptr %1079, i64 1
  store ptr %1080, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1079, align 1, !tbaa !52
  br label %1369

1081:                                             ; preds = %256
  %1082 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 12
  %1083 = load ptr, ptr %1082, align 8, !tbaa !52
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1098, label %1085

1085:                                             ; preds = %1081
  %1086 = load i64, ptr %1083, align 8
  %1087 = and i64 %1086, 65535
  %1088 = icmp eq i64 %1087, 35
  br i1 %1088, label %1089, label %1096

1089:                                             ; preds = %1085
  %1090 = getelementptr inbounds %struct.tree_decl_common, ptr %1083, i64 0, i32 2
  %1091 = load i64, ptr %1090, align 8
  %1092 = and i64 %1091, 1024
  %1093 = icmp ne i64 %1092, 0
  %1094 = icmp ne i32 %82, 0
  %1095 = or i1 %1094, %1093
  br i1 %1095, label %1098, label %1102

1096:                                             ; preds = %1085
  %1097 = icmp eq i32 %82, 0
  br i1 %1097, label %1102, label %1098

1098:                                             ; preds = %1096, %1089, %1081
  %1099 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 2
  %1100 = load ptr, ptr %1099, align 8, !tbaa !52
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1102, label %1129

1102:                                             ; preds = %1089, %1098, %1096
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1103 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1104 = getelementptr inbounds i8, ptr %1103, i64 2
  %1105 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1106 = icmp ugt ptr %1104, %1105
  br i1 %1106, label %1107, label %1110

1107:                                             ; preds = %1102
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %1108 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1109 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %1110

1110:                                             ; preds = %1102, %1107
  %1111 = phi i64 [ 2, %1102 ], [ %1109, %1107 ]
  %1112 = phi ptr [ %1103, %1102 ], [ %1108, %1107 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1112, ptr nonnull align 1 @.str.49, i64 %1111, i1 false)
  %1113 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1114 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1115 = getelementptr inbounds i8, ptr %1114, i64 %1113
  store ptr %1115, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  call fastcc void @dbxout_type_name(ptr noundef nonnull %87) #18
  %1116 = load ptr, ptr @typevec, align 8, !tbaa !51
  %1117 = load i32, ptr %88, align 8, !tbaa !52
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds %struct.typeinfo, ptr %1116, i64 %1118
  store i32 1, ptr %1119, align 4, !tbaa !134
  %1120 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1121 = getelementptr inbounds i8, ptr %1120, i64 1
  %1122 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1123 = icmp ugt ptr %1121, %1122
  br i1 %1123, label %1124, label %1126

1124:                                             ; preds = %1110
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1125 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1126

1126:                                             ; preds = %1110, %1124
  %1127 = phi ptr [ %1120, %1110 ], [ %1125, %1124 ]
  %1128 = getelementptr inbounds i8, ptr %1127, i64 1
  store ptr %1128, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %1127, align 1, !tbaa !52
  br label %1369

1129:                                             ; preds = %1098
  %1130 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1131 = icmp eq i8 %1130, 0
  br i1 %1131, label %1167, label %1132

1132:                                             ; preds = %1129
  %1133 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %1134 = load i32, ptr %1133, align 4
  %1135 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  %1136 = getelementptr inbounds %struct.tree_type, ptr %1135, i64 0, i32 6
  %1137 = load i32, ptr %1136, align 4
  %1138 = xor i32 %1137, %1134
  %1139 = and i32 %1138, 1023
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1167, label %1141

1141:                                             ; preds = %1132
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1142 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1143 = getelementptr inbounds i8, ptr %1142, i64 2
  %1144 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1145 = icmp ugt ptr %1143, %1144
  br i1 %1145, label %1146, label %1149

1146:                                             ; preds = %1141
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %1147 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1148 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %1149

1149:                                             ; preds = %1141, %1146
  %1150 = phi i64 [ 2, %1141 ], [ %1148, %1146 ]
  %1151 = phi ptr [ %1142, %1141 ], [ %1147, %1146 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1151, ptr nonnull align 1 @.str.32, i64 %1150, i1 false)
  %1152 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1153 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1154 = getelementptr inbounds i8, ptr %1153, i64 %1152
  store ptr %1154, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1155 = load i32, ptr %1133, align 4
  %1156 = and i32 %1155, 1023
  %1157 = zext nneg i32 %1156 to i64
  call fastcc void @stabstr_D(i64 noundef %1157) #18
  %1158 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1159 = getelementptr inbounds i8, ptr %1158, i64 1
  %1160 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1161 = icmp ugt ptr %1159, %1160
  br i1 %1161, label %1162, label %1164

1162:                                             ; preds = %1149
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1163 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1164

1164:                                             ; preds = %1149, %1162
  %1165 = phi ptr [ %1158, %1149 ], [ %1163, %1162 ]
  %1166 = getelementptr inbounds i8, ptr %1165, i64 1
  store ptr %1166, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1165, align 1, !tbaa !52
  br label %1167

1167:                                             ; preds = %1164, %1132, %1129
  %1168 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1169 = getelementptr inbounds i8, ptr %1168, i64 1
  %1170 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1171 = icmp ugt ptr %1169, %1170
  br i1 %1171, label %1172, label %1174

1172:                                             ; preds = %1167
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1173 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1174

1174:                                             ; preds = %1167, %1172
  %1175 = phi ptr [ %1168, %1167 ], [ %1173, %1172 ]
  %1176 = getelementptr inbounds i8, ptr %1175, i64 1
  store ptr %1176, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 101, ptr %1175, align 1, !tbaa !52
  %1177 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 1
  %1178 = load ptr, ptr %1177, align 8, !tbaa !52
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1244, label %1180

1180:                                             ; preds = %1174, %1238
  %1181 = phi ptr [ %1242, %1238 ], [ %1178, %1174 ]
  %1182 = getelementptr inbounds %struct.tree_list, ptr %1181, i64 0, i32 2
  %1183 = load ptr, ptr %1182, align 8, !tbaa !52
  %1184 = getelementptr inbounds %struct.tree_list, ptr %1181, i64 0, i32 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !52
  %1186 = getelementptr inbounds %struct.tree_identifier, ptr %1185, i64 0, i32 1, i32 1
  %1187 = load i32, ptr %1186, align 8, !tbaa !52
  %1188 = zext i32 %1187 to i64
  store i64 %1188, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1189 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1190 = getelementptr inbounds i8, ptr %1189, i64 %1188
  %1191 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1192 = icmp ugt ptr %1190, %1191
  br i1 %1192, label %1193, label %1196

1193:                                             ; preds = %1180
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %1187) #17
  %1194 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1195 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %1196

1196:                                             ; preds = %1180, %1193
  %1197 = phi i64 [ %1188, %1180 ], [ %1195, %1193 ]
  %1198 = phi ptr [ %1189, %1180 ], [ %1194, %1193 ]
  %1199 = load ptr, ptr %1184, align 8, !tbaa !52
  %1200 = getelementptr inbounds %struct.tree_identifier, ptr %1199, i64 0, i32 1
  %1201 = load ptr, ptr %1200, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1198, ptr align 1 %1201, i64 %1197, i1 false)
  %1202 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %1203 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1204 = getelementptr inbounds i8, ptr %1203, i64 %1202
  store ptr %1204, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1205 = getelementptr inbounds i8, ptr %1204, i64 1
  %1206 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1207 = icmp ugt ptr %1205, %1206
  br i1 %1207, label %1208, label %1210

1208:                                             ; preds = %1196
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1209 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1210

1210:                                             ; preds = %1196, %1208
  %1211 = phi ptr [ %1204, %1196 ], [ %1209, %1208 ]
  %1212 = getelementptr inbounds i8, ptr %1211, i64 1
  store ptr %1212, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %1211, align 1, !tbaa !52
  %1213 = load i64, ptr %1183, align 8
  %1214 = and i64 %1213, 65535
  %1215 = icmp eq i64 %1214, 33
  br i1 %1215, label %1216, label %1219

1216:                                             ; preds = %1210
  %1217 = getelementptr inbounds %struct.tree_decl_common, ptr %1183, i64 0, i32 5
  %1218 = load ptr, ptr %1217, align 8, !tbaa !52
  br label %1219

1219:                                             ; preds = %1216, %1210
  %1220 = phi ptr [ %1218, %1216 ], [ %1183, %1210 ]
  %1221 = getelementptr inbounds %struct.tree_int_cst, ptr %1220, i64 0, i32 1
  %1222 = getelementptr inbounds %struct.tree_int_cst, ptr %1220, i64 0, i32 1, i32 1
  %1223 = load i64, ptr %1222, align 8, !tbaa !52
  switch i64 %1223, label %1230 [
    i64 0, label %1224
    i64 -1, label %1226
  ]

1224:                                             ; preds = %1219
  %1225 = load i64, ptr %1221, align 8, !tbaa !52
  call fastcc void @stabstr_D(i64 noundef %1225) #18
  br label %1231

1226:                                             ; preds = %1219
  %1227 = load i64, ptr %1221, align 8, !tbaa !52
  %1228 = icmp slt i64 %1227, 0
  br i1 %1228, label %1229, label %1230

1229:                                             ; preds = %1226
  call fastcc void @stabstr_D(i64 noundef %1227) #18
  br label %1231

1230:                                             ; preds = %1219, %1226
  call fastcc void @stabstr_O(ptr noundef nonnull %1220) #18
  br label %1231

1231:                                             ; preds = %1229, %1230, %1224
  %1232 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1233 = getelementptr inbounds i8, ptr %1232, i64 1
  %1234 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1235 = icmp ugt ptr %1233, %1234
  br i1 %1235, label %1236, label %1238

1236:                                             ; preds = %1231
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1237 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1238

1238:                                             ; preds = %1231, %1236
  %1239 = phi ptr [ %1232, %1231 ], [ %1237, %1236 ]
  %1240 = getelementptr inbounds i8, ptr %1239, i64 1
  store ptr %1240, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %1239, align 1, !tbaa !52
  %1241 = getelementptr inbounds %struct.tree_common, ptr %1181, i64 0, i32 1
  %1242 = load ptr, ptr %1241, align 8, !tbaa !52
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1244, label %1180, !llvm.loop !137

1244:                                             ; preds = %1238, %1174
  %1245 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1246 = getelementptr inbounds i8, ptr %1245, i64 1
  %1247 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1248 = icmp ugt ptr %1246, %1247
  br i1 %1248, label %1249, label %1251

1249:                                             ; preds = %1244
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1250 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1251

1251:                                             ; preds = %1244, %1249
  %1252 = phi ptr [ %1245, %1244 ], [ %1250, %1249 ]
  %1253 = getelementptr inbounds i8, ptr %1252, i64 1
  store ptr %1253, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1252, align 1, !tbaa !52
  br label %1369

1254:                                             ; preds = %256
  %1255 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1256 = getelementptr inbounds i8, ptr %1255, i64 1
  %1257 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1258 = icmp ugt ptr %1256, %1257
  br i1 %1258, label %1259, label %1261

1259:                                             ; preds = %1254
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1260 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1261

1261:                                             ; preds = %1254, %1259
  %1262 = phi ptr [ %1255, %1254 ], [ %1260, %1259 ]
  %1263 = getelementptr inbounds i8, ptr %1262, i64 1
  store ptr %1263, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 42, ptr %1262, align 1, !tbaa !52
  %1264 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1265 = load ptr, ptr %1264, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1265, i32 noundef 0) #18
  br label %1369

1266:                                             ; preds = %256
  %1267 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1268 = icmp eq i8 %1267, 0
  br i1 %1268, label %1303, label %1269

1269:                                             ; preds = %1266
  %1270 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1271 = getelementptr inbounds i8, ptr %1270, i64 1
  %1272 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1273 = icmp ugt ptr %1271, %1272
  br i1 %1273, label %1274, label %1276

1274:                                             ; preds = %1269
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1275 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1276

1276:                                             ; preds = %1269, %1274
  %1277 = phi ptr [ %1270, %1269 ], [ %1275, %1274 ]
  %1278 = getelementptr inbounds i8, ptr %1277, i64 1
  store ptr %1278, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 35, ptr %1277, align 1, !tbaa !52
  %1279 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 14
  %1280 = load ptr, ptr %1279, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1280, i32 noundef 0) #18
  %1281 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1282 = getelementptr inbounds i8, ptr %1281, i64 1
  %1283 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1284 = icmp ugt ptr %1282, %1283
  br i1 %1284, label %1285, label %1287

1285:                                             ; preds = %1276
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1286 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1287

1287:                                             ; preds = %1276, %1285
  %1288 = phi ptr [ %1281, %1276 ], [ %1286, %1285 ]
  %1289 = getelementptr inbounds i8, ptr %1288, i64 1
  store ptr %1289, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %1288, align 1, !tbaa !52
  %1290 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1291 = load ptr, ptr %1290, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1291, i32 noundef 0) #18
  %1292 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !52
  call fastcc void @dbxout_args(ptr noundef %1293) #18
  %1294 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1295 = getelementptr inbounds i8, ptr %1294, i64 1
  %1296 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1297 = icmp ugt ptr %1295, %1296
  br i1 %1297, label %1298, label %1300

1298:                                             ; preds = %1287
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1299 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1300

1300:                                             ; preds = %1287, %1298
  %1301 = phi ptr [ %1294, %1287 ], [ %1299, %1298 ]
  %1302 = getelementptr inbounds i8, ptr %1301, i64 1
  store ptr %1302, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %1301, align 1, !tbaa !52
  br label %1369

1303:                                             ; preds = %1266
  %1304 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1305 = load ptr, ptr %1304, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1305, i32 noundef 0) #18
  br label %1369

1306:                                             ; preds = %256
  %1307 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1308 = icmp eq i8 %1307, 0
  br i1 %1308, label %1332, label %1309

1309:                                             ; preds = %1306
  %1310 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1311 = getelementptr inbounds i8, ptr %1310, i64 1
  %1312 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1313 = icmp ugt ptr %1311, %1312
  br i1 %1313, label %1314, label %1316

1314:                                             ; preds = %1309
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1315 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1316

1316:                                             ; preds = %1309, %1314
  %1317 = phi ptr [ %1310, %1309 ], [ %1315, %1314 ]
  %1318 = getelementptr inbounds i8, ptr %1317, i64 1
  store ptr %1318, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 64, ptr %1317, align 1, !tbaa !52
  %1319 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 14
  %1320 = load ptr, ptr %1319, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1320, i32 noundef 0) #18
  %1321 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1322 = getelementptr inbounds i8, ptr %1321, i64 1
  %1323 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1324 = icmp ugt ptr %1322, %1323
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1316
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1326 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1327

1327:                                             ; preds = %1316, %1325
  %1328 = phi ptr [ %1321, %1316 ], [ %1326, %1325 ]
  %1329 = getelementptr inbounds i8, ptr %1328, i64 1
  store ptr %1329, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %1328, align 1, !tbaa !52
  %1330 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1331 = load ptr, ptr %1330, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1331, i32 noundef 0) #18
  br label %1369

1332:                                             ; preds = %1306
  %1333 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  call fastcc void @dbxout_type(ptr noundef %1333, i32 noundef 0) #18
  br label %1369

1334:                                             ; preds = %256
  %1335 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %1336 = icmp eq i8 %1335, 0
  %1337 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1338 = getelementptr inbounds i8, ptr %1337, i64 1
  %1339 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1340 = icmp ugt ptr %1338, %1339
  br i1 %1336, label %1347, label %1341

1341:                                             ; preds = %1334
  br i1 %1340, label %1342, label %1344

1342:                                             ; preds = %1341
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1343 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1344

1344:                                             ; preds = %1341, %1342
  %1345 = phi ptr [ %1337, %1341 ], [ %1343, %1342 ]
  %1346 = getelementptr inbounds i8, ptr %1345, i64 1
  store ptr %1346, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 38, ptr %1345, align 1, !tbaa !52
  br label %1353

1347:                                             ; preds = %1334
  br i1 %1340, label %1348, label %1350

1348:                                             ; preds = %1347
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1349 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1350

1350:                                             ; preds = %1347, %1348
  %1351 = phi ptr [ %1337, %1347 ], [ %1349, %1348 ]
  %1352 = getelementptr inbounds i8, ptr %1351, i64 1
  store ptr %1352, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 42, ptr %1351, align 1, !tbaa !52
  br label %1353

1353:                                             ; preds = %1350, %1344
  %1354 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1355 = load ptr, ptr %1354, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1355, i32 noundef 0) #18
  br label %1369

1356:                                             ; preds = %256
  %1357 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %1358 = getelementptr inbounds i8, ptr %1357, i64 1
  %1359 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %1360 = icmp ugt ptr %1358, %1359
  br i1 %1360, label %1361, label %1363

1361:                                             ; preds = %1356
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %1362 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %1363

1363:                                             ; preds = %1356, %1361
  %1364 = phi ptr [ %1357, %1356 ], [ %1362, %1361 ]
  %1365 = getelementptr inbounds i8, ptr %1364, i64 1
  store ptr %1365, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 102, ptr %1364, align 1, !tbaa !52
  %1366 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %1367 = load ptr, ptr %1366, align 8, !tbaa !52
  call fastcc void @dbxout_type(ptr noundef %1367, i32 noundef 0) #18
  br label %1369

1368:                                             ; preds = %256
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 2280, ptr noundef nonnull @.str.29) #17
  br label %1369

1369:                                             ; preds = %1020, %258, %451, %666, %759, %1251, %1261, %1353, %1363, %1368, %334, %422, %419, %282, %497, %483, %631, %533, %1078, %1051, %1047, %1042, %1303, %1300, %1332, %1327, %153, %159, %161, %165, %1126, %251, %219, %198
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_finish_complex_stabs(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !138 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !52
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %9) #17
  %10 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !139
  br label %12

12:                                               ; preds = %4, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %4 ]
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %15 = getelementptr inbounds i8, ptr %14, i64 2
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %17 = icmp ugt ptr %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %20 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %21

21:                                               ; preds = %12, %18
  %22 = phi i64 [ 2, %12 ], [ %20, %18 ]
  %23 = phi ptr [ %14, %12 ], [ %19, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr nonnull align 1 @.str.53, i64 %22, i1 false)
  %24 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !141
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = and i64 %30, 4294967295
  %32 = icmp eq ptr %26, %27
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 10), align 8
  %35 = or i8 %34, 2
  store i8 %35, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 10), align 8
  br label %36

36:                                               ; preds = %21, %33
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %37 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 6), align 8, !tbaa !142
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %28
  %40 = xor i32 %37, -1
  %41 = sext i32 %40 to i64
  %42 = and i64 %39, %41
  %43 = inttoptr i64 %42 to ptr
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 1), align 8, !tbaa !143
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %42, %45
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %48, %45
  %50 = icmp sgt i64 %46, %49
  %51 = select i1 %50, ptr %47, ptr %43
  store ptr %51, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8
  store ptr %51, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !141
  %52 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %53 = call i64 @fwrite(ptr noundef %27, i64 noundef 1, i64 noundef %31, ptr noundef %52) #18
  %54 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 0, i32 %13
  call void @dbxout_int(i32 noundef %1) #18
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %58 = call i32 @fputs(ptr noundef nonnull @.str.19, ptr noundef %57) #18
  call void @dbxout_int(i32 noundef %56) #18
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %60 = call i32 @putc(i32 noundef 44, ptr noundef %59) #18
  %61 = icmp eq ptr %2, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %36
  %63 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  call void @output_addr_const(ptr noundef %63, ptr noundef nonnull %2) #17
  br label %65

64:                                               ; preds = %36
  call void @dbxout_int(i32 noundef %3) #18
  br label %65

65:                                               ; preds = %64, %62
  %66 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %67 = call i32 @putc(i32 noundef 10, ptr noundef %66) #18
  %68 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 1), align 8, !tbaa !143
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %29, %69
  store i64 %70, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %74, %69
  %76 = icmp slt i64 %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, ptr %68, i64 %70
  store ptr %78, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 2), align 8, !tbaa !141
  store ptr %78, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %81

79:                                               ; preds = %72, %65
  %80 = getelementptr inbounds i8, ptr %68, i64 %70
  call void @obstack_free(ptr noundef nonnull @stabstr_ob, ptr noundef %80) #17
  br label %81

81:                                               ; preds = %79, %77
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_class_name_qualifiers(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !144 {
  %2 = tail call ptr @decl_type_context(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 16
  br i1 %7, label %8, label %56

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = icmp eq i64 %14, 35
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  tail call fastcc void @dbxout_class_name_qualifiers(ptr noundef nonnull %10) #18
  %23 = load ptr, ptr %17, align 8, !tbaa !52
  br label %24

24:                                               ; preds = %12, %22, %20
  %25 = phi ptr [ %23, %22 ], [ %10, %20 ], [ %10, %12 ]
  %26 = getelementptr inbounds %struct.tree_identifier, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %25, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = zext i32 %28 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %31 = getelementptr inbounds i8, ptr %30, i64 %29
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %33 = icmp ugt ptr %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %28) #17
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %36 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %37

37:                                               ; preds = %24, %34
  %38 = phi i64 [ %29, %24 ], [ %36, %34 ]
  %39 = phi ptr [ %30, %24 ], [ %35, %34 ]
  %40 = load ptr, ptr %26, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %40, i64 %38, i1 false)
  %41 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %43 = getelementptr inbounds i8, ptr %42, i64 %41
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %44 = getelementptr inbounds i8, ptr %43, i64 2
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %46 = icmp ugt ptr %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %49 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %50

50:                                               ; preds = %37, %47
  %51 = phi i64 [ 2, %37 ], [ %49, %47 ]
  %52 = phi ptr [ %43, %37 ], [ %48, %47 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr nonnull align 1 @.str.52, i64 %51, i1 false)
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %55 = getelementptr inbounds i8, ptr %54, i64 %53
  store ptr %55, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %56

56:                                               ; preds = %50, %16, %8, %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_symbol_name(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !145 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = icmp eq i32 %11, 2
  %13 = icmp eq i64 %9, 38
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  br label %20

17:                                               ; preds = %7, %3
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %16, %15 ], [ %19, %17 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %21, i64 0, i32 1
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %21, i64 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !52
  %27 = zext i32 %26 to i64
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %26) #17
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %34 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %35

35:                                               ; preds = %23, %32
  %36 = phi i64 [ %27, %23 ], [ %34, %32 ]
  %37 = phi ptr [ %28, %23 ], [ %33, %32 ]
  %38 = load ptr, ptr %24, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %36, i1 false)
  br label %50

39:                                               ; preds = %20
  store i64 6, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %41 = getelementptr inbounds i8, ptr %40, i64 6
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %43 = icmp ugt ptr %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 6) #17
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %46 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %47

47:                                               ; preds = %39, %44
  %48 = phi i64 [ 6, %39 ], [ %46, %44 ]
  %49 = phi ptr [ %40, %39 ], [ %45, %44 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr nonnull align 1 @.str.54, i64 %48, i1 false)
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %53 = getelementptr inbounds i8, ptr %52, i64 %51
  store ptr %53, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %54 = icmp eq ptr %1, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  store i64 %56, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %59 = icmp ugt ptr %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = trunc i64 %56 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %61) #17
  %62 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %63 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %64

64:                                               ; preds = %55, %60
  %65 = phi i64 [ %56, %55 ], [ %63, %60 ]
  %66 = phi ptr [ %53, %55 ], [ %62, %60 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 %1, i64 %65, i1 false)
  %67 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %68 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  store ptr %69, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %70

70:                                               ; preds = %64, %50
  %71 = phi ptr [ %69, %64 ], [ %53, %50 ]
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %74 = icmp ugt ptr %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %76 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %77

77:                                               ; preds = %70, %75
  %78 = phi ptr [ %71, %70 ], [ %76, %75 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %79, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %78, align 1, !tbaa !52
  %80 = icmp eq i32 %2, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %85 = icmp ugt ptr %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %87 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi ptr [ %82, %81 ], [ %87, %86 ]
  %90 = trunc i32 %2 to i8
  %91 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %91, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %90, ptr %89, align 1, !tbaa !52
  br label %92

92:                                               ; preds = %88, %77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stabstr_D(i64 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !146 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i64 64
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 48, ptr %13, align 1, !tbaa !52
  br label %60

15:                                               ; preds = %1
  %16 = icmp slt i64 %0, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %24

24:                                               ; preds = %17, %22
  %25 = phi ptr [ %18, %17 ], [ %23, %22 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 45, ptr %25, align 1, !tbaa !52
  %27 = trunc i64 %0 to i32
  %28 = sub i32 0, %27
  br label %31

29:                                               ; preds = %15
  %30 = trunc i64 %0 to i32
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ %30, %29 ], [ %28, %24 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ %37, %33 ], [ %32, %31 ]
  %35 = phi ptr [ %40, %33 ], [ %3, %31 ]
  %36 = urem i32 %34, 10
  %37 = udiv i32 %34, 10
  %38 = trunc i32 %36 to i8
  %39 = or disjoint i8 %38, 48
  %40 = getelementptr inbounds i8, ptr %35, i64 -1
  store i8 %39, ptr %40, align 1, !tbaa !52
  %41 = icmp ult i32 %34, 10
  br i1 %41, label %42, label %33, !llvm.loop !147

42:                                               ; preds = %33
  %43 = ptrtoint ptr %3 to i64
  %44 = ptrtoint ptr %40 to i64
  %45 = sub i64 %43, %44
  store i64 %45, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %49 = icmp ugt ptr %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = trunc i64 %45 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %51) #17
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %54

54:                                               ; preds = %42, %50
  %55 = phi i64 [ %45, %42 ], [ %53, %50 ]
  %56 = phi ptr [ %46, %42 ], [ %52, %50 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr nonnull align 1 %40, i64 %55, i1 false)
  %57 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %58 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %59 = getelementptr inbounds i8, ptr %58, i64 %57
  store ptr %59, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %60

60:                                               ; preds = %54, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @debug_flush_symbol_queue() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dbxout_expand_expr(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !148 {
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
  %13 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !149
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %9, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 49152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %12, %15, %8
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 67108864
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %9) #17
  br label %8

27:                                               ; preds = %20, %8, %8
  %28 = and i64 %10, 65535
  %29 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %28, i64 11
  %30 = load i8, ptr %29, align 1, !tbaa !52
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  br label %66

35:                                               ; preds = %8
  %36 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %9) #18
  br label %66

37:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !49
  %38 = call ptr @get_inner_reference(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  %39 = call fastcc ptr @dbxout_expand_expr(ptr noundef %38) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 0) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %2, align 4, !tbaa !49
  %53 = load ptr, ptr %5, align 8, !tbaa !51
  %54 = call i64 @tree_low_cst(ptr noundef %53, i32 noundef 0) #17
  %55 = call ptr @adjust_address_1(ptr noundef nonnull %39, i32 noundef %52, i64 noundef %54, i32 noundef 0, i32 noundef 1) #17
  br label %56

56:                                               ; preds = %51, %45
  %57 = phi ptr [ %55, %51 ], [ %39, %45 ]
  %58 = load i64, ptr %4, align 8, !tbaa !150
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %2, align 4, !tbaa !49
  %62 = sdiv i64 %58, 8
  %63 = call ptr @adjust_address_1(ptr noundef %57, i32 noundef %61, i64 noundef %62, i32 noundef 0, i32 noundef 1) #17
  br label %64

64:                                               ; preds = %56, %60, %48, %37, %41
  %65 = phi ptr [ null, %41 ], [ null, %37 ], [ null, %48 ], [ %63, %60 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %66

66:                                               ; preds = %8, %15, %32, %27, %64, %35
  %67 = phi ptr [ %65, %64 ], [ %36, %35 ], [ null, %27 ], [ %34, %32 ], [ null, %15 ], [ null, %8 ]
  ret ptr %67
}

; Function Attrs: optsize
declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !151 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %3, ptr %5, align 8, !tbaa !51
  %10 = load i32, ptr %3, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 39
  br i1 %12, label %13, label %28

13:                                               ; preds = %4, %17
  %14 = phi i32 [ %20, %17 ], [ %10, %4 ]
  %15 = phi ptr [ %19, %17 ], [ %3, %4 ]
  %16 = trunc i32 %14 to i16
  switch i16 %16, label %24 [
    i16 39, label %17
    i16 37, label %21
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = load i32, ptr %19, align 8
  br label %13, !llvm.loop !152

21:                                               ; preds = %13
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #18
  %23 = icmp ugt i32 %22, 52
  br i1 %23, label %184, label %24

24:                                               ; preds = %13, %21
  %25 = call ptr @alter_subreg(ptr noundef nonnull %5) #17
  store ptr %25, ptr %5, align 8, !tbaa !51
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i32 [ %27, %24 ], [ %11, %4 ]
  %30 = phi i32 [ %26, %24 ], [ %10, %4 ]
  %31 = phi ptr [ %25, %24 ], [ %3, %4 ]
  %32 = trunc i32 %30 to i16
  switch i16 %32, label %184 [
    i16 37, label %33
    i16 43, label %36
    i16 41, label %164
  ]

33:                                               ; preds = %28
  %34 = call fastcc i32 @rhs_regno(ptr noundef nonnull %31) #18
  %35 = icmp ult i32 %34, 53
  br i1 %35, label %101, label %184

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 134217728
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %47 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  %48 = icmp eq ptr %47, null
  %49 = load i32, ptr %6, align 4
  %50 = select i1 %48, i32 71, i32 86
  %51 = select i1 %48, i32 0, i32 %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %178

52:                                               ; preds = %42
  %53 = call ptr @decl_function_context(ptr noundef nonnull %0) #17
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, i32 83, i32 86
  %56 = load i32, ptr %38, align 8
  %57 = and i32 %56, 67174399
  %58 = icmp eq i32 %57, 67108909
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  %60 = call ptr @get_pool_constant_mark(ptr noundef nonnull %38, ptr noundef nonnull %7) #17
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i16
  switch i16 %62, label %69 [
    i16 45, label %63
    i16 44, label %68
  ]

63:                                               ; preds = %59
  %64 = and i32 %61, 67108864
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call ptr @get_pool_constant_mark(ptr noundef nonnull %60, ptr noundef nonnull %7) #17
  br label %69

68:                                               ; preds = %59, %63
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %73

69:                                               ; preds = %59, %66
  %70 = phi ptr [ %38, %59 ], [ %60, %66 ]
  %71 = load i8, ptr %7, align 1, !tbaa !52
  %72 = icmp eq i8 %71, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br i1 %72, label %184, label %73

73:                                               ; preds = %68, %69, %52
  %74 = phi ptr [ %70, %69 ], [ %38, %52 ], [ %60, %68 ]
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !52
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr @lang_hooks, align 8, !tbaa !89
  %80 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(8) @.str.5) #18
  %81 = icmp eq i32 %80, 0
  %82 = load ptr, ptr @global_trees, align 16
  %83 = icmp eq ptr %76, %82
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %95

85:                                               ; preds = %78, %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %86 = call fastcc ptr @dbxout_common_check(ptr noundef nonnull %0, ptr noundef nonnull %8) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %8, align 4, !tbaa !49
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ 86, %88 ], [ %55, %85 ]
  %92 = phi i32 [ 32, %88 ], [ 40, %85 ]
  %93 = phi ptr [ null, %88 ], [ %74, %85 ]
  %94 = phi i32 [ %89, %88 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %178

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 38, i32 36
  br label %178

101:                                              ; preds = %33
  %102 = zext nneg i32 %34 to i64
  %103 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !49
  br label %178

105:                                              ; preds = %36
  %106 = trunc i32 %39 to i16
  switch i16 %106, label %135 [
    i16 43, label %115
    i16 37, label %107
  ]

107:                                              ; preds = %105
  %108 = call fastcc i32 @rhs_regno(ptr noundef nonnull %38) #18
  switch i32 %108, label %109 [
    i32 6, label %135
    i32 7, label %135
    i32 16, label %135
  ]

109:                                              ; preds = %107
  %110 = icmp ugt i32 %108, 52
  br i1 %110, label %184, label %111

111:                                              ; preds = %109
  %112 = zext nneg i32 %108 to i64
  %113 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !49
  br label %127

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !52
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 49
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !52
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %121, %115, %111
  %128 = phi i32 [ 114, %111 ], [ 0, %115 ], [ 0, %121 ]
  %129 = phi i32 [ 64, %111 ], [ 128, %115 ], [ 128, %121 ]
  %130 = phi i32 [ %114, %111 ], [ 0, %115 ], [ %126, %121 ]
  %131 = call ptr @make_node_stat(i32 noundef 10) #17
  %132 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !52
  %134 = getelementptr inbounds %struct.tree_common, ptr %131, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !52
  br label %178

135:                                              ; preds = %107, %107, %107, %105
  %136 = trunc i32 %39 to i16
  switch i16 %136, label %162 [
    i16 37, label %178
    i16 49, label %137
    i16 35, label %147
  ]

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !52
  %140 = load i32, ptr %139, align 8
  %141 = and i32 %140, 65535
  %142 = icmp eq i32 %141, 30
  br i1 %142, label %143, label %162

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !52
  %146 = trunc i64 %145 to i32
  br label %178

147:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %148 = call fastcc ptr @dbxout_common_check(ptr noundef %0, ptr noundef nonnull %9) #18
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load ptr, ptr %5, align 8, !tbaa !51
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !52
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !52
  br label %158

156:                                              ; preds = %147
  %157 = load i32, ptr %9, align 4, !tbaa !49
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi i32 [ 40, %150 ], [ 32, %156 ]
  %160 = phi ptr [ %155, %150 ], [ null, %156 ]
  %161 = phi i32 [ 0, %150 ], [ %157, %156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %178

162:                                              ; preds = %135, %137
  %163 = icmp eq i32 %29, 41
  br i1 %163, label %164, label %184

164:                                              ; preds = %28, %162
  %165 = load i64, ptr %1, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 13
  br i1 %167, label %168, label %184

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !52
  %171 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !52
  %173 = call fastcc i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %170, ptr noundef nonnull @.str.55, ptr noundef %172) #18, !range !71
  %174 = load ptr, ptr %5, align 8, !tbaa !51
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !52
  %177 = call fastcc i32 @dbxout_symbol_location(ptr noundef %0, ptr noundef %170, ptr noundef nonnull @.str.56, ptr noundef %176) #18, !range !71
  br label %184

178:                                              ; preds = %135, %95, %101, %158, %143, %127, %46, %90
  %179 = phi i32 [ %50, %46 ], [ %91, %90 ], [ 114, %101 ], [ %128, %127 ], [ 0, %143 ], [ 86, %158 ], [ %55, %95 ], [ 0, %135 ]
  %180 = phi i32 [ 32, %46 ], [ %92, %90 ], [ 64, %101 ], [ %129, %127 ], [ 128, %143 ], [ %159, %158 ], [ %100, %95 ], [ 128, %135 ]
  %181 = phi ptr [ null, %46 ], [ %93, %90 ], [ null, %101 ], [ null, %127 ], [ null, %143 ], [ %160, %158 ], [ %74, %95 ], [ null, %135 ]
  %182 = phi i32 [ %51, %46 ], [ %94, %90 ], [ %104, %101 ], [ %130, %127 ], [ %146, %143 ], [ %161, %158 ], [ 0, %95 ], [ 0, %135 ]
  %183 = phi ptr [ %1, %46 ], [ %1, %90 ], [ %1, %101 ], [ %131, %127 ], [ %1, %143 ], [ %1, %158 ], [ %1, %95 ], [ %1, %135 ]
  call fastcc void @emit_pending_bincls_if_required() #18
  call fastcc void @dbxout_begin_complex_stabs_noforcetext() #18
  call fastcc void @dbxout_symbol_name(ptr noundef %0, ptr noundef %2, i32 noundef %179) #18
  call fastcc void @dbxout_type(ptr noundef %183, i32 noundef 0) #18
  call fastcc void @dbxout_finish_complex_stabs(ptr noundef %0, i32 noundef %180, ptr noundef %181, i32 noundef %182) #18
  br label %184

184:                                              ; preds = %28, %162, %168, %164, %109, %33, %21, %69, %178
  %185 = phi i32 [ 1, %178 ], [ 0, %69 ], [ 0, %21 ], [ 0, %33 ], [ 0, %109 ], [ 1, %168 ], [ 0, %164 ], [ 0, %162 ], [ 0, %28 ]
  ret i32 %185
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !153 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #17
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @output_used_types_helper(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !35 !PGOFuncName !154 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
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
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !49
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
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 35
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %16
  %30 = phi ptr [ %8, %16 ], [ %23, %25 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !51
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %31, ptr noundef nonnull %30) #18
  br label %32

32:                                               ; preds = %29, %21, %25
  ret i32 1
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !35 !PGOFuncName !155 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !156 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @output_types_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !35 !PGOFuncName !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = load ptr, ptr %1, align 8, !tbaa !51
  %5 = load i64, ptr %3, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = icmp eq i32 %8, 2
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !49
  %14 = icmp eq i32 %13, 2
  br i1 %9, label %15, label %22

15:                                               ; preds = %2
  br i1 %14, label %16, label %29

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = sub i32 %18, %20
  br label %29

22:                                               ; preds = %2
  br i1 %14, label %29, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = sub i32 %25, %27
  br label %29

29:                                               ; preds = %22, %15, %23, %16
  %30 = phi i32 [ %21, %16 ], [ %28, %23 ], [ 1, %15 ], [ -1, %22 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !35 !PGOFuncName !160 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !157
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !51
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !35 !PGOFuncName !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !35 !PGOFuncName !162 {
  %3 = load i32, ptr %0, align 8, !tbaa !157
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !157
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @subrange_type_for_debug_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type_index(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !163 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !51
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = sext i32 %4 to i64
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi ptr [ %6, %1 ], [ %11, %10 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 40, ptr %13, align 1, !tbaa !52
  %15 = getelementptr inbounds %struct.typeinfo, ptr %2, i64 %5, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !131
  %17 = sext i32 %16 to i64
  tail call fastcc void @stabstr_D(i64 noundef %17) #18
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %24

24:                                               ; preds = %12, %22
  %25 = phi ptr [ %18, %12 ], [ %23, %22 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %25, align 1, !tbaa !52
  %27 = getelementptr inbounds %struct.typeinfo, ptr %2, i64 %5, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !133
  %29 = sext i32 %28 to i64
  tail call fastcc void @stabstr_D(i64 noundef %29) #18
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %33 = icmp ugt ptr %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %36

36:                                               ; preds = %24, %34
  %37 = phi ptr [ %30, %24 ], [ %35, %34 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 41, ptr %37, align 1, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_range_type(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !164 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %7 = icmp ugt ptr %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %9 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %12, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 114, ptr %11, align 1, !tbaa !52
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call fastcc void @dbxout_type(ptr noundef nonnull %14, i32 noundef 0) #18
  br label %29

17:                                               ; preds = %10
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @dbxout_type(ptr noundef nonnull %0, i32 noundef 0) #18
  br label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @dbxout_type_index(ptr noundef nonnull %0) #18
  br label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
  tail call fastcc void @dbxout_type_index(ptr noundef %28) #18
  br label %29

29:                                               ; preds = %21, %27, %26, %16
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %33 = icmp ugt ptr %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %35 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %36

36:                                               ; preds = %29, %34
  %37 = phi ptr [ %30, %29 ], [ %35, %34 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %37, align 1, !tbaa !52
  %39 = icmp eq ptr %1, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #18, !range !135
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call fastcc void @stabstr_O(ptr noundef nonnull %1) #18
  br label %59

47:                                               ; preds = %43
  %48 = tail call i64 @tree_low_cst(ptr noundef nonnull %1, i32 noundef 0) #17
  tail call fastcc void @stabstr_D(i64 noundef %48) #18
  br label %59

49:                                               ; preds = %40, %36
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %53 = icmp ugt ptr %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %56

56:                                               ; preds = %49, %54
  %57 = phi ptr [ %50, %49 ], [ %55, %54 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %58, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 48, ptr %57, align 1, !tbaa !52
  br label %59

59:                                               ; preds = %46, %47, %56
  %60 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  %62 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %63 = icmp ugt ptr %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %65 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi ptr [ %60, %59 ], [ %65, %64 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %68, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %67, align 1, !tbaa !52
  %69 = icmp eq ptr %2, null
  br i1 %69, label %89, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %70
  %74 = tail call fastcc zeroext i8 @print_int_cst_bounds_in_octal_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #18, !range !135
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call fastcc void @stabstr_O(ptr noundef nonnull %2) #18
  br label %79

77:                                               ; preds = %73
  %78 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 0) #17
  tail call fastcc void @stabstr_D(i64 noundef %78) #18
  br label %79

79:                                               ; preds = %77, %76
  %80 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %83 = icmp ugt ptr %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %85 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi ptr [ %80, %79 ], [ %85, %84 ]
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %88, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %87, align 1, !tbaa !52
  br label %103

89:                                               ; preds = %70, %66
  store i64 3, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %90 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %91 = getelementptr inbounds i8, ptr %90, i64 3
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %93 = icmp ugt ptr %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 3) #17
  %95 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %96 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %97

97:                                               ; preds = %89, %94
  %98 = phi i64 [ 3, %89 ], [ %96, %94 ]
  %99 = phi ptr [ %90, %89 ], [ %95, %94 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %99, ptr nonnull align 1 @.str.50, i64 %98, i1 false)
  %100 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %101 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %102 = getelementptr inbounds i8, ptr %101, i64 %100
  store ptr %102, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %103

103:                                              ; preds = %97, %86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @print_int_cst_bounds_in_octal_p(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #12 !prof !35 !PGOFuncName !165 {
  %4 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
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
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !51
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

44:                                               ; preds = %18, %29, %35, %39, %43
  %45 = phi i8 [ 0, %43 ], [ 1, %39 ], [ 1, %35 ], [ 1, %29 ], [ 1, %18 ]
  ret i8 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stabstr_O(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !166 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = load i64, ptr %3, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #16
  %7 = getelementptr inbounds i8, ptr %2, i64 128
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !52
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
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %35 = icmp ugt ptr %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %38

38:                                               ; preds = %29, %36
  %39 = phi ptr [ %32, %29 ], [ %37, %36 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %40, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 48, ptr %39, align 1, !tbaa !52
  %41 = icmp eq i64 %31, 0
  %42 = icmp eq i64 %30, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %106, label %44

44:                                               ; preds = %38
  br i1 %41, label %45, label %54

45:                                               ; preds = %44, %45
  %46 = phi ptr [ %52, %45 ], [ %7, %44 ]
  %47 = phi i64 [ %50, %45 ], [ %30, %44 ]
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 7
  %50 = lshr i64 %47, 3
  %51 = or disjoint i8 %49, 48
  %52 = getelementptr inbounds i8, ptr %46, i64 -1
  store i8 %51, ptr %52, align 1, !tbaa !52
  %53 = icmp ult i64 %47, 8
  br i1 %53, label %87, label %45, !llvm.loop !167

54:                                               ; preds = %44, %54
  %55 = phi i64 [ %60, %54 ], [ %30, %44 ]
  %56 = phi ptr [ %62, %54 ], [ %7, %44 ]
  %57 = phi i32 [ %63, %54 ], [ 1, %44 ]
  %58 = trunc i64 %55 to i8
  %59 = and i8 %58, 7
  %60 = lshr i64 %55, 3
  %61 = or disjoint i8 %59, 48
  %62 = getelementptr inbounds i8, ptr %56, i64 -1
  store i8 %61, ptr %62, align 1, !tbaa !52
  %63 = add nuw nsw i32 %57, 1
  %64 = icmp eq i32 %63, 22
  br i1 %64, label %65, label %54, !llvm.loop !168

65:                                               ; preds = %54
  %66 = icmp ult i64 %55, 16
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 764, ptr noundef nonnull @.str.29) #17
  br label %68

68:                                               ; preds = %65, %67
  %69 = shl i64 %31, 1
  %70 = and i64 %69, 6
  %71 = or i64 %60, %70
  %72 = trunc i64 %71 to i8
  %73 = add i8 %72, 48
  %74 = getelementptr inbounds i8, ptr %56, i64 -2
  store i8 %73, ptr %74, align 1, !tbaa !52
  %75 = icmp ult i64 %31, 4
  br i1 %75, label %87, label %76

76:                                               ; preds = %68
  %77 = lshr i64 %31, 2
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi ptr [ %85, %78 ], [ %74, %76 ]
  %80 = phi i64 [ %83, %78 ], [ %77, %76 ]
  %81 = trunc i64 %80 to i8
  %82 = and i8 %81, 7
  %83 = lshr i64 %80, 3
  %84 = or disjoint i8 %82, 48
  %85 = getelementptr inbounds i8, ptr %79, i64 -1
  store i8 %84, ptr %85, align 1, !tbaa !52
  %86 = icmp ult i64 %80, 8
  br i1 %86, label %87, label %78, !llvm.loop !169

87:                                               ; preds = %78, %45, %68
  %88 = phi ptr [ %74, %68 ], [ %52, %45 ], [ %85, %78 ]
  %89 = ptrtoint ptr %7 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  store i64 %91, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %93 = getelementptr inbounds i8, ptr %92, i64 %91
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %95 = icmp ugt ptr %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = trunc i64 %91 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %97) #17
  %98 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %99 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %100

100:                                              ; preds = %87, %96
  %101 = phi i64 [ %91, %87 ], [ %99, %96 ]
  %102 = phi ptr [ %92, %87 ], [ %98, %96 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr nonnull align 1 %88, i64 %101, i1 false)
  %103 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %104 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %105 = getelementptr inbounds i8, ptr %104, i64 %103
  store ptr %105, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %106

106:                                              ; preds = %38, %100
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type_name(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !170 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 2324, ptr noundef nonnull @.str.29) #17
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
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 2333, ptr noundef nonnull @.str.29) #17
  br label %13

13:                                               ; preds = %12, %9, %6
  %14 = phi ptr [ %3, %12 ], [ %11, %9 ], [ %3, %6 ]
  %15 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = zext i32 %16 to i64
  store i64 %17, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %16) #17
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %24 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi i64 [ %17, %13 ], [ %24, %22 ]
  %27 = phi ptr [ %18, %13 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %29, i64 %26, i1 false)
  %30 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %32, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stabstr_U(i64 noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !171 {
  %2 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i64 64
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 48, ptr %13, align 1, !tbaa !52
  br label %42

15:                                               ; preds = %1, %15
  %16 = phi ptr [ %22, %15 ], [ %3, %1 ]
  %17 = phi i64 [ %20, %15 ], [ %0, %1 ]
  %18 = urem i64 %17, 10
  %19 = trunc i64 %18 to i8
  %20 = udiv i64 %17, 10
  %21 = or disjoint i8 %19, 48
  %22 = getelementptr inbounds i8, ptr %16, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !52
  %23 = icmp ult i64 %17, 10
  br i1 %23, label %24, label %15, !llvm.loop !172

24:                                               ; preds = %15
  %25 = ptrtoint ptr %3 to i64
  %26 = ptrtoint ptr %22 to i64
  %27 = sub i64 %25, %26
  store i64 %27, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = trunc i64 %27 to i32
  call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %33) #17
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %35 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %36

36:                                               ; preds = %24, %32
  %37 = phi i64 [ %27, %24 ], [ %35, %32 ]
  %38 = phi ptr [ %28, %24 ], [ %34, %32 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %22, i64 %37, i1 false)
  %39 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %42

42:                                               ; preds = %36, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !35 !PGOFuncName !173 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  ret ptr %5
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type_fields(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !174 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %217, label %5

5:                                                ; preds = %1, %213
  %6 = phi ptr [ %215, %213 ], [ %3, %1 ]
  %7 = load ptr, ptr @global_trees, align 16, !tbaa !51
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %217, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %217, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 35
  br i1 %17, label %213, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 1024
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %213

23:                                               ; preds = %18
  %24 = icmp eq i32 %16, 31
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = tail call ptr @bit_position(ptr noundef nonnull %6) #17
  %27 = tail call i32 @host_integerp(ptr noundef %26, i32 noundef 0) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %213, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %213, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @host_integerp(ptr noundef nonnull %31, i32 noundef 1) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %213, label %36

36:                                               ; preds = %33
  %37 = load i64, ptr %6, align 8
  br label %38

38:                                               ; preds = %36, %23
  %39 = phi i64 [ %37, %36 ], [ %14, %23 ]
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 33
  br i1 %41, label %213, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br i1 %45, label %66, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_identifier, ptr %44, i64 0, i32 1, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = zext i32 %49 to i64
  store i64 %50, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %51 = getelementptr inbounds i8, ptr %46, i64 %50
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %53 = icmp ugt ptr %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %49) #17
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %56 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %57

57:                                               ; preds = %47, %54
  %58 = phi i64 [ %50, %47 ], [ %56, %54 ]
  %59 = phi ptr [ %46, %47 ], [ %55, %54 ]
  %60 = load ptr, ptr %43, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.tree_identifier, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %62, i64 %58, i1 false)
  %63 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %65 = getelementptr inbounds i8, ptr %64, i64 %63
  store ptr %65, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %66

66:                                               ; preds = %57, %42
  %67 = phi ptr [ %65, %57 ], [ %46, %42 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %70 = icmp ugt ptr %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %72 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %73

73:                                               ; preds = %66, %71
  %74 = phi ptr [ %67, %66 ], [ %72, %71 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %75, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %74, align 1, !tbaa !52
  %76 = load i8, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !52
  %77 = icmp eq i8 %76, 0
  %78 = load i64, ptr %6, align 8
  %79 = and i64 %78, 805371903
  %80 = icmp eq i64 %79, 31
  %81 = select i1 %77, i1 true, i1 %80
  br i1 %81, label %109, label %82

82:                                               ; preds = %73
  %83 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %86 = icmp ugt ptr %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %88 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %89

89:                                               ; preds = %82, %87
  %90 = phi ptr [ %83, %82 ], [ %88, %87 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %91, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 47, ptr %90, align 1, !tbaa !52
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %95 = icmp ugt ptr %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %97 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %98

98:                                               ; preds = %89, %96
  %99 = phi ptr [ %92, %89 ], [ %97, %96 ]
  %100 = load i64, ptr %6, align 8
  %101 = and i64 %100, 268435456
  %102 = icmp eq i64 %101, 0
  %103 = and i64 %100, 536870912
  %104 = icmp eq i64 %103, 0
  %105 = select i1 %104, i8 50, i8 49
  %106 = select i1 %102, i8 %105, i8 48
  %107 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %106, ptr %99, align 1, !tbaa !52
  %108 = load i64, ptr %6, align 8
  br label %109

109:                                              ; preds = %98, %73
  %110 = phi i64 [ %108, %98 ], [ %78, %73 ]
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 31
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.tree_field_decl, ptr %6, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !52
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %109
  %118 = load ptr, ptr %10, align 8, !tbaa !52
  br label %119

119:                                              ; preds = %113, %117
  %120 = phi ptr [ %118, %117 ], [ %115, %113 ]
  tail call fastcc void @dbxout_type(ptr noundef %120, i32 noundef 0) #18
  %121 = load i64, ptr %6, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 32
  br i1 %123, label %124, label %181

124:                                              ; preds = %119
  %125 = and i64 %121, 67108864
  %126 = icmp ne i64 %125, 0
  %127 = load i8, ptr @use_gnu_debug_info_extensions, align 1
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %167

130:                                              ; preds = %124
  %131 = tail call ptr @decl_assembler_name(ptr noundef nonnull %6) #17
  %132 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  %134 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %135 = icmp ugt ptr %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %137 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %138

138:                                              ; preds = %130, %136
  %139 = phi ptr [ %132, %130 ], [ %137, %136 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 1
  store ptr %140, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %139, align 1, !tbaa !52
  %141 = getelementptr inbounds %struct.tree_identifier, ptr %131, i64 0, i32 1
  %142 = getelementptr inbounds %struct.tree_identifier, ptr %131, i64 0, i32 1, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !52
  %144 = zext i32 %143 to i64
  store i64 %144, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %145 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %146 = getelementptr inbounds i8, ptr %145, i64 %144
  %147 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %148 = icmp ugt ptr %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %143) #17
  %150 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %151 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %152

152:                                              ; preds = %138, %149
  %153 = phi i64 [ %144, %138 ], [ %151, %149 ]
  %154 = phi ptr [ %145, %138 ], [ %150, %149 ]
  %155 = load ptr, ptr %141, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %154, ptr align 1 %155, i64 %153, i1 false)
  %156 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %157 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %158 = getelementptr inbounds i8, ptr %157, i64 %156
  store ptr %158, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  %160 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %161 = icmp ugt ptr %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %163 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %164

164:                                              ; preds = %152, %162
  %165 = phi ptr [ %158, %152 ], [ %163, %162 ]
  %166 = getelementptr inbounds i8, ptr %165, i64 1
  store ptr %166, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %165, align 1, !tbaa !52
  br label %213

167:                                              ; preds = %124
  store i64 5, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %168 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %169 = getelementptr inbounds i8, ptr %168, i64 5
  %170 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %171 = icmp ugt ptr %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 5) #17
  %173 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %174 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %175

175:                                              ; preds = %167, %172
  %176 = phi i64 [ 5, %167 ], [ %174, %172 ]
  %177 = phi ptr [ %168, %167 ], [ %173, %172 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %177, ptr nonnull align 1 @.str.51, i64 %176, i1 false)
  %178 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %179 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %180 = getelementptr inbounds i8, ptr %179, i64 %178
  store ptr %180, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %213

181:                                              ; preds = %119
  %182 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  %184 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %185 = icmp ugt ptr %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %187 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %188

188:                                              ; preds = %181, %186
  %189 = phi ptr [ %182, %181 ], [ %187, %186 ]
  %190 = getelementptr inbounds i8, ptr %189, i64 1
  store ptr %190, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %189, align 1, !tbaa !52
  %191 = tail call i64 @int_bit_position(ptr noundef nonnull %6) #17
  tail call fastcc void @stabstr_D(i64 noundef %191) #18
  %192 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  %194 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %195 = icmp ugt ptr %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %197 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %198

198:                                              ; preds = %188, %196
  %199 = phi ptr [ %192, %188 ], [ %197, %196 ]
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  store ptr %200, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %199, align 1, !tbaa !52
  %201 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !52
  %203 = tail call i64 @tree_low_cst(ptr noundef %202, i32 noundef 1) #17
  tail call fastcc void @stabstr_D(i64 noundef %203) #18
  %204 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %205 = getelementptr inbounds i8, ptr %204, i64 1
  %206 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %207 = icmp ugt ptr %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %198
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %209 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %210

210:                                              ; preds = %198, %208
  %211 = phi ptr [ %204, %198 ], [ %209, %208 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 1
  store ptr %212, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %211, align 1, !tbaa !52
  br label %213

213:                                              ; preds = %210, %175, %164, %38, %13, %18, %25, %29, %33
  %214 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !52
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %5, !llvm.loop !175

217:                                              ; preds = %9, %5, %213, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type_methods(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %104, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 3
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_vec, ptr %3, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %104, label %17

17:                                               ; preds = %13, %5, %9
  %18 = phi ptr [ %11, %9 ], [ %3, %5 ], [ %15, %13 ]
  br label %19

19:                                               ; preds = %84, %17
  %20 = phi i32 [ 1, %17 ], [ %85, %84 ]
  %21 = phi ptr [ null, %17 ], [ %86, %84 ]
  %22 = phi ptr [ %18, %17 ], [ %87, %84 ]
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %19, %24
  %31 = load i64, ptr %22, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 29
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 3072
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = icmp eq i32 %20, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.tree_identifier, ptr %43, i64 0, i32 1, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !52
  %46 = zext i32 %45 to i64
  store i64 %46, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %48 = getelementptr inbounds i8, ptr %47, i64 %46
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %50 = icmp ugt ptr %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %45) #17
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %54

54:                                               ; preds = %41, %51
  %55 = phi i64 [ %46, %41 ], [ %53, %51 ]
  %56 = phi ptr [ %47, %41 ], [ %52, %51 ]
  %57 = load ptr, ptr %42, align 8, !tbaa !52
  %58 = getelementptr inbounds %struct.tree_identifier, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %59, i64 %55, i1 false)
  %60 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %62, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i64 2, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %63 = getelementptr inbounds i8, ptr %62, i64 2
  %64 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %65 = icmp ugt ptr %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 2) #17
  %67 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %68 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %69

69:                                               ; preds = %54, %66
  %70 = phi i64 [ 2, %54 ], [ %68, %66 ]
  %71 = phi ptr [ %62, %54 ], [ %67, %66 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr nonnull align 1 @.str.52, i64 %70, i1 false)
  %72 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %73 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %74 = getelementptr inbounds i8, ptr %73, i64 %72
  store ptr %74, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %75

75:                                               ; preds = %69, %39
  %76 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  tail call fastcc void @dbxout_type(ptr noundef %77, i32 noundef 0) #18
  tail call fastcc void @dbxout_type_method_1(ptr noundef nonnull %22) #18
  br label %78

78:                                               ; preds = %34, %30, %75
  %79 = phi ptr [ %21, %30 ], [ %22, %34 ], [ %22, %75 ]
  %80 = phi i32 [ %20, %30 ], [ %20, %34 ], [ 0, %75 ]
  %81 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78, %102
  %85 = phi i32 [ %80, %78 ], [ 1, %102 ]
  %86 = phi ptr [ %79, %78 ], [ null, %102 ]
  %87 = phi ptr [ %82, %78 ], [ %89, %102 ]
  br label %19, !llvm.loop !177

88:                                               ; preds = %78, %24
  %89 = phi ptr [ null, %78 ], [ %22, %24 ]
  %90 = phi i32 [ %80, %78 ], [ %20, %24 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %96 = icmp ugt ptr %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %98 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %99

99:                                               ; preds = %92, %97
  %100 = phi ptr [ %93, %92 ], [ %98, %97 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %101, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %100, align 1, !tbaa !52
  br label %102

102:                                              ; preds = %99, %88
  %103 = icmp eq ptr %89, null
  br i1 %103, label %104, label %84

104:                                              ; preds = %102, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_args(ptr noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !178 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %17, %11 ], [ %0, %1 ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 44, ptr %12, align 1, !tbaa !52
  %14 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  tail call fastcc void @dbxout_type(ptr noundef %15, i32 noundef 0) #18
  %16 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !179

19:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: optsize
declare ptr @bit_position(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_type_method_1(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 20
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 1048576
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i8 65, i8 66
  %18 = lshr i64 %14, 18
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 2
  %21 = add nuw nsw i8 %17, %20
  %22 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i8 46, i8 42
  br label %26

26:                                               ; preds = %1, %7
  %27 = phi i8 [ %25, %7 ], [ 63, %1 ]
  %28 = phi i8 [ %21, %7 ], [ 65, %1 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %32 = icmp ugt ptr %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %29, %26 ], [ %34, %33 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 58, ptr %36, align 1, !tbaa !52
  %38 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %38, i64 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !52
  %41 = zext i32 %40 to i64
  store i64 %41, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %43 = getelementptr inbounds i8, ptr %42, i64 %41
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %45 = icmp ugt ptr %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %40) #17
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %48

48:                                               ; preds = %35, %46
  %49 = phi ptr [ %42, %35 ], [ %47, %46 ]
  %50 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %51 = getelementptr inbounds %struct.tree_identifier, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %52, i64 %53, i1 false)
  %54 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %56 = getelementptr inbounds i8, ptr %55, i64 %54
  store ptr %56, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  %58 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %59 = icmp ugt ptr %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %61 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %62

62:                                               ; preds = %48, %60
  %63 = phi ptr [ %56, %48 ], [ %61, %60 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %63, align 1, !tbaa !52
  %65 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %68 = icmp ugt ptr %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %70 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %71

71:                                               ; preds = %62, %69
  %72 = phi ptr [ %65, %62 ], [ %70, %69 ]
  %73 = load i64, ptr %0, align 8
  %74 = and i64 %73, 268435456
  %75 = icmp eq i64 %74, 0
  %76 = and i64 %73, 536870912
  %77 = icmp eq i64 %76, 0
  %78 = select i1 %77, i8 50, i8 49
  %79 = select i1 %75, i8 %78, i8 48
  %80 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %80, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %79, ptr %72, align 1, !tbaa !52
  %81 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  %83 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %84 = icmp ugt ptr %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %86 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %87

87:                                               ; preds = %71, %85
  %88 = phi ptr [ %81, %71 ], [ %86, %85 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %89, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %28, ptr %88, align 1, !tbaa !52
  %90 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %93 = icmp ugt ptr %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %95 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %96

96:                                               ; preds = %87, %94
  %97 = phi ptr [ %90, %87 ], [ %95, %94 ]
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %98, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 %27, ptr %97, align 1, !tbaa !52
  %99 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  %101 = icmp eq ptr %100, null
  br i1 %101, label %128, label %102

102:                                              ; preds = %96
  %103 = tail call i32 @host_integerp(ptr noundef nonnull %100, i32 noundef 0) #17
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %99, align 8, !tbaa !52
  %107 = tail call i64 @tree_low_cst(ptr noundef %106, i32 noundef 0) #17
  tail call fastcc void @stabstr_D(i64 noundef %107) #18
  %108 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %111 = icmp ugt ptr %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %113 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %114

114:                                              ; preds = %105, %112
  %115 = phi ptr [ %108, %105 ], [ %113, %112 ]
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %116, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %115, align 1, !tbaa !52
  %117 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  tail call fastcc void @dbxout_type(ptr noundef %118, i32 noundef 0) #18
  %119 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %122 = icmp ugt ptr %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef 1) #17
  %124 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  br label %125

125:                                              ; preds = %114, %123
  %126 = phi ptr [ %119, %114 ], [ %124, %123 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  store ptr %127, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  store i8 59, ptr %126, align 1, !tbaa !52
  br label %128

128:                                              ; preds = %125, %102, %96
  ret void
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @output_addr_const(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_type_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !181 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 4, ptr noundef null) #17
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !35 !PGOFuncName !182 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !52
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @alter_subreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dbxout_common_check(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !183 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 67174399
  %5 = icmp eq i64 %4, 67108896
  br i1 %5, label %6, label %112

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 67108864
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %112, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 49152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %112

16:                                               ; preds = %11
  %17 = tail call fastcc zeroext i8 @is_fortran() #18, !range !135
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %112, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #17
  %24 = load ptr, ptr %20, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %112, label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %112

31:                                               ; preds = %26
  %32 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %0) #17
  %33 = tail call fastcc ptr @dbxout_expand_expr(ptr noundef %32) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %112, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %112

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 35
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  %48 = load i32, ptr %47, align 8
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %48, %45 ], [ %42, %39 ]
  %51 = phi ptr [ %47, %45 ], [ %41, %39 ]
  %52 = trunc i32 %50 to i16
  switch i16 %52, label %112 [
    i16 45, label %53
    i16 49, label %53
  ]

53:                                               ; preds = %49, %49
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %112

57:                                               ; preds = %53
  switch i16 %52, label %100 [
    i16 49, label %58
    i16 45, label %92
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  %64 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !184
  br i1 %63, label %65, label %79

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = tail call ptr %64(ptr noundef %69) #17
  %71 = load ptr, ptr %59, align 8, !tbaa !52
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !52
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %1, align 4, !tbaa !49
  %75 = load ptr, ptr %66, align 8, !tbaa !52
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 67108864
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %101, label %111

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !52
  %82 = tail call ptr %64(ptr noundef %81) #17
  %83 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !52
  %87 = trunc i64 %86 to i32
  store i32 %87, ptr %1, align 4, !tbaa !49
  %88 = load ptr, ptr %59, align 8, !tbaa !52
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 67108864
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %111

92:                                               ; preds = %57
  %93 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !184
  %94 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = tail call ptr %93(ptr noundef %95) #17
  store i32 0, ptr %1, align 4, !tbaa !49
  %97 = load i32, ptr %51, align 8
  %98 = and i32 %97, 67108864
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %111

100:                                              ; preds = %57
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.57) #17
  br label %111

101:                                              ; preds = %92, %79, %65
  %102 = phi ptr [ %75, %65 ], [ %88, %79 ], [ %51, %92 ]
  %103 = phi ptr [ %70, %65 ], [ %82, %79 ], [ %96, %92 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !52
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load i64, ptr %105, align 8
  %109 = and i64 %108, 134217728
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92, %79, %65, %100, %107, %101
  br label %112

112:                                              ; preds = %111, %107, %49, %53, %31, %35, %23, %26, %2, %6, %11, %16
  %113 = phi ptr [ null, %16 ], [ null, %11 ], [ null, %6 ], [ null, %2 ], [ null, %26 ], [ null, %23 ], [ null, %35 ], [ null, %31 ], [ null, %111 ], [ %103, %107 ], [ null, %49 ], [ null, %53 ]
  ret ptr %113
}

; Function Attrs: optsize
declare ptr @get_pool_constant_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dbxout_begin_complex_stabs_noforcetext() unnamed_addr #2 !prof !35 !PGOFuncName !185 {
  %1 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %1) #18
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !51
  %4 = tail call i32 @putc(i32 noundef 34, ptr noundef %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @is_fortran() unnamed_addr #7 !prof !35 !PGOFuncName !186 {
  %1 = tail call fastcc i32 @get_lang_number() #18, !range !53
  %2 = and i32 %1, 61
  %3 = icmp eq i32 %2, 5
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dbxout_common_name(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !187 {
  tail call fastcc void @dbxout_begin_complex_stabs() #18
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  store i64 %4, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %6 = getelementptr inbounds i8, ptr %5, i64 %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 4), align 8, !tbaa !96
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = trunc i64 %4 to i32
  tail call void @_obstack_newchunk(ptr noundef nonnull @stabstr_ob, i32 noundef %10) #17
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %12 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi i64 [ %4, %3 ], [ %12, %9 ]
  %15 = phi ptr [ %5, %3 ], [ %11, %9 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %1, i64 %14, i1 false)
  %16 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 5), align 8, !tbaa !93
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  %18 = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @stabstr_ob, i64 0, i32 3), align 8, !tbaa !95
  tail call fastcc void @dbxout_finish_complex_stabs(ptr noundef %0, i32 noundef %2, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_typeinfo(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_typeinfo(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8typeinfo, i32 noundef 92) #17
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @gt_pch_p_8typeinfo(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #10 !prof !35 {
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_S(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_n_S(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_ggc_ma_typevec(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !188 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !51
  %3 = icmp ult ptr %2, inttoptr (i64 2 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %2) #17
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_na_typevec(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !189 {
  %2 = load ptr, ptr @typevec, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %2, ptr noundef nonnull @typevec, ptr noundef nonnull @gt_pch_pa_typevec, i32 noundef 217) #17
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gt_pch_pa_typevec(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !35 !PGOFuncName !190 {
  %5 = load ptr, ptr @typevec, align 8, !tbaa !51
  %6 = icmp ne ptr %5, null
  %7 = icmp eq ptr %0, @typevec
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void %2(ptr noundef nonnull @typevec, ptr noundef %3) #17
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

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
!35 = !{!"function_entry_count", i64 0}
!36 = !{!"dbxout.c:dbxout_init"}
!37 = !{!38, !39, i64 288}
!38 = !{!"lang_hooks", !39, i64 0, !42, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !43, i64 240, !44, i64 248, !45, i64 256, !46, i64 272, !47, i64 432, !48, i64 560, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !39, i64 616, !39, i64 624, !39, i64 632, !39, i64 640, !39, i64 648, !39, i64 656, !39, i64 664, !40, i64 672}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"long", !40, i64 0}
!43 = !{!"lang_hooks_for_tree_inlining", !39, i64 0}
!44 = !{!"lang_hooks_for_callgraph", !39, i64 0}
!45 = !{!"lang_hooks_for_tree_dump", !39, i64 0, !39, i64 8}
!46 = !{!"lang_hooks_for_decls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152}
!47 = !{!"lang_hooks_for_types", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !40, i64 120}
!48 = !{!"lang_hooks_for_lto", !39, i64 0, !39, i64 8, !39, i64 16}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !40, i64 0}
!51 = !{!39, !39, i64 0}
!52 = !{!40, !40, i64 0}
!53 = !{i32 0, i32 52}
!54 = !{!55, !39, i64 136}
!55 = !{!"gcc_target", !56, i64 0, !58, i64 368, !59, i64 664, !50, i64 744, !39, i64 752, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !39, i64 800, !39, i64 808, !39, i64 816, !39, i64 824, !39, i64 832, !39, i64 840, !39, i64 848, !39, i64 856, !39, i64 864, !39, i64 872, !39, i64 880, !39, i64 888, !39, i64 896, !39, i64 904, !39, i64 912, !39, i64 920, !39, i64 928, !39, i64 936, !39, i64 944, !39, i64 952, !39, i64 960, !39, i64 968, !39, i64 976, !39, i64 984, !39, i64 992, !39, i64 1000, !39, i64 1008, !39, i64 1016, !39, i64 1024, !39, i64 1032, !39, i64 1040, !39, i64 1048, !39, i64 1056, !42, i64 1064, !42, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !60, i64 1176, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !42, i64 1464, !61, i64 1472, !39, i64 1664, !39, i64 1672, !39, i64 1680, !39, i64 1688, !39, i64 1696, !39, i64 1704, !39, i64 1712, !39, i64 1720, !39, i64 1728, !39, i64 1736, !39, i64 1744, !39, i64 1752, !39, i64 1760, !39, i64 1768, !39, i64 1776, !62, i64 1784, !63, i64 1792, !64, i64 1896, !65, i64 1968, !39, i64 2016, !40, i64 2024, !40, i64 2025, !40, i64 2026, !40, i64 2027, !40, i64 2028, !40, i64 2029, !40, i64 2030, !40, i64 2031, !40, i64 2032, !40, i64 2033, !40, i64 2034, !40, i64 2035}
!56 = !{!"asm_out", !39, i64 0, !39, i64 8, !39, i64 16, !57, i64 24, !57, i64 56, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !39, i64 312, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360}
!57 = !{!"asm_int_op", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!58 = !{!"sched", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288}
!59 = !{!"vectorize", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72}
!60 = !{!"addr_space", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!61 = !{!"calls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184}
!62 = !{!"c", !39, i64 0}
!63 = !{!"cxx", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96}
!64 = !{!"emutls", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !40, i64 64, !40, i64 65}
!65 = !{!"target_option_hooks", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!66 = !{!67, !39, i64 0}
!67 = !{!"dbx_file", !39, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !39, i64 24, !39, i64 32}
!68 = !{!67, !50, i64 8}
!69 = !{!67, !50, i64 12}
!70 = !{!67, !50, i64 16}
!71 = !{i32 0, i32 2}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"dbxout.c:dbxout_finish"}
!75 = !{!"dbxout.c:dbxout_start_source_file"}
!76 = !{!67, !39, i64 32}
!77 = !{!67, !39, i64 24}
!78 = !{!"dbxout.c:dbxout_end_source_file"}
!79 = !{!"dbxout.c:dbxout_begin_block"}
!80 = !{!"dbxout.c:dbxout_end_block"}
!81 = !{!"dbxout.c:dbxout_source_line"}
!82 = !{!"dbxout.c:dbxout_begin_prologue"}
!83 = !{!"dbxout.c:dbxout_begin_function"}
!84 = !{!"dbxout.c:dbxout_function_decl"}
!85 = !{!"dbxout.c:dbxout_global_decl"}
!86 = !{!"dbxout.c:dbxout_type_decl"}
!87 = !{!"dbxout.c:dbxout_handle_pch"}
!88 = !{!"dbxout.c:get_lang_number"}
!89 = !{!38, !39, i64 0}
!90 = !{!"dbxout.c:dbxout_typedefs"}
!91 = distinct !{!91, !73}
!92 = distinct !{!92, !73}
!93 = !{!94, !42, i64 40}
!94 = !{!"obstack", !42, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !42, i64 40, !50, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !50, i64 80, !50, i64 80, !50, i64 80}
!95 = !{!94, !39, i64 24}
!96 = !{!94, !39, i64 32}
!97 = !{!"dbxout.c:emit_pending_bincls_if_required"}
!98 = !{!"dbxout.c:emit_pending_bincls"}
!99 = distinct !{!99, !73}
!100 = distinct !{!100, !73}
!101 = !{!"dbxout.c:emit_bincl_stab"}
!102 = !{!"dbxout.c:dbxout_source_file"}
!103 = distinct !{!103, !73}
!104 = !{!"dbxout.c:dbxout_block"}
!105 = distinct !{!105, !73}
!106 = !{!"dbxout.c:dbxout_function_end"}
!107 = !{!108, !39, i64 224}
!108 = !{!"rtl_data", !109, i64 0, !110, i64 40, !111, i64 96, !112, i64 112, !114, i64 208, !115, i64 248, !50, i64 312, !39, i64 320, !39, i64 328, !39, i64 336, !39, i64 344, !39, i64 352, !39, i64 360, !39, i64 368, !39, i64 376, !39, i64 384, !39, i64 392, !42, i64 400, !39, i64 408, !39, i64 416, !39, i64 424, !50, i64 432, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !39, i64 456, !40, i64 464, !40, i64 465, !40, i64 466, !40, i64 467, !40, i64 468, !40, i64 469, !40, i64 470, !40, i64 471, !40, i64 472, !40, i64 473, !40, i64 474, !40, i64 475, !40, i64 476, !40, i64 477, !40, i64 478, !40, i64 479, !40, i64 480, !40, i64 481, !40, i64 482, !40, i64 483, !40, i64 484, !40, i64 485}
!109 = !{!"expr_status", !50, i64 0, !50, i64 4, !50, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!110 = !{!"emit_status", !50, i64 0, !50, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !39, i64 48}
!111 = !{!"varasm_status", !39, i64 0, !50, i64 8}
!112 = !{!"incoming_args", !50, i64 0, !50, i64 4, !50, i64 8, !39, i64 16, !113, i64 24, !39, i64 88}
!113 = !{!"ix86_args", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60}
!114 = !{!"function_subsections", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32}
!115 = !{!"rtl_eh", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !40, i64 48}
!116 = !{!108, !39, i64 208}
!117 = !{!108, !39, i64 232}
!118 = !{!108, !39, i64 216}
!119 = distinct !{!119, !73}
!120 = distinct !{!120, !73}
!121 = !{!"dbxout.c:dbx_output_lbrac"}
!122 = !{!"dbxout.c:dbx_output_rbrac"}
!123 = distinct !{!123, !73}
!124 = distinct !{!124, !73}
!125 = !{!"dbxout.c:output_used_types"}
!126 = !{!127, !39, i64 96}
!127 = !{!"function", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !39, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!128 = distinct !{!128, !73}
!129 = !{!"dbxout.c:dbxout_begin_complex_stabs"}
!130 = !{!"dbxout.c:dbxout_type"}
!131 = !{!132, !50, i64 4}
!132 = !{!"typeinfo", !50, i64 0, !50, i64 4, !50, i64 8}
!133 = !{!132, !50, i64 8}
!134 = !{!132, !50, i64 0}
!135 = !{i8 0, i8 2}
!136 = distinct !{!136, !73}
!137 = distinct !{!137, !73}
!138 = !{!"dbxout.c:dbxout_finish_complex_stabs"}
!139 = !{!140, !50, i64 8}
!140 = !{!"", !39, i64 0, !50, i64 8, !50, i64 12, !40, i64 16}
!141 = !{!94, !39, i64 16}
!142 = !{!94, !50, i64 48}
!143 = !{!94, !39, i64 8}
!144 = !{!"dbxout.c:dbxout_class_name_qualifiers"}
!145 = !{!"dbxout.c:dbxout_symbol_name"}
!146 = !{!"dbxout.c:stabstr_D"}
!147 = distinct !{!147, !73}
!148 = !{!"dbxout.c:dbxout_expand_expr"}
!149 = !{!55, !40, i64 2028}
!150 = !{!42, !42, i64 0}
!151 = !{!"dbxout.c:dbxout_symbol_location"}
!152 = distinct !{!152, !73}
!153 = !{!"dbxout.c:VEC_tree_heap_alloc"}
!154 = !{!"dbxout.c:output_used_types_helper"}
!155 = !{!"dbxout.c:VEC_tree_base_address"}
!156 = !{!"dbxout.c:VEC_tree_base_length"}
!157 = !{!158, !50, i64 0}
!158 = !{!"VEC_tree_base", !50, i64 0, !50, i64 4, !40, i64 8}
!159 = !{!"dbxout.c:output_types_sort"}
!160 = !{!"dbxout.c:VEC_tree_base_iterate"}
!161 = !{!"dbxout.c:VEC_tree_heap_free"}
!162 = !{!"dbxout.c:VEC_tree_base_quick_push"}
!163 = !{!"dbxout.c:dbxout_type_index"}
!164 = !{!"dbxout.c:dbxout_range_type"}
!165 = !{!"dbxout.c:print_int_cst_bounds_in_octal_p"}
!166 = !{!"dbxout.c:stabstr_O"}
!167 = distinct !{!167, !73}
!168 = distinct !{!168, !73}
!169 = distinct !{!169, !73}
!170 = !{!"dbxout.c:dbxout_type_name"}
!171 = !{!"dbxout.c:stabstr_U"}
!172 = distinct !{!172, !73}
!173 = !{!"dbxout.c:VEC_tree_base_index"}
!174 = !{!"dbxout.c:dbxout_type_fields"}
!175 = distinct !{!175, !73}
!176 = !{!"dbxout.c:dbxout_type_methods"}
!177 = distinct !{!177, !73}
!178 = !{!"dbxout.c:dbxout_args"}
!179 = distinct !{!179, !73}
!180 = !{!"dbxout.c:dbxout_type_method_1"}
!181 = !{!"dbxout.c:expand_expr"}
!182 = !{!"dbxout.c:rhs_regno"}
!183 = !{!"dbxout.c:dbxout_common_check"}
!184 = !{!55, !39, i64 1136}
!185 = !{!"dbxout.c:dbxout_begin_complex_stabs_noforcetext"}
!186 = !{!"dbxout.c:is_fortran"}
!187 = !{!"dbxout.c:dbxout_common_name"}
!188 = !{!"dbxout.c:gt_ggc_ma_typevec"}
!189 = !{!"dbxout.c:gt_pch_na_typevec"}
!190 = !{!"dbxout.c:gt_pch_pa_typevec"}
