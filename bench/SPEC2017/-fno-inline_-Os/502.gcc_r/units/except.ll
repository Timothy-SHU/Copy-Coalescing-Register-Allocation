; ModuleID = 'except.c'
source_filename = "except.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.duplicate_eh_regions_data = type { ptr, ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.ttypes_filter = type { ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.action_record = type { i32, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.call_site_record_d = type { ptr, i32 }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x ptr] }

@flag_exceptions = external local_unnamed_addr global i32, align 4
@doing_eh.warned = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [56 x i8] c"exception handling disabled, use -fexceptions to enable\00", align 1
@type_to_runtime_map = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"except.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@x_rtl = external global %struct.rtl_data, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"rtl eh\00", align 1
@pass_rtl_eh = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_eh, ptr @rest_of_handle_eh, ptr null, ptr null, i32 0, i32 119, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"nothrow\00", align 1
@pass_set_nothrow_function_flags = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @set_nothrow_function_flags, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@ptr_mode = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"argument of %<__builtin_eh_return_regno%> must be constant\00", align 1
@svr4_dbx_register_map = external local_unnamed_addr constant [53 x i32], align 16
@.str.6 = private unnamed_addr constant [10 x i8] c"eh_ranges\00", align 1
@pass_convert_to_eh_region_ranges = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_convert_to_eh_region_ranges, ptr @convert_to_eh_region_ranges, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@reltable.dump_eh_tree = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.dump_eh_tree to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.dump_eh_tree to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.dump_eh_tree to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.dump_eh_tree to i64)) to i32)], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"allowed_exceptions\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"must_not_throw\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Eh tree:\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"  %*s %i %s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" land:\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"{%i,\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%i%s,\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"(del)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"(nil),\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%i%s}\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"(nil)}\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" catch:\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"lab:\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c" filter :%i types:\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [40 x i8] c"region_array is corrupted for region %i\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"lp_array is corrupted for lp %i\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"outer block of region %i is wrong\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"negative nesting depth of region %i\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"region of lp %i is wrong\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"tree list ends on depth %i\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"region_array does not match region_tree\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"lp_array does not match region_tree\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"verify_eh_tree failed\00", align 1
@sjlj_fc_type_node = internal global ptr null, align 8
@gt_ggc_r_gt_except_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @sjlj_fc_type_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @type_to_runtime_map, i64 1, i64 8, ptr @gt_ggc_m_P9tree_node4htab, ptr @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@call_site_base = internal global i32 0, align 4
@gt_pch_rs_gt_except_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @call_site_base, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@lang_protect_cleanup_actions = dso_local local_unnamed_addr global ptr null, align 8
@lang_eh_type_covers = dso_local local_unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [31 x i8] c"Marking function nothrow: %s\0A\0A\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"LLSDATTC\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"LLSDATT\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"LLSDAC\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"LLSDA\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"@LPStart format (%s)\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"@TType format (%s)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"LLSDATTDC\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"LLSDATTD\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"@TType base offset\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"call-site format (%s)\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"LLSDACSBC\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"LLSDACSB\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"LLSDACSEC\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"LLSDACSE\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"Call-site table length\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Action record table\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Exception specification table\00", align 1
@exception_section = external local_unnamed_addr global ptr, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@flag_function_sections = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [21 x i8] c".gcc_except_table.%s\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c".gcc_except_table\00", align 1
@data_section = external local_unnamed_addr global ptr, align 8
@readonly_data_section = external local_unnamed_addr global ptr, align 8
@current_function_func_begin_label = external local_unnamed_addr global ptr, align 8
@first_function_block_is_cold = external local_unnamed_addr global i8, align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"region %d start\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"landing pad\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @doing_eh(i32 noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !79
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i1, ptr @doing_eh.warned, align 4
  %6 = icmp eq i32 %0, 0
  %7 = or i1 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #19
  store i1 true, ptr @doing_eh.warned, align 4
  br label %9

9:                                                ; preds = %1, %4, %8
  %10 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_eh() local_unnamed_addr #0 !prof !83 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !79
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !84

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @t2r_hash, ptr noundef nonnull @t2r_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #19
  store ptr %4, ptr @type_to_runtime_map, align 8, !tbaa !85
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @t2r_hash(ptr nocapture noundef readonly %0) #2 !prof !78 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 262143
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @t2r_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #2 !prof !78 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_eh_for_function() local_unnamed_addr #0 !prof !90 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #19
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  store ptr %1, ptr %2, align 8, !tbaa !91
  %3 = load ptr, ptr @cfun, align 8, !tbaa !85
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 1
  tail call fastcc void @VEC_eh_region_gc_safe_push(ptr noundef nonnull %5, ptr noundef null) #20
  %6 = load ptr, ptr @cfun, align 8, !tbaa !85
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.eh_status, ptr %7, i64 0, i32 2
  tail call fastcc void @VEC_eh_landing_pad_gc_safe_push(ptr noundef nonnull %8, ptr noundef null) #20
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_region_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !90 !PGOFuncName !93 {
  tail call fastcc void @VEC_eh_region_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_eh_region_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_landing_pad_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !90 !PGOFuncName !94 {
  tail call fastcc void @VEC_eh_landing_pad_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_eh_landing_pad_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_eh_region_cleanup(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 0, ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gen_eh_region(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !95 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 88) #19
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 4
  store i32 %0, ptr %4, align 4, !tbaa !96
  store ptr %1, ptr %3, align 8, !tbaa !98
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  br label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @cfun, align 8, !tbaa !85
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ %7, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  store ptr %3, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr @cfun, align 8, !tbaa !85
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.eh_status, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = tail call fastcc i32 @VEC_eh_region_base_length(ptr noundef %18) #20
  %20 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !101
  tail call fastcc void @VEC_eh_region_gc_safe_push(ptr noundef nonnull %17, ptr noundef nonnull %3) #20
  %21 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %22 = icmp ne i8 %21, 0
  %23 = load i8, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 47), align 8
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 9
  store i8 1, ptr %27, align 8, !tbaa !115
  br label %28

28:                                               ; preds = %26, %11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_eh_region_try(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 1, ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_eh_region_catch(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !78 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !96
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 397, ptr noundef nonnull @.str.2) #19
  br label %7

7:                                                ; preds = %2, %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %1, ptr noundef null) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %14, %13 ], [ %1, %9 ]
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %23, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.tree_list, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  tail call void @add_type_for_runtime(ptr noundef %21) #20
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !116

25:                                               ; preds = %18, %13, %7
  %26 = phi ptr [ null, %7 ], [ null, %13 ], [ %17, %18 ]
  %27 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #19
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %27, i64 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !118
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = getelementptr inbounds %struct.eh_catch_d, ptr %27, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !120
  %32 = icmp eq ptr %30, null
  %33 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %34 = select i1 %32, ptr %33, ptr %30
  store ptr %27, ptr %34, align 8, !tbaa !88
  store ptr %27, ptr %29, align 8, !tbaa !88
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_type_for_runtime(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 116
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @type_to_runtime_map, align 8, !tbaa !85
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 262143
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %0, i32 noundef %9, i32 noundef 1) #19
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 46), align 8, !tbaa !121
  %15 = tail call ptr %14(ptr noundef nonnull %0) #19
  %16 = tail call ptr @tree_cons_stat(ptr noundef nonnull %0, ptr noundef %15, ptr noundef null) #19
  store ptr %16, ptr %10, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_eh_region_allowed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !78 {
  %3 = tail call fastcc ptr @gen_eh_region(i32 noundef 2, ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !88
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call void @add_type_for_runtime(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !129

13:                                               ; preds = %6, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_eh_region_must_not_throw(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 3, ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_eh_landing_pad(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #19
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  store ptr %4, ptr %2, align 8, !tbaa !131
  %5 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !133
  %6 = load ptr, ptr @cfun, align 8, !tbaa !85
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.eh_status, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = tail call fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef %9) #20
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !135
  store ptr %2, ptr %3, align 8, !tbaa !130
  tail call fastcc void @VEC_eh_landing_pad_gc_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %2) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_landing_pad_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !136 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !137
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !78 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %5, i32 noundef %1) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_region_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !139 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_number(i32 noundef %0) local_unnamed_addr #4 !prof !78 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  %3 = tail call ptr @get_eh_region_from_number_fn(ptr noundef %2, i32 noundef %0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_landing_pad_from_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !78 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %5, i32 noundef %1) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_eh_landing_pad_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !140 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_landing_pad_from_number(i32 noundef %0) local_unnamed_addr #4 !prof !78 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  %3 = tail call ptr @get_eh_landing_pad_from_number_fn(ptr noundef %2, i32 noundef %0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_lp_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !prof !141 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %10, !prof !142

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = sub nsw i32 0, %1
  %9 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %7, i32 noundef %8) #20
  br label %19

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %19, label %12, !prof !143

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.eh_status, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %15, i32 noundef %1) #20
  %17 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  br label %19

19:                                               ; preds = %10, %12, %4
  %20 = phi ptr [ %9, %4 ], [ %18, %12 ], [ null, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_lp_number(i32 noundef %0) local_unnamed_addr #4 !prof !141 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  %3 = tail call ptr @get_eh_region_from_lp_number_fn(ptr noundef %2, i32 noundef %0) #20
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @current_function_has_exception_handlers() local_unnamed_addr #4 !prof !144 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !85
  %2 = load ptr, ptr %1, align 8, !tbaa !91
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @duplicate_eh_regions(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !141 {
  %6 = alloca %struct.duplicate_eh_regions_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  store ptr %3, ptr %6, align 8, !tbaa !146
  %7 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %6, i64 0, i32 1
  store ptr %4, ptr %7, align 8, !tbaa !148
  %8 = tail call ptr @pointer_map_create() #19
  %9 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %6, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !149
  %10 = tail call ptr @get_eh_region_from_lp_number(i32 noundef %2) #20
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12, !prof !143

12:                                               ; preds = %5
  call fastcc void @duplicate_eh_regions_1(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef %10) #20
  br label %22

13:                                               ; preds = %5
  %14 = load ptr, ptr %0, align 8, !tbaa !91
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !150

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  call fastcc void @duplicate_eh_regions_1(ptr noundef nonnull %6, ptr noundef nonnull %18, ptr noundef %10) #20
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !151, !llvm.loop !152

22:                                               ; preds = %17, %13, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @duplicate_eh_regions_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !78 !PGOFuncName !153 {
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !96
  %6 = tail call fastcc ptr @gen_eh_region(i32 noundef %5, ptr noundef %2) #20
  %7 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = tail call ptr @pointer_map_insert(ptr noundef %8, ptr noundef %1) #19
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 531, ptr noundef nonnull @.str.2) #19
  br label %13

13:                                               ; preds = %3, %12
  store ptr %6, ptr %9, align 8, !tbaa !85
  %14 = load i32, ptr %4, align 4, !tbaa !96
  switch i32 %14, label %57 [
    i32 3, label %54
    i32 1, label %15
    i32 2, label %39
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %17, %19 ], [ %37, %27 ]
  %23 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !154
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @.str.2) #19
  br label %27

27:                                               ; preds = %21, %26
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = tail call ptr @gen_eh_region_catch(ptr noundef %6, ptr noundef %29) #20
  %31 = load ptr, ptr %0, align 8, !tbaa !146
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !155
  %34 = load ptr, ptr %20, align 8, !tbaa !148
  %35 = tail call ptr %31(ptr noundef %33, ptr noundef %34) #19
  %36 = getelementptr inbounds %struct.eh_catch_d, ptr %30, i64 0, i32 4
  store ptr %35, ptr %36, align 8, !tbaa !155
  %37 = load ptr, ptr %22, align 8, !tbaa !88
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %21, !llvm.loop !156

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %0, align 8, !tbaa !146
  %48 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !148
  %50 = tail call ptr %47(ptr noundef nonnull %44, ptr noundef %49) #19
  %51 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5, i32 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !88
  br label %57

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5, i32 0, i32 1
  store ptr null, ptr %53, align 8, !tbaa !88
  br label %57

54:                                               ; preds = %13
  %55 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5
  %56 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false), !tbaa.struct !157
  br label %57

57:                                               ; preds = %27, %15, %46, %52, %13, %54
  %58 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !85
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  br label %63

63:                                               ; preds = %61, %84
  %64 = phi ptr [ %59, %61 ], [ %85, %84 ]
  %65 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !158
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @gen_eh_landing_pad(ptr noundef %6) #20
  %70 = load ptr, ptr %7, align 8, !tbaa !149
  %71 = tail call ptr @pointer_map_insert(ptr noundef %70, ptr noundef nonnull %64) #19
  %72 = load ptr, ptr %71, align 8, !tbaa !85
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #19
  br label %75

75:                                               ; preds = %68, %74
  store ptr %69, ptr %71, align 8, !tbaa !85
  %76 = load ptr, ptr %0, align 8, !tbaa !146
  %77 = load ptr, ptr %65, align 8, !tbaa !158
  %78 = load ptr, ptr %62, align 8, !tbaa !148
  %79 = tail call ptr %76(ptr noundef %77, ptr noundef %78) #19
  %80 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %69, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !158
  %81 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %69, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !135
  %83 = getelementptr inbounds %struct.tree_label_decl, ptr %79, i64 0, i32 2
  store i32 %82, ptr %83, align 4, !tbaa !88
  br label %84

84:                                               ; preds = %63, %75
  %85 = load ptr, ptr %64, align 8, !tbaa !85
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %63, !llvm.loop !159

87:                                               ; preds = %84, %57
  %88 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 9
  %89 = load i8, ptr %88, align 8, !tbaa !115
  %90 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 9
  store i8 %89, ptr %90, align 8, !tbaa !115
  %91 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !85
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %87, %94
  %95 = phi ptr [ %97, %94 ], [ %92, %87 ]
  tail call fastcc void @duplicate_eh_regions_1(ptr noundef %0, ptr noundef nonnull %95, ptr noundef %6) #20
  %96 = getelementptr inbounds %struct.eh_region_d, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !85
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !160

99:                                               ; preds = %94, %87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @eh_region_outermost(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !78 {
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 640, ptr noundef nonnull @.str.2) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !91
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 641, ptr noundef nonnull @.str.2) #19
  %15 = load ptr, ptr %0, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.eh_status, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = tail call fastcc i32 @VEC_eh_region_base_length(ptr noundef %19) #20
  %21 = tail call ptr @sbitmap_alloc(i32 noundef %20) #19
  tail call void @sbitmap_zero(ptr noundef %21) #19
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi ptr [ %2, %16 ], [ %26, %22 ]
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !101
  tail call fastcc void @SET_BIT(ptr noundef %21, i32 noundef %25) #20
  %26 = load ptr, ptr %23, align 8, !tbaa !98
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22, !llvm.loop !161

28:                                               ; preds = %22, %41
  %29 = phi ptr [ %42, %41 ], [ %1, %22 ]
  %30 = getelementptr inbounds %struct.eh_region_d, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !101
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %21, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !162
  %36 = and i32 %31, 63
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load ptr, ptr %29, align 8, !tbaa !98
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %28, !llvm.loop !163

44:                                               ; preds = %28, %41
  %45 = phi ptr [ %29, %28 ], [ null, %41 ]
  %46 = load ptr, ptr %21, align 8, !tbaa !164
  tail call void @free(ptr noundef %46) #20
  tail call void @free(ptr noundef nonnull %21) #20
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_region_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !166 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !167
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !78 !PGOFuncName !169 {
  %3 = load ptr, ptr %0, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !162
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !88
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !88
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !162
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #6

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lookup_type_for_runtime(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 116
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @type_to_runtime_map, align 8, !tbaa !85
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 262143
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %0, i32 noundef %9, i32 noundef 0) #19
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ %0, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assign_filter_values() local_unnamed_addr #0 !prof !78 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  %2 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef 16) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !85
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !170
  %6 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef 64) #20
  br label %12

10:                                               ; preds = %0
  %11 = tail call fastcc ptr @VEC_uchar_gc_alloc() #20
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = load ptr, ptr @cfun, align 8, !tbaa !85
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.eh_status, ptr %15, i64 0, i32 5
  store ptr %13, ptr %16, align 8, !tbaa !88
  %17 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @ttypes_filter_hash, ptr noundef nonnull @ttypes_filter_eq, ptr noundef nonnull @free) #19
  %18 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @ehspec_filter_hash, ptr noundef nonnull @ehspec_filter_eq, ptr noundef nonnull @free) #19
  %19 = load ptr, ptr @cfun, align 8, !tbaa !85
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.eh_status, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %22, i32 noundef 1, ptr noundef nonnull %1) #20, !range !171
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %75, label %25

25:                                               ; preds = %12, %67
  %26 = phi i32 [ %68, %67 ], [ 1, %12 ]
  %27 = load ptr, ptr %1, align 8, !tbaa !85
  %28 = icmp eq ptr %27, null
  br i1 %28, label %67, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !96
  switch i32 %31, label %67 [
    i32 1, label %32
    i32 2, label %62
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %32, %59
  %37 = phi ptr [ %60, %59 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.eh_catch_d, ptr %37, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !154
  %39 = getelementptr inbounds %struct.eh_catch_d, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %52, %42 ], [ %40, %36 ]
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = tail call fastcc i32 @add_ttypes_entry(ptr noundef %17, ptr noundef %45) #20
  %47 = sext i32 %46 to i64
  %48 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %47) #19
  %49 = load ptr, ptr %38, align 8, !tbaa !154
  %50 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %48, ptr noundef %49) #19
  store ptr %50, ptr %38, align 8, !tbaa !154
  %51 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !88
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %42, !llvm.loop !172

54:                                               ; preds = %36
  %55 = tail call fastcc i32 @add_ttypes_entry(ptr noundef %17, ptr noundef null) #20
  %56 = sext i32 %55 to i64
  %57 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %56) #19
  %58 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %57, ptr noundef null) #19
  store ptr %58, ptr %38, align 8, !tbaa !154
  br label %59

59:                                               ; preds = %42, %54
  %60 = load ptr, ptr %37, align 8, !tbaa !88
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %36, !llvm.loop !173

62:                                               ; preds = %29
  %63 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  %65 = tail call fastcc i32 @add_ehspec_entry(ptr noundef %18, ptr noundef %17, ptr noundef %64) #20
  %66 = getelementptr inbounds %struct.eh_region_d, ptr %27, i64 0, i32 5, i32 0, i32 2
  store i32 %65, ptr %66, align 8, !tbaa !88
  br label %67

67:                                               ; preds = %59, %32, %62, %29, %25
  %68 = add nuw nsw i32 %26, 1
  %69 = load ptr, ptr @cfun, align 8, !tbaa !85
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = getelementptr inbounds %struct.eh_status, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !99
  %73 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %72, i32 noundef %68, ptr noundef nonnull %1) #20, !range !171
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %25, !llvm.loop !174

75:                                               ; preds = %67, %12
  tail call void @htab_delete(ptr noundef %17) #19
  tail call void @htab_delete(ptr noundef %18) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !175 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_uchar_gc_alloc() unnamed_addr #0 !prof !78 !PGOFuncName !176 {
  %1 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef 64, i64 noundef 8, i64 noundef 1) #19
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ttypes_filter_hash(ptr nocapture noundef readonly %0) #2 !prof !78 !PGOFuncName !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !178
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ttypes_filter_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #2 !prof !78 !PGOFuncName !180 {
  %3 = load ptr, ptr %0, align 8, !tbaa !178
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @ehspec_filter_hash(ptr nocapture noundef readonly %0) #7 !prof !78 !PGOFuncName !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %15, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %13, %4 ], [ 0, %1 ]
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 5)
  %8 = getelementptr inbounds %struct.tree_list, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = ptrtoint ptr %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 262143
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !182

17:                                               ; preds = %4, %1
  %18 = phi i32 [ 0, %1 ], [ %13, %4 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ehspec_filter_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !78 !PGOFuncName !183 {
  %3 = load ptr, ptr %0, align 8, !tbaa !178
  %4 = load ptr, ptr %1, align 8, !tbaa !178
  %5 = tail call i32 @type_list_equal(ptr noundef %3, ptr noundef %4) #19
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_region_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !78 !PGOFuncName !184 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !167
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !85
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_ttypes_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !185 {
  %3 = ptrtoint ptr %1 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef 1) #19
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = tail call ptr @xmalloc(i64 noundef 16) #19
  store ptr %1, ptr %10, align 8, !tbaa !178
  %11 = load ptr, ptr @cfun, align 8, !tbaa !85
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.eh_status, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #20
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.ttypes_filter, ptr %10, i64 0, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !186
  store ptr %10, ptr %6, align 8, !tbaa !85
  %18 = load ptr, ptr @cfun, align 8, !tbaa !85
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.eh_status, ptr %19, i64 0, i32 4
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %20, ptr noundef %1) #20
  br label %21

21:                                               ; preds = %9, %2
  %22 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %23 = getelementptr inbounds %struct.ttypes_filter, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !186
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_ehspec_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !78 !PGOFuncName !187 {
  %4 = alloca %struct.ttypes_filter, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  store ptr %2, ptr %4, align 8, !tbaa !178
  %5 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr @cfun, align 8, !tbaa !85
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.eh_status, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  br i1 %10, label %17, label %15

15:                                               ; preds = %8
  %16 = call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #20
  br label %19

17:                                               ; preds = %8
  %18 = call fastcc i32 @VEC_uchar_base_length(ptr noundef %14) #20
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call ptr @xmalloc(i64 noundef 16) #19
  store ptr %2, ptr %21, align 8, !tbaa !178
  %22 = xor i32 %20, -1
  %23 = getelementptr inbounds %struct.ttypes_filter, ptr %21, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !186
  store ptr %21, ptr %5, align 8, !tbaa !85
  %24 = icmp eq ptr %2, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %19, %37
  %26 = phi ptr [ %39, %37 ], [ %2, %19 ]
  %27 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %28 = icmp eq i8 %27, 0
  %29 = load ptr, ptr @cfun, align 8, !tbaa !85
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.eh_status, ptr %30, i64 0, i32 5
  %32 = getelementptr inbounds %struct.tree_list, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  br i1 %28, label %35, label %34

34:                                               ; preds = %25
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %31, ptr noundef %33) #20
  br label %37

35:                                               ; preds = %25
  %36 = call fastcc i32 @add_ttypes_entry(ptr noundef %1, ptr noundef %33) #20
  call fastcc void @push_uleb128(ptr noundef nonnull %31, i32 noundef %36) #20
  br label %37

37:                                               ; preds = %34, %35
  %38 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25, !llvm.loop !188

41:                                               ; preds = %37, %19
  %42 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @cfun, align 8, !tbaa !85
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = getelementptr inbounds %struct.eh_status, ptr %45, i64 0, i32 5
  br i1 %43, label %48, label %47

47:                                               ; preds = %41
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %46, ptr noundef null) #20
  br label %49

48:                                               ; preds = %41
  call fastcc void @VEC_uchar_gc_safe_push(ptr noundef nonnull %46, i8 noundef zeroext 0) #20
  br label %49

49:                                               ; preds = %47, %48, %3
  %50 = phi ptr [ %6, %3 ], [ %21, %48 ], [ %21, %47 ]
  %51 = getelementptr inbounds %struct.ttypes_filter, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret i32 %52
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sjlj_emit_function_exit_after(ptr noundef %0) local_unnamed_addr #9 !prof !78 {
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 4), align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_eh() #4 !prof !144 !PGOFuncName !198 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !85
  %2 = load ptr, ptr %1, align 8, !tbaa !91
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_eh() #0 !prof !78 !PGOFuncName !199 {
  tail call fastcc void @finish_eh_generation() #20
  %1 = tail call zeroext i8 @cleanup_cfg(i32 noundef 16) #19
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_eh_landing_pad(ptr noundef readonly %0) local_unnamed_addr #10 !prof !78 {
  %2 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 6
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %4, %1 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %5, !llvm.loop !200

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !131
  store ptr %10, ptr %6, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !158
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_label_decl, ptr %12, i64 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !88
  br label %16

16:                                               ; preds = %14, %9
  %17 = load ptr, ptr @cfun, align 8, !tbaa !85
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.eh_status, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !135
  tail call fastcc void @VEC_eh_landing_pad_base_replace(ptr noundef %20, i32 noundef %22) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_landing_pad_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !78 !PGOFuncName !201 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !85
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_eh_handler(ptr noundef readonly %0) local_unnamed_addr #10 !prof !78 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %19, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_label_decl, ptr %8, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !88
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @cfun, align 8, !tbaa !85
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.eh_status, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %6, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !135
  tail call fastcc void @VEC_eh_landing_pad_base_replace(ptr noundef %16, i32 noundef %18) #20
  %19 = load ptr, ptr %6, align 8, !tbaa !85
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !202

21:                                               ; preds = %12, %1
  %22 = load ptr, ptr %0, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.eh_region_d, ptr %22, i64 0, i32 1
  br label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !85
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ %25, %24 ]
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi ptr [ %35, %31 ], [ %30, %29 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  %34 = icmp eq ptr %33, %0
  %35 = getelementptr inbounds %struct.eh_region_d, ptr %33, i64 0, i32 2
  br i1 %34, label %36, label %31, !llvm.loop !203

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !204
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  store ptr %38, ptr %32, align 8, !tbaa !85
  br label %41

41:                                               ; preds = %41, %40
  %42 = phi ptr [ %38, %40 ], [ %44, %41 ]
  store ptr %22, ptr %42, align 8, !tbaa !98
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %41, !llvm.loop !205

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.eh_region_d, ptr %42, i64 0, i32 2
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi ptr [ %32, %36 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  store ptr %51, ptr %49, align 8, !tbaa !85
  %52 = load ptr, ptr @cfun, align 8, !tbaa !85
  %53 = load ptr, ptr %52, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.eh_status, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !99
  %56 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !101
  tail call fastcc void @VEC_eh_region_base_replace(ptr noundef %55, i32 noundef %57) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_region_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !78 !PGOFuncName !207 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @for_each_eh_label(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !208 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !85
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2) #20, !range !171
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9, !prof !209

9:                                                ; preds = %1, %24
  %10 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %11 = phi i32 [ %26, %24 ], [ 1, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 12
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  tail call void %0(ptr noundef nonnull %16) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !85
  br label %24

24:                                               ; preds = %14, %18, %22, %9
  %25 = phi ptr [ %10, %14 ], [ %10, %18 ], [ %23, %22 ], [ %10, %9 ]
  %26 = add nuw nsw i32 %11, 1
  %27 = load ptr, ptr %25, align 8, !tbaa !91
  %28 = getelementptr inbounds %struct.eh_status, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !134
  %30 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %29, i32 noundef %26, ptr noundef nonnull %2) #20, !range !171
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %9, !prof !151, !llvm.loop !211

32:                                               ; preds = %24, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_landing_pad_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !208 !PGOFuncName !212 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !213

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !137
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !213

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !85
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_reg_eh_region_note(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !214 {
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !215

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !85
  br label %13

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %15, label %10, !prof !216

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #19
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %7, %6 ], [ %12, %10 ]
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef %14) #19
  br label %15

15:                                               ; preds = %8, %13
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef null) #19
  %3 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -2147483648) #19
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !88
  br label %8

7:                                                ; preds = %1
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef %3) #19
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @insn_could_throw_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !217 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %12 [
    i16 10, label %13
    i16 8, label %4
    i16 7, label %4
    i16 9, label %4
  ], !prof !218

4:                                                ; preds = %1, %1, %1
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !79
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !219

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = tail call i32 @may_trap_p(ptr noundef %9) #19
  %11 = trunc i32 %10 to i8
  br label %13

12:                                               ; preds = %1, %4
  br label %13

13:                                               ; preds = %1, %12, %7
  %14 = phi i8 [ %11, %7 ], [ 0, %12 ], [ 1, %1 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_reg_eh_region_note_forward(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !78 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %1, %2
  br i1 %15, label %28, label %16

16:                                               ; preds = %11, %24
  %17 = phi ptr [ %26, %24 ], [ %1, %11 ]
  %18 = tail call ptr @find_reg_note(ptr noundef %17, i32 noundef 25, ptr noundef null) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %17) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @add_reg_note(ptr noundef %17, i32 noundef 25, ptr noundef %14) #19
  br label %24

24:                                               ; preds = %16, %20, %23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %16, !llvm.loop !220

28:                                               ; preds = %24, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_reg_eh_region_note_backward(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !78 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %1, %2
  br i1 %15, label %25, label %16

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %23, %21 ], [ %1, %11 ]
  %18 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %17) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @add_reg_note(ptr noundef %17, i32 noundef 25, ptr noundef %14) #19
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %16, !llvm.loop !221

25:                                               ; preds = %21, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_eh_landing_pad_from_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !222 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !223
  %5 = load ptr, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !224 !PGOFuncName !225 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %50, !prof !226

8:                                                ; preds = %3
  %9 = icmp eq i32 %5, 8
  br i1 %9, label %10, label %21, !prof !227

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %21, !prof !228

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  br label %21

21:                                               ; preds = %16, %10, %8
  %22 = phi ptr [ %20, %16 ], [ %0, %10 ], [ %0, %8 ]
  %23 = tail call ptr @find_reg_note(ptr noundef %22, i32 noundef 25, ptr noundef null) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29, !prof !229

25:                                               ; preds = %21
  %26 = tail call zeroext i8 @insn_could_throw_p(ptr noundef %22) #20
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i8
  br label %50

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !88
  %34 = trunc i64 %33 to i32
  switch i32 %34, label %35 [
    i32 0, label %50
    i32 -2147483648, label %50
  ], !prof !230

35:                                               ; preds = %29
  %36 = icmp slt i32 %34, 0
  %37 = load ptr, ptr @cfun, align 8, !tbaa !85
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  br i1 %36, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.eh_status, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = sub nsw i32 0, %34
  %43 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %41, i32 noundef %42) #20
  br label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.eh_status, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !134
  %47 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %46, i32 noundef %34) #20
  %48 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !133
  br label %50

50:                                               ; preds = %3, %29, %29, %39, %44, %25
  %51 = phi ptr [ %43, %39 ], [ %49, %44 ], [ null, %25 ], [ null, %3 ], [ null, %29 ], [ null, %29 ]
  %52 = phi i8 [ 0, %39 ], [ 0, %44 ], [ %28, %25 ], [ 0, %3 ], [ 1, %29 ], [ 1, %29 ]
  %53 = phi ptr [ null, %39 ], [ %47, %44 ], [ null, %25 ], [ null, %3 ], [ null, %29 ], [ null, %29 ]
  store ptr %53, ptr %2, align 8, !tbaa !85
  store ptr %51, ptr %1, align 8, !tbaa !85
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_eh_region_from_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !223
  %5 = load ptr, ptr %3, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_throw_internal(ptr noundef %0) local_unnamed_addr #0 !prof !231 {
  %2 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %0) #20
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @can_throw_external(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 8
  br i1 %9, label %10, label %33

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = load i32, ptr %18, align 8, !tbaa !232
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = zext nneg i32 %19 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %47, label %26, !llvm.loop !234

26:                                               ; preds = %21, %23
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = load ptr, ptr %17, align 8, !tbaa !88
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = tail call zeroext i8 @can_throw_external(ptr noundef %30) #20, !range !223
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %23, label %47

33:                                               ; preds = %10, %8
  %34 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !223
  %35 = icmp eq i8 %34, 0
  %36 = load ptr, ptr %2, align 8
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !85
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %40, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !96
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1796, ptr noundef nonnull @.str.2) #19
  br label %47

47:                                               ; preds = %23, %26, %16, %1, %46, %42, %39, %33
  %48 = phi i8 [ 0, %1 ], [ 0, %33 ], [ 1, %39 ], [ 0, %42 ], [ 0, %46 ], [ 0, %16 ], [ 0, %23 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @insn_nothrow_p(ptr noundef %0) local_unnamed_addr #0 !prof !235 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %35, !prof !236

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 8
  br i1 %9, label %10, label %33, !prof !237

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %33, !prof !238

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = load i32, ptr %18, align 8, !tbaa !232
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = zext nneg i32 %19 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %35, label %26, !llvm.loop !239

26:                                               ; preds = %21, %23
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = load ptr, ptr %17, align 8, !tbaa !88
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = tail call zeroext i8 @insn_nothrow_p(ptr noundef %30) #20, !range !223
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %23

33:                                               ; preds = %10, %8
  %34 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !223
  br label %35

35:                                               ; preds = %23, %26, %16, %1, %33
  %36 = phi i8 [ %34, %33 ], [ 1, %1 ], [ 1, %16 ], [ 1, %23 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @can_nonlocal_goto(ptr noundef %0) local_unnamed_addr #0 !prof !240 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !241
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4, !prof !242

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !88
  %16 = icmp eq i64 %15, -2147483648
  br i1 %16, label %18, label %17

17:                                               ; preds = %8, %11
  br label %18

18:                                               ; preds = %1, %4, %11, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %11 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_nothrow_function_flags() #0 !prof !144 !PGOFuncName !243 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !244
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !245
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !85
  %2 = load i64, ptr %1, align 8
  %3 = and i64 %2, 33554432
  %4 = icmp ne i64 %3, 0
  %5 = load i32, ptr @flag_exceptions, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %68, label %8, !prof !246

8:                                                ; preds = %0
  %9 = tail call ptr @get_insns() #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %23, %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %27

14:                                               ; preds = %8, %23
  %15 = phi ptr [ %25, %23 ], [ %9, %8 ]
  %16 = tail call zeroext i8 @can_throw_external(ptr noundef nonnull %15) #20, !range !223
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !244
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 16842751
  %21 = icmp eq i32 %20, 16777226
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !245
  br label %68

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %11, label %14, !llvm.loop !247

27:                                               ; preds = %11, %36
  %28 = phi ptr [ %38, %36 ], [ %12, %11 ]
  %29 = tail call zeroext i8 @can_throw_external(ptr noundef nonnull %28) #20, !range !223
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !244
  %32 = load i32, ptr %28, align 8
  %33 = and i32 %32, 16842751
  %34 = icmp eq i32 %33, 16777226
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !245
  br label %68

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !248

40:                                               ; preds = %36, %11
  %41 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !244
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @current_function_decl, align 8, !tbaa !85
  %45 = tail call ptr @cgraph_node(ptr noundef %44) #19
  %46 = tail call i32 @cgraph_function_body_availability(ptr noundef %45) #19
  %47 = icmp ugt i32 %46, 2
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load ptr, ptr @current_function_decl, align 8, !tbaa !85
  %50 = tail call ptr @cgraph_node(ptr noundef %49) #19
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %54
  %55 = phi ptr [ %60, %54 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 14
  %57 = load i8, ptr %56, align 2
  %58 = and i8 %57, -5
  store i8 %58, ptr %56, align 2
  %59 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !85
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54, !llvm.loop !249

62:                                               ; preds = %54, %48
  tail call void @cgraph_set_nothrow_flag(ptr noundef %50, i8 noundef zeroext 1) #19
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call ptr @current_function_name() #19
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.34, ptr noundef %66) #20
  br label %68

68:                                               ; preds = %40, %43, %65, %62, %0, %35, %22
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_eh_pointer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %9) #19
  store ptr %10, ptr %5, align 8, !tbaa !250
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %6, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_builtin_eh_common(ptr noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !251 {
  %2 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1941, ptr noundef nonnull @.str.2) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !85
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.eh_status, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = trunc i64 %6 to i32
  %12 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %10, i32 noundef %11) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1948, ptr noundef nonnull @.str.2) #19
  br label %15

15:                                               ; preds = %5, %14
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_eh_filter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !253
  %10 = tail call i32 %9() #19
  %11 = tail call ptr @gen_reg_rtx(i32 noundef %10) #19
  store ptr %11, ptr %5, align 8, !tbaa !252
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %11, %8 ], [ %6, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_eh_copy_values(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3) #20
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %6) #20
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !253
  %9 = tail call i32 %8() #19
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !250
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #19
  store ptr %15, ptr %10, align 8, !tbaa !250
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !250
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %22 = tail call ptr @gen_reg_rtx(i32 noundef %21) #19
  store ptr %22, ptr %17, align 8, !tbaa !250
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !252
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @gen_reg_rtx(i32 noundef %9) #19
  store ptr %28, ptr %24, align 8, !tbaa !252
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !252
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call ptr @gen_reg_rtx(i32 noundef %9) #19
  store ptr %34, ptr %30, align 8, !tbaa !252
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr %10, align 8, !tbaa !250
  %37 = load ptr, ptr %17, align 8, !tbaa !250
  %38 = tail call ptr @emit_move_insn(ptr noundef %36, ptr noundef %37) #19
  %39 = load ptr, ptr %24, align 8, !tbaa !252
  %40 = load ptr, ptr %30, align 8, !tbaa !252
  %41 = tail call ptr @emit_move_insn(ptr noundef %39, ptr noundef %40) #19
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !85
  ret ptr %42
}

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_builtin_unwind_init() local_unnamed_addr #0 !prof !78 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !254
  tail call void @ix86_setup_frame_addresses() #19
  ret void
}

; Function Attrs: optsize
declare void @ix86_setup_frame_addresses() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_eh_return_data_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #19
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !85
  br label %19

9:                                                ; preds = %1
  %10 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #19
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !85
  br label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %10
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #19
  br label %19

19:                                               ; preds = %14, %12, %7
  %20 = phi ptr [ %8, %7 ], [ %13, %12 ], [ %18, %14 ]
  ret ptr %20
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_extract_return_addr(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef null, i32 noundef 16, i32 noundef 0) #20
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 16, label %8
    i8 0, label %8
  ]

6:                                                ; preds = %1
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %2, i32 noundef 0) #19
  br label %8

8:                                                ; preds = %1, %1, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !78 !PGOFuncName !255 {
  %5 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #19
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_frob_return_addr(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %3 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef null, i32 noundef %2, i32 noundef 0) #20
  %4 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %3, i8 noundef zeroext 0) #19
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_builtin_eh_return(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !78 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !256
  %4 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef 0) #20
  %5 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %4, i8 noundef zeroext 0) #19
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !256
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @copy_to_reg(ptr noundef %5) #19
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !256
  br label %14

10:                                               ; preds = %2
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @emit_move_insn(ptr noundef nonnull %6, ptr noundef %5) #19
  br label %14

14:                                               ; preds = %10, %12, %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !257
  %16 = tail call fastcc ptr @expand_expr(ptr noundef %1, ptr noundef %15, i32 noundef 0, i32 noundef 0) #20
  %17 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %16, i8 noundef zeroext 0) #19
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !257
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call ptr @copy_to_reg(ptr noundef %17) #19
  store ptr %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !257
  br label %26

22:                                               ; preds = %14
  %23 = icmp eq ptr %17, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %17) #19
  br label %26

26:                                               ; preds = %22, %24, %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !258
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @gen_label_rtx() #19
  store ptr %30, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !258
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ %27, %26 ]
  tail call void @emit_jump(ptr noundef %32) #19
  ret void
}

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_jump(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_eh_return() local_unnamed_addr #0 !prof !144 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !258
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3, !prof !259

3:                                                ; preds = %0
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1, !tbaa !260
  %4 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 2) #19
  %5 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !85
  %6 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef %5) #19
  %7 = tail call ptr @gen_label_rtx() #19
  tail call void @emit_jump(ptr noundef %7) #19
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !258
  %9 = tail call ptr @emit_label(ptr noundef %8) #19
  tail call void @clobber_return_register() #19
  %10 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 2) #19
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !256
  %12 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef %11) #19
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !257
  %14 = tail call ptr @gen_eh_return(ptr noundef %13) #19
  %15 = tail call ptr @emit_insn(ptr noundef %14) #19
  %16 = tail call ptr @emit_label(ptr noundef %7) #19
  br label %17

17:                                               ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clobber_return_register() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_eh_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_extend_pointer(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %3 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef null, i32 noundef %2, i32 noundef 0) #20
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 10), align 8, !tbaa !261
  %5 = tail call i32 %4() #19
  %6 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %7 = tail call ptr @convert_modes(i32 noundef %5, i32 noundef %6, ptr noundef %3, i32 noundef 1) #19
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_convert_to_eh_region_ranges() #4 !prof !144 !PGOFuncName !262 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !85
  %2 = load ptr, ptr %1, align 8, !tbaa !91
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @convert_to_eh_region_ranges() #0 !prof !78 !PGOFuncName !263 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %5 = tail call fastcc ptr @VEC_uchar_gc_alloc() #20
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !264
  %6 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @action_record_hash, ptr noundef nonnull @action_record_eq, ptr noundef nonnull @free) #19
  %7 = tail call ptr @get_insns() #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 %4, ptr @call_site_base, align 4, !tbaa !79
  br label %326

10:                                               ; preds = %0, %162
  %11 = phi ptr [ %176, %162 ], [ %7, %0 ]
  %12 = phi i32 [ %174, %162 ], [ -3, %0 ]
  %13 = phi ptr [ %173, %162 ], [ null, %0 ]
  %14 = phi ptr [ %172, %162 ], [ null, %0 ]
  %15 = phi ptr [ %171, %162 ], [ null, %0 ]
  %16 = phi i32 [ %170, %162 ], [ 0, %0 ]
  %17 = phi i32 [ %169, %162 ], [ 0, %0 ]
  %18 = phi ptr [ %168, %162 ], [ null, %0 ]
  %19 = phi ptr [ %167, %162 ], [ null, %0 ]
  %20 = phi ptr [ %166, %162 ], [ null, %0 ]
  %21 = phi i32 [ %165, %162 ], [ 0, %0 ]
  %22 = phi ptr [ %164, %162 ], [ null, %0 ]
  %23 = phi ptr [ %163, %162 ], [ null, %0 ]
  %24 = load i32, ptr %11, align 8
  %25 = and i32 %24, 65535
  %26 = trunc i32 %24 to i16
  switch i16 %26, label %154 [
    i16 8, label %27
    i16 7, label %27
    i16 9, label %27
    i16 10, label %27
    i16 13, label %108
  ]

27:                                               ; preds = %10, %10, %10, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %28 = icmp eq i32 %25, 8
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = getelementptr inbounds %struct.rtvec_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  br label %40

40:                                               ; preds = %35, %29, %27
  %41 = phi ptr [ %39, %35 ], [ %11, %29 ], [ %11, %27 ]
  %42 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %41, ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !223
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8, !tbaa !85
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %6, ptr noundef nonnull %45) #20
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %44
  %51 = icmp eq i32 %12, -3
  %52 = select i1 %51, ptr %11, ptr %15
  %53 = select i1 %51, i32 -1, i32 %12
  br label %60

54:                                               ; preds = %47
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 38), align 2, !tbaa !265
  %55 = icmp sgt i32 %48, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load ptr, ptr %1, align 8, !tbaa !85
  %58 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !210
  br label %60

60:                                               ; preds = %50, %54, %56
  %61 = phi i32 [ %12, %56 ], [ %12, %54 ], [ %53, %50 ]
  %62 = phi ptr [ %15, %56 ], [ %15, %54 ], [ %52, %50 ]
  %63 = phi i32 [ %48, %56 ], [ %48, %54 ], [ -1, %50 ]
  %64 = phi ptr [ %59, %56 ], [ null, %54 ], [ null, %50 ]
  %65 = icmp eq i32 %61, %63
  %66 = icmp eq ptr %14, %64
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %102, label %68

68:                                               ; preds = %60
  %69 = icmp sgt i32 %61, -2
  br i1 %69, label %70, label %93

70:                                               ; preds = %68
  %71 = icmp eq ptr %19, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %70
  %73 = tail call fastcc i32 @add_call_site(ptr noundef null, i32 noundef 0, i32 noundef 0) #20
  %74 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %19) #19
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 2
  store i32 %73, ptr %75, align 8, !tbaa !88
  %76 = icmp eq ptr %62, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %20) #19
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 2
  store i32 %73, ptr %79, align 8, !tbaa !88
  br label %85

80:                                               ; preds = %72
  %81 = icmp eq ptr %13, %20
  br i1 %81, label %89, label %82

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2481, ptr noundef nonnull @.str.2) #19
  br label %89

83:                                               ; preds = %70
  %84 = icmp eq ptr %62, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %77, %83
  %86 = tail call fastcc i32 @add_call_site(ptr noundef null, i32 noundef 0, i32 noundef %17) #20
  %87 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %62) #19
  %88 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 2
  store i32 %86, ptr %88, align 8, !tbaa !88
  br label %89

89:                                               ; preds = %80, %82, %85, %83
  %90 = phi i32 [ %86, %85 ], [ %16, %83 ], [ %73, %82 ], [ %73, %80 ]
  %91 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %13) #19
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 2
  store i32 %90, ptr %92, align 8, !tbaa !88
  br label %93

93:                                               ; preds = %89, %68
  %94 = phi i32 [ %90, %89 ], [ %16, %68 ]
  %95 = phi ptr [ null, %89 ], [ %62, %68 ]
  %96 = icmp sgt i32 %63, -2
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = tail call i32 @llvm.smax.i32(i32 %63, i32 0)
  %99 = tail call fastcc i32 @add_call_site(ptr noundef %64, i32 noundef %98, i32 noundef %17) #20
  %100 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %11) #19
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 2
  store i32 %99, ptr %101, align 8, !tbaa !88
  br label %102

102:                                              ; preds = %60, %97, %93, %40
  %103 = phi i32 [ %16, %40 ], [ %16, %60 ], [ %99, %97 ], [ %94, %93 ]
  %104 = phi ptr [ %15, %40 ], [ %62, %60 ], [ %95, %97 ], [ %95, %93 ]
  %105 = phi ptr [ %14, %40 ], [ %14, %60 ], [ %64, %97 ], [ %64, %93 ]
  %106 = phi ptr [ %13, %40 ], [ %11, %60 ], [ %11, %97 ], [ %11, %93 ]
  %107 = phi i32 [ %12, %40 ], [ %61, %60 ], [ %63, %97 ], [ %63, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  br label %162

108:                                              ; preds = %10
  %109 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %110 = load i32, ptr %109, align 8, !tbaa !88
  %111 = icmp eq i32 %110, 11
  br i1 %111, label %112, label %162

112:                                              ; preds = %108
  %113 = icmp eq ptr %18, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2516, ptr noundef nonnull @.str.2) #19
  br label %115

115:                                              ; preds = %112, %114
  %116 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !79
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2517, ptr noundef nonnull @.str.2) #19
  br label %119

119:                                              ; preds = %115, %118
  %120 = icmp eq ptr %15, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %119
  %122 = icmp eq i32 %12, -1
  br i1 %122, label %128, label %123

123:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2524, ptr noundef nonnull @.str.2) #19
  br label %128

124:                                              ; preds = %119
  %125 = icmp eq i32 %12, -3
  %126 = load ptr, ptr @global_rtl, align 16
  %127 = select i1 %125, ptr %14, ptr %126
  br label %128

128:                                              ; preds = %124, %123, %121
  %129 = phi ptr [ %13, %121 ], [ %13, %123 ], [ %20, %124 ]
  %130 = phi ptr [ %15, %121 ], [ %15, %123 ], [ %19, %124 ]
  %131 = phi ptr [ %14, %121 ], [ %14, %123 ], [ %127, %124 ]
  %132 = phi i32 [ -3, %121 ], [ -3, %123 ], [ %12, %124 ]
  %133 = sext i32 %17 to i64
  %134 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !85
  %136 = tail call fastcc i32 @VEC_call_site_record_base_length(ptr noundef %135) #20
  %137 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %138 = add i32 %137, %136
  store i32 %138, ptr @call_site_base, align 4, !tbaa !79
  %139 = add nsw i32 %17, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !85
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2534, ptr noundef nonnull @.str.2) #19
  br label %145

145:                                              ; preds = %128, %144
  %146 = tail call fastcc ptr @VEC_call_site_record_gc_alloc() #20
  store ptr %146, ptr %141, align 8, !tbaa !85
  %147 = tail call i32 @max_label_num() #19
  %148 = tail call i32 @get_first_label_num() #19
  %149 = sub nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = tail call ptr @xcalloc(i64 noundef %151, i64 noundef 8) #19
  %153 = tail call ptr @sbitmap_alloc(i32 noundef %150) #19
  br label %162

154:                                              ; preds = %10
  %155 = icmp eq i32 %25, 12
  %156 = icmp ne ptr %23, null
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !88
  %161 = sub nsw i32 %160, %21
  tail call fastcc void @SET_BIT(ptr noundef %22, i32 noundef %161) #20
  br label %162

162:                                              ; preds = %108, %102, %154, %158, %145
  %163 = phi ptr [ %23, %102 ], [ %152, %145 ], [ %23, %158 ], [ %23, %154 ], [ %23, %108 ]
  %164 = phi ptr [ %22, %102 ], [ %153, %145 ], [ %22, %158 ], [ %22, %154 ], [ %22, %108 ]
  %165 = phi i32 [ %21, %102 ], [ %148, %145 ], [ %21, %158 ], [ %21, %154 ], [ %21, %108 ]
  %166 = phi ptr [ %20, %102 ], [ %129, %145 ], [ %20, %158 ], [ %20, %154 ], [ %20, %108 ]
  %167 = phi ptr [ %19, %102 ], [ %130, %145 ], [ %19, %158 ], [ %19, %154 ], [ %19, %108 ]
  %168 = phi ptr [ %18, %102 ], [ %11, %145 ], [ %18, %158 ], [ %18, %154 ], [ %18, %108 ]
  %169 = phi i32 [ %17, %102 ], [ %139, %145 ], [ %17, %158 ], [ %17, %154 ], [ %17, %108 ]
  %170 = phi i32 [ %103, %102 ], [ %16, %145 ], [ %16, %158 ], [ %16, %154 ], [ %16, %108 ]
  %171 = phi ptr [ %104, %102 ], [ null, %145 ], [ %15, %158 ], [ %15, %154 ], [ %15, %108 ]
  %172 = phi ptr [ %105, %102 ], [ %131, %145 ], [ %14, %158 ], [ %14, %154 ], [ %14, %108 ]
  %173 = phi ptr [ %106, %102 ], [ %13, %145 ], [ %13, %158 ], [ %13, %154 ], [ %13, %108 ]
  %174 = phi i32 [ %107, %102 ], [ %132, %145 ], [ %12, %158 ], [ %12, %154 ], [ %12, %108 ]
  %175 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !88
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %10, !llvm.loop !266

178:                                              ; preds = %162
  %179 = icmp slt i32 %174, -1
  %180 = icmp ne ptr %171, null
  %181 = select i1 %179, i1 true, i1 %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %173) #19
  %184 = getelementptr inbounds %struct.rtx_def, ptr %183, i64 0, i32 1, i32 0, i32 2
  store i32 %170, ptr %184, align 8, !tbaa !88
  br label %185

185:                                              ; preds = %182, %178
  store i32 %4, ptr @call_site_base, align 4, !tbaa !79
  %186 = icmp eq ptr %163, null
  br i1 %186, label %326, label %187

187:                                              ; preds = %185
  %188 = icmp eq ptr %168, null
  %189 = getelementptr inbounds i8, ptr %3, i64 8
  br label %190

190:                                              ; preds = %187, %323
  %191 = phi i1 [ true, %187 ], [ false, %323 ]
  %192 = phi i64 [ 0, %187 ], [ 1, %323 ]
  %193 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !85
  %195 = tail call fastcc i32 @VEC_call_site_record_base_length(ptr noundef %194) #20
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %323

197:                                              ; preds = %190, %319
  %198 = phi ptr [ %320, %319 ], [ null, %190 ]
  %199 = phi i32 [ %321, %319 ], [ 0, %190 ]
  %200 = load ptr, ptr %193, align 8, !tbaa !85
  %201 = tail call fastcc ptr @VEC_call_site_record_base_index(ptr noundef %200, i32 noundef %199) #20
  %202 = load ptr, ptr %201, align 8, !tbaa !267
  %203 = icmp eq ptr %202, null
  br i1 %203, label %319, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 1, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !88
  %207 = sub nsw i32 %206, %165
  %208 = lshr i32 %207, 6
  %209 = zext nneg i32 %208 to i64
  %210 = getelementptr inbounds %struct.simple_bitmap_def, ptr %164, i64 0, i32 3, i64 %209
  %211 = load i64, ptr %210, align 8, !tbaa !162
  %212 = and i32 %207, 63
  %213 = zext nneg i32 %212 to i64
  %214 = lshr i64 %211, %213
  %215 = and i64 %214, 1
  %216 = icmp eq i64 %192, %215
  br i1 %216, label %319, label %217

217:                                              ; preds = %204
  %218 = sext i32 %207 to i64
  %219 = getelementptr inbounds ptr, ptr %163, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !85
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %316

222:                                              ; preds = %217
  %223 = tail call ptr @gen_label_rtx() #19
  store ptr %223, ptr %219, align 8, !tbaa !85
  %224 = icmp ne ptr %198, null
  %225 = select i1 %224, i1 true, i1 %188
  br i1 %225, label %242, label %226

226:                                              ; preds = %222, %238
  %227 = phi ptr [ %240, %238 ], [ %168, %222 ]
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 13
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %233 = load i32, ptr %232, align 8, !tbaa !88
  %234 = icmp eq i32 %233, 10
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !88
  br label %242

238:                                              ; preds = %226, %231
  %239 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !88
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %226, !llvm.loop !269

242:                                              ; preds = %238, %222, %235
  %243 = phi ptr [ %237, %235 ], [ %198, %222 ], [ null, %238 ]
  br i1 %191, label %244, label %249

244:                                              ; preds = %242
  %245 = tail call ptr @emit_label_before(ptr noundef %223, ptr noundef %168) #19
  %246 = load ptr, ptr %201, align 8, !tbaa !267
  %247 = tail call ptr @gen_jump(ptr noundef %246) #19
  %248 = tail call ptr @emit_jump_insn_before(ptr noundef %247, ptr noundef %168) #19
  br label %255

249:                                              ; preds = %242
  %250 = load ptr, ptr %201, align 8, !tbaa !267
  %251 = tail call ptr @gen_jump(ptr noundef %250) #19
  %252 = tail call ptr @emit_jump_insn_after(ptr noundef %251, ptr noundef %168) #19
  %253 = load ptr, ptr %219, align 8, !tbaa !85
  %254 = tail call ptr @emit_label_after(ptr noundef %253, ptr noundef %168) #19
  br label %255

255:                                              ; preds = %249, %244
  %256 = phi ptr [ %248, %244 ], [ %252, %249 ]
  %257 = phi ptr [ %245, %244 ], [ %254, %249 ]
  %258 = load ptr, ptr %201, align 8, !tbaa !267
  %259 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %258, ptr %259, align 8, !tbaa !88
  tail call void @add_reg_note(ptr noundef %256, i32 noundef 29, ptr noundef null) #19
  %260 = load ptr, ptr %201, align 8, !tbaa !267
  %261 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1, i32 0, i32 0, i64 2
  %262 = load ptr, ptr %261, align 8, !tbaa !88
  %263 = icmp eq ptr %262, null
  br i1 %263, label %316, label %264

264:                                              ; preds = %255
  %265 = load i32, ptr %262, align 8
  %266 = and i32 %265, 65535
  %267 = icmp eq i32 %266, 13
  br i1 %267, label %268, label %316

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 1
  %270 = load i32, ptr %269, align 8, !tbaa !88
  %271 = icmp eq i32 %270, 10
  br i1 %271, label %272, label %316

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 0, i32 1, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !88
  %275 = icmp ne ptr %274, null
  %276 = icmp ne ptr %243, null
  %277 = select i1 %275, i1 %276, i1 false
  br i1 %277, label %278, label %316

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.basic_block_def, ptr %274, i64 0, i32 13
  %280 = load i32, ptr %279, align 8, !tbaa !270
  %281 = and i32 %280, 96
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %316, label %283

283:                                              ; preds = %278
  %284 = icmp eq i32 %281, 64
  %285 = select i1 %284, i32 32, i32 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %286 = tail call ptr @create_basic_block(ptr noundef %257, ptr noundef nonnull %256, ptr noundef nonnull %243) #19
  %287 = tail call ptr @make_single_succ_edge(ptr noundef %286, ptr noundef nonnull %274, i32 noundef 8192) #19
  %288 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 13
  %289 = load i32, ptr %288, align 8, !tbaa !270
  %290 = and i32 %289, -97
  %291 = or disjoint i32 %290, %285
  store i32 %291, ptr %288, align 8, !tbaa !270
  %292 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %274) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !272
  store ptr %292, ptr %189, align 8, !tbaa.struct !273
  %293 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %292) #20
  %294 = icmp eq ptr %293, null
  br i1 %294, label %314, label %295

295:                                              ; preds = %283, %309
  %296 = phi ptr [ %310, %309 ], [ %292, %283 ]
  %297 = phi i32 [ %311, %309 ], [ 0, %283 ]
  %298 = phi ptr [ %312, %309 ], [ %293, %283 ]
  %299 = getelementptr inbounds %struct.edge_def, ptr %298, i64 0, i32 7
  %300 = load i32, ptr %299, align 8, !tbaa !274
  %301 = and i32 %300, 8200
  %302 = icmp eq i32 %301, 8200
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  tail call void @redirect_edge_succ(ptr noundef nonnull %298, ptr noundef %286) #19
  %304 = load i32, ptr %299, align 8, !tbaa !274
  %305 = and i32 %304, -8193
  store i32 %305, ptr %299, align 8, !tbaa !274
  br label %309

306:                                              ; preds = %295
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %307 = load i32, ptr %3, align 8
  %308 = load ptr, ptr %189, align 8
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi ptr [ %308, %306 ], [ %296, %303 ]
  %311 = phi i32 [ %307, %306 ], [ %297, %303 ]
  %312 = tail call fastcc ptr @ei_safe_edge(i32 %311, ptr %310) #20
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %295, !llvm.loop !276

314:                                              ; preds = %309, %283
  %315 = select i1 %191, ptr %286, ptr %243
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  br label %316

316:                                              ; preds = %255, %264, %268, %272, %278, %314, %217
  %317 = phi ptr [ %315, %314 ], [ %243, %278 ], [ %243, %272 ], [ %198, %217 ], [ %243, %268 ], [ %243, %264 ], [ %243, %255 ]
  %318 = load ptr, ptr %219, align 8, !tbaa !85
  store ptr %318, ptr %201, align 8, !tbaa !267
  br label %319

319:                                              ; preds = %204, %197, %316
  %320 = phi ptr [ %317, %316 ], [ %198, %197 ], [ %198, %204 ]
  %321 = add nuw nsw i32 %199, 1
  %322 = icmp eq i32 %321, %195
  br i1 %322, label %323, label %197, !llvm.loop !277

323:                                              ; preds = %319, %190
  br i1 %191, label %190, label %324, !llvm.loop !278

324:                                              ; preds = %323
  %325 = load ptr, ptr %164, align 8, !tbaa !164
  tail call void @free(ptr noundef %325) #20
  tail call void @free(ptr noundef %164) #20
  tail call void @free(ptr noundef %163) #20
  br label %326

326:                                              ; preds = %9, %324, %185
  tail call void @htab_delete(ptr noundef %6) #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_function_exception_table(ptr noundef %0) local_unnamed_addr #0 !prof !144 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !85
  %3 = tail call ptr @get_personality_function(ptr noundef %2) #19
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 38), align 2, !tbaa !265
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !259

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @assemble_external_libcall(ptr noundef nonnull %3) #19
  br label %9

9:                                                ; preds = %8, %6
  tail call fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef 0) #20
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 1), align 8, !tbaa !85
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef 1) #20
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call ptr @current_function_section() #19
  tail call void @switch_to_section(ptr noundef %14) #19
  br label %15

15:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: optsize
declare ptr @get_personality_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_external_libcall(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !279 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  tail call fastcc void @switch_to_exception_section(ptr noundef %0) #20
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 9), align 8, !tbaa !280
  %11 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  tail call void %10(ptr noundef %11) #19
  %12 = load ptr, ptr @cfun, align 8, !tbaa !85
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.eh_status, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %15) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.eh_status, ptr %13, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  br i1 %20, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #20
  br label %27

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @VEC_uchar_base_length(ptr noundef %22) #20
  br label %27

27:                                               ; preds = %23, %25
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %2, %27
  %31 = tail call i32 @asm_preferred_eh_data_format(i32 noundef 0, i32 noundef 1) #19
  %32 = icmp eq i32 %1, 0
  %33 = select i1 %32, ptr @.str.37, ptr @.str.36
  %34 = load ptr, ptr @cfun, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !281
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %33, i32 noundef %36) #20
  %38 = tail call i32 @size_of_encoded_value(i32 noundef %31) #19
  %39 = shl nsw i32 %38, 3
  tail call void @assemble_align(i32 noundef %39) #19
  %40 = load ptr, ptr @cfun, align 8, !tbaa !85
  br label %41

41:                                               ; preds = %27, %30
  %42 = phi ptr [ %40, %30 ], [ %12, %27 ]
  %43 = phi i1 [ true, %30 ], [ false, %27 ]
  %44 = phi i32 [ %38, %30 ], [ 0, %27 ]
  %45 = phi i32 [ %31, %30 ], [ 255, %27 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !282
  %47 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  %48 = icmp eq i32 %1, 0
  %49 = select i1 %48, ptr @.str.39, ptr @.str.38
  %50 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !281
  %52 = sext i32 %51 to i64
  tail call void %46(ptr noundef %47, ptr noundef nonnull %49, i64 noundef %52) #19
  %53 = tail call ptr @eh_data_format_name(i32 noundef 255) #19
  tail call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef 255, ptr noundef nonnull @.str.40, ptr noundef %53) #19
  %54 = sext i32 %45 to i64
  %55 = tail call ptr @eh_data_format_name(i32 noundef %45) #19
  tail call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %54, ptr noundef nonnull @.str.41, ptr noundef %55) #19
  br i1 %43, label %56, label %65

56:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %57 = select i1 %48, ptr @.str.43, ptr @.str.42
  %58 = load ptr, ptr @cfun, align 8, !tbaa !85
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 14
  %60 = load i32, ptr %59, align 4, !tbaa !281
  %61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %57, i32 noundef %60) #20
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull @.str.44) #19
  %62 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  call void @assemble_name(ptr noundef %62, ptr noundef nonnull %6) #19
  %63 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  %64 = call i32 @fputs(ptr noundef nonnull @.str.45, ptr noundef %63) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %65

65:                                               ; preds = %56, %41
  %66 = call ptr @eh_data_format_name(i32 noundef 1) #19
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef 1, ptr noundef nonnull @.str.46, ptr noundef %66) #19
  %67 = select i1 %48, ptr @.str.48, ptr @.str.47
  %68 = load ptr, ptr @cfun, align 8, !tbaa !85
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 14
  %70 = load i32, ptr %69, align 4, !tbaa !281
  %71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %67, i32 noundef %70) #20
  %72 = select i1 %48, ptr @.str.50, ptr @.str.49
  %73 = load ptr, ptr @cfun, align 8, !tbaa !85
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 14
  %75 = load i32, ptr %74, align 4, !tbaa !281
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %72, i32 noundef %75) #20
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull @.str.51) #19
  %77 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  call void @assemble_name(ptr noundef %77, ptr noundef nonnull %4) #19
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  %79 = call i32 @fputs(ptr noundef nonnull @.str.45, ptr noundef %78) #20
  call fastcc void @dw2_output_call_site_table(i32 noundef %1) #20
  %80 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  call void @assemble_name(ptr noundef %80, ptr noundef nonnull %5) #19
  %81 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  %82 = call i32 @fputs(ptr noundef nonnull @.str.45, ptr noundef %81) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #21
  %83 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %84 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %83, i32 noundef 0, ptr noundef nonnull %7) #20, !range !171
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %65, %86
  %87 = phi i32 [ %92, %86 ], [ 0, %65 ]
  %88 = load i8, ptr %7, align 1, !tbaa !88
  %89 = zext i8 %88 to i64
  %90 = icmp eq i32 %87, 0
  %91 = select i1 %90, ptr @.str.52, ptr null
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %89, ptr noundef %91) #19
  %92 = add nuw nsw i32 %87, 1
  %93 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %94 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %93, i32 noundef %92, ptr noundef nonnull %7) #20, !range !171
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !283

96:                                               ; preds = %86, %65
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #21
  br i1 %43, label %97, label %99

97:                                               ; preds = %96
  %98 = shl nsw i32 %44, 3
  call void @assemble_align(i32 noundef %98) #19
  br label %99

99:                                               ; preds = %97, %96
  %100 = load ptr, ptr @cfun, align 8, !tbaa !85
  %101 = load ptr, ptr %100, align 8, !tbaa !91
  %102 = getelementptr inbounds %struct.eh_status, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !170
  %104 = call fastcc i32 @VEC_tree_base_length(ptr noundef %103) #20
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99, %106
  %107 = phi i32 [ %108, %106 ], [ %104, %99 ]
  %108 = add nsw i32 %107, -1
  %109 = load ptr, ptr @cfun, align 8, !tbaa !85
  %110 = load ptr, ptr %109, align 8, !tbaa !91
  %111 = getelementptr inbounds %struct.eh_status, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !170
  %113 = call fastcc ptr @VEC_tree_base_index(ptr noundef %112, i32 noundef %108) #20
  call fastcc void @output_ttype(ptr noundef %113, i32 noundef %45, i32 noundef %44) #20
  %114 = icmp ugt i32 %107, 1
  br i1 %114, label %106, label %115, !llvm.loop !284

115:                                              ; preds = %106, %99
  br i1 %43, label %116, label %120

116:                                              ; preds = %115
  %117 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  call void @assemble_name(ptr noundef %117, ptr noundef nonnull %3) #19
  %118 = load ptr, ptr @asm_out_file, align 8, !tbaa !85
  %119 = call i32 @fputs(ptr noundef nonnull @.str.45, ptr noundef %118) #20
  br label %120

120:                                              ; preds = %116, %115
  %121 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !102
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %124 = load ptr, ptr @cfun, align 8, !tbaa !85
  %125 = load ptr, ptr %124, align 8, !tbaa !91
  %126 = getelementptr inbounds %struct.eh_status, ptr %125, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !88
  %128 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %127, i32 noundef 0, ptr noundef nonnull %8) #20, !range !171
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %123, %130
  %131 = phi i32 [ %133, %130 ], [ 0, %123 ]
  %132 = load ptr, ptr %8, align 8, !tbaa !85
  call fastcc void @output_ttype(ptr noundef %132, i32 noundef %45, i32 noundef %44) #20
  %133 = add nuw nsw i32 %131, 1
  %134 = load ptr, ptr @cfun, align 8, !tbaa !85
  %135 = load ptr, ptr %134, align 8, !tbaa !91
  %136 = getelementptr inbounds %struct.eh_status, ptr %135, i64 0, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !88
  %138 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %137, i32 noundef %133, ptr noundef nonnull %8) #20, !range !171
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %130, !llvm.loop !285

140:                                              ; preds = %130, %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %162

141:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #21
  %142 = load ptr, ptr @cfun, align 8, !tbaa !85
  %143 = load ptr, ptr %142, align 8, !tbaa !91
  %144 = getelementptr inbounds %struct.eh_status, ptr %143, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !88
  %146 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %145, i32 noundef 0, ptr noundef nonnull %9) #20, !range !171
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %141, %148
  %149 = phi i32 [ %154, %148 ], [ 0, %141 ]
  %150 = load i8, ptr %9, align 1, !tbaa !88
  %151 = zext i8 %150 to i64
  %152 = icmp eq i32 %149, 0
  %153 = select i1 %152, ptr @.str.53, ptr null
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %151, ptr noundef %153) #19
  %154 = add nuw nsw i32 %149, 1
  %155 = load ptr, ptr @cfun, align 8, !tbaa !85
  %156 = load ptr, ptr %155, align 8, !tbaa !91
  %157 = getelementptr inbounds %struct.eh_status, ptr %156, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !88
  %159 = call fastcc i32 @VEC_uchar_base_iterate(ptr noundef %158, i32 noundef %154, ptr noundef nonnull %9) #20, !range !171
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %148, !llvm.loop !286

161:                                              ; preds = %148, %141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #21
  br label %162

162:                                              ; preds = %161, %140
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @switch_to_section(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @current_function_section() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_eh_throw_stmt_table(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 !prof !144 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_throw_stmt_table(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.eh_status, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !287
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @function_needs_eh_personality(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !289 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !290

5:                                                ; preds = %1, %11
  %6 = phi ptr [ %13, %11 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !96
  switch i32 %9, label %11 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %15
    i32 3, label %15
  ]

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i32 [ %7, %5 ], [ 1, %10 ]
  %13 = tail call fastcc ptr @ehr_next(ptr noundef nonnull %6) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !prof !151, !llvm.loop !291

15:                                               ; preds = %5, %5, %5, %11, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %11 ], [ 2, %5 ], [ 2, %5 ], [ 2, %5 ]
  ret i32 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ehr_next(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !78 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %13
  %10 = phi ptr [ %11, %13 ], [ %0, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %17, !llvm.loop !293

17:                                               ; preds = %13, %9, %1, %5
  %18 = phi ptr [ %3, %1 ], [ %7, %5 ], [ %15, %13 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_eh_tree(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !78 {
  %3 = load ptr, ptr %1, align 8, !tbaa !91
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = icmp eq ptr %4, null
  br i1 %5, label %132, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %8

8:                                                ; preds = %115, %6
  %9 = phi i32 [ 0, %6 ], [ %116, %115 ]
  %10 = phi ptr [ %4, %6 ], [ %117, %115 ]
  %11 = shl nsw i32 %9, 1
  br label %12

12:                                               ; preds = %8, %118
  %13 = phi ptr [ %120, %118 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !96
  %18 = sext i32 %17 to i64
  %19 = shl i64 %18, 2
  %20 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_eh_tree, i64 %19)
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11, ptr noundef nonnull @.str.13, i32 noundef %15, ptr noundef %20) #20
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = icmp eq ptr %23, null
  br i1 %24, label %75, label %25

25:                                               ; preds = %12
  %26 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 6, i64 1, ptr %0)
  %27 = tail call i32 @current_ir_type() #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr inttoptr (i64 32 to ptr), align 32, !tbaa !135
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %30) #20
  %32 = load ptr, ptr inttoptr (i64 24 to ptr), align 8, !tbaa !210
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %51

34:                                               ; preds = %25
  %35 = load ptr, ptr %22, align 8, !tbaa !85
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %34, %47
  %38 = phi ptr [ %49, %47 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %38, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !135
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %40) #20
  %42 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !158
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %43, i32 noundef 0) #19
  %44 = tail call i32 @fputc(i32 noundef 125, ptr noundef %0) #20
  %45 = load ptr, ptr %38, align 8, !tbaa !85
  %46 = icmp eq ptr %45, null
  br i1 %46, label %75, label %47

47:                                               ; preds = %37
  %48 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0) #20
  %49 = load ptr, ptr %38, align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %37, !llvm.loop !294

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !88
  %54 = load i32, ptr %32, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 13
  %57 = select i1 %56, ptr @.str.17, ptr @.str.13
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %53, ptr noundef nonnull %57) #20
  br label %61

59:                                               ; preds = %29
  %60 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %0)
  br label %61

61:                                               ; preds = %59, %51
  %62 = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !158
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @label_rtx(ptr noundef nonnull %62) #19
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !88
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 13
  %71 = select i1 %70, ptr @.str.17, ptr @.str.13
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %67, ptr noundef nonnull %71) #20
  br label %75

73:                                               ; preds = %61
  %74 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 6, i64 1, ptr %0)
  br label %75

75:                                               ; preds = %37, %47, %34, %64, %73, %12
  %76 = load i32, ptr %16, align 4, !tbaa !96
  switch i32 %76, label %108 [
    i32 2, label %102
    i32 1, label %77
  ]

77:                                               ; preds = %75
  %78 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 7, i64 1, ptr %0)
  %79 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = icmp eq ptr %80, null
  br i1 %81, label %108, label %82

82:                                               ; preds = %77, %98
  %83 = phi ptr [ %100, %98 ], [ %80, %77 ]
  %84 = tail call i32 @fputc(i32 noundef 123, ptr noundef %0) #20
  %85 = getelementptr inbounds %struct.eh_catch_d, ptr %83, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !155
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 4, i64 1, ptr %0)
  %90 = load ptr, ptr %85, align 8, !tbaa !155
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %90, i32 noundef 0) #19
  %91 = tail call i32 @fputc(i32 noundef 59, ptr noundef %0) #20
  br label %92

92:                                               ; preds = %88, %82
  %93 = getelementptr inbounds %struct.eh_catch_d, ptr %83, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !118
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %94, i32 noundef 0) #19
  %95 = tail call i32 @fputc(i32 noundef 125, ptr noundef %0) #20
  %96 = load ptr, ptr %83, align 8, !tbaa !88
  %97 = icmp eq ptr %96, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0) #20
  %100 = load ptr, ptr %83, align 8, !tbaa !88
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %82, !llvm.loop !295

102:                                              ; preds = %75
  %103 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 5
  %104 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 5, i32 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !88
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %105) #20
  %107 = load ptr, ptr %103, align 8, !tbaa !88
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %107, i32 noundef 0) #19
  br label %108

108:                                              ; preds = %92, %98, %77, %75, %102
  %109 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #20
  %110 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !204
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = add nsw i32 %9, 1
  br label %115

115:                                              ; preds = %127, %113
  %116 = phi i32 [ %114, %113 ], [ %128, %127 ]
  %117 = phi ptr [ %111, %113 ], [ %130, %127 ]
  br label %8

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !206
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %12

122:                                              ; preds = %118, %127
  %123 = phi i32 [ %128, %127 ], [ %9, %118 ]
  %124 = phi ptr [ %125, %127 ], [ %13, %118 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !98
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = add nsw i32 %123, -1
  %129 = getelementptr inbounds %struct.eh_region_d, ptr %125, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !206
  %131 = icmp eq ptr %130, null
  br i1 %131, label %122, label %115, !llvm.loop !296

132:                                              ; preds = %122, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @label_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_eh_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_eh_tree(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_eh_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !78 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !91
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = icmp eq ptr %5, null
  br i1 %6, label %173, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %9, i32 noundef 1, ptr noundef nonnull %2) #20, !range !171
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %35, %7
  %13 = phi ptr [ %4, %7 ], [ %36, %35 ]
  %14 = phi i32 [ 0, %7 ], [ %37, %35 ]
  %15 = phi i8 [ 0, %7 ], [ %38, %35 ]
  %16 = getelementptr inbounds %struct.eh_status, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  %18 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %3) #20, !range !171
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %68, label %44

20:                                               ; preds = %7, %35
  %21 = phi ptr [ %36, %35 ], [ %4, %7 ]
  %22 = phi i8 [ %38, %35 ], [ 0, %7 ]
  %23 = phi i32 [ %39, %35 ], [ 1, %7 ]
  %24 = phi i32 [ %37, %35 ], [ 0, %7 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !85
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.eh_region_d, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !101
  %30 = icmp eq i32 %29, %23
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = add nsw i32 %24, 1
  br label %35

33:                                               ; preds = %27
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %29) #19
  %34 = load ptr, ptr %0, align 8, !tbaa !91
  br label %35

35:                                               ; preds = %20, %33, %31
  %36 = phi ptr [ %21, %31 ], [ %34, %33 ], [ %21, %20 ]
  %37 = phi i32 [ %32, %31 ], [ %24, %33 ], [ %24, %20 ]
  %38 = phi i8 [ %22, %31 ], [ 1, %33 ], [ %22, %20 ]
  %39 = add nuw nsw i32 %23, 1
  %40 = getelementptr inbounds %struct.eh_status, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = call fastcc i32 @VEC_eh_region_base_iterate(ptr noundef %41, i32 noundef %39, ptr noundef nonnull %2) #20, !range !171
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %12, label %20, !llvm.loop !297

44:                                               ; preds = %12, %59
  %45 = phi ptr [ %60, %59 ], [ %13, %12 ]
  %46 = phi i8 [ %62, %59 ], [ %15, %12 ]
  %47 = phi i32 [ %63, %59 ], [ 1, %12 ]
  %48 = phi i32 [ %61, %59 ], [ 0, %12 ]
  %49 = load ptr, ptr %3, align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %49, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !135
  %54 = icmp eq i32 %53, %47
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = add nsw i32 %48, 1
  br label %59

57:                                               ; preds = %51
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %53) #19
  %58 = load ptr, ptr %0, align 8, !tbaa !91
  br label %59

59:                                               ; preds = %44, %57, %55
  %60 = phi ptr [ %45, %55 ], [ %58, %57 ], [ %45, %44 ]
  %61 = phi i32 [ %56, %55 ], [ %48, %57 ], [ %48, %44 ]
  %62 = phi i8 [ %46, %55 ], [ 1, %57 ], [ %46, %44 ]
  %63 = add nuw nsw i32 %47, 1
  %64 = getelementptr inbounds %struct.eh_status, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !134
  %66 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %65, i32 noundef %63, ptr noundef nonnull %3) #20, !range !171
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %44, !llvm.loop !298

68:                                               ; preds = %59, %12
  %69 = phi i32 [ 0, %12 ], [ %61, %59 ]
  %70 = phi i8 [ %15, %12 ], [ %62, %59 ]
  %71 = phi ptr [ %13, %12 ], [ %60, %59 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !145
  store ptr %72, ptr %2, align 8, !tbaa !85
  br label %73

73:                                               ; preds = %153, %68
  %74 = phi ptr [ %71, %68 ], [ %157, %153 ]
  %75 = phi ptr [ %72, %68 ], [ %154, %153 ]
  %76 = phi ptr [ null, %68 ], [ %155, %153 ]
  %77 = phi i32 [ 0, %68 ], [ %130, %153 ]
  %78 = phi i32 [ 0, %68 ], [ %101, %153 ]
  %79 = phi i32 [ 0, %68 ], [ %156, %153 ]
  %80 = phi i8 [ %70, %68 ], [ %131, %153 ]
  %81 = getelementptr inbounds %struct.eh_status, ptr %74, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !99
  %83 = getelementptr inbounds %struct.eh_region_d, ptr %75, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !101
  %85 = tail call fastcc ptr @VEC_eh_region_base_index(ptr noundef %82, i32 noundef %84) #20
  %86 = icmp eq ptr %85, %75
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %84) #19
  br label %88

88:                                               ; preds = %87, %73
  %89 = phi i8 [ 1, %87 ], [ %80, %73 ]
  %90 = load ptr, ptr %75, align 8, !tbaa !98
  %91 = icmp eq ptr %90, %76
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %83, align 8, !tbaa !101
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %93) #19
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i8 [ 1, %92 ], [ %89, %88 ]
  %96 = icmp slt i32 %79, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, ptr %83, align 8, !tbaa !101
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %98) #19
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i8 [ 1, %97 ], [ %95, %94 ]
  %101 = add nuw nsw i32 %78, 1
  %102 = getelementptr inbounds %struct.eh_region_d, ptr %75, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = icmp eq ptr %103, null
  br i1 %104, label %129, label %105

105:                                              ; preds = %99, %124
  %106 = phi ptr [ %127, %124 ], [ %103, %99 ]
  %107 = phi i8 [ %125, %124 ], [ %100, %99 ]
  %108 = phi i32 [ %126, %124 ], [ %77, %99 ]
  %109 = load ptr, ptr %0, align 8, !tbaa !91
  %110 = getelementptr inbounds %struct.eh_status, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !134
  %112 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %106, i64 0, i32 4
  %113 = load i32, ptr %112, align 8, !tbaa !135
  %114 = tail call fastcc ptr @VEC_eh_landing_pad_base_index(ptr noundef %111, i32 noundef %113) #20
  %115 = icmp eq ptr %114, %106
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %113) #19
  br label %117

117:                                              ; preds = %116, %105
  %118 = phi i8 [ 1, %116 ], [ %107, %105 ]
  %119 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %106, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !133
  %121 = icmp eq ptr %120, %75
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %112, align 8, !tbaa !135
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, i32 noundef %123) #19
  br label %124

124:                                              ; preds = %122, %117
  %125 = phi i8 [ 1, %122 ], [ %118, %117 ]
  %126 = add nsw i32 %108, 1
  %127 = load ptr, ptr %106, align 8, !tbaa !85
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %105, !llvm.loop !299

129:                                              ; preds = %124, %99
  %130 = phi i32 [ %77, %99 ], [ %126, %124 ]
  %131 = phi i8 [ %100, %99 ], [ %125, %124 ]
  %132 = getelementptr inbounds %struct.eh_region_d, ptr %75, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !204
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %129
  %136 = add nsw i32 %79, 1
  br label %153

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.eh_region_d, ptr %75, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !206
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %137, %146
  %142 = phi ptr [ %144, %146 ], [ %75, %137 ]
  %143 = phi i32 [ %147, %146 ], [ %79, %137 ]
  %144 = load ptr, ptr %142, align 8, !tbaa !98
  %145 = icmp eq ptr %144, null
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = add nsw i32 %143, -1
  %148 = getelementptr inbounds %struct.eh_region_d, ptr %144, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !206
  %150 = icmp eq ptr %149, null
  br i1 %150, label %141, label %151, !llvm.loop !300

151:                                              ; preds = %146
  %152 = load ptr, ptr %144, align 8, !tbaa !98
  br label %153

153:                                              ; preds = %137, %151, %135
  %154 = phi ptr [ %133, %135 ], [ %149, %151 ], [ %139, %137 ]
  %155 = phi ptr [ %75, %135 ], [ %152, %151 ], [ %76, %137 ]
  %156 = phi i32 [ %136, %135 ], [ %147, %151 ], [ %79, %137 ]
  %157 = load ptr, ptr %0, align 8, !tbaa !91
  br label %73

158:                                              ; preds = %141
  %159 = icmp eq i32 %143, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %158
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %143) #19
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i8 [ 1, %160 ], [ %131, %158 ]
  %163 = icmp eq i32 %14, %101
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = icmp eq i32 %69, %130
  br i1 %165, label %169, label %168

166:                                              ; preds = %161
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.30) #19
  %167 = icmp eq i32 %69, %130
  br i1 %167, label %171, label %168

168:                                              ; preds = %166, %164
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.31) #19
  br label %171

169:                                              ; preds = %164
  %170 = icmp eq i8 %162, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166, %168, %169
  %172 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_eh_tree(ptr noundef %172, ptr noundef nonnull %0) #20
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32) #19
  br label %173

173:                                              ; preds = %169, %171, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_call_site_record_d(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !267
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7) #19
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_call_site_record_d(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18call_site_record_d, i32 noundef 127) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !267
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5) #19
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_18call_site_record_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !78 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #19
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_region_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !90 !PGOFuncName !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_eh_region_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !302

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_region_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !90 !PGOFuncName !303 {
  %3 = load i32, ptr %0, align 8, !tbaa !167
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !167
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_region_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !90 !PGOFuncName !304 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !302

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !305
  %6 = load i32, ptr %0, align 8, !tbaa !167
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_eh_landing_pad_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !90 !PGOFuncName !306 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_eh_landing_pad_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !302

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_eh_landing_pad_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !90 !PGOFuncName !307 {
  %3 = load i32, ptr %0, align 8, !tbaa !137
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !137
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_eh_landing_pad_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !90 !PGOFuncName !308 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !302

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !309
  %6 = load i32, ptr %0, align 8, !tbaa !137
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @type_list_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !310 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !311
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !313 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !314 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !78 !PGOFuncName !315 {
  %3 = load i32, ptr %0, align 8, !tbaa !311
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !311
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !316 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !317
  %6 = load i32, ptr %0, align 8, !tbaa !311
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_uchar_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !318 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !319
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_uleb128(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !321 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %1, %2 ], [ %7, %3 ]
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 127
  %7 = lshr i32 %4, 7
  %8 = icmp ult i32 %4, 128
  %9 = select i1 %8, i8 0, i8 -128
  %10 = or disjoint i8 %6, %9
  tail call fastcc void @VEC_uchar_gc_safe_push(ptr noundef %0, i8 noundef zeroext %10) #20
  br i1 %8, label %11, label %3, !llvm.loop !322

11:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_uchar_gc_safe_push(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !78 !PGOFuncName !323 {
  tail call fastcc void @VEC_uchar_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_uchar_base_quick_push(ptr noundef %3, i8 noundef zeroext %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_uchar_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !324 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_uchar_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_uchar_base_quick_push(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #8 !prof !78 !PGOFuncName !325 {
  %3 = load i32, ptr %0, align 4, !tbaa !319
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !319
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 2, i64 %5
  store i8 %1, ptr %6, align 1, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_uchar_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !326 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !327
  %6 = load i32, ptr %0, align 4, !tbaa !319
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_eh_generation() unnamed_addr #0 !prof !78 !PGOFuncName !328 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  tail call fastcc void @dw2_build_landing_pads() #20
  tail call void @break_superblocks() #19
  %3 = load ptr, ptr @cfun, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = load ptr, ptr %5, align 8, !tbaa !330
  %7 = tail call fastcc ptr @single_succ_edge(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  tail call void @commit_edge_insertions() #19
  br label %12

12:                                               ; preds = %11, %0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !329
  %16 = load ptr, ptr %15, align 8, !tbaa !330
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !332
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !333
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %88, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds i8, ptr %1, i64 8
  br label %24

24:                                               ; preds = %22, %79
  %25 = phi ptr [ %18, %22 ], [ %81, %79 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !334
  %30 = tail call ptr @get_eh_landing_pad_from_rtx(ptr noundef %29) #20
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %32 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %31) #20
  store i32 0, ptr %1, align 8, !tbaa.struct !272
  store ptr %32, ptr %23, align 8, !tbaa.struct !273
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %32, ptr noundef nonnull %2) #20, !range !223
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %24, %41
  %36 = load ptr, ptr %2, align 8, !tbaa !85
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !274
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  call fastcc void @ei_next(ptr noundef nonnull %1) #20
  %42 = load i32, ptr %1, align 8
  %43 = load ptr, ptr %23, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %2) #20, !range !223
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %35, !llvm.loop !336

46:                                               ; preds = %41, %35, %24
  %47 = icmp ne ptr %30, null
  %48 = load ptr, ptr %2, align 8, !tbaa !85
  %49 = icmp eq ptr %48, null
  %50 = xor i1 %47, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1441, ptr noundef nonnull @.str.2) #19
  br label %52

52:                                               ; preds = %46, %51
  br i1 %47, label %53, label %79

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !337
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = load ptr, ptr %57, align 8, !tbaa !338
  %59 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %30, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !158
  %61 = tail call ptr @label_rtx(ptr noundef %60) #19
  %62 = icmp eq ptr %58, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1444, ptr noundef nonnull @.str.2) #19
  br label %64

64:                                               ; preds = %53, %63
  %65 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %30, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !210
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  tail call void @redirect_edge_succ(ptr noundef nonnull %48, ptr noundef %68) #19
  %69 = load ptr, ptr %26, align 8, !tbaa !88
  %70 = getelementptr inbounds %struct.rtl_bb_info, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !334
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 10
  %75 = select i1 %74, i32 6, i32 2
  %76 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !274
  %78 = or i32 %75, %77
  store i32 %78, ptr %76, align 8, !tbaa !274
  br label %79

79:                                               ; preds = %64, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !332
  %82 = load ptr, ptr @cfun, align 8, !tbaa !85
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !329
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !333
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %88, label %24, !llvm.loop !339

88:                                               ; preds = %79, %12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dw2_build_landing_pads() unnamed_addr #0 !prof !78 !PGOFuncName !340 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  %2 = load ptr, ptr @cfun, align 8, !tbaa !85
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %1) #20, !range !171
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %0, %55
  %9 = phi ptr [ %56, %55 ], [ %2, %0 ]
  %10 = phi i32 [ %57, %55 ], [ 1, %0 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !158
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  tail call void @start_sequence() #19
  %18 = tail call ptr @gen_label_rtx() #19
  %19 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %11, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !210
  %20 = tail call ptr @emit_label(ptr noundef %18) #19
  %21 = load ptr, ptr %19, align 8, !tbaa !210
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 268435456
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %11, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !250
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load i32, ptr @ptr_mode, align 4, !tbaa !79
  %31 = tail call ptr @gen_rtx_REG(i32 noundef %30, i32 noundef 0) #19
  %32 = tail call ptr @emit_move_insn(ptr noundef nonnull %27, ptr noundef %31) #19
  br label %33

33:                                               ; preds = %29, %17
  %34 = getelementptr inbounds %struct.eh_region_d, ptr %25, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !252
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !253
  %39 = tail call i32 %38() #19
  %40 = tail call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef 1) #19
  %41 = tail call ptr @emit_move_insn(ptr noundef nonnull %35, ptr noundef %40) #19
  br label %42

42:                                               ; preds = %37, %33
  %43 = tail call ptr @get_insns() #19
  tail call void @end_sequence() #19
  %44 = load ptr, ptr %14, align 8, !tbaa !158
  %45 = tail call ptr @label_rtx(ptr noundef %44) #19
  %46 = tail call fastcc ptr @emit_to_new_bb_before(ptr noundef %43, ptr noundef %45) #20
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !332
  %49 = tail call ptr @make_edge(ptr noundef %46, ptr noundef %48, i32 noundef 1) #19
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !341
  %52 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 9
  store i64 %51, ptr %52, align 8, !tbaa !342
  %53 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 8
  store i32 10000, ptr %53, align 4, !tbaa !343
  %54 = load ptr, ptr @cfun, align 8, !tbaa !85
  br label %55

55:                                               ; preds = %8, %13, %42
  %56 = phi ptr [ %9, %8 ], [ %9, %13 ], [ %54, %42 ]
  %57 = add nuw nsw i32 %10, 1
  %58 = load ptr, ptr %56, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.eh_status, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !134
  %61 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %60, i32 noundef %57, ptr noundef nonnull %1) #20, !range !171
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %8, !llvm.loop !344

63:                                               ; preds = %55, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @break_superblocks() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !78 !PGOFuncName !345 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !223
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.2) #19
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !346
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #14 !prof !78 !PGOFuncName !347 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !78 !PGOFuncName !348 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !223
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !85
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !349 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.2) #19
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !350
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !350
  ret void
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @emit_to_new_bb_before(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !352 {
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef %5) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !272
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !273
  %8 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %6) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2, %23
  %11 = phi ptr [ %24, %23 ], [ %6, %2 ]
  %12 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %13 = phi ptr [ %26, %23 ], [ %8, %2 ]
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !274
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @force_nonfallthru(ptr noundef nonnull %13) #19
  br label %23

20:                                               ; preds = %10
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %21 = load i32, ptr %3, align 8
  %22 = load ptr, ptr %7, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %22, %20 ], [ %11, %18 ]
  %25 = phi i32 [ %21, %20 ], [ %12, %18 ]
  %26 = tail call fastcc ptr @ei_safe_edge(i32 %25, ptr %24) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !353

28:                                               ; preds = %23, %2
  %29 = tail call ptr @emit_insn_before(ptr noundef %0, ptr noundef %1) #19
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 11
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %35, %33 ], [ %29, %28 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !88
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !354
  %41 = tail call ptr @create_basic_block(ptr noundef %0, ptr noundef %37, ptr noundef %40) #19
  tail call void @update_bb_for_insn(ptr noundef %41) #19
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !270
  %44 = or i32 %43, 8
  store i32 %44, ptr %42, align 8, !tbaa !270
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret ptr %41
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !78 !PGOFuncName !355 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !223
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !78 !PGOFuncName !356 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !78 !PGOFuncName !357 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !358 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !359
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !78 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.2) #19
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !362 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !78 !PGOFuncName !363 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !346
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_set_nothrow_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @action_record_hash(ptr nocapture noundef readonly %0) #2 !prof !78 !PGOFuncName !364 {
  %2 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !365
  %4 = mul nsw i32 %3, 1009
  %5 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !367
  %7 = add nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @action_record_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !prof !78 !PGOFuncName !368 {
  %3 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !367
  %5 = getelementptr inbounds %struct.action_record, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !367
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !365
  %11 = getelementptr inbounds %struct.action_record, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !365
  %13 = icmp eq i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !78 !PGOFuncName !369 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !96
  switch i32 %6, label %85 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %72
    i32 3, label %86
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 8, !tbaa !98
  %9 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %8) #20
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %86, label %11

11:                                               ; preds = %7, %15
  %12 = phi ptr [ %13, %15 ], [ %1, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !96
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %86, label %11, !llvm.loop !370

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef %9) #20
  br label %86

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %21, %67
  %26 = phi ptr [ %70, %67 ], [ %23, %21 ]
  %27 = phi i32 [ %68, %67 ], [ -3, %21 ]
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !154
  %34 = getelementptr inbounds %struct.tree_list, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !88
  %38 = trunc i64 %37 to i32
  %39 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %38, i32 noundef 0) #20
  br label %67

40:                                               ; preds = %25
  %41 = icmp eq i32 %27, -3
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = load ptr, ptr %1, align 8, !tbaa !98
  %44 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %43) #20
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = icmp slt i32 %44, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef 0) #20
  br label %50

50:                                               ; preds = %42, %48, %46, %40
  %51 = phi i32 [ %49, %48 ], [ %44, %46 ], [ %27, %40 ], [ 0, %42 ]
  %52 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %50, %55
  %56 = phi ptr [ %65, %55 ], [ %53, %50 ]
  %57 = phi i32 [ %63, %55 ], [ %51, %50 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %56, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !88
  %62 = trunc i64 %61 to i32
  %63 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %62, i32 noundef %57) #20
  %64 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %55, !llvm.loop !371

67:                                               ; preds = %55, %50, %31
  %68 = phi i32 [ %39, %31 ], [ %51, %50 ], [ %63, %55 ]
  %69 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !88
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %25, !llvm.loop !372

72:                                               ; preds = %4
  %73 = load ptr, ptr %1, align 8, !tbaa !98
  %74 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %73) #20
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = icmp slt i32 %74, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef 0) #20
  br label %80

80:                                               ; preds = %72, %76, %78
  %81 = phi i32 [ %79, %78 ], [ %74, %76 ], [ 0, %72 ]
  %82 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !88
  %84 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %83, i32 noundef %81) #20
  br label %86

85:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2365, ptr noundef nonnull @.str.2) #19
  br label %86

86:                                               ; preds = %67, %15, %21, %4, %19, %7, %2, %85, %80
  %87 = phi i32 [ 0, %85 ], [ %84, %80 ], [ -1, %2 ], [ %20, %19 ], [ 0, %7 ], [ -2, %4 ], [ -3, %21 ], [ %9, %15 ], [ %68, %67 ]
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_call_site(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !78 !PGOFuncName !373 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #19
  store ptr %0, ptr %4, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.call_site_record_d, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !374
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %6
  tail call fastcc void @VEC_call_site_record_gc_safe_push(ptr noundef nonnull %7, ptr noundef nonnull %4) #20
  %8 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %9 = load ptr, ptr %7, align 8, !tbaa !85
  %10 = tail call fastcc i32 @VEC_call_site_record_base_length(ptr noundef %9) #20
  %11 = add i32 %8, -1
  %12 = add i32 %11, %10
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_call_site_record_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !375 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !376
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_call_site_record_gc_alloc() unnamed_addr #0 !prof !78 !PGOFuncName !378 {
  %1 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 10) #19
  ret ptr %1
}

; Function Attrs: optsize
declare i32 @max_label_num() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @get_first_label_num() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_call_site_record_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !379 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_label_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !78 !PGOFuncName !380 {
  %4 = alloca %struct.action_record, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.action_record, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !367
  %6 = getelementptr inbounds %struct.action_record, ptr %4, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !365
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #19
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = call ptr @xmalloc(i64 noundef 12) #19
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %13 = call fastcc i32 @VEC_uchar_base_length(ptr noundef %12) #20
  %14 = add i32 %13, 1
  store i32 %14, ptr %11, align 4, !tbaa !381
  %15 = getelementptr inbounds %struct.action_record, ptr %11, i64 0, i32 1
  store i32 %1, ptr %15, align 4, !tbaa !367
  %16 = getelementptr inbounds %struct.action_record, ptr %11, i64 0, i32 2
  store i32 %2, ptr %16, align 4, !tbaa !365
  store ptr %11, ptr %7, align 8, !tbaa !85
  call fastcc void @push_sleb128(i32 noundef %1) #20
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %20 = call fastcc i32 @VEC_uchar_base_length(ptr noundef %19) #20
  %21 = xor i32 %20, -1
  %22 = add i32 %21, %2
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i32 [ %22, %18 ], [ 0, %10 ]
  call fastcc void @push_sleb128(i32 noundef %24) #20
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi ptr [ %11, %23 ], [ %8, %3 ]
  %27 = load i32, ptr %26, align 4, !tbaa !381
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_sleb128(i32 noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !382 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ %0, %1 ], [ %8, %7 ]
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 127
  %6 = icmp ult i32 %3, 64
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = ashr i32 %3, 7
  %9 = icmp eq i32 %8, -1
  %10 = and i32 %3, 64
  %11 = icmp ne i32 %10, 0
  %12 = and i1 %9, %11
  %13 = select i1 %12, i8 0, i8 -128
  %14 = or disjoint i8 %13, %5
  tail call fastcc void @VEC_uchar_gc_safe_push(ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), i8 noundef zeroext %14) #20
  br i1 %12, label %16, label %2, !llvm.loop !383

15:                                               ; preds = %2
  tail call fastcc void @VEC_uchar_gc_safe_push(ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), i8 noundef zeroext %5) #20
  br label %16

16:                                               ; preds = %7, %15
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_call_site_record_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !78 !PGOFuncName !384 {
  tail call fastcc void @VEC_call_site_record_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_call_site_record_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_call_site_record_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !385 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_call_site_record_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #19
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_call_site_record_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !78 !PGOFuncName !386 {
  %3 = load i32, ptr %0, align 8, !tbaa !376
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !376
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_call_site_record_base_space(ptr noundef readonly %0) unnamed_addr #2 !prof !78 !PGOFuncName !387 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !388
  %6 = load i32, ptr %0, align 8, !tbaa !376
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @switch_to_exception_section(ptr noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !389 {
  %2 = load ptr, ptr @exception_section, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !390
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @asm_preferred_eh_data_format(i32 noundef 0, i32 noundef 1) #19
  %9 = load i32, ptr @flag_pic, align 4, !tbaa !79
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = and i32 %8, 112
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne i32 %12, 80
  %15 = and i1 %13, %14
  %16 = select i1 %15, i32 0, i32 512
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ 0, %7 ], [ %16, %11 ]
  %19 = load i32, ptr @flag_function_sections, align 4, !tbaa !79
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %23 = add i64 %22, 32
  %24 = tail call ptr @xmalloc(i64 noundef %23) #19
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %0) #20
  %26 = tail call ptr @get_section(ptr noundef %24, i32 noundef %18, ptr noundef null) #19
  tail call void @free(ptr noundef %24) #20
  br label %35

27:                                               ; preds = %17
  %28 = tail call ptr @get_section(ptr noundef nonnull @.str.55, i32 noundef %18, ptr noundef null) #19
  store ptr %28, ptr @exception_section, align 8, !tbaa !85
  br label %35

29:                                               ; preds = %4
  %30 = load i32, ptr @flag_pic, align 4, !tbaa !79
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr @data_section, align 8
  %33 = load ptr, ptr @readonly_data_section, align 8
  %34 = select i1 %31, ptr %33, ptr %32
  store ptr %34, ptr @exception_section, align 8, !tbaa !85
  br label %35

35:                                               ; preds = %21, %27, %1, %29
  %36 = phi ptr [ %34, %29 ], [ %2, %1 ], [ %26, %21 ], [ %28, %27 ]
  tail call void @switch_to_section(ptr noundef %36) #19
  ret void
}

; Function Attrs: optsize
declare i32 @asm_preferred_eh_data_format(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @size_of_encoded_value(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_align(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dw2_asm_output_data(i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @eh_data_format_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dw2_asm_output_delta_uleb128(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dw2_output_call_site_table(i32 noundef %0) unnamed_addr #0 !prof !78 !PGOFuncName !391 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = tail call fastcc i32 @VEC_call_site_record_base_length(ptr noundef %7) #20
  %9 = icmp eq i32 %0, 0
  %10 = load i8, ptr @first_function_block_is_cold, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4)
  %13 = select i1 %9, ptr @current_function_func_begin_label, ptr %12
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %1, %37
  %17 = phi i32 [ %41, %37 ], [ 0, %1 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !85
  %19 = call fastcc ptr @VEC_call_site_record_base_index(ptr noundef %18, i32 noundef %17) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %20 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %21 = add nsw i32 %20, %17
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.56, i32 noundef %21) #20
  %23 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %24 = add nsw i32 %23, %17
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.57, i32 noundef %24) #20
  %26 = load ptr, ptr %19, align 8, !tbaa !267
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !88
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.58, i32 noundef %30) #20
  br label %32

32:                                               ; preds = %16, %28
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %2, ptr noundef %14, ptr noundef nonnull @.str.59, i32 noundef %17) #19
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull @.str.60) #19
  %33 = load ptr, ptr %19, align 8, !tbaa !267
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %4, ptr noundef %14, ptr noundef nonnull @.str.61) #19
  br label %37

36:                                               ; preds = %32
  call void (i64, ptr, ...) @dw2_asm_output_data_uleb128(i64 noundef 0, ptr noundef nonnull @.str.61) #19
  br label %37

37:                                               ; preds = %35, %36
  %38 = getelementptr inbounds %struct.call_site_record_d, ptr %19, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !374
  %40 = sext i32 %39 to i64
  call void (i64, ptr, ...) @dw2_asm_output_data_uleb128(i64 noundef %40, ptr noundef nonnull @.str.62) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  %41 = add nuw nsw i32 %17, 1
  %42 = icmp eq i32 %41, %8
  br i1 %42, label %43, label %16, !llvm.loop !392

43:                                               ; preds = %37, %1
  %44 = load i32, ptr @call_site_base, align 4, !tbaa !79
  %45 = add nsw i32 %44, %8
  store i32 %45, ptr @call_site_base, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_uchar_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !78 !PGOFuncName !393 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !319
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_uchar_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !88
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i8 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i8 %13, ptr %2, align 1, !tbaa !88
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !78 !PGOFuncName !394 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_ttype(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !78 !PGOFuncName !395 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !85
  br label %38

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !79
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call ptr @lookup_type_for_runtime(ptr noundef nonnull %0) #20
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %0, %7 ]
  %17 = tail call fastcc ptr @expand_expr(ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef 4) #20
  %18 = tail call ptr @tree_strip_nop_conversions(ptr noundef %16) #19
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %37 [
    i16 121, label %21
    i16 23, label %38
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = tail call ptr @varpool_node(ptr noundef nonnull %23) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %28) #19
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i64, ptr %23, align 8
  %33 = trunc i64 %32 to i32
  %34 = lshr i32 %33, 27
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  br label %38

37:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2927, ptr noundef nonnull @.str.2) #19
  br label %38

38:                                               ; preds = %31, %21, %37, %15, %5
  %39 = phi ptr [ %6, %5 ], [ %17, %15 ], [ %17, %37 ], [ %17, %21 ], [ %17, %31 ]
  %40 = phi i8 [ 1, %5 ], [ 1, %15 ], [ 1, %37 ], [ 1, %21 ], [ %36, %31 ]
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 12), align 8, !tbaa !396
  %42 = tail call zeroext i8 %41(ptr noundef %39) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  switch i32 %1, label %48 [
    i32 80, label %45
    i32 0, label %45
  ]

45:                                               ; preds = %44, %44
  %46 = shl nsw i32 %2, 3
  %47 = tail call zeroext i8 @assemble_integer(ptr noundef %39, i32 noundef %2, i32 noundef %46, i32 noundef 1) #19
  br label %49

48:                                               ; preds = %44
  tail call void (i32, ptr, i8, ptr, ...) @dw2_asm_output_encoded_addr_rtx(i32 noundef %1, ptr noundef %39, i8 noundef zeroext %40, ptr noundef null) #19
  br label %49

49:                                               ; preds = %45, %48, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !78 !PGOFuncName !397 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !311
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !85
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @get_section(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dw2_asm_output_data_uleb128(i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @assemble_integer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dw2_asm_output_encoded_addr_rtx(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!77}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!35 = !{ptr @init_eh_for_function, ptr @ggc_alloc_cleared_stat, i64 659}
!36 = !{ptr @init_eh_for_function, ptr @VEC_eh_region_gc_safe_push, i64 659}
!37 = !{ptr @init_eh_for_function, ptr @VEC_eh_landing_pad_gc_safe_push, i64 659}
!38 = !{ptr @VEC_eh_region_gc_safe_push, ptr @VEC_eh_region_gc_reserve, i64 659}
!39 = !{ptr @VEC_eh_region_gc_safe_push, ptr @VEC_eh_region_base_quick_push, i64 659}
!40 = !{ptr @VEC_eh_landing_pad_gc_safe_push, ptr @VEC_eh_landing_pad_gc_reserve, i64 659}
!41 = !{ptr @VEC_eh_landing_pad_gc_safe_push, ptr @VEC_eh_landing_pad_base_quick_push, i64 659}
!42 = !{ptr @get_eh_region_from_lp_number_fn, ptr @VEC_eh_region_base_index, i64 1}
!43 = !{ptr @get_eh_region_from_lp_number_fn, ptr @VEC_eh_landing_pad_base_index, i64 1}
!44 = !{ptr @get_eh_region_from_lp_number, ptr @get_eh_region_from_lp_number_fn, i64 49}
!45 = !{ptr @duplicate_eh_regions, ptr @pointer_map_create, i64 49}
!46 = !{ptr @duplicate_eh_regions, ptr @get_eh_region_from_lp_number, i64 49}
!47 = !{ptr @duplicate_eh_regions, ptr @duplicate_eh_regions_1, i64 2}
!48 = !{ptr @for_each_eh_label, ptr @VEC_eh_landing_pad_base_iterate, i64 47}
!49 = !{ptr @make_reg_eh_region_note, ptr @gen_rtx_CONST_INT, i64 1}
!50 = !{ptr @make_reg_eh_region_note, ptr @add_reg_note, i64 52571}
!51 = !{ptr @insn_could_throw_p, ptr @may_trap_p, i64 1}
!52 = !{ptr @get_eh_landing_pad_from_rtx, ptr @get_eh_region_and_lp_from_rtx, i64 1739148}
!53 = !{ptr @get_eh_region_and_lp_from_rtx, ptr @find_reg_note, i64 5326467}
!54 = !{ptr @get_eh_region_and_lp_from_rtx, ptr @insn_could_throw_p, i64 4572682}
!55 = !{ptr @can_throw_internal, ptr @get_eh_landing_pad_from_rtx, i64 1739085}
!56 = !{ptr @insn_nothrow_p, ptr @insn_nothrow_p, i64 10}
!57 = !{ptr @insn_nothrow_p, ptr @get_eh_region_and_lp_from_rtx, i64 3587319}
!58 = !{ptr @set_nothrow_function_flags, ptr @can_throw_external, i64 10}
!59 = !{ptr @expand_eh_return, ptr @gen_rtx_REG, i64 2}
!60 = !{ptr @expand_eh_return, ptr @emit_move_insn, i64 2}
!61 = !{ptr @expand_eh_return, ptr @gen_label_rtx, i64 1}
!62 = !{ptr @expand_eh_return, ptr @emit_jump, i64 1}
!63 = !{ptr @expand_eh_return, ptr @emit_label, i64 2}
!64 = !{ptr @expand_eh_return, ptr @clobber_return_register, i64 1}
!65 = !{ptr @expand_eh_return, ptr @gen_eh_return, i64 1}
!66 = !{ptr @expand_eh_return, ptr @emit_insn, i64 1}
!67 = !{ptr @output_function_exception_table, ptr @get_personality_function, i64 38}
!68 = !{ptr @output_function_exception_table, ptr @assemble_external_libcall, i64 1}
!69 = !{ptr @output_function_exception_table, ptr @output_one_function_exception_table, i64 2}
!70 = !{ptr @output_function_exception_table, ptr @current_function_section, i64 1}
!71 = !{ptr @output_function_exception_table, ptr @switch_to_section, i64 1}
!72 = !{ptr @function_needs_eh_personality, ptr @ehr_next, i64 1}
!73 = !{ptr @VEC_eh_region_gc_reserve, ptr @VEC_eh_region_base_space, i64 659}
!74 = !{ptr @VEC_eh_region_gc_reserve, ptr @vec_gc_p_reserve, i64 658}
!75 = !{ptr @VEC_eh_landing_pad_gc_reserve, ptr @VEC_eh_landing_pad_base_space, i64 659}
!76 = !{ptr @VEC_eh_landing_pad_gc_reserve, ptr @vec_gc_p_reserve, i64 658}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"int", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !{!"function_entry_count", i64 1}
!84 = !{!"branch_weights", i32 2, i32 1}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !81, i64 0}
!87 = !{!"except.c:t2r_hash"}
!88 = !{!81, !81, i64 0}
!89 = !{!"except.c:t2r_eq"}
!90 = !{!"function_entry_count", i64 659}
!91 = !{!92, !86, i64 0}
!92 = !{!"function", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !80, i64 104, !80, i64 108, !80, i64 112, !80, i64 116, !80, i64 120, !80, i64 124, !86, i64 128, !80, i64 136, !80, i64 137, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 138, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139, !80, i64 139}
!93 = !{!"except.c:VEC_eh_region_gc_safe_push"}
!94 = !{!"except.c:VEC_eh_landing_pad_gc_safe_push"}
!95 = !{!"except.c:gen_eh_region"}
!96 = !{!97, !80, i64 28}
!97 = !{!"eh_region_d", !86, i64 0, !86, i64 8, !86, i64 16, !80, i64 24, !80, i64 28, !81, i64 32, !86, i64 56, !86, i64 64, !86, i64 72, !81, i64 80}
!98 = !{!97, !86, i64 0}
!99 = !{!100, !86, i64 8}
!100 = !{!"eh_status", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !81, i64 40}
!101 = !{!97, !80, i64 24}
!102 = !{!103, !81, i64 2035}
!103 = !{!"gcc_target", !104, i64 0, !106, i64 368, !107, i64 664, !80, i64 744, !86, i64 752, !86, i64 760, !86, i64 768, !86, i64 776, !86, i64 784, !86, i64 792, !86, i64 800, !86, i64 808, !86, i64 816, !86, i64 824, !86, i64 832, !86, i64 840, !86, i64 848, !86, i64 856, !86, i64 864, !86, i64 872, !86, i64 880, !86, i64 888, !86, i64 896, !86, i64 904, !86, i64 912, !86, i64 920, !86, i64 928, !86, i64 936, !86, i64 944, !86, i64 952, !86, i64 960, !86, i64 968, !86, i64 976, !86, i64 984, !86, i64 992, !86, i64 1000, !86, i64 1008, !86, i64 1016, !86, i64 1024, !86, i64 1032, !86, i64 1040, !86, i64 1048, !86, i64 1056, !108, i64 1064, !108, i64 1072, !86, i64 1080, !86, i64 1088, !86, i64 1096, !86, i64 1104, !86, i64 1112, !86, i64 1120, !86, i64 1128, !86, i64 1136, !86, i64 1144, !86, i64 1152, !86, i64 1160, !86, i64 1168, !109, i64 1176, !86, i64 1232, !86, i64 1240, !86, i64 1248, !86, i64 1256, !86, i64 1264, !86, i64 1272, !86, i64 1280, !86, i64 1288, !86, i64 1296, !86, i64 1304, !86, i64 1312, !86, i64 1320, !86, i64 1328, !86, i64 1336, !86, i64 1344, !86, i64 1352, !86, i64 1360, !86, i64 1368, !86, i64 1376, !86, i64 1384, !86, i64 1392, !86, i64 1400, !86, i64 1408, !86, i64 1416, !86, i64 1424, !86, i64 1432, !86, i64 1440, !86, i64 1448, !86, i64 1456, !108, i64 1464, !110, i64 1472, !86, i64 1664, !86, i64 1672, !86, i64 1680, !86, i64 1688, !86, i64 1696, !86, i64 1704, !86, i64 1712, !86, i64 1720, !86, i64 1728, !86, i64 1736, !86, i64 1744, !86, i64 1752, !86, i64 1760, !86, i64 1768, !86, i64 1776, !111, i64 1784, !112, i64 1792, !113, i64 1896, !114, i64 1968, !86, i64 2016, !81, i64 2024, !81, i64 2025, !81, i64 2026, !81, i64 2027, !81, i64 2028, !81, i64 2029, !81, i64 2030, !81, i64 2031, !81, i64 2032, !81, i64 2033, !81, i64 2034, !81, i64 2035}
!104 = !{!"asm_out", !86, i64 0, !86, i64 8, !86, i64 16, !105, i64 24, !105, i64 56, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !86, i64 184, !86, i64 192, !86, i64 200, !86, i64 208, !86, i64 216, !86, i64 224, !86, i64 232, !86, i64 240, !86, i64 248, !86, i64 256, !86, i64 264, !86, i64 272, !86, i64 280, !86, i64 288, !86, i64 296, !86, i64 304, !86, i64 312, !86, i64 320, !86, i64 328, !86, i64 336, !86, i64 344, !86, i64 352, !86, i64 360}
!105 = !{!"asm_int_op", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!106 = !{!"sched", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !86, i64 184, !86, i64 192, !86, i64 200, !86, i64 208, !86, i64 216, !86, i64 224, !86, i64 232, !86, i64 240, !86, i64 248, !86, i64 256, !86, i64 264, !86, i64 272, !86, i64 280, !86, i64 288}
!107 = !{!"vectorize", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72}
!108 = !{!"long", !81, i64 0}
!109 = !{!"addr_space", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48}
!110 = !{!"calls", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !86, i64 184}
!111 = !{!"c", !86, i64 0}
!112 = !{!"cxx", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96}
!113 = !{!"emutls", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !81, i64 64, !81, i64 65}
!114 = !{!"target_option_hooks", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40}
!115 = !{!97, !81, i64 80}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!119, !86, i64 16}
!119 = !{!"eh_catch_d", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32}
!120 = !{!119, !86, i64 8}
!121 = !{!122, !86, i64 664}
!122 = !{!"lang_hooks", !86, i64 0, !108, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !86, i64 184, !86, i64 192, !86, i64 200, !86, i64 208, !86, i64 216, !86, i64 224, !86, i64 232, !123, i64 240, !124, i64 248, !125, i64 256, !126, i64 272, !127, i64 432, !128, i64 560, !86, i64 584, !86, i64 592, !86, i64 600, !86, i64 608, !86, i64 616, !86, i64 624, !86, i64 632, !86, i64 640, !86, i64 648, !86, i64 656, !86, i64 664, !81, i64 672}
!123 = !{!"lang_hooks_for_tree_inlining", !86, i64 0}
!124 = !{!"lang_hooks_for_callgraph", !86, i64 0}
!125 = !{!"lang_hooks_for_tree_dump", !86, i64 0, !86, i64 8}
!126 = !{!"lang_hooks_for_decls", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152}
!127 = !{!"lang_hooks_for_types", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !81, i64 120}
!128 = !{!"lang_hooks_for_lto", !86, i64 0, !86, i64 8, !86, i64 16}
!129 = distinct !{!129, !117}
!130 = !{!97, !86, i64 56}
!131 = !{!132, !86, i64 0}
!132 = !{!"eh_landing_pad_d", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !80, i64 32}
!133 = !{!132, !86, i64 8}
!134 = !{!100, !86, i64 16}
!135 = !{!132, !80, i64 32}
!136 = !{!"except.c:VEC_eh_landing_pad_base_length"}
!137 = !{!138, !80, i64 0}
!138 = !{!"VEC_eh_landing_pad_base", !80, i64 0, !80, i64 4, !81, i64 8}
!139 = !{!"except.c:VEC_eh_region_base_index"}
!140 = !{!"except.c:VEC_eh_landing_pad_base_index"}
!141 = !{!"function_entry_count", i64 49}
!142 = !{!"branch_weights", i32 1, i32 50}
!143 = !{!"branch_weights", i32 50, i32 1}
!144 = !{!"function_entry_count", i64 38}
!145 = !{!100, !86, i64 0}
!146 = !{!147, !86, i64 0}
!147 = !{!"duplicate_eh_regions_data", !86, i64 0, !86, i64 8, !86, i64 16}
!148 = !{!147, !86, i64 8}
!149 = !{!147, !86, i64 16}
!150 = !{!"branch_weights", i32 49, i32 1}
!151 = !{!"branch_weights", i32 1, i32 0}
!152 = distinct !{!152, !117}
!153 = !{!"except.c:duplicate_eh_regions_1"}
!154 = !{!119, !86, i64 24}
!155 = !{!119, !86, i64 32}
!156 = distinct !{!156, !117}
!157 = !{i64 0, i64 8, !85, i64 8, i64 4, !79}
!158 = !{!132, !86, i64 16}
!159 = distinct !{!159, !117}
!160 = distinct !{!160, !117}
!161 = distinct !{!161, !117}
!162 = !{!108, !108, i64 0}
!163 = distinct !{!163, !117}
!164 = !{!165, !86, i64 0}
!165 = !{!"simple_bitmap_def", !86, i64 0, !80, i64 8, !80, i64 12, !81, i64 16}
!166 = !{!"except.c:VEC_eh_region_base_length"}
!167 = !{!168, !80, i64 0}
!168 = !{!"VEC_eh_region_base", !80, i64 0, !80, i64 4, !81, i64 8}
!169 = !{!"except.c:SET_BIT"}
!170 = !{!100, !86, i64 32}
!171 = !{i32 0, i32 2}
!172 = distinct !{!172, !117}
!173 = distinct !{!173, !117}
!174 = distinct !{!174, !117}
!175 = !{!"except.c:VEC_tree_gc_alloc"}
!176 = !{!"except.c:VEC_uchar_gc_alloc"}
!177 = !{!"except.c:ttypes_filter_hash"}
!178 = !{!179, !86, i64 0}
!179 = !{!"ttypes_filter", !86, i64 0, !80, i64 8}
!180 = !{!"except.c:ttypes_filter_eq"}
!181 = !{!"except.c:ehspec_filter_hash"}
!182 = distinct !{!182, !117}
!183 = !{!"except.c:ehspec_filter_eq"}
!184 = !{!"except.c:VEC_eh_region_base_iterate"}
!185 = !{!"except.c:add_ttypes_entry"}
!186 = !{!179, !80, i64 8}
!187 = !{!"except.c:add_ehspec_entry"}
!188 = distinct !{!188, !117}
!189 = !{!190, !86, i64 280}
!190 = !{!"rtl_data", !191, i64 0, !192, i64 40, !193, i64 96, !194, i64 112, !196, i64 208, !197, i64 248, !80, i64 312, !86, i64 320, !86, i64 328, !86, i64 336, !86, i64 344, !86, i64 352, !86, i64 360, !86, i64 368, !86, i64 376, !86, i64 384, !86, i64 392, !108, i64 400, !86, i64 408, !86, i64 416, !86, i64 424, !80, i64 432, !80, i64 436, !80, i64 440, !80, i64 444, !80, i64 448, !80, i64 452, !86, i64 456, !81, i64 464, !81, i64 465, !81, i64 466, !81, i64 467, !81, i64 468, !81, i64 469, !81, i64 470, !81, i64 471, !81, i64 472, !81, i64 473, !81, i64 474, !81, i64 475, !81, i64 476, !81, i64 477, !81, i64 478, !81, i64 479, !81, i64 480, !81, i64 481, !81, i64 482, !81, i64 483, !81, i64 484, !81, i64 485}
!191 = !{!"expr_status", !80, i64 0, !80, i64 4, !80, i64 8, !86, i64 16, !86, i64 24, !86, i64 32}
!192 = !{!"emit_status", !80, i64 0, !80, i64 4, !86, i64 8, !86, i64 16, !86, i64 24, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !86, i64 48}
!193 = !{!"varasm_status", !86, i64 0, !80, i64 8}
!194 = !{!"incoming_args", !80, i64 0, !80, i64 4, !80, i64 8, !86, i64 16, !195, i64 24, !86, i64 88}
!195 = !{!"ix86_args", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60}
!196 = !{!"function_subsections", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32}
!197 = !{!"rtl_eh", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !81, i64 48}
!198 = !{!"except.c:gate_handle_eh"}
!199 = !{!"except.c:rest_of_handle_eh"}
!200 = distinct !{!200, !117}
!201 = !{!"except.c:VEC_eh_landing_pad_base_replace"}
!202 = distinct !{!202, !117}
!203 = distinct !{!203, !117}
!204 = !{!97, !86, i64 8}
!205 = distinct !{!205, !117}
!206 = !{!97, !86, i64 16}
!207 = !{!"except.c:VEC_eh_region_base_replace"}
!208 = !{!"function_entry_count", i64 46}
!209 = !{!"branch_weights", i32 46, i32 1}
!210 = !{!132, !86, i64 24}
!211 = distinct !{!211, !117}
!212 = !{!"except.c:VEC_eh_landing_pad_base_iterate"}
!213 = !{!"branch_weights", i32 1, i32 47}
!214 = !{!"function_entry_count", i64 68958}
!215 = !{!"branch_weights", i32 16388, i32 52572}
!216 = !{!"branch_weights", i32 16388, i32 1}
!217 = !{!"function_entry_count", i64 15322171}
!218 = !{!"branch_weights", i32 268, i32 309585419, i32 -1381994844, i32 267, i32 885570920}
!219 = !{!"branch_weights", i32 14167506, i32 1}
!220 = distinct !{!220, !117}
!221 = distinct !{!221, !117}
!222 = !{!"function_entry_count", i64 1739148}
!223 = !{i8 0, i8 2}
!224 = !{!"function_entry_count", i64 5326468}
!225 = !{!"except.c:get_eh_region_and_lp_from_rtx"}
!226 = !{!"branch_weights", i32 -1030384698, i32 612}
!227 = !{!"branch_weights", i32 3621053, i32 1705417}
!228 = !{!"branch_weights", i32 1, i32 3621053}
!229 = !{!"branch_weights", i32 4572685, i32 753785}
!230 = !{!"branch_weights", i32 1, i32 1507570, i32 1}
!231 = !{!"function_entry_count", i64 1739085}
!232 = !{!233, !80, i64 0}
!233 = !{!"rtvec_def", !80, i64 0, !81, i64 8}
!234 = distinct !{!234, !117}
!235 = !{!"function_entry_count", i64 3587320}
!236 = !{!"branch_weights", i32 28698575, i32 1}
!237 = !{!"branch_weights", i32 3587321, i32 1}
!238 = !{!"branch_weights", i32 1, i32 3587321}
!239 = distinct !{!239, !117}
!240 = !{!"function_entry_count", i64 298739}
!241 = !{!190, !86, i64 344}
!242 = !{!"branch_weights", i32 298740, i32 1}
!243 = !{!"except.c:set_nothrow_function_flags"}
!244 = !{!190, !81, i64 485}
!245 = !{!190, !81, i64 469}
!246 = !{!"branch_weights", i32 79, i32 1}
!247 = distinct !{!247, !117}
!248 = distinct !{!248, !117}
!249 = distinct !{!249, !117}
!250 = !{!97, !86, i64 64}
!251 = !{!"except.c:expand_builtin_eh_common"}
!252 = !{!97, !86, i64 72}
!253 = !{!103, !86, i64 776}
!254 = !{!190, !81, i64 466}
!255 = !{!"except.c:expand_expr"}
!256 = !{!190, !86, i64 248}
!257 = !{!190, !86, i64 256}
!258 = !{!190, !86, i64 264}
!259 = !{!"branch_weights", i32 39, i32 1}
!260 = !{!190, !81, i64 465}
!261 = !{!103, !86, i64 800}
!262 = !{!"except.c:gate_convert_to_eh_region_ranges"}
!263 = !{!"except.c:convert_to_eh_region_ranges"}
!264 = !{!190, !86, i64 288}
!265 = !{!190, !81, i64 474}
!266 = distinct !{!266, !117}
!267 = !{!268, !86, i64 0}
!268 = !{!"call_site_record_d", !86, i64 0, !80, i64 8}
!269 = distinct !{!269, !117}
!270 = !{!271, !80, i64 96}
!271 = !{!"basic_block_def", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !81, i64 32, !86, i64 48, !86, i64 56, !81, i64 64, !108, i64 72, !80, i64 80, !80, i64 84, !80, i64 88, !80, i64 92, !80, i64 96}
!272 = !{i64 0, i64 4, !79, i64 8, i64 8, !85}
!273 = !{i64 0, i64 8, !85}
!274 = !{!275, !80, i64 48}
!275 = !{!"edge_def", !86, i64 0, !86, i64 8, !81, i64 16, !86, i64 24, !86, i64 32, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !108, i64 56}
!276 = distinct !{!276, !117}
!277 = distinct !{!277, !117}
!278 = distinct !{!278, !117}
!279 = !{!"except.c:output_one_function_exception_table"}
!280 = !{!103, !86, i64 120}
!281 = !{!92, !80, i64 108}
!282 = !{!103, !86, i64 136}
!283 = distinct !{!283, !117}
!284 = distinct !{!284, !117}
!285 = distinct !{!285, !117}
!286 = distinct !{!286, !117}
!287 = !{!100, !86, i64 24}
!288 = !{!"function_entry_count", i64 1557463}
!289 = !{!"function_entry_count", i64 78}
!290 = !{!"branch_weights", i32 78, i32 1}
!291 = distinct !{!291, !117}
!292 = !{!"except.c:ehr_next"}
!293 = distinct !{!293, !117}
!294 = distinct !{!294, !117}
!295 = distinct !{!295, !117}
!296 = distinct !{!296, !117}
!297 = distinct !{!297, !117}
!298 = distinct !{!298, !117}
!299 = distinct !{!299, !117}
!300 = distinct !{!300, !117}
!301 = !{!"except.c:VEC_eh_region_gc_reserve"}
!302 = !{!"branch_weights", i32 660, i32 1}
!303 = !{!"except.c:VEC_eh_region_base_quick_push"}
!304 = !{!"except.c:VEC_eh_region_base_space"}
!305 = !{!168, !80, i64 4}
!306 = !{!"except.c:VEC_eh_landing_pad_gc_reserve"}
!307 = !{!"except.c:VEC_eh_landing_pad_base_quick_push"}
!308 = !{!"except.c:VEC_eh_landing_pad_base_space"}
!309 = !{!138, !80, i64 4}
!310 = !{!"except.c:VEC_tree_base_length"}
!311 = !{!312, !80, i64 0}
!312 = !{!"VEC_tree_base", !80, i64 0, !80, i64 4, !81, i64 8}
!313 = !{!"except.c:VEC_tree_gc_safe_push"}
!314 = !{!"except.c:VEC_tree_gc_reserve"}
!315 = !{!"except.c:VEC_tree_base_quick_push"}
!316 = !{!"except.c:VEC_tree_base_space"}
!317 = !{!312, !80, i64 4}
!318 = !{!"except.c:VEC_uchar_base_length"}
!319 = !{!320, !80, i64 0}
!320 = !{!"VEC_uchar_base", !80, i64 0, !80, i64 4, !81, i64 8}
!321 = !{!"except.c:push_uleb128"}
!322 = distinct !{!322, !117}
!323 = !{!"except.c:VEC_uchar_gc_safe_push"}
!324 = !{!"except.c:VEC_uchar_gc_reserve"}
!325 = !{!"except.c:VEC_uchar_base_quick_push"}
!326 = !{!"except.c:VEC_uchar_base_space"}
!327 = !{!320, !80, i64 4}
!328 = !{!"except.c:finish_eh_generation"}
!329 = !{!92, !86, i64 8}
!330 = !{!331, !86, i64 0}
!331 = !{!"control_flow_graph", !86, i64 0, !86, i64 8, !86, i64 16, !80, i64 24, !80, i64 28, !80, i64 32, !86, i64 40, !80, i64 48, !81, i64 52, !81, i64 60, !80, i64 68, !80, i64 72}
!332 = !{!271, !86, i64 56}
!333 = !{!331, !86, i64 8}
!334 = !{!335, !86, i64 8}
!335 = !{!"rtl_bb_info", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !80, i64 32}
!336 = distinct !{!336, !117}
!337 = !{!275, !86, i64 8}
!338 = !{!335, !86, i64 0}
!339 = distinct !{!339, !117}
!340 = !{!"except.c:dw2_build_landing_pads"}
!341 = !{!271, !108, i64 72}
!342 = !{!275, !108, i64 56}
!343 = !{!275, !80, i64 52}
!344 = distinct !{!344, !117}
!345 = !{!"except.c:single_succ_edge"}
!346 = !{!271, !86, i64 8}
!347 = !{!"except.c:ei_start_1"}
!348 = !{!"except.c:ei_cond"}
!349 = !{!"except.c:ei_next"}
!350 = !{!351, !80, i64 0}
!351 = !{!"", !80, i64 0, !86, i64 8}
!352 = !{!"except.c:emit_to_new_bb_before"}
!353 = distinct !{!353, !117}
!354 = !{!271, !86, i64 48}
!355 = !{!"except.c:ei_safe_edge"}
!356 = !{!"except.c:ei_end_p"}
!357 = !{!"except.c:ei_edge"}
!358 = !{!"except.c:VEC_edge_base_length"}
!359 = !{!360, !80, i64 0}
!360 = !{!"VEC_edge_base", !80, i64 0, !80, i64 4, !81, i64 8}
!361 = !{!"except.c:ei_container"}
!362 = !{!"except.c:VEC_edge_base_index"}
!363 = !{!"except.c:single_succ_p"}
!364 = !{!"except.c:action_record_hash"}
!365 = !{!366, !80, i64 8}
!366 = !{!"action_record", !80, i64 0, !80, i64 4, !80, i64 8}
!367 = !{!366, !80, i64 4}
!368 = !{!"except.c:action_record_eq"}
!369 = !{!"except.c:collect_one_action_chain"}
!370 = distinct !{!370, !117}
!371 = distinct !{!371, !117}
!372 = distinct !{!372, !117}
!373 = !{!"except.c:add_call_site"}
!374 = !{!268, !80, i64 8}
!375 = !{!"except.c:VEC_call_site_record_base_length"}
!376 = !{!377, !80, i64 0}
!377 = !{!"VEC_call_site_record_base", !80, i64 0, !80, i64 4, !81, i64 8}
!378 = !{!"except.c:VEC_call_site_record_gc_alloc"}
!379 = !{!"except.c:VEC_call_site_record_base_index"}
!380 = !{!"except.c:add_action_record"}
!381 = !{!366, !80, i64 0}
!382 = !{!"except.c:push_sleb128"}
!383 = distinct !{!383, !117}
!384 = !{!"except.c:VEC_call_site_record_gc_safe_push"}
!385 = !{!"except.c:VEC_call_site_record_gc_reserve"}
!386 = !{!"except.c:VEC_call_site_record_base_quick_push"}
!387 = !{!"except.c:VEC_call_site_record_base_space"}
!388 = !{!377, !80, i64 4}
!389 = !{!"except.c:switch_to_exception_section"}
!390 = !{!103, !81, i64 2025}
!391 = !{!"except.c:dw2_output_call_site_table"}
!392 = distinct !{!392, !117}
!393 = !{!"except.c:VEC_uchar_base_iterate"}
!394 = !{!"except.c:VEC_tree_base_index"}
!395 = !{!"except.c:output_ttype"}
!396 = !{!103, !86, i64 144}
!397 = !{!"except.c:VEC_tree_base_iterate"}
