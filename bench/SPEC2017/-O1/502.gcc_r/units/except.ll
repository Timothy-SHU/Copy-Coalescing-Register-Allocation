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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.duplicate_eh_regions_data = type { ptr, ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.ttypes_filter = type { ptr, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
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
%struct.VEC_call_site_record_base = type { i32, i32, [1 x ptr] }
%struct.call_site_record_d = type { ptr, i32 }
%struct.action_record = type { i32, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@flag_exceptions = external local_unnamed_addr global i32, align 4
@doing_eh.warned = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [56 x i8] c"exception handling disabled, use -fexceptions to enable\00", align 1
@type_to_runtime_map = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"except.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !44 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !45
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !44 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !55

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !49
  %11 = load i8, ptr %3, align 1, !tbaa !56
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !44 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !44 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !55

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !57
  store i8 %12, ptr %4, align 1, !tbaa !56
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !44 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !44 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !44 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !44 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
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
  br i1 %23, label %7, label %24, !llvm.loop !61

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !44 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @doing_eh(i32 noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = load i32, ptr @flag_exceptions, align 4, !tbaa !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i1, ptr @doing_eh.warned, align 4
  %6 = icmp eq i32 %0, 0
  %7 = or i1 %6, %5
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #27
  store i1 true, ptr @doing_eh.warned, align 4
  br label %9

9:                                                ; preds = %1, %4, %8
  %10 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 1, %1 ]
  ret i32 %10
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @init_eh() local_unnamed_addr #9 !prof !64 {
  %1 = load i32, ptr @flag_exceptions, align 4, !tbaa !60
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !65

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 31, ptr noundef nonnull @t2r_hash, ptr noundef nonnull @t2r_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #27
  store ptr %4, ptr @type_to_runtime_map, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %0, %3
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @t2r_hash(ptr nocapture noundef readonly %0) #10 !prof !44 {
  %2 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 262143
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @t2r_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 !prof !44 {
  %3 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @init_eh_for_function() local_unnamed_addr #11 !prof !66 {
  %1 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 48) #27
  %2 = load ptr, ptr @cfun, align 8, !tbaa !45
  store ptr %1, ptr %2, align 8, !tbaa !67
  %3 = load ptr, ptr @cfun, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !69

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = load i32, ptr %6, align 8, !tbaa !72
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0, %8
  %14 = tail call ptr @vec_gc_p_reserve(ptr noundef %6, i32 noundef 1) #27
  store ptr %14, ptr %5, align 8, !tbaa !45
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr %5, align 8, !tbaa !45
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !72
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %16, i64 0, i32 2, i64 %19
  store ptr null, ptr %20, align 8, !tbaa !45
  %21 = load ptr, ptr @cfun, align 8, !tbaa !45
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.eh_status, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !69

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = load i32, ptr %24, align 8, !tbaa !75
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %15, %26
  %32 = tail call ptr @vec_gc_p_reserve(ptr noundef %24, i32 noundef 1) #27
  store ptr %32, ptr %23, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %26, %31
  %34 = load ptr, ptr %23, align 8, !tbaa !45
  %35 = load i32, ptr %34, align 8, !tbaa !75
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !75
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %34, i64 0, i32 2, i64 %37
  store ptr null, ptr %38, align 8, !tbaa !45
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_eh_region_cleanup(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 0, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @gen_eh_region(i32 noundef %0, ptr noundef %1) unnamed_addr #9 !prof !44 {
  %3 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 88) #27
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 4
  store i32 %0, ptr %4, align 4, !tbaa !76
  store ptr %1, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  br label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @cfun, align 8, !tbaa !45
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ %7, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !79
  store ptr %3, ptr %12, align 8, !tbaa !45
  %15 = load ptr, ptr @cfun, align 8, !tbaa !45
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.eh_status, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %18, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !70
  %25 = icmp eq i32 %24, %21
  br i1 %25, label %28, label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 3
  store i32 0, ptr %27, align 8, !tbaa !80
  br label %28

28:                                               ; preds = %26, %20
  %29 = tail call ptr @vec_gc_p_reserve(ptr noundef %18, i32 noundef 1) #27
  store ptr %29, ptr %17, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %20, %28
  %31 = load ptr, ptr %17, align 8, !tbaa !45
  %32 = load i32, ptr %31, align 8, !tbaa !72
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !72
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %3, ptr %35, align 8, !tbaa !45
  %36 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %37 = icmp ne i8 %36, 0
  %38 = load i8, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 47), align 8
  %39 = icmp ne i8 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 9
  store i8 1, ptr %42, align 8, !tbaa !93
  br label %43

43:                                               ; preds = %41, %30
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_eh_region_try(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 1, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_eh_region_catch(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !44 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !76
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 397, ptr noundef nonnull @.str.2) #27
  br label %7

7:                                                ; preds = %2, %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %1, ptr noundef null) #27
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %1, %9 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.tree_list, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  tail call void @add_type_for_runtime(ptr noundef %21)
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !94

25:                                               ; preds = %18, %15, %7
  %26 = phi ptr [ null, %7 ], [ %16, %15 ], [ %16, %18 ]
  %27 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #27
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %27, i64 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.eh_catch_d, ptr %27, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !97
  %32 = icmp eq ptr %30, null
  %33 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %34 = select i1 %32, ptr %33, ptr %30
  store ptr %27, ptr %34, align 8, !tbaa !56
  store ptr %27, ptr %29, align 8, !tbaa !56
  ret ptr %27
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @add_type_for_runtime(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 116
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @type_to_runtime_map, align 8, !tbaa !45
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 262143
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %0, i32 noundef %9, i32 noundef 1) #27
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 46), align 8, !tbaa !98
  %15 = tail call ptr %14(ptr noundef nonnull %0) #27
  %16 = tail call ptr @tree_cons_stat(ptr noundef nonnull %0, ptr noundef %15, ptr noundef null) #27
  store ptr %16, ptr %10, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_eh_region_allowed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !44 {
  %3 = tail call fastcc ptr @gen_eh_region(i32 noundef 2, ptr noundef %0)
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !56
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  tail call void @add_type_for_runtime(ptr noundef %9)
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !106

13:                                               ; preds = %6, %2
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_eh_region_must_not_throw(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call fastcc ptr @gen_eh_region(i32 noundef 3, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_eh_landing_pad(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #27
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %4, ptr %2, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !110
  %6 = load ptr, ptr @cfun, align 8, !tbaa !45
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.eh_status, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %9, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %15 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %2, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !113
  store ptr %2, ptr %3, align 8, !tbaa !107
  %16 = load ptr, ptr %8, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !73
  %21 = load i32, ptr %16, align 8, !tbaa !75
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13, %18
  %24 = tail call ptr @vec_gc_p_reserve(ptr noundef %16, i32 noundef 1) #27
  store ptr %24, ptr %8, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %18, %23
  %26 = load ptr, ptr %8, align 8, !tbaa !45
  %27 = load i32, ptr %26, align 8, !tbaa !75
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !75
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %26, i64 0, i32 2, i64 %29
  store ptr %2, ptr %30, align 8, !tbaa !45
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_number(i32 noundef %0) local_unnamed_addr #12 !prof !44 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !45
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_landing_pad_from_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_landing_pad_from_number(i32 noundef %0) local_unnamed_addr #12 !prof !44 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !45
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %5, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  ret ptr %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_lp_number_fn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !44 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = sub nsw i32 0, %1
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %7, i64 0, i32 2, i64 %9
  br label %21

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.eh_status, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = zext nneg i32 %1 to i64
  %18 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %16, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %19, i64 0, i32 1
  br label %21

21:                                               ; preds = %4, %13
  %22 = phi ptr [ %20, %13 ], [ %10, %4 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi ptr [ null, %11 ], [ %23, %21 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_region_from_lp_number(i32 noundef %0) local_unnamed_addr #12 !prof !44 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !45
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = sub nsw i32 0, %0
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %7, i64 0, i32 2, i64 %9
  br label %21

11:                                               ; preds = %1
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %2, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.eh_status, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = zext nneg i32 %0 to i64
  %18 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %16, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %19, i64 0, i32 1
  br label %21

21:                                               ; preds = %13, %4
  %22 = phi ptr [ %10, %4 ], [ %20, %13 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi ptr [ null, %11 ], [ %23, %21 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @current_function_has_exception_handlers() local_unnamed_addr #13 !prof !115 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = load ptr, ptr %1, align 8, !tbaa !67
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @duplicate_eh_regions(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #11 !prof !117 {
  %6 = alloca %struct.duplicate_eh_regions_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  store ptr %3, ptr %6, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %6, i64 0, i32 1
  store ptr %4, ptr %7, align 8, !tbaa !120
  %8 = tail call ptr @pointer_map_create() #27
  %9 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %6, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !121
  %10 = load ptr, ptr @cfun, align 8, !tbaa !45
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %12, label %19, !prof !122

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.eh_status, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = sub nsw i32 0, %2
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %15, i64 0, i32 2, i64 %17
  br label %29

19:                                               ; preds = %5
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %32, label %21, !prof !123

21:                                               ; preds = %19
  %22 = load ptr, ptr %10, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.eh_status, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = zext nneg i32 %2 to i64
  %26 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %24, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %27, i64 0, i32 1
  br label %29

29:                                               ; preds = %21, %12
  %30 = phi ptr [ %18, %12 ], [ %28, %21 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi ptr [ null, %19 ], [ %31, %29 ]
  %34 = icmp eq ptr %1, null
  br i1 %34, label %36, label %35, !prof !123

35:                                               ; preds = %32
  call fastcc void @duplicate_eh_regions_1(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef %33)
  br label %45

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !67
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !65

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  call fastcc void @duplicate_eh_regions_1(ptr noundef nonnull %6, ptr noundef nonnull %41, ptr noundef %33)
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !prof !65, !llvm.loop !124

45:                                               ; preds = %40, %36, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  ret ptr %8
}

declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @duplicate_eh_regions_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !44 {
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = tail call fastcc ptr @gen_eh_region(i32 noundef %5, ptr noundef %2)
  %7 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = tail call ptr @pointer_map_insert(ptr noundef %8, ptr noundef %1) #27
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 531, ptr noundef nonnull @.str.2) #27
  br label %13

13:                                               ; preds = %3, %12
  store ptr %6, ptr %9, align 8, !tbaa !45
  %14 = load i32, ptr %4, align 4, !tbaa !76
  switch i32 %14, label %57 [
    i32 3, label %54
    i32 1, label %15
    i32 2, label %39
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %17, %19 ], [ %37, %27 ]
  %23 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 546, ptr noundef nonnull @.str.2) #27
  br label %27

27:                                               ; preds = %21, %26
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = tail call ptr @gen_eh_region_catch(ptr noundef %6, ptr noundef %29)
  %31 = load ptr, ptr %0, align 8, !tbaa !118
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %22, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  %34 = load ptr, ptr %20, align 8, !tbaa !120
  %35 = tail call ptr %31(ptr noundef %33, ptr noundef %34) #27
  %36 = getelementptr inbounds %struct.eh_catch_d, ptr %30, i64 0, i32 4
  store ptr %35, ptr %36, align 8, !tbaa !126
  %37 = load ptr, ptr %22, align 8, !tbaa !56
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %21, !llvm.loop !127

39:                                               ; preds = %13
  %40 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5
  store ptr %41, ptr %42, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %0, align 8, !tbaa !118
  %48 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !120
  %50 = tail call ptr %47(ptr noundef nonnull %44, ptr noundef %49) #27
  %51 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5, i32 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !56
  br label %57

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5, i32 0, i32 1
  store ptr null, ptr %53, align 8, !tbaa !56
  br label %57

54:                                               ; preds = %13
  %55 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 5
  %56 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %56, i64 16, i1 false), !tbaa.struct !128
  br label %57

57:                                               ; preds = %27, %15, %46, %52, %13, %54
  %58 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.duplicate_eh_regions_data, ptr %0, i64 0, i32 1
  br label %63

63:                                               ; preds = %61, %84
  %64 = phi ptr [ %59, %61 ], [ %85, %84 ]
  %65 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !129
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @gen_eh_landing_pad(ptr noundef %6)
  %70 = load ptr, ptr %7, align 8, !tbaa !121
  %71 = tail call ptr @pointer_map_insert(ptr noundef %70, ptr noundef nonnull %64) #27
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.2) #27
  br label %75

75:                                               ; preds = %68, %74
  store ptr %69, ptr %71, align 8, !tbaa !45
  %76 = load ptr, ptr %0, align 8, !tbaa !118
  %77 = load ptr, ptr %65, align 8, !tbaa !129
  %78 = load ptr, ptr %62, align 8, !tbaa !120
  %79 = tail call ptr %76(ptr noundef %77, ptr noundef %78) #27
  %80 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %69, i64 0, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !129
  %81 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %69, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !113
  %83 = getelementptr inbounds %struct.tree_label_decl, ptr %79, i64 0, i32 2
  store i32 %82, ptr %83, align 4, !tbaa !56
  br label %84

84:                                               ; preds = %63, %75
  %85 = load ptr, ptr %64, align 8, !tbaa !45
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %63, !llvm.loop !130

87:                                               ; preds = %84, %57
  %88 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 9
  %89 = load i8, ptr %88, align 8, !tbaa !93
  %90 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 9
  store i8 %89, ptr %90, align 8, !tbaa !93
  %91 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %87, %94
  %95 = phi ptr [ %97, %94 ], [ %92, %87 ]
  tail call fastcc void @duplicate_eh_regions_1(ptr noundef %0, ptr noundef nonnull %95, ptr noundef %6)
  %96 = getelementptr inbounds %struct.eh_region_d, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !45
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !131

99:                                               ; preds = %94, %87
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @eh_region_outermost(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !44 {
  %4 = load ptr, ptr %0, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 640, ptr noundef nonnull @.str.2) #27
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !67
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 641, ptr noundef nonnull @.str.2) #27
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr %0, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.eh_status, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %17, align 8, !tbaa !72
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %14 ]
  %23 = tail call ptr @sbitmap_alloc(i32 noundef %22) #27
  tail call void @sbitmap_zero(ptr noundef %23) #27
  br label %24

24:                                               ; preds = %44, %21
  %25 = phi ptr [ %2, %21 ], [ %53, %44 ]
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !80
  %28 = load ptr, ptr %23, align 8, !tbaa !132
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  %31 = lshr i32 %27, 6
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %32
  %34 = load i64, ptr %33, align 8, !tbaa !134
  %35 = and i32 %27, 63
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = and i64 %34, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = getelementptr inbounds i8, ptr %28, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !56
  %43 = add i8 %42, 1
  store i8 %43, ptr %41, align 1, !tbaa !56
  br label %44

44:                                               ; preds = %24, %30, %40
  %45 = and i32 %27, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = lshr i32 %27, 6
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !134
  %52 = or i64 %51, %47
  store i64 %52, ptr %50, align 8, !tbaa !134
  %53 = load ptr, ptr %25, align 8, !tbaa !78
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24, !llvm.loop !135

55:                                               ; preds = %44, %68
  %56 = phi ptr [ %69, %68 ], [ %1, %44 ]
  %57 = getelementptr inbounds %struct.eh_region_d, ptr %56, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !80
  %59 = lshr i32 %58, 6
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds %struct.simple_bitmap_def, ptr %23, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !134
  %63 = and i32 %58, 63
  %64 = zext nneg i32 %63 to i64
  %65 = shl nuw i64 1, %64
  %66 = and i64 %65, %62
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load ptr, ptr %56, align 8, !tbaa !78
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %55, !llvm.loop !136

71:                                               ; preds = %68, %55
  %72 = phi ptr [ %56, %55 ], [ null, %68 ]
  %73 = load ptr, ptr %23, align 8, !tbaa !132
  tail call void @free(ptr noundef %73)
  tail call void @free(ptr noundef %23)
  ret ptr %72
}

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #14

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lookup_type_for_runtime(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 116
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @type_to_runtime_map, align 8, !tbaa !45
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 262143
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %0, i32 noundef %9, i32 noundef 0) #27
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %13, %5 ], [ %0, %1 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local void @assign_filter_values() local_unnamed_addr #9 !prof !44 {
  %1 = alloca %struct.ttypes_filter, align 8
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 16) #27
  %3 = load ptr, ptr @cfun, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.eh_status, ptr %4, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !137
  %6 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 64) #27
  br label %12

10:                                               ; preds = %0
  %11 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef 64, i64 noundef 8, i64 noundef 1) #27
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = load ptr, ptr @cfun, align 8, !tbaa !45
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.eh_status, ptr %15, i64 0, i32 5
  store ptr %13, ptr %16, align 8, !tbaa !56
  %17 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @ttypes_filter_hash, ptr noundef nonnull @ttypes_filter_eq, ptr noundef nonnull @free) #27
  %18 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @ehspec_filter_hash, ptr noundef nonnull @ehspec_filter_eq, ptr noundef nonnull @free) #27
  br label %19

19:                                               ; preds = %192, %12
  %20 = phi i64 [ %193, %192 ], [ 1, %12 ]
  %21 = load ptr, ptr @cfun, align 8, !tbaa !45
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.eh_status, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %24, align 8, !tbaa !72
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %20, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %24, i64 0, i32 2, i64 %20
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %19, %26, %30
  %34 = phi ptr [ %32, %30 ], [ null, %26 ], [ null, %19 ]
  %35 = phi i1 [ false, %30 ], [ true, %26 ], [ true, %19 ]
  br i1 %35, label %194, label %36

36:                                               ; preds = %33
  %37 = icmp eq ptr %34, null
  br i1 %37, label %192, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !76
  switch i32 %40, label %192 [
    i32 1, label %41
    i32 2, label %71
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !56
  %44 = icmp eq ptr %43, null
  br i1 %44, label %192, label %45

45:                                               ; preds = %41, %68
  %46 = phi ptr [ %69, %68 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.eh_catch_d, ptr %46, i64 0, i32 3
  store ptr null, ptr %47, align 8, !tbaa !125
  %48 = getelementptr inbounds %struct.eh_catch_d, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45, %51
  %52 = phi ptr [ %61, %51 ], [ %49, %45 ]
  %53 = getelementptr inbounds %struct.tree_list, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = call fastcc i32 @add_ttypes_entry(ptr noundef %17, ptr noundef %54)
  %56 = sext i32 %55 to i64
  %57 = call ptr @build_int_cst(ptr noundef null, i64 noundef %56) #27
  %58 = load ptr, ptr %47, align 8, !tbaa !125
  %59 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %57, ptr noundef %58) #27
  store ptr %59, ptr %47, align 8, !tbaa !125
  %60 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %51, !llvm.loop !138

63:                                               ; preds = %45
  %64 = call fastcc i32 @add_ttypes_entry(ptr noundef %17, ptr noundef null)
  %65 = sext i32 %64 to i64
  %66 = call ptr @build_int_cst(ptr noundef null, i64 noundef %65) #27
  %67 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %66, ptr noundef null) #27
  store ptr %67, ptr %47, align 8, !tbaa !125
  br label %68

68:                                               ; preds = %51, %63
  %69 = load ptr, ptr %46, align 8, !tbaa !56
  %70 = icmp eq ptr %69, null
  br i1 %70, label %192, label %45, !llvm.loop !139

71:                                               ; preds = %38
  %72 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #27
  store ptr %73, ptr %1, align 8, !tbaa !140
  %74 = call ptr @htab_find_slot(ptr noundef %18, ptr noundef nonnull %1, i32 noundef 1) #27
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %187

77:                                               ; preds = %71
  %78 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %79 = icmp eq i8 %78, 0
  %80 = load ptr, ptr @cfun, align 8, !tbaa !45
  %81 = load ptr, ptr %80, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.eh_status, ptr %81, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !56
  %84 = icmp eq ptr %83, null
  br i1 %79, label %88, label %85

85:                                               ; preds = %77
  br i1 %84, label %91, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %83, align 8, !tbaa !142
  br label %91

88:                                               ; preds = %77
  br i1 %84, label %91, label %89

89:                                               ; preds = %88
  %90 = load i32, ptr %83, align 4, !tbaa !144
  br label %91

91:                                               ; preds = %89, %88, %86, %85
  %92 = phi i32 [ %87, %86 ], [ 0, %85 ], [ %90, %89 ], [ 0, %88 ]
  %93 = call ptr @xmalloc(i64 noundef 16) #27
  store ptr %73, ptr %93, align 8, !tbaa !140
  %94 = xor i32 %92, -1
  %95 = getelementptr inbounds %struct.ttypes_filter, ptr %93, i64 0, i32 1
  store i32 %94, ptr %95, align 8, !tbaa !146
  store ptr %93, ptr %74, align 8, !tbaa !45
  %96 = icmp eq ptr %73, null
  br i1 %96, label %151, label %97

97:                                               ; preds = %91, %147
  %98 = phi ptr [ %149, %147 ], [ %73, %91 ]
  %99 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %100 = icmp eq i8 %99, 0
  %101 = load ptr, ptr @cfun, align 8, !tbaa !45
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct.eh_status, ptr %102, i64 0, i32 5
  %104 = getelementptr inbounds %struct.tree_list, ptr %98, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  br i1 %100, label %122, label %106

106:                                              ; preds = %97
  %107 = load ptr, ptr %103, align 8, !tbaa !45
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.VEC_tree_base, ptr %107, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !147
  %112 = load i32, ptr %107, align 8, !tbaa !142
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109, %106
  %115 = call ptr @vec_gc_p_reserve(ptr noundef %107, i32 noundef 1) #27
  store ptr %115, ptr %103, align 8, !tbaa !45
  br label %116

116:                                              ; preds = %114, %109
  %117 = load ptr, ptr %103, align 8, !tbaa !45
  %118 = load i32, ptr %117, align 8, !tbaa !142
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8, !tbaa !142
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds %struct.VEC_tree_base, ptr %117, i64 0, i32 2, i64 %120
  store ptr %105, ptr %121, align 8, !tbaa !45
  br label %147

122:                                              ; preds = %97
  %123 = call fastcc i32 @add_ttypes_entry(ptr noundef %17, ptr noundef %105)
  br label %124

124:                                              ; preds = %141, %122
  %125 = phi i32 [ %123, %122 ], [ %128, %141 ]
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 127
  %128 = lshr i32 %125, 7
  %129 = icmp ult i32 %125, 128
  %130 = select i1 %129, i8 0, i8 -128
  %131 = or disjoint i8 %127, %130
  %132 = load ptr, ptr %103, align 8, !tbaa !45
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %124
  %135 = getelementptr inbounds %struct.VEC_uchar_base, ptr %132, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !148
  %137 = load i32, ptr %132, align 4, !tbaa !144
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134, %124
  %140 = call ptr @vec_gc_o_reserve(ptr noundef %132, i32 noundef 1, i64 noundef 8, i64 noundef 1) #27
  store ptr %140, ptr %103, align 8, !tbaa !45
  br label %141

141:                                              ; preds = %134, %139
  %142 = load ptr, ptr %103, align 8, !tbaa !45
  %143 = load i32, ptr %142, align 4, !tbaa !144
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 4, !tbaa !144
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds %struct.VEC_uchar_base, ptr %142, i64 0, i32 2, i64 %145
  store i8 %131, ptr %146, align 1, !tbaa !56
  br i1 %129, label %147, label %124, !llvm.loop !149

147:                                              ; preds = %141, %116
  %148 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !56
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %97, !llvm.loop !150

151:                                              ; preds = %147, %91
  %152 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %153 = icmp eq i8 %152, 0
  %154 = load ptr, ptr @cfun, align 8, !tbaa !45
  %155 = load ptr, ptr %154, align 8, !tbaa !67
  %156 = getelementptr inbounds %struct.eh_status, ptr %155, i64 0, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !45
  %158 = icmp eq ptr %157, null
  br i1 %153, label %173, label %159

159:                                              ; preds = %151
  br i1 %158, label %165, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.VEC_tree_base, ptr %157, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !147
  %163 = load i32, ptr %157, align 8, !tbaa !142
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160, %159
  %166 = call ptr @vec_gc_p_reserve(ptr noundef %157, i32 noundef 1) #27
  store ptr %166, ptr %156, align 8, !tbaa !45
  br label %167

167:                                              ; preds = %165, %160
  %168 = load ptr, ptr %156, align 8, !tbaa !45
  %169 = load i32, ptr %168, align 8, !tbaa !142
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 8, !tbaa !142
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds %struct.VEC_tree_base, ptr %168, i64 0, i32 2, i64 %171
  store ptr null, ptr %172, align 8, !tbaa !45
  br label %187

173:                                              ; preds = %151
  br i1 %158, label %179, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.VEC_uchar_base, ptr %157, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !148
  %177 = load i32, ptr %157, align 4, !tbaa !144
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %174, %173
  %180 = call ptr @vec_gc_o_reserve(ptr noundef %157, i32 noundef 1, i64 noundef 8, i64 noundef 1) #27
  store ptr %180, ptr %156, align 8, !tbaa !45
  br label %181

181:                                              ; preds = %179, %174
  %182 = load ptr, ptr %156, align 8, !tbaa !45
  %183 = load i32, ptr %182, align 4, !tbaa !144
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4, !tbaa !144
  %185 = zext i32 %183 to i64
  %186 = getelementptr inbounds %struct.VEC_uchar_base, ptr %182, i64 0, i32 2, i64 %185
  store i8 0, ptr %186, align 1, !tbaa !56
  br label %187

187:                                              ; preds = %71, %167, %181
  %188 = phi ptr [ %75, %71 ], [ %93, %181 ], [ %93, %167 ]
  %189 = getelementptr inbounds %struct.ttypes_filter, ptr %188, i64 0, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #27
  %191 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 5, i32 0, i32 2
  store i32 %190, ptr %191, align 8, !tbaa !56
  br label %192

192:                                              ; preds = %68, %41, %187, %38, %36
  %193 = add nuw i64 %20, 1
  br label %19, !llvm.loop !151

194:                                              ; preds = %33
  call void @htab_delete(ptr noundef %17) #27
  call void @htab_delete(ptr noundef %18) #27
  ret void
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ttypes_filter_hash(ptr nocapture noundef readonly %0) #10 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !140
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ttypes_filter_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @ehspec_filter_hash(ptr nocapture noundef readonly %0) #15 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %15, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %13, %4 ], [ 0, %1 ]
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 5)
  %8 = getelementptr inbounds %struct.tree_list, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = ptrtoint ptr %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 262143
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !152

17:                                               ; preds = %4, %1
  %18 = phi i32 [ 0, %1 ], [ %13, %4 ]
  ret i32 %18
}

; Function Attrs: cold nounwind uwtable
define internal i32 @ehspec_filter_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = load ptr, ptr %1, align 8, !tbaa !140
  %5 = tail call i32 @type_list_equal(ptr noundef %3, ptr noundef %4) #27
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @add_ttypes_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !44 {
  %3 = ptrtoint ptr %1 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef 1) #27
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = tail call ptr @xmalloc(i64 noundef 16) #27
  store ptr %1, ptr %10, align 8, !tbaa !140
  %11 = load ptr, ptr @cfun, align 8, !tbaa !45
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.eh_status, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr %14, align 8, !tbaa !142
  %18 = add i32 %17, 1
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi i32 [ %18, %16 ], [ 1, %9 ]
  %21 = getelementptr inbounds %struct.ttypes_filter, ptr %10, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !146
  store ptr %10, ptr %6, align 8, !tbaa !45
  %22 = load ptr, ptr @cfun, align 8, !tbaa !45
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.eh_status, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !147
  %30 = load i32, ptr %25, align 8, !tbaa !142
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19, %27
  %33 = tail call ptr @vec_gc_p_reserve(ptr noundef %25, i32 noundef 1) #27
  store ptr %33, ptr %24, align 8, !tbaa !45
  br label %34

34:                                               ; preds = %27, %32
  %35 = load ptr, ptr %24, align 8, !tbaa !45
  %36 = load i32, ptr %35, align 8, !tbaa !142
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !142
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds %struct.VEC_tree_base, ptr %35, i64 0, i32 2, i64 %38
  store ptr %1, ptr %39, align 8, !tbaa !45
  br label %40

40:                                               ; preds = %34, %2
  %41 = phi ptr [ %10, %34 ], [ %7, %2 ]
  %42 = getelementptr inbounds %struct.ttypes_filter, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !146
  ret i32 %43
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @sjlj_emit_function_exit_after(ptr noundef %0) local_unnamed_addr #16 !prof !44 {
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 4), align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_eh() #13 !prof !115 !PGOFuncName !162 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = load ptr, ptr %1, align 8, !tbaa !67
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_eh() #9 !prof !44 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  br label %3

3:                                                ; preds = %117, %0
  %4 = phi i64 [ %118, %117 ], [ 1, %0 ]
  %5 = load ptr, ptr @cfun, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.eh_status, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 8, !tbaa !75
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %4, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %8, i64 0, i32 2, i64 %4
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %3 ]
  %19 = phi i1 [ false, %14 ], [ true, %10 ], [ true, %3 ]
  br i1 %19, label %119, label %20

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, null
  br i1 %21, label %117, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = icmp eq ptr %24, null
  br i1 %25, label %117, label %26

26:                                               ; preds = %22
  tail call void @start_sequence() #27
  %27 = tail call ptr @gen_label_rtx() #27
  %28 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %18, i64 0, i32 3
  store ptr %27, ptr %28, align 8, !tbaa !163
  %29 = tail call ptr @emit_label(ptr noundef %27) #27
  %30 = load ptr, ptr %28, align 8, !tbaa !163
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 268435456
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %18, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  %35 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !164
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %40 = tail call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef 0) #27
  %41 = tail call ptr @emit_move_insn(ptr noundef nonnull %36, ptr noundef %40) #27
  br label %42

42:                                               ; preds = %38, %26
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %34, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !165
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !166
  %48 = tail call i32 %47() #27
  %49 = tail call ptr @gen_rtx_REG(i32 noundef %48, i32 noundef 1) #27
  %50 = tail call ptr @emit_move_insn(ptr noundef nonnull %44, ptr noundef %49) #27
  br label %51

51:                                               ; preds = %46, %42
  %52 = tail call ptr @get_insns() #27
  tail call void @end_sequence() #27
  %53 = load ptr, ptr %23, align 8, !tbaa !129
  %54 = tail call ptr @label_rtx(ptr noundef %53) #27
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = icmp eq ptr %56, null
  br label %58

58:                                               ; preds = %91, %51
  %59 = phi i32 [ %92, %91 ], [ 0, %51 ]
  %60 = zext i32 %59 to i64
  br label %61

61:                                               ; preds = %58, %82
  br i1 %57, label %62, label %63

62:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 687, ptr noundef nonnull @.str.2) #27
  br label %63

63:                                               ; preds = %62, %61
  %64 = load ptr, ptr %56, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %64, align 8, !tbaa !167
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %67, %66 ], [ 0, %63 ]
  %70 = icmp eq i32 %69, %59
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.VEC_edge_base, ptr %64, i64 0, i32 2, i64 %60
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi ptr [ %73, %71 ], [ null, %68 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !169
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = tail call ptr @force_nonfallthru(ptr noundef nonnull %75) #27
  br label %61, !llvm.loop !171

84:                                               ; preds = %77
  br i1 %65, label %87, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %64, align 8, !tbaa !167
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ %86, %85 ], [ 0, %84 ]
  %89 = icmp ult i32 %59, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.2) #27
  br label %91

91:                                               ; preds = %90, %87
  %92 = add i32 %59, 1
  br label %58, !llvm.loop !171

93:                                               ; preds = %74
  %94 = tail call ptr @emit_insn_before(ptr noundef %52, ptr noundef %54) #27
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !56
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %100, %98 ], [ %94, %93 ]
  %103 = load ptr, ptr %55, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !172
  %106 = tail call ptr @create_basic_block(ptr noundef %52, ptr noundef %102, ptr noundef %105) #27
  tail call void @update_bb_for_insn(ptr noundef %106) #27
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 13
  %108 = load i32, ptr %107, align 8, !tbaa !174
  %109 = or i32 %108, 8
  store i32 %109, ptr %107, align 8, !tbaa !174
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !175
  %112 = tail call ptr @make_edge(ptr noundef %106, ptr noundef %111, i32 noundef 1) #27
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 8
  %114 = load i64, ptr %113, align 8, !tbaa !176
  %115 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 9
  store i64 %114, ptr %115, align 8, !tbaa !177
  %116 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 8
  store i32 10000, ptr %116, align 4, !tbaa !178
  br label %117

117:                                              ; preds = %101, %22, %20
  %118 = add nuw i64 %4, 1
  br label %3, !llvm.loop !179

119:                                              ; preds = %17
  tail call void @break_superblocks() #27
  %120 = load ptr, ptr @cfun, align 8, !tbaa !45
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !180
  %123 = load ptr, ptr %122, align 8, !tbaa !181
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !183
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, ptr %125, align 8, !tbaa !167
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %131, label %130

130:                                              ; preds = %127, %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 645, ptr noundef nonnull @.str.2) #27
  br label %131

131:                                              ; preds = %130, %127
  %132 = load ptr, ptr %124, align 8, !tbaa !183
  %133 = getelementptr inbounds %struct.VEC_edge_base, ptr %132, i64 0, i32 2, i64 0
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = getelementptr inbounds %struct.edge_def, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !56
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  tail call void @commit_edge_insertions() #27
  br label %139

139:                                              ; preds = %138, %131
  %140 = load ptr, ptr @cfun, align 8, !tbaa !45
  %141 = getelementptr inbounds %struct.function, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !180
  %143 = load ptr, ptr %142, align 8, !tbaa !181
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !175
  %146 = getelementptr inbounds %struct.control_flow_graph, ptr %142, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !184
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %228, label %149

149:                                              ; preds = %139, %219
  %150 = phi ptr [ %221, %219 ], [ %145, %139 ]
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  %153 = getelementptr inbounds %struct.rtl_bb_info, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %155 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %154, ptr noundef nonnull %2, ptr noundef nonnull %1), !range !187
  %156 = load ptr, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 1
  br label %158

158:                                              ; preds = %185, %149
  %159 = phi i32 [ 0, %149 ], [ %186, %185 ]
  %160 = load ptr, ptr %157, align 8, !tbaa !45
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %160, align 8, !tbaa !167
  br label %164

164:                                              ; preds = %162, %158
  %165 = phi i32 [ %163, %162 ], [ 0, %158 ]
  %166 = icmp eq i32 %165, %159
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = zext i32 %159 to i64
  %169 = getelementptr inbounds %struct.VEC_edge_base, ptr %160, i64 0, i32 2, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !45
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi ptr [ %170, %167 ], [ null, %164 ]
  br i1 %166, label %187, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 7
  %175 = load i32, ptr %174, align 8, !tbaa !169
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  br i1 %161, label %181, label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %160, align 8, !tbaa !167
  br label %181

181:                                              ; preds = %179, %178
  %182 = phi i32 [ %180, %179 ], [ 0, %178 ]
  %183 = icmp ult i32 %159, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.2) #27
  br label %185

185:                                              ; preds = %184, %181
  %186 = add i32 %159, 1
  br label %158, !llvm.loop !188

187:                                              ; preds = %173, %171
  %188 = icmp ne ptr %156, null
  %189 = icmp eq ptr %172, null
  %190 = xor i1 %188, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1441, ptr noundef nonnull @.str.2) #27
  br label %192

192:                                              ; preds = %191, %187
  br i1 %188, label %193, label %219

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !189
  %196 = getelementptr inbounds %struct.basic_block_def, ptr %195, i64 0, i32 7
  %197 = load ptr, ptr %196, align 8, !tbaa !56
  %198 = load ptr, ptr %197, align 8, !tbaa !190
  %199 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %156, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !129
  %201 = tail call ptr @label_rtx(ptr noundef %200) #27
  %202 = icmp eq ptr %198, %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %193
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1444, ptr noundef nonnull @.str.2) #27
  br label %204

204:                                              ; preds = %203, %193
  %205 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %156, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !163
  %207 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !56
  tail call void @redirect_edge_succ(ptr noundef %172, ptr noundef %208) #27
  %209 = load ptr, ptr %151, align 8, !tbaa !56
  %210 = getelementptr inbounds %struct.rtl_bb_info, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !185
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 10
  %215 = select i1 %214, i32 6, i32 2
  %216 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 7
  %217 = load i32, ptr %216, align 8, !tbaa !169
  %218 = or i32 %215, %217
  store i32 %218, ptr %216, align 8, !tbaa !169
  br label %219

219:                                              ; preds = %204, %192
  %220 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !175
  %222 = load ptr, ptr @cfun, align 8, !tbaa !45
  %223 = getelementptr inbounds %struct.function, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !180
  %225 = getelementptr inbounds %struct.control_flow_graph, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !184
  %227 = icmp eq ptr %221, %226
  br i1 %227, label %228, label %149, !llvm.loop !191

228:                                              ; preds = %219, %139
  %229 = tail call zeroext i8 @cleanup_cfg(i32 noundef 16) #27
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_eh_landing_pad(ptr noundef readonly %0) local_unnamed_addr #17 !prof !44 {
  %2 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  %4 = getelementptr inbounds %struct.eh_region_d, ptr %3, i64 0, i32 6
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %4, %1 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %5, !llvm.loop !192

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !108
  store ptr %10, ptr %6, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_label_decl, ptr %12, i64 0, i32 2
  store i32 0, ptr %15, align 4, !tbaa !56
  br label %16

16:                                               ; preds = %14, %9
  %17 = load ptr, ptr @cfun, align 8, !tbaa !45
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.eh_status, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !113
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %20, i64 0, i32 2, i64 %23
  store ptr null, ptr %24, align 8, !tbaa !45
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @remove_eh_handler(ptr noundef readonly %0) local_unnamed_addr #17 !prof !44 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %21, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_label_decl, ptr %8, i64 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !56
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @cfun, align 8, !tbaa !45
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.eh_status, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %6, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !113
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %16, i64 0, i32 2, i64 %19
  store ptr null, ptr %20, align 8, !tbaa !45
  %21 = load ptr, ptr %6, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !193

23:                                               ; preds = %12, %1
  %24 = load ptr, ptr %0, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %24, i64 0, i32 1
  br label %31

28:                                               ; preds = %23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !45
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %30, %28 ], [ %27, %26 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %37, %33 ], [ %32, %31 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = icmp eq ptr %35, %0
  %37 = getelementptr inbounds %struct.eh_region_d, ptr %35, i64 0, i32 2
  br i1 %36, label %38, label %33, !llvm.loop !194

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  store ptr %40, ptr %34, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi ptr [ %40, %42 ], [ %46, %43 ]
  store ptr %24, ptr %44, align 8, !tbaa !78
  %45 = getelementptr inbounds %struct.eh_region_d, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !196

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.eh_region_d, ptr %44, i64 0, i32 2
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi ptr [ %34, %38 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  store ptr %53, ptr %51, align 8, !tbaa !45
  %54 = load ptr, ptr @cfun, align 8, !tbaa !45
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.eh_status, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !114
  %58 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !80
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %57, i64 0, i32 2, i64 %60
  store ptr null, ptr %61, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @for_each_eh_label(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !197 {
  br label %2

2:                                                ; preds = %30, %1
  %3 = phi i64 [ %31, %30 ], [ 1, %1 ]
  %4 = load ptr, ptr @cfun, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.eh_status, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !198

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 8, !tbaa !75
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %3, %11
  br i1 %12, label %13, label %16, !prof !198

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %7, i64 0, i32 2, i64 %3
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %2, %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ], [ null, %2 ]
  %18 = phi i1 [ false, %13 ], [ true, %9 ], [ true, %2 ]
  br i1 %18, label %32, label %19, !prof !199

19:                                               ; preds = %16
  %20 = icmp eq ptr %17, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !163
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void %0(ptr noundef nonnull %23) #27
  br label %30

30:                                               ; preds = %21, %25, %29, %19
  %31 = add nuw i64 %3, 1
  br label %2, !llvm.loop !200

32:                                               ; preds = %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @make_reg_eh_region_note(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !201 {
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !202

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !45
  br label %13

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %15, label %10, !prof !203

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %11) #27
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %7, %6 ], [ %12, %10 ]
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef %14) #27
  br label %15

15:                                               ; preds = %8, %13
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef null) #27
  %3 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -2147483648) #27
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !56
  br label %8

7:                                                ; preds = %1
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 25, ptr noundef %3) #27
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @insn_could_throw_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !204 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %12 [
    i16 10, label %13
    i16 8, label %4
    i16 7, label %4
    i16 9, label %4
  ], !prof !205

4:                                                ; preds = %1, %1, %1
  %5 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !206

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = tail call i32 @may_trap_p(ptr noundef %9) #27
  %11 = trunc i32 %10 to i8
  br label %13

12:                                               ; preds = %1, %4
  br label %13

13:                                               ; preds = %1, %12, %7
  %14 = phi i8 [ %11, %7 ], [ 0, %12 ], [ 1, %1 ]
  ret i8 %14
}

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @copy_reg_eh_region_note_forward(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #9 !prof !44 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %1, %2
  br i1 %15, label %40, label %16

16:                                               ; preds = %11, %36
  %17 = phi ptr [ %38, %36 ], [ %1, %11 ]
  %18 = tail call ptr @find_reg_note(ptr noundef %17, i32 noundef 25, ptr noundef null) #27
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, ptr %17, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %31 [
    i16 10, label %32
    i16 8, label %23
    i16 7, label %23
    i16 9, label %23
  ]

23:                                               ; preds = %20, %20, %20
  %24 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = tail call i32 @may_trap_p(ptr noundef %28) #27
  %30 = trunc i32 %29 to i8
  br label %32

31:                                               ; preds = %20, %23
  br label %32

32:                                               ; preds = %20, %26, %31
  %33 = phi i8 [ %30, %26 ], [ 0, %31 ], [ 1, %20 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @add_reg_note(ptr noundef nonnull %17, i32 noundef 25, ptr noundef %14) #27
  br label %36

36:                                               ; preds = %16, %32, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %16, !llvm.loop !207

40:                                               ; preds = %36, %11, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @copy_reg_eh_region_note_backward(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #9 !prof !44 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %9, %8 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = icmp eq ptr %1, %2
  br i1 %15, label %37, label %16

16:                                               ; preds = %11, %33
  %17 = phi ptr [ %35, %33 ], [ %1, %11 ]
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %28 [
    i16 10, label %29
    i16 8, label %20
    i16 7, label %20
    i16 9, label %20
  ]

20:                                               ; preds = %16, %16, %16
  %21 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = tail call i32 @may_trap_p(ptr noundef %25) #27
  %27 = trunc i32 %26 to i8
  br label %29

28:                                               ; preds = %16, %20
  br label %29

29:                                               ; preds = %16, %23, %28
  %30 = phi i8 [ %27, %23 ], [ 0, %28 ], [ 1, %16 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @add_reg_note(ptr noundef nonnull %17, i32 noundef 25, ptr noundef %14) #27
  br label %33

33:                                               ; preds = %29, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %37, label %16, !llvm.loop !208

37:                                               ; preds = %33, %11, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_eh_landing_pad_from_rtx(ptr noundef %0) local_unnamed_addr #11 !prof !209 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %53, !prof !210

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 8
  br i1 %7, label %8, label %19, !prof !211

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19, !prof !212

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %14, %8, %6
  %20 = phi ptr [ %18, %14 ], [ %0, %8 ], [ %0, %6 ]
  %21 = tail call ptr @find_reg_note(ptr noundef %20, i32 noundef 25, ptr noundef null) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35, !prof !213

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 8
  %25 = trunc i32 %24 to i16
  %26 = add i16 %25, -10
  %27 = icmp ult i16 %26, -3
  %28 = load i32, ptr @flag_non_call_exceptions, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %53, label %31, !prof !214

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = tail call i32 @may_trap_p(ptr noundef %33) #27
  br label %53

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !56
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 2147483647
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43, !prof !215

43:                                               ; preds = %35
  %44 = icmp slt i32 %40, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr @cfun, align 8, !tbaa !45
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = getelementptr inbounds %struct.eh_status, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !111
  %50 = and i64 %39, 4294967295
  %51 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %49, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  br label %53

53:                                               ; preds = %43, %23, %1, %31, %35, %45
  %54 = phi ptr [ %52, %45 ], [ null, %1 ], [ null, %35 ], [ null, %31 ], [ null, %23 ], [ null, %43 ]
  ret ptr %54
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #18 !prof !44 !PGOFuncName !216 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %66, !prof !210

8:                                                ; preds = %3
  %9 = icmp eq i32 %5, 8
  br i1 %9, label %10, label %21, !prof !211

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %21, !prof !212

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %16, %10, %8
  %22 = phi ptr [ %20, %16 ], [ %0, %10 ], [ %0, %8 ]
  %23 = tail call ptr @find_reg_note(ptr noundef %22, i32 noundef 25, ptr noundef null) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %39, !prof !213

25:                                               ; preds = %21
  %26 = load i32, ptr %22, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %38 [
    i16 10, label %66
    i16 8, label %28
    i16 7, label %28
    i16 9, label %28
  ], !prof !217

28:                                               ; preds = %25, %25, %25
  %29 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !60
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31, !prof !218

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = tail call i32 @may_trap_p(ptr noundef %33) #27
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i8
  br label %66

38:                                               ; preds = %25, %28
  br label %66

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !56
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 2147483647
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47, !prof !215

47:                                               ; preds = %39
  %48 = icmp slt i32 %44, 0
  %49 = load ptr, ptr @cfun, align 8, !tbaa !45
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  br i1 %48, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.eh_status, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !114
  %54 = sub i64 0, %43
  %55 = and i64 %54, 4294967295
  %56 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %53, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  br label %66

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.eh_status, ptr %50, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !111
  %61 = and i64 %43, 4294967295
  %62 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %60, i64 0, i32 2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !45
  %64 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !110
  br label %66

66:                                               ; preds = %38, %31, %25, %3, %39, %51, %58
  %67 = phi ptr [ %57, %51 ], [ %65, %58 ], [ null, %3 ], [ null, %39 ], [ null, %25 ], [ null, %31 ], [ null, %38 ]
  %68 = phi i8 [ 0, %51 ], [ 0, %58 ], [ 0, %3 ], [ 1, %39 ], [ 0, %25 ], [ %37, %31 ], [ 1, %38 ]
  %69 = phi ptr [ null, %51 ], [ %63, %58 ], [ null, %3 ], [ null, %39 ], [ null, %25 ], [ null, %31 ], [ null, %38 ]
  store ptr %69, ptr %2, align 8, !tbaa !45
  store ptr %67, ptr %1, align 8, !tbaa !45
  ret i8 %68
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_eh_region_from_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2), !range !187
  %5 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret ptr %5
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @can_throw_internal(ptr noundef %0) local_unnamed_addr #18 !prof !219 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %55, !prof !210

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 8
  br i1 %7, label %8, label %19, !prof !211

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19, !prof !212

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  br label %19

19:                                               ; preds = %14, %8, %6
  %20 = phi ptr [ %18, %14 ], [ %0, %8 ], [ %0, %6 ]
  %21 = tail call ptr @find_reg_note(ptr noundef %20, i32 noundef 25, ptr noundef null) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35, !prof !213

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 8
  %25 = trunc i32 %24 to i16
  %26 = add i16 %25, -10
  %27 = icmp ult i16 %26, -3
  %28 = load i32, ptr @flag_non_call_exceptions, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %55, label %31, !prof !214

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = tail call i32 @may_trap_p(ptr noundef %33) #27
  br label %55

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !56
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 2147483647
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43, !prof !215

43:                                               ; preds = %35
  %44 = icmp slt i32 %40, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr @cfun, align 8, !tbaa !45
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = getelementptr inbounds %struct.eh_status, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !111
  %50 = and i64 %39, 4294967295
  %51 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %49, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = icmp ne ptr %52, null
  %54 = zext i1 %53 to i8
  br label %55

55:                                               ; preds = %43, %23, %1, %31, %35, %45
  %56 = phi i8 [ %54, %45 ], [ 0, %1 ], [ 0, %35 ], [ 0, %31 ], [ 0, %23 ], [ 0, %43 ]
  ret i8 %56
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @can_throw_external(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
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
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = load i32, ptr %18, align 8, !tbaa !220
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = zext nneg i32 %19 to i64
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %47, label %26, !llvm.loop !222

26:                                               ; preds = %21, %23
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = load ptr, ptr %17, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = tail call zeroext i8 @can_throw_external(ptr noundef %30), !range !187
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %23, label %47

33:                                               ; preds = %10, %8
  %34 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %2), !range !187
  %35 = icmp eq i8 %34, 0
  %36 = load ptr, ptr %2, align 8
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.eh_region_d, ptr %40, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !76
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1796, ptr noundef nonnull @.str.2) #27
  br label %47

47:                                               ; preds = %23, %26, %16, %1, %46, %42, %39, %33
  %48 = phi i8 [ 0, %1 ], [ 0, %33 ], [ 1, %39 ], [ 0, %42 ], [ 0, %46 ], [ 0, %16 ], [ 1, %26 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i8 %48
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @insn_nothrow_p(ptr noundef %0) local_unnamed_addr #18 !prof !223 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %69, !prof !224

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 8
  br i1 %7, label %8, label %43, !prof !224

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %31, !prof !225

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = load i32, ptr %16, align 8, !tbaa !220
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %69, label %24, !llvm.loop !226

24:                                               ; preds = %19, %21
  %25 = phi i64 [ 0, %19 ], [ %22, %21 ]
  %26 = load ptr, ptr %15, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = tail call zeroext i8 @insn_nothrow_p(ptr noundef %28), !range !187
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %69, label %21

31:                                               ; preds = %8
  br i1 %7, label %32, label %43, !prof !211

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %43, !prof !212

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %6, %38, %32, %31
  %44 = phi ptr [ %42, %38 ], [ %0, %32 ], [ %0, %31 ], [ %0, %6 ]
  %45 = tail call ptr @find_reg_note(ptr noundef %44, i32 noundef 25, ptr noundef null) #27
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %61, !prof !213

47:                                               ; preds = %43
  %48 = load i32, ptr %44, align 8
  %49 = trunc i32 %48 to i16
  switch i16 %49, label %60 [
    i16 10, label %69
    i16 8, label %50
    i16 7, label %50
    i16 9, label %50
  ], !prof !217

50:                                               ; preds = %47, %47, %47
  %51 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !60
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53, !prof !218

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = tail call i32 @may_trap_p(ptr noundef %55) #27
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i8
  br label %69

60:                                               ; preds = %50, %47
  br label %69

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !56
  %66 = and i64 %65, 2147483647
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %69, label %68, !prof !215

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %21, %24, %14, %68, %61, %60, %53, %47, %1
  %70 = phi i8 [ 1, %1 ], [ 1, %61 ], [ 0, %47 ], [ %59, %53 ], [ 1, %60 ], [ 0, %68 ], [ 1, %14 ], [ 0, %24 ], [ 1, %21 ]
  ret i8 %70
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @can_nonlocal_goto(ptr noundef %0) local_unnamed_addr #18 !prof !227 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !228
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4, !prof !229

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 25, ptr noundef null) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !56
  %16 = icmp eq i64 %15, -2147483648
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %4, %1
  br label %18

18:                                               ; preds = %8, %11, %17
  %19 = phi i8 [ 1, %11 ], [ 0, %17 ], [ 1, %8 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_nothrow_function_flags() #11 !prof !115 !PGOFuncName !230 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !231
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !232
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !45
  %2 = load i64, ptr %1, align 8
  %3 = and i64 %2, 33554432
  %4 = icmp ne i64 %3, 0
  %5 = load i32, ptr @flag_exceptions, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !prof !233
  br i1 %7, label %68, label %8, !prof !233

8:                                                ; preds = %0
  %9 = tail call ptr @get_insns() #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %23, %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %27

14:                                               ; preds = %8, %23
  %15 = phi ptr [ %25, %23 ], [ %9, %8 ]
  %16 = tail call zeroext i8 @can_throw_external(ptr noundef nonnull %15), !range !187
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !231
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 16842751
  %21 = icmp eq i32 %20, 16777226
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !232
  br label %68

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %11, label %14, !llvm.loop !234

27:                                               ; preds = %11, %36
  %28 = phi ptr [ %38, %36 ], [ %12, %11 ]
  %29 = tail call zeroext i8 @can_throw_external(ptr noundef nonnull %28), !range !187
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !231
  %32 = load i32, ptr %28, align 8
  %33 = and i32 %32, 16842751
  %34 = icmp eq i32 %33, 16777226
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 33), align 1, !tbaa !232
  br label %68

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !235

40:                                               ; preds = %36, %11
  %41 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 49), align 1, !tbaa !231
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @current_function_decl, align 8, !tbaa !45
  %45 = tail call ptr @cgraph_node(ptr noundef %44) #27
  %46 = tail call i32 @cgraph_function_body_availability(ptr noundef %45) #27
  %47 = icmp ugt i32 %46, 2
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load ptr, ptr @current_function_decl, align 8, !tbaa !45
  %50 = tail call ptr @cgraph_node(ptr noundef %49) #27
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !45
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %54
  %55 = phi ptr [ %60, %54 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 14
  %57 = load i8, ptr %56, align 2
  %58 = and i8 %57, -5
  store i8 %58, ptr %56, align 2
  %59 = getelementptr inbounds %struct.cgraph_edge, ptr %55, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54, !llvm.loop !236

62:                                               ; preds = %54, %48
  tail call void @cgraph_set_nothrow_flag(ptr noundef %50, i8 noundef zeroext 1) #27
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !45
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call ptr @current_function_name() #27
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.34, ptr noundef %66)
  br label %68

68:                                               ; preds = %40, %43, %65, %62, %0, %35, %22
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_eh_pointer(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3)
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %9) #27
  store ptr %10, ptr %5, align 8, !tbaa !164
  br label %11

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %5, align 8, !tbaa !164
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_builtin_eh_common(ptr noundef %0) unnamed_addr #9 !prof !44 {
  %2 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 0) #27
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1941, ptr noundef nonnull @.str.2) #27
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #27
  %7 = load ptr, ptr @cfun, align 8, !tbaa !45
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.eh_status, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = and i64 %6, 4294967295
  %12 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %10, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1948, ptr noundef nonnull @.str.2) #27
  br label %16

16:                                               ; preds = %5, %15
  ret ptr %13
}

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_eh_filter(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3)
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !165
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !166
  %10 = tail call i32 %9() #27
  %11 = tail call ptr @gen_reg_rtx(i32 noundef %10) #27
  store ptr %11, ptr %5, align 8, !tbaa !165
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %5, align 8, !tbaa !165
  ret ptr %13
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_eh_copy_values(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %3)
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call fastcc ptr @expand_builtin_eh_common(ptr noundef %6)
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !166
  %9 = tail call i32 %8() #27
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #27
  store ptr %15, ptr %10, align 8, !tbaa !164
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %22 = tail call ptr @gen_reg_rtx(i32 noundef %21) #27
  store ptr %22, ptr %17, align 8, !tbaa !164
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %4, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @gen_reg_rtx(i32 noundef %9) #27
  store ptr %28, ptr %24, align 8, !tbaa !165
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !165
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call ptr @gen_reg_rtx(i32 noundef %9) #27
  store ptr %34, ptr %30, align 8, !tbaa !165
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr %10, align 8, !tbaa !164
  %37 = load ptr, ptr %17, align 8, !tbaa !164
  %38 = tail call ptr @emit_move_insn(ptr noundef %36, ptr noundef %37) #27
  %39 = load ptr, ptr %24, align 8, !tbaa !165
  %40 = load ptr, ptr %30, align 8, !tbaa !165
  %41 = tail call ptr @emit_move_insn(ptr noundef %39, ptr noundef %40) #27
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !45
  ret ptr %42
}

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_builtin_unwind_init() local_unnamed_addr #9 !prof !44 {
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 30), align 2, !tbaa !237
  tail call void @ix86_setup_frame_addresses() #27
  ret void
}

declare void @ix86_setup_frame_addresses() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_eh_return_data_regno(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #27
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !45
  br label %19

9:                                                ; preds = %1
  %10 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #27
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !45
  br label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds [53 x i32], ptr @svr4_dbx_register_map, i64 0, i64 %10
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #27
  br label %19

19:                                               ; preds = %14, %12, %7
  %20 = phi ptr [ %8, %7 ], [ %13, %12 ], [ %18, %14 ]
  ret ptr %20
}

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_extract_return_addr(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 16, i32 noundef 0, ptr noundef null) #27
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %6 [
    i8 16, label %8
    i8 0, label %8
  ]

6:                                                ; preds = %1
  %7 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %2, i32 noundef 0) #27
  br label %8

8:                                                ; preds = %1, %1, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ], [ %2, %1 ]
  ret ptr %9
}

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_frob_return_addr(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %2, i32 noundef 0, ptr noundef null) #27
  %4 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %3, i8 noundef zeroext 0) #27
  ret ptr %4
}

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_builtin_eh_return(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !44 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !238
  %4 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef null) #27
  %5 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %4, i8 noundef zeroext 0) #27
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !238
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @copy_to_reg(ptr noundef %5) #27
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !238
  br label %14

10:                                               ; preds = %2
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @emit_move_insn(ptr noundef nonnull %6, ptr noundef %5) #27
  br label %14

14:                                               ; preds = %10, %12, %8
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !239
  %16 = tail call ptr @expand_expr_real(ptr noundef %1, ptr noundef %15, i32 noundef 0, i32 noundef 0, ptr noundef null) #27
  %17 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %16, i8 noundef zeroext 0) #27
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !239
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call ptr @copy_to_reg(ptr noundef %17) #27
  store ptr %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !239
  br label %26

22:                                               ; preds = %14
  %23 = icmp eq ptr %17, %18
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %17) #27
  br label %26

26:                                               ; preds = %22, %24, %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !240
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call ptr @gen_label_rtx() #27
  store ptr %30, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !240
  br label %31

31:                                               ; preds = %29, %26
  %32 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !240
  tail call void @emit_jump(ptr noundef %32) #27
  ret void
}

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare void @emit_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @expand_eh_return() local_unnamed_addr #11 !prof !115 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !240
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3, !prof !233

3:                                                ; preds = %0
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1, !tbaa !241
  %4 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 2) #27
  %5 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !45
  %6 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef %5) #27
  %7 = tail call ptr @gen_label_rtx() #27
  tail call void @emit_jump(ptr noundef %7) #27
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 2), align 8, !tbaa !240
  %9 = tail call ptr @emit_label(ptr noundef %8) #27
  tail call void @clobber_return_register() #27
  %10 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 2) #27
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5), align 8, !tbaa !238
  %12 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef %11) #27
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 1), align 8, !tbaa !239
  %14 = tail call ptr @gen_eh_return(ptr noundef %13) #27
  %15 = tail call ptr @emit_insn(ptr noundef %14) #27
  %16 = tail call ptr @emit_label(ptr noundef %7) #27
  br label %17

17:                                               ; preds = %0, %3
  ret void
}

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare void @clobber_return_register() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_eh_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_extend_pointer(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %2, i32 noundef 0, ptr noundef null) #27
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 10), align 8, !tbaa !242
  %5 = tail call i32 %4() #27
  %6 = load i32, ptr @ptr_mode, align 4, !tbaa !60
  %7 = tail call ptr @convert_modes(i32 noundef %5, i32 noundef %6, ptr noundef %3, i32 noundef 1) #27
  ret ptr %7
}

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_convert_to_eh_region_ranges() #13 !prof !115 !PGOFuncName !243 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !45
  %2 = load ptr, ptr %1, align 8, !tbaa !67
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @convert_to_eh_region_ranges() #9 !prof !44 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %4 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef 64, i64 noundef 8, i64 noundef 1) #27
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !244
  %5 = tail call ptr @htab_create(i64 noundef 31, ptr noundef nonnull @action_record_hash, ptr noundef nonnull @action_record_eq, ptr noundef nonnull @free) #27
  %6 = tail call ptr @get_insns() #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %213, label %8

8:                                                ; preds = %0, %193
  %9 = phi ptr [ %207, %193 ], [ %6, %0 ]
  %10 = phi i32 [ %205, %193 ], [ -3, %0 ]
  %11 = phi ptr [ %204, %193 ], [ null, %0 ]
  %12 = phi ptr [ %203, %193 ], [ null, %0 ]
  %13 = phi ptr [ %202, %193 ], [ null, %0 ]
  %14 = phi i32 [ %201, %193 ], [ 0, %0 ]
  %15 = phi i32 [ %200, %193 ], [ 0, %0 ]
  %16 = phi ptr [ %199, %193 ], [ null, %0 ]
  %17 = phi ptr [ %198, %193 ], [ null, %0 ]
  %18 = phi ptr [ %197, %193 ], [ null, %0 ]
  %19 = phi i32 [ %196, %193 ], [ 0, %0 ]
  %20 = phi ptr [ %195, %193 ], [ null, %0 ]
  %21 = phi ptr [ %194, %193 ], [ null, %0 ]
  %22 = load i32, ptr %9, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %159 [
    i16 8, label %24
    i16 7, label %24
    i16 9, label %24
    i16 10, label %24
    i16 13, label %109
  ]

24:                                               ; preds = %8, %8, %8, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %25 = and i32 %22, 65535
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  br label %38

38:                                               ; preds = %33, %27, %24
  %39 = phi ptr [ %37, %33 ], [ %9, %27 ], [ %9, %24 ]
  %40 = call fastcc zeroext i8 @get_eh_region_and_lp_from_rtx(ptr noundef %39, ptr noundef nonnull %2, ptr noundef nonnull %1), !range !187
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %5, ptr noundef nonnull %43)
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %46, %45 ], [ -1, %42 ]
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 38), align 2, !tbaa !245
  br label %55

51:                                               ; preds = %47
  %52 = icmp eq i32 %10, -3
  %53 = select i1 %52, ptr %9, ptr %13
  %54 = select i1 %52, i32 -1, i32 %10
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi ptr [ %13, %50 ], [ %53, %51 ]
  %57 = phi i32 [ %10, %50 ], [ %54, %51 ]
  %58 = icmp sgt i32 %48, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr %1, align 8, !tbaa !45
  %61 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !163
  br label %63

63:                                               ; preds = %55, %59
  %64 = phi ptr [ %62, %59 ], [ null, %55 ]
  %65 = icmp eq i32 %57, %48
  %66 = icmp eq ptr %12, %64
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %103, label %68

68:                                               ; preds = %63
  %69 = icmp sgt i32 %57, -2
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = icmp eq ptr %17, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %70
  %73 = tail call fastcc i32 @add_call_site(ptr noundef null, i32 noundef 0, i32 noundef 0)
  %74 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %17) #27
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 2
  store i32 %73, ptr %75, align 8, !tbaa !56
  %76 = icmp eq ptr %56, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %18) #27
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 2
  store i32 %73, ptr %79, align 8, !tbaa !56
  br label %83

80:                                               ; preds = %72
  %81 = icmp eq ptr %11, %18
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2481, ptr noundef nonnull @.str.2) #27
  br label %83

83:                                               ; preds = %82, %80, %77, %70
  %84 = phi i32 [ %73, %77 ], [ %73, %80 ], [ %73, %82 ], [ %14, %70 ]
  %85 = icmp eq ptr %56, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @add_call_site(ptr noundef null, i32 noundef 0, i32 noundef %15)
  %88 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %56) #27
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 2
  store i32 %87, ptr %89, align 8, !tbaa !56
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %87, %86 ], [ %84, %83 ]
  %92 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %11) #27
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 2
  store i32 %91, ptr %93, align 8, !tbaa !56
  br label %94

94:                                               ; preds = %90, %68
  %95 = phi i32 [ %91, %90 ], [ %14, %68 ]
  %96 = phi ptr [ null, %90 ], [ %56, %68 ]
  %97 = icmp sgt i32 %48, -2
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %100 = tail call fastcc i32 @add_call_site(ptr noundef %64, i32 noundef %99, i32 noundef %15)
  %101 = tail call ptr @emit_note_before(i32 noundef 7, ptr noundef nonnull %9) #27
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 2
  store i32 %100, ptr %102, align 8, !tbaa !56
  br label %103

103:                                              ; preds = %63, %98, %94, %38
  %104 = phi i32 [ %14, %38 ], [ %14, %63 ], [ %100, %98 ], [ %95, %94 ]
  %105 = phi ptr [ %13, %38 ], [ %56, %63 ], [ %96, %98 ], [ %96, %94 ]
  %106 = phi ptr [ %12, %38 ], [ %12, %63 ], [ %64, %98 ], [ %64, %94 ]
  %107 = phi ptr [ %11, %38 ], [ %9, %63 ], [ %9, %98 ], [ %9, %94 ]
  %108 = phi i32 [ %10, %38 ], [ %57, %63 ], [ %48, %98 ], [ %48, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  br label %193

109:                                              ; preds = %8
  %110 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %111 = load i32, ptr %110, align 8, !tbaa !56
  %112 = icmp eq i32 %111, 11
  br i1 %112, label %113, label %159

113:                                              ; preds = %109
  %114 = icmp eq ptr %16, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2516, ptr noundef nonnull @.str.2) #27
  br label %116

116:                                              ; preds = %113, %115
  %117 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !60
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2517, ptr noundef nonnull @.str.2) #27
  br label %120

120:                                              ; preds = %116, %119
  %121 = icmp eq ptr %13, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %120
  %123 = icmp eq i32 %10, -1
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2524, ptr noundef nonnull @.str.2) #27
  br label %129

125:                                              ; preds = %120
  %126 = icmp eq i32 %10, -3
  %127 = load ptr, ptr @global_rtl, align 16
  %128 = select i1 %126, ptr %12, ptr %127
  br label %129

129:                                              ; preds = %125, %124, %122
  %130 = phi ptr [ %11, %122 ], [ %11, %124 ], [ %18, %125 ]
  %131 = phi ptr [ %13, %122 ], [ %13, %124 ], [ %17, %125 ]
  %132 = phi ptr [ %12, %122 ], [ %12, %124 ], [ %128, %125 ]
  %133 = phi i32 [ -3, %122 ], [ -3, %124 ], [ %10, %125 ]
  %134 = sext i32 %15 to i64
  %135 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !45
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %129
  %139 = load i32, ptr %136, align 8, !tbaa !246
  br label %140

140:                                              ; preds = %129, %138
  %141 = phi i32 [ %139, %138 ], [ 0, %129 ]
  %142 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %143 = add i32 %142, %141
  store i32 %143, ptr @call_site_base, align 4, !tbaa !60
  %144 = add nsw i32 %15, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2534, ptr noundef nonnull @.str.2) #27
  br label %150

150:                                              ; preds = %140, %149
  %151 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 10) #27
  store ptr %151, ptr %146, align 8, !tbaa !45
  %152 = tail call i32 @max_label_num() #27
  %153 = tail call i32 @get_first_label_num() #27
  %154 = sub nsw i32 %152, %153
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = tail call ptr @xcalloc(i64 noundef %156, i64 noundef 8) #27
  %158 = tail call ptr @sbitmap_alloc(i32 noundef %155) #27
  br label %193

159:                                              ; preds = %8, %109
  %160 = and i32 %22, 65535
  %161 = icmp eq i32 %160, 12
  %162 = icmp ne ptr %21, null
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %193

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !56
  %167 = sub nsw i32 %166, %19
  %168 = load ptr, ptr %20, align 8, !tbaa !132
  %169 = icmp eq ptr %168, null
  br i1 %169, label %184, label %170

170:                                              ; preds = %164
  %171 = lshr i32 %167, 6
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.simple_bitmap_def, ptr %20, i64 0, i32 3, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !134
  %175 = and i32 %167, 63
  %176 = zext nneg i32 %175 to i64
  %177 = shl nuw i64 1, %176
  %178 = and i64 %174, %177
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = getelementptr inbounds i8, ptr %168, i64 %172
  %182 = load i8, ptr %181, align 1, !tbaa !56
  %183 = add i8 %182, 1
  store i8 %183, ptr %181, align 1, !tbaa !56
  br label %184

184:                                              ; preds = %164, %170, %180
  %185 = and i32 %167, 63
  %186 = zext nneg i32 %185 to i64
  %187 = shl nuw i64 1, %186
  %188 = lshr i32 %167, 6
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds %struct.simple_bitmap_def, ptr %20, i64 0, i32 3, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !134
  %192 = or i64 %191, %187
  store i64 %192, ptr %190, align 8, !tbaa !134
  br label %193

193:                                              ; preds = %103, %159, %184, %150
  %194 = phi ptr [ %21, %103 ], [ %157, %150 ], [ %21, %184 ], [ %21, %159 ]
  %195 = phi ptr [ %20, %103 ], [ %158, %150 ], [ %20, %184 ], [ %20, %159 ]
  %196 = phi i32 [ %19, %103 ], [ %153, %150 ], [ %19, %184 ], [ %19, %159 ]
  %197 = phi ptr [ %18, %103 ], [ %130, %150 ], [ %18, %184 ], [ %18, %159 ]
  %198 = phi ptr [ %17, %103 ], [ %131, %150 ], [ %17, %184 ], [ %17, %159 ]
  %199 = phi ptr [ %16, %103 ], [ %9, %150 ], [ %16, %184 ], [ %16, %159 ]
  %200 = phi i32 [ %15, %103 ], [ %144, %150 ], [ %15, %184 ], [ %15, %159 ]
  %201 = phi i32 [ %104, %103 ], [ %14, %150 ], [ %14, %184 ], [ %14, %159 ]
  %202 = phi ptr [ %105, %103 ], [ null, %150 ], [ %13, %184 ], [ %13, %159 ]
  %203 = phi ptr [ %106, %103 ], [ %132, %150 ], [ %12, %184 ], [ %12, %159 ]
  %204 = phi ptr [ %107, %103 ], [ %11, %150 ], [ %11, %184 ], [ %11, %159 ]
  %205 = phi i32 [ %108, %103 ], [ %133, %150 ], [ %10, %184 ], [ %10, %159 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %207 = load ptr, ptr %206, align 8, !tbaa !56
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %8, !llvm.loop !248

209:                                              ; preds = %193
  %210 = icmp slt i32 %205, -1
  %211 = icmp ne ptr %202, null
  %212 = select i1 %210, i1 true, i1 %211
  br label %213

213:                                              ; preds = %209, %0
  %214 = phi ptr [ null, %0 ], [ %194, %209 ]
  %215 = phi ptr [ null, %0 ], [ %195, %209 ]
  %216 = phi i32 [ 0, %0 ], [ %196, %209 ]
  %217 = phi ptr [ null, %0 ], [ %199, %209 ]
  %218 = phi i32 [ 0, %0 ], [ %201, %209 ]
  %219 = phi ptr [ null, %0 ], [ %204, %209 ]
  %220 = phi i1 [ true, %0 ], [ %212, %209 ]
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = tail call ptr @emit_note_after(i32 noundef 8, ptr noundef %219) #27
  %223 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 2
  store i32 %218, ptr %223, align 8, !tbaa !56
  br label %224

224:                                              ; preds = %221, %213
  store i32 %3, ptr @call_site_base, align 4, !tbaa !60
  %225 = icmp eq ptr %214, null
  br i1 %225, label %390, label %226

226:                                              ; preds = %224
  %227 = icmp eq ptr %217, null
  br label %228

228:                                              ; preds = %226, %385
  %229 = phi i64 [ 0, %226 ], [ %386, %385 ]
  %230 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !45
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %228
  %234 = load i32, ptr %231, align 8, !tbaa !246
  br label %235

235:                                              ; preds = %228, %233
  %236 = phi i32 [ %234, %233 ], [ 0, %228 ]
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %385

238:                                              ; preds = %235
  %239 = icmp eq i64 %229, 0
  %240 = and i64 %229, 4294967295
  %241 = zext nneg i32 %236 to i64
  br label %242

242:                                              ; preds = %238, %381
  %243 = phi i64 [ 0, %238 ], [ %383, %381 ]
  %244 = phi ptr [ null, %238 ], [ %382, %381 ]
  %245 = load ptr, ptr %230, align 8, !tbaa !45
  %246 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %245, i64 0, i32 2, i64 %243
  %247 = load ptr, ptr %246, align 8, !tbaa !45
  %248 = load ptr, ptr %247, align 8, !tbaa !249
  %249 = icmp eq ptr %248, null
  br i1 %249, label %381, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 1, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !56
  %253 = sub nsw i32 %252, %216
  %254 = lshr i32 %253, 6
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds %struct.simple_bitmap_def, ptr %215, i64 0, i32 3, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !134
  %258 = and i32 %253, 63
  %259 = zext nneg i32 %258 to i64
  %260 = lshr i64 %257, %259
  %261 = and i64 %260, 1
  %262 = xor i64 %240, %261
  %263 = icmp eq i64 %262, 1
  br i1 %263, label %264, label %381

264:                                              ; preds = %250
  %265 = sext i32 %253 to i64
  %266 = getelementptr inbounds ptr, ptr %214, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !45
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %378

269:                                              ; preds = %264
  %270 = tail call ptr @gen_label_rtx() #27
  store ptr %270, ptr %266, align 8, !tbaa !45
  %271 = icmp ne ptr %244, null
  %272 = select i1 %271, i1 true, i1 %227
  br i1 %272, label %289, label %273

273:                                              ; preds = %269, %285
  %274 = phi ptr [ %287, %285 ], [ %217, %269 ]
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 13
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 1
  %280 = load i32, ptr %279, align 8, !tbaa !56
  %281 = icmp eq i32 %280, 10
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !56
  br label %289

285:                                              ; preds = %273, %278
  %286 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !56
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %273, !llvm.loop !251

289:                                              ; preds = %285, %269, %282
  %290 = phi ptr [ %284, %282 ], [ %244, %269 ], [ null, %285 ]
  br i1 %239, label %291, label %296

291:                                              ; preds = %289
  %292 = tail call ptr @emit_label_before(ptr noundef %270, ptr noundef %217) #27
  %293 = load ptr, ptr %247, align 8, !tbaa !249
  %294 = tail call ptr @gen_jump(ptr noundef %293) #27
  %295 = tail call ptr @emit_jump_insn_before(ptr noundef %294, ptr noundef %217) #27
  br label %302

296:                                              ; preds = %289
  %297 = load ptr, ptr %247, align 8, !tbaa !249
  %298 = tail call ptr @gen_jump(ptr noundef %297) #27
  %299 = tail call ptr @emit_jump_insn_after(ptr noundef %298, ptr noundef %217) #27
  %300 = load ptr, ptr %266, align 8, !tbaa !45
  %301 = tail call ptr @emit_label_after(ptr noundef %300, ptr noundef %217) #27
  br label %302

302:                                              ; preds = %296, %291
  %303 = phi ptr [ %295, %291 ], [ %299, %296 ]
  %304 = phi ptr [ %292, %291 ], [ %301, %296 ]
  %305 = load ptr, ptr %247, align 8, !tbaa !249
  %306 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %305, ptr %306, align 8, !tbaa !56
  tail call void @add_reg_note(ptr noundef %303, i32 noundef 29, ptr noundef null) #27
  %307 = load ptr, ptr %247, align 8, !tbaa !249
  %308 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 2
  %309 = load ptr, ptr %308, align 8, !tbaa !56
  %310 = icmp eq ptr %309, null
  br i1 %310, label %322, label %311

311:                                              ; preds = %302
  %312 = load i32, ptr %309, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 13
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 1
  %317 = load i32, ptr %316, align 8, !tbaa !56
  %318 = icmp eq i32 %317, 10
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !56
  br label %322

322:                                              ; preds = %302, %311, %315, %319
  %323 = phi ptr [ %321, %319 ], [ null, %315 ], [ null, %311 ], [ null, %302 ]
  %324 = icmp ne ptr %323, null
  %325 = icmp ne ptr %290, null
  %326 = select i1 %324, i1 %325, i1 false
  br i1 %326, label %327, label %378

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 13
  %329 = load i32, ptr %328, align 8, !tbaa !174
  %330 = and i32 %329, 96
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %378, label %332

332:                                              ; preds = %327
  %333 = icmp eq i32 %330, 64
  %334 = select i1 %333, i32 32, i32 64
  %335 = tail call ptr @create_basic_block(ptr noundef %304, ptr noundef %303, ptr noundef nonnull %290) #27
  %336 = tail call ptr @make_single_succ_edge(ptr noundef %335, ptr noundef nonnull %323, i32 noundef 8192) #27
  %337 = getelementptr inbounds %struct.basic_block_def, ptr %335, i64 0, i32 13
  %338 = load i32, ptr %337, align 8, !tbaa !174
  %339 = and i32 %338, -97
  %340 = or disjoint i32 %339, %334
  store i32 %340, ptr %337, align 8, !tbaa !174
  br label %341

341:                                              ; preds = %374, %332
  %342 = phi i32 [ %375, %374 ], [ 0, %332 ]
  %343 = zext i32 %342 to i64
  br label %344

344:                                              ; preds = %341, %363
  %345 = load ptr, ptr %323, align 8, !tbaa !45
  %346 = icmp eq ptr %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = load i32, ptr %345, align 8, !tbaa !167
  br label %349

349:                                              ; preds = %347, %344
  %350 = phi i32 [ %348, %347 ], [ 0, %344 ]
  %351 = icmp eq i32 %350, %342
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.VEC_edge_base, ptr %345, i64 0, i32 2, i64 %343
  %354 = load ptr, ptr %353, align 8, !tbaa !45
  br label %355

355:                                              ; preds = %349, %352
  %356 = phi ptr [ %354, %352 ], [ null, %349 ]
  %357 = icmp eq ptr %356, null
  br i1 %357, label %376, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 7
  %360 = load i32, ptr %359, align 8, !tbaa !169
  %361 = and i32 %360, 8200
  %362 = icmp eq i32 %361, 8200
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  tail call void @redirect_edge_succ(ptr noundef nonnull %356, ptr noundef %335) #27
  %364 = load i32, ptr %359, align 8, !tbaa !169
  %365 = and i32 %364, -8193
  store i32 %365, ptr %359, align 8, !tbaa !169
  br label %344, !llvm.loop !252

366:                                              ; preds = %358
  %367 = icmp eq ptr %345, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %366
  %369 = load i32, ptr %345, align 8, !tbaa !167
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %369, %368 ], [ 0, %366 ]
  %372 = icmp ult i32 %342, %371
  br i1 %372, label %374, label %373

373:                                              ; preds = %370
  tail call void @fancy_abort(ptr noundef nonnull @.str.33, i32 noundef 738, ptr noundef nonnull @.str.2) #27
  br label %374

374:                                              ; preds = %370, %373
  %375 = add i32 %342, 1
  br label %341, !llvm.loop !252

376:                                              ; preds = %355
  %377 = select i1 %239, ptr %335, ptr %290
  br label %378

378:                                              ; preds = %322, %327, %376, %264
  %379 = phi ptr [ %377, %376 ], [ %290, %327 ], [ %290, %322 ], [ %244, %264 ]
  %380 = load ptr, ptr %266, align 8, !tbaa !45
  store ptr %380, ptr %247, align 8, !tbaa !249
  br label %381

381:                                              ; preds = %250, %242, %378
  %382 = phi ptr [ %379, %378 ], [ %244, %242 ], [ %244, %250 ]
  %383 = add nuw nsw i64 %243, 1
  %384 = icmp eq i64 %383, %241
  br i1 %384, label %385, label %242, !llvm.loop !253

385:                                              ; preds = %381, %235
  %386 = add nuw nsw i64 %229, 1
  %387 = icmp eq i64 %229, 0
  br i1 %387, label %228, label %388, !llvm.loop !254

388:                                              ; preds = %385
  %389 = load ptr, ptr %215, align 8, !tbaa !132
  tail call void @free(ptr noundef %389)
  tail call void @free(ptr noundef %215)
  tail call void @free(ptr noundef %214)
  br label %390

390:                                              ; preds = %388, %224
  tail call void @htab_delete(ptr noundef %5) #27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @output_function_exception_table(ptr noundef %0) local_unnamed_addr #11 !prof !115 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !45
  %3 = tail call ptr @get_personality_function(ptr noundef %2) #27
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 38), align 2, !tbaa !245
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !233

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @assemble_external_libcall(ptr noundef nonnull %3) #27
  br label %9

9:                                                ; preds = %8, %6
  tail call fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef 0)
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 1), align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef 1)
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call ptr @current_function_section() #27
  tail call void @switch_to_section(ptr noundef %14) #27
  br label %15

15:                                               ; preds = %1, %13
  ret void
}

declare ptr @get_personality_function(ptr noundef) local_unnamed_addr #3

declare void @assemble_external_libcall(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_one_function_exception_table(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !44 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  %10 = load ptr, ptr @exception_section, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !255
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @asm_preferred_eh_data_format(i32 noundef 0, i32 noundef 1) #27
  %17 = load i32, ptr @flag_pic, align 4, !tbaa !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = and i32 %16, 112
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %20, 80
  %23 = and i1 %21, %22
  %24 = select i1 %23, i32 0, i32 512
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i32 [ 0, %15 ], [ %24, %19 ]
  %27 = load i32, ptr @flag_function_sections, align 4, !tbaa !60
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %31 = add i64 %30, 32
  %32 = tail call ptr @xmalloc(i64 noundef %31) #27
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) @.str.54, ptr noundef %0)
  %34 = tail call ptr @get_section(ptr noundef %32, i32 noundef %26, ptr noundef null) #27
  tail call void @free(ptr noundef %32)
  br label %43

35:                                               ; preds = %25
  %36 = tail call ptr @get_section(ptr noundef nonnull @.str.55, i32 noundef %26, ptr noundef null) #27
  store ptr %36, ptr @exception_section, align 8, !tbaa !45
  br label %43

37:                                               ; preds = %12
  %38 = load i32, ptr @flag_pic, align 4, !tbaa !60
  %39 = icmp eq i32 %38, 0
  %40 = load ptr, ptr @data_section, align 8
  %41 = load ptr, ptr @readonly_data_section, align 8
  %42 = select i1 %39, ptr %41, ptr %40
  store ptr %42, ptr @exception_section, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %2, %29, %35, %37
  %44 = phi ptr [ %42, %37 ], [ %10, %2 ], [ %34, %29 ], [ %36, %35 ]
  tail call void @switch_to_section(ptr noundef %44) #27
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 9), align 8, !tbaa !256
  %46 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  tail call void %45(ptr noundef %46) #27
  %47 = load ptr, ptr @cfun, align 8, !tbaa !45
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = getelementptr inbounds %struct.eh_status, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !137
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, ptr %50, align 8, !tbaa !142
  br label %54

54:                                               ; preds = %43, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %43 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %59 = icmp eq i8 %58, 0
  %60 = getelementptr inbounds %struct.eh_status, ptr %48, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %59, label %66, label %63

63:                                               ; preds = %57
  br i1 %62, label %69, label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %61, align 8, !tbaa !142
  br label %69

66:                                               ; preds = %57
  br i1 %62, label %69, label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %61, align 4, !tbaa !144
  br label %69

69:                                               ; preds = %67, %66, %64, %63
  %70 = phi i32 [ %65, %64 ], [ 0, %63 ], [ %68, %67 ], [ 0, %66 ]
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %54
  %73 = phi i1 [ true, %54 ], [ %71, %69 ]
  br i1 %73, label %74, label %84

74:                                               ; preds = %72
  %75 = tail call i32 @asm_preferred_eh_data_format(i32 noundef 0, i32 noundef 1) #27
  %76 = icmp eq i32 %1, 0
  %77 = select i1 %76, ptr @.str.37, ptr @.str.36
  %78 = load ptr, ptr @cfun, align 8, !tbaa !45
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 14
  %80 = load i32, ptr %79, align 4, !tbaa !257
  %81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %77, i32 noundef %80)
  %82 = tail call i32 @size_of_encoded_value(i32 noundef %75) #27
  %83 = shl nsw i32 %82, 3
  tail call void @assemble_align(i32 noundef %83) #27
  br label %84

84:                                               ; preds = %72, %74
  %85 = phi i32 [ %82, %74 ], [ 0, %72 ]
  %86 = phi i32 [ %75, %74 ], [ 255, %72 ]
  %87 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !258
  %88 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  %89 = icmp eq i32 %1, 0
  %90 = select i1 %89, ptr @.str.39, ptr @.str.38
  %91 = load ptr, ptr @cfun, align 8, !tbaa !45
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 14
  %93 = load i32, ptr %92, align 4, !tbaa !257
  %94 = sext i32 %93 to i64
  tail call void %87(ptr noundef %88, ptr noundef nonnull %90, i64 noundef %94) #27
  %95 = tail call ptr @eh_data_format_name(i32 noundef 255) #27
  tail call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef 255, ptr noundef nonnull @.str.40, ptr noundef %95) #27
  %96 = sext i32 %86 to i64
  %97 = tail call ptr @eh_data_format_name(i32 noundef %86) #27
  tail call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %96, ptr noundef nonnull @.str.41, ptr noundef %97) #27
  br i1 %73, label %98, label %107

98:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  %99 = select i1 %89, ptr @.str.43, ptr @.str.42
  %100 = load ptr, ptr @cfun, align 8, !tbaa !45
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 14
  %102 = load i32, ptr %101, align 4, !tbaa !257
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %99, i32 noundef %102)
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull @.str.44) #27
  %104 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  call void @assemble_name(ptr noundef %104, ptr noundef nonnull %9) #27
  %105 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  %106 = call i64 @fwrite(ptr nonnull @.str.45, i64 2, i64 1, ptr %105)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  br label %107

107:                                              ; preds = %98, %84
  %108 = call ptr @eh_data_format_name(i32 noundef 1) #27
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef 1, ptr noundef nonnull @.str.46, ptr noundef %108) #27
  %109 = select i1 %89, ptr @.str.48, ptr @.str.47
  %110 = load ptr, ptr @cfun, align 8, !tbaa !45
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 14
  %112 = load i32, ptr %111, align 4, !tbaa !257
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %109, i32 noundef %112)
  %114 = select i1 %89, ptr @.str.50, ptr @.str.49
  %115 = load ptr, ptr @cfun, align 8, !tbaa !45
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 14
  %117 = load i32, ptr %116, align 4, !tbaa !257
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %114, i32 noundef %117)
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull @.str.51) #27
  %119 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  call void @assemble_name(ptr noundef %119, ptr noundef nonnull %7) #27
  %120 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  %121 = call i64 @fwrite(ptr nonnull @.str.45, i64 2, i64 1, ptr %120)
  %122 = zext nneg i32 %1 to i64
  %123 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %107
  %127 = load i32, ptr %124, align 8, !tbaa !246
  br label %128

128:                                              ; preds = %126, %107
  %129 = phi i32 [ %127, %126 ], [ 0, %107 ]
  %130 = load i8, ptr @first_function_block_is_cold, align 1
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4, i32 1), ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 4)
  %133 = select i1 %89, ptr @current_function_func_begin_label, ptr %132
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = icmp sgt i32 %129, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %128
  %137 = zext nneg i32 %129 to i64
  br label %138

138:                                              ; preds = %136, %163
  %139 = phi i64 [ 0, %136 ], [ %167, %163 ]
  %140 = load ptr, ptr %123, align 8, !tbaa !45
  %141 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %140, i64 0, i32 2, i64 %139
  %142 = load ptr, ptr %141, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %143 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %144 = trunc i64 %139 to i32
  %145 = add nsw i32 %143, %144
  %146 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.56, i32 noundef %145)
  %147 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %148 = trunc i64 %139 to i32
  %149 = add nsw i32 %147, %148
  %150 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.57, i32 noundef %149)
  %151 = load ptr, ptr %142, align 8, !tbaa !249
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %138
  %154 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 1, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !56
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull @.str.58, i32 noundef %155)
  br label %157

157:                                              ; preds = %153, %138
  %158 = trunc i64 %139 to i32
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %3, ptr noundef %134, ptr noundef nonnull @.str.59, i32 noundef %158) #27
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @.str.60) #27
  %159 = load ptr, ptr %142, align 8, !tbaa !249
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  call void (ptr, ptr, ptr, ...) @dw2_asm_output_delta_uleb128(ptr noundef nonnull %5, ptr noundef %134, ptr noundef nonnull @.str.61) #27
  br label %163

162:                                              ; preds = %157
  call void (i64, ptr, ...) @dw2_asm_output_data_uleb128(i64 noundef 0, ptr noundef nonnull @.str.61) #27
  br label %163

163:                                              ; preds = %162, %161
  %164 = getelementptr inbounds %struct.call_site_record_d, ptr %142, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !259
  %166 = sext i32 %165 to i64
  call void (i64, ptr, ...) @dw2_asm_output_data_uleb128(i64 noundef %166, ptr noundef nonnull @.str.62) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %167 = add nuw nsw i64 %139, 1
  %168 = icmp eq i64 %167, %137
  br i1 %168, label %169, label %138, !llvm.loop !260

169:                                              ; preds = %163, %128
  %170 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %171 = add nsw i32 %170, %129
  store i32 %171, ptr @call_site_base, align 4, !tbaa !60
  %172 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  call void @assemble_name(ptr noundef %172, ptr noundef nonnull %8) #27
  %173 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  %174 = call i64 @fwrite(ptr nonnull @.str.45, i64 2, i64 1, ptr %173)
  br label %175

175:                                              ; preds = %189, %169
  %176 = phi i64 [ %193, %189 ], [ 0, %169 ]
  %177 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %177, align 4, !tbaa !144
  %181 = zext i32 %180 to i64
  %182 = icmp ult i64 %176, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.VEC_uchar_base, ptr %177, i64 0, i32 2, i64 %176
  %185 = load i8, ptr %184, align 1, !tbaa !56
  br label %186

186:                                              ; preds = %175, %179, %183
  %187 = phi i8 [ %185, %183 ], [ 0, %179 ], [ 0, %175 ]
  %188 = phi i1 [ false, %183 ], [ true, %179 ], [ true, %175 ]
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = zext i8 %187 to i64
  %191 = icmp eq i64 %176, 0
  %192 = select i1 %191, ptr @.str.52, ptr null
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %190, ptr noundef %192) #27
  %193 = add nuw i64 %176, 1
  br label %175, !llvm.loop !261

194:                                              ; preds = %186
  br i1 %73, label %195, label %197

195:                                              ; preds = %194
  %196 = shl nsw i32 %85, 3
  call void @assemble_align(i32 noundef %196) #27
  br label %197

197:                                              ; preds = %195, %194
  %198 = load ptr, ptr @cfun, align 8, !tbaa !45
  %199 = load ptr, ptr %198, align 8, !tbaa !67
  %200 = getelementptr inbounds %struct.eh_status, ptr %199, i64 0, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !137
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %197
  %204 = load i32, ptr %201, align 8, !tbaa !142
  br label %205

205:                                              ; preds = %197, %203
  %206 = phi i32 [ %204, %203 ], [ 0, %197 ]
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = zext nneg i32 %206 to i64
  br label %210

210:                                              ; preds = %208, %210
  %211 = phi i64 [ %209, %208 ], [ %212, %210 ]
  %212 = add nsw i64 %211, -1
  %213 = load ptr, ptr @cfun, align 8, !tbaa !45
  %214 = load ptr, ptr %213, align 8, !tbaa !67
  %215 = getelementptr inbounds %struct.eh_status, ptr %214, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !137
  %217 = getelementptr inbounds %struct.VEC_tree_base, ptr %216, i64 0, i32 2, i64 %212
  %218 = load ptr, ptr %217, align 8, !tbaa !45
  call fastcc void @output_ttype(ptr noundef %218, i32 noundef %86, i32 noundef %85)
  %219 = icmp sgt i64 %211, 1
  br i1 %219, label %210, label %220, !llvm.loop !262

220:                                              ; preds = %210, %205
  br i1 %73, label %221, label %225

221:                                              ; preds = %220
  %222 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  call void @assemble_name(ptr noundef %222, ptr noundef nonnull %6) #27
  %223 = load ptr, ptr @asm_out_file, align 8, !tbaa !45
  %224 = call i64 @fwrite(ptr nonnull @.str.45, i64 2, i64 1, ptr %223)
  br label %225

225:                                              ; preds = %221, %220
  %226 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !81
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %247, label %228

228:                                              ; preds = %225, %245
  %229 = phi i64 [ %246, %245 ], [ 0, %225 ]
  %230 = load ptr, ptr @cfun, align 8, !tbaa !45
  %231 = load ptr, ptr %230, align 8, !tbaa !67
  %232 = getelementptr inbounds %struct.eh_status, ptr %231, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !56
  %234 = icmp eq ptr %233, null
  br i1 %234, label %242, label %235

235:                                              ; preds = %228
  %236 = load i32, ptr %233, align 8, !tbaa !142
  %237 = zext i32 %236 to i64
  %238 = icmp ult i64 %229, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.VEC_tree_base, ptr %233, i64 0, i32 2, i64 %229
  %241 = load ptr, ptr %240, align 8, !tbaa !45
  br label %242

242:                                              ; preds = %228, %235, %239
  %243 = phi ptr [ %241, %239 ], [ null, %235 ], [ null, %228 ]
  %244 = phi i1 [ false, %239 ], [ true, %235 ], [ true, %228 ]
  br i1 %244, label %269, label %245

245:                                              ; preds = %242
  call fastcc void @output_ttype(ptr noundef %243, i32 noundef %86, i32 noundef %85)
  %246 = add nuw i64 %229, 1
  br label %228, !llvm.loop !263

247:                                              ; preds = %225, %264
  %248 = phi i64 [ %268, %264 ], [ 0, %225 ]
  %249 = load ptr, ptr @cfun, align 8, !tbaa !45
  %250 = load ptr, ptr %249, align 8, !tbaa !67
  %251 = getelementptr inbounds %struct.eh_status, ptr %250, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !56
  %253 = icmp eq ptr %252, null
  br i1 %253, label %261, label %254

254:                                              ; preds = %247
  %255 = load i32, ptr %252, align 4, !tbaa !144
  %256 = zext i32 %255 to i64
  %257 = icmp ult i64 %248, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.VEC_uchar_base, ptr %252, i64 0, i32 2, i64 %248
  %260 = load i8, ptr %259, align 1, !tbaa !56
  br label %261

261:                                              ; preds = %247, %254, %258
  %262 = phi i8 [ %260, %258 ], [ 0, %254 ], [ 0, %247 ]
  %263 = phi i1 [ false, %258 ], [ true, %254 ], [ true, %247 ]
  br i1 %263, label %269, label %264

264:                                              ; preds = %261
  %265 = zext i8 %262 to i64
  %266 = icmp eq i64 %248, 0
  %267 = select i1 %266, ptr @.str.53, ptr null
  call void (i32, i64, ptr, ...) @dw2_asm_output_data(i32 noundef 1, i64 noundef %265, ptr noundef %267) #27
  %268 = add nuw i64 %248, 1
  br label %247, !llvm.loop !264

269:                                              ; preds = %242, %261
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  ret void
}

declare void @switch_to_section(ptr noundef) local_unnamed_addr #3

declare ptr @current_function_section() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_eh_throw_stmt_table(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #19 !prof !115 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !265
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_eh_throw_stmt_table(ptr nocapture noundef readonly %0) local_unnamed_addr #20 !prof !266 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.eh_status, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !265
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @function_needs_eh_personality(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !267 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !65

5:                                                ; preds = %1, %28
  %6 = phi ptr [ %29, %28 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %28 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !76
  switch i32 %9, label %11 [
    i32 0, label %10
    i32 1, label %31
    i32 2, label %31
    i32 3, label %31
  ]

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i32 [ %7, %5 ], [ 1, %10 ]
  %13 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.eh_region_d, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16, %24
  %21 = phi ptr [ %22, %24 ], [ %6, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.eh_region_d, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %20, label %28, !llvm.loop !268

28:                                               ; preds = %24, %20, %11, %16
  %29 = phi ptr [ %14, %11 ], [ %18, %16 ], [ null, %20 ], [ %26, %24 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !prof !65, !llvm.loop !269

31:                                               ; preds = %5, %5, %5, %28, %1
  %32 = phi i32 [ 0, %1 ], [ 2, %5 ], [ %12, %28 ], [ 2, %5 ], [ 2, %5 ]
  ret i32 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_eh_tree(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !44 {
  %3 = load ptr, ptr %1, align 8, !tbaa !67
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = icmp eq ptr %4, null
  br i1 %5, label %132, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %8

8:                                                ; preds = %129, %6
  %9 = phi i32 [ 0, %6 ], [ %130, %129 ]
  %10 = phi ptr [ %4, %6 ], [ %131, %129 ]
  %11 = shl nsw i32 %9, 1
  %12 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = sext i32 %15 to i64
  %17 = shl i64 %16, 2
  %18 = call ptr @llvm.load.relative.i64(ptr @reltable.dump_eh_tree, i64 %17)
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11, ptr noundef nonnull @.str.13, i32 noundef %13, ptr noundef %18)
  %20 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %8
  %24 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 6, i64 1, ptr %0)
  %25 = tail call i32 @current_ir_type() #27
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load ptr, ptr %20, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %27, %42
  %31 = phi ptr [ %43, %42 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !113
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %33)
  %35 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %31, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %36, i32 noundef 0) #27
  %37 = tail call i32 @fputc(i32 noundef 125, ptr noundef %0)
  %38 = load ptr, ptr %31, align 8, !tbaa !108
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0)
  br label %42

42:                                               ; preds = %30, %40
  %43 = load ptr, ptr %31, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %30, !llvm.loop !270

45:                                               ; preds = %23
  %46 = load i32, ptr inttoptr (i64 32 to ptr), align 32, !tbaa !113
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %46)
  %48 = load ptr, ptr inttoptr (i64 24 to ptr), align 8, !tbaa !163
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = load i32, ptr %48, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  %56 = select i1 %55, ptr @.str.17, ptr @.str.13
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %52, ptr noundef nonnull %56)
  br label %60

58:                                               ; preds = %45
  %59 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 6, i64 1, ptr %0)
  br label %60

60:                                               ; preds = %58, %50
  %61 = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !129
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @label_rtx(ptr noundef nonnull %61) #27
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !56
  %67 = load i32, ptr %64, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 13
  %70 = select i1 %69, ptr @.str.17, ptr @.str.13
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %66, ptr noundef nonnull %70)
  br label %74

72:                                               ; preds = %60
  %73 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 6, i64 1, ptr %0)
  br label %74

74:                                               ; preds = %42, %27, %63, %72, %8
  %75 = load i32, ptr %14, align 4, !tbaa !76
  switch i32 %75, label %108 [
    i32 2, label %102
    i32 1, label %76
  ]

76:                                               ; preds = %74
  %77 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 7, i64 1, ptr %0)
  %78 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = icmp eq ptr %79, null
  br i1 %80, label %108, label %81

81:                                               ; preds = %76, %99
  %82 = phi ptr [ %100, %99 ], [ %79, %76 ]
  %83 = tail call i32 @fputc(i32 noundef 123, ptr noundef %0)
  %84 = getelementptr inbounds %struct.eh_catch_d, ptr %82, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !126
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 4, i64 1, ptr %0)
  %89 = load ptr, ptr %84, align 8, !tbaa !126
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %89, i32 noundef 0) #27
  %90 = tail call i32 @fputc(i32 noundef 59, ptr noundef %0)
  br label %91

91:                                               ; preds = %87, %81
  %92 = getelementptr inbounds %struct.eh_catch_d, ptr %82, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !95
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %93, i32 noundef 0) #27
  %94 = tail call i32 @fputc(i32 noundef 125, ptr noundef %0)
  %95 = load ptr, ptr %82, align 8, !tbaa !271
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @fputc(i32 noundef 44, ptr noundef %0)
  br label %99

99:                                               ; preds = %91, %97
  %100 = load ptr, ptr %82, align 8, !tbaa !56
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %81, !llvm.loop !272

102:                                              ; preds = %74
  %103 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 5
  %104 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 5, i32 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !56
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %105)
  %107 = load ptr, ptr %103, align 8, !tbaa !56
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %107, i32 noundef 0) #27
  br label %108

108:                                              ; preds = %99, %76, %74, %102
  %109 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0)
  %110 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !195
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = add nsw i32 %9, 1
  br label %129

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.eh_region_d, ptr %10, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !79
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %115, %124
  %120 = phi i32 [ %125, %124 ], [ %9, %115 ]
  %121 = phi ptr [ %122, %124 ], [ %10, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !78
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = add nsw i32 %120, -1
  %126 = getelementptr inbounds %struct.eh_region_d, ptr %122, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !79
  %128 = icmp eq ptr %127, null
  br i1 %128, label %119, label %129, !llvm.loop !273

129:                                              ; preds = %124, %115, %113
  %130 = phi i32 [ %114, %113 ], [ %9, %115 ], [ %125, %124 ]
  %131 = phi ptr [ %111, %113 ], [ %117, %115 ], [ %127, %124 ]
  br label %8, !llvm.loop !274

132:                                              ; preds = %119, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @label_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_eh_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !45
  tail call void @dump_eh_tree(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_eh_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !67
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %180, label %5

5:                                                ; preds = %1, %33
  %6 = phi i64 [ %36, %33 ], [ 1, %1 ]
  %7 = phi i32 [ %34, %33 ], [ 0, %1 ]
  %8 = phi i8 [ %35, %33 ], [ 0, %1 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.eh_status, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 8, !tbaa !72
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %6, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %11, i64 0, i32 2, i64 %6
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  br label %20

20:                                               ; preds = %5, %13, %17
  %21 = phi ptr [ %19, %17 ], [ null, %13 ], [ null, %5 ]
  %22 = phi i1 [ false, %17 ], [ true, %13 ], [ true, %5 ]
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %21, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.eh_region_d, ptr %21, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !80
  %28 = zext i32 %27 to i64
  %29 = icmp eq i64 %6, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = add nsw i32 %7, 1
  br label %33

32:                                               ; preds = %25
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %27) #27
  br label %33

33:                                               ; preds = %23, %32, %30
  %34 = phi i32 [ %31, %30 ], [ %7, %32 ], [ %7, %23 ]
  %35 = phi i8 [ %8, %30 ], [ 1, %32 ], [ %8, %23 ]
  %36 = add nuw i64 %6, 1
  br label %5, !llvm.loop !275

37:                                               ; preds = %20, %65
  %38 = phi i64 [ %68, %65 ], [ 1, %20 ]
  %39 = phi i32 [ %66, %65 ], [ 0, %20 ]
  %40 = phi i8 [ %67, %65 ], [ %8, %20 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.eh_status, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !111
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %43, align 8, !tbaa !75
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %38, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %43, i64 0, i32 2, i64 %38
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  br label %52

52:                                               ; preds = %37, %45, %49
  %53 = phi ptr [ %51, %49 ], [ null, %45 ], [ null, %37 ]
  %54 = phi i1 [ false, %49 ], [ true, %45 ], [ true, %37 ]
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = icmp eq ptr %53, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %53, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !113
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %38, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = add nsw i32 %39, 1
  br label %65

64:                                               ; preds = %57
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %59) #27
  br label %65

65:                                               ; preds = %55, %64, %62
  %66 = phi i32 [ %63, %62 ], [ %39, %64 ], [ %39, %55 ]
  %67 = phi i8 [ %40, %62 ], [ 1, %64 ], [ %40, %55 ]
  %68 = add nuw i64 %38, 1
  br label %37, !llvm.loop !276

69:                                               ; preds = %52
  %70 = load ptr, ptr %41, align 8, !tbaa !116
  br label %71

71:                                               ; preds = %160, %69
  %72 = phi ptr [ %70, %69 ], [ %161, %160 ]
  %73 = phi ptr [ null, %69 ], [ %162, %160 ]
  %74 = phi i32 [ 0, %69 ], [ %137, %160 ]
  %75 = phi i32 [ 0, %69 ], [ %106, %160 ]
  %76 = phi i32 [ 0, %69 ], [ %163, %160 ]
  %77 = phi i8 [ %40, %69 ], [ %138, %160 ]
  %78 = icmp slt i32 %76, 0
  br label %79

79:                                               ; preds = %71, %144
  %80 = phi ptr [ %146, %144 ], [ %72, %71 ]
  %81 = phi i32 [ %137, %144 ], [ %74, %71 ]
  %82 = phi i32 [ %106, %144 ], [ %75, %71 ]
  %83 = phi i8 [ %138, %144 ], [ %77, %71 ]
  %84 = load ptr, ptr %0, align 8, !tbaa !67
  %85 = getelementptr inbounds %struct.eh_status, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !114
  %87 = getelementptr inbounds %struct.eh_region_d, ptr %80, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !80
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %86, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !45
  %92 = icmp eq ptr %91, %80
  br i1 %92, label %94, label %93

93:                                               ; preds = %79
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, i32 noundef %88) #27
  br label %94

94:                                               ; preds = %93, %79
  %95 = phi i8 [ 1, %93 ], [ %83, %79 ]
  %96 = load ptr, ptr %80, align 8, !tbaa !78
  %97 = icmp eq ptr %96, %73
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %87, align 8, !tbaa !80
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, i32 noundef %99) #27
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i8 [ 1, %98 ], [ %95, %94 ]
  br i1 %78, label %102, label %104

102:                                              ; preds = %100
  %103 = load i32, ptr %87, align 8, !tbaa !80
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27, i32 noundef %103) #27
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8 [ 1, %102 ], [ %101, %100 ]
  %106 = add nuw nsw i32 %82, 1
  %107 = getelementptr inbounds %struct.eh_region_d, ptr %80, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = icmp eq ptr %108, null
  br i1 %109, label %136, label %110

110:                                              ; preds = %104, %131
  %111 = phi ptr [ %134, %131 ], [ %108, %104 ]
  %112 = phi i8 [ %132, %131 ], [ %105, %104 ]
  %113 = phi i32 [ %133, %131 ], [ %81, %104 ]
  %114 = load ptr, ptr %0, align 8, !tbaa !67
  %115 = getelementptr inbounds %struct.eh_status, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !111
  %117 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %111, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !113
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %116, i64 0, i32 2, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = icmp eq ptr %121, %111
  br i1 %122, label %124, label %123

123:                                              ; preds = %110
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, i32 noundef %118) #27
  br label %124

124:                                              ; preds = %123, %110
  %125 = phi i8 [ 1, %123 ], [ %112, %110 ]
  %126 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %111, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !110
  %128 = icmp eq ptr %127, %80
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %117, align 8, !tbaa !113
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, i32 noundef %130) #27
  br label %131

131:                                              ; preds = %129, %124
  %132 = phi i8 [ 1, %129 ], [ %125, %124 ]
  %133 = add nsw i32 %113, 1
  %134 = load ptr, ptr %111, align 8, !tbaa !45
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %110, !llvm.loop !277

136:                                              ; preds = %131, %104
  %137 = phi i32 [ %81, %104 ], [ %133, %131 ]
  %138 = phi i8 [ %105, %104 ], [ %132, %131 ]
  %139 = getelementptr inbounds %struct.eh_region_d, ptr %80, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !195
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = add nsw i32 %76, 1
  br label %160

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.eh_region_d, ptr %80, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !79
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %79, !llvm.loop !278

148:                                              ; preds = %144, %153
  %149 = phi ptr [ %151, %153 ], [ %80, %144 ]
  %150 = phi i32 [ %154, %153 ], [ %76, %144 ]
  %151 = load ptr, ptr %149, align 8, !tbaa !78
  %152 = icmp eq ptr %151, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = add nsw i32 %150, -1
  %155 = getelementptr inbounds %struct.eh_region_d, ptr %151, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !79
  %157 = icmp eq ptr %156, null
  br i1 %157, label %148, label %158, !llvm.loop !279

158:                                              ; preds = %153
  %159 = load ptr, ptr %151, align 8, !tbaa !78
  br label %160

160:                                              ; preds = %158, %142
  %161 = phi ptr [ %140, %142 ], [ %156, %158 ]
  %162 = phi ptr [ %80, %142 ], [ %159, %158 ]
  %163 = phi i32 [ %143, %142 ], [ %154, %158 ]
  br label %71, !llvm.loop !278

164:                                              ; preds = %148
  %165 = icmp eq i32 %150, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.29, i32 noundef %150) #27
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i8 [ 1, %166 ], [ %138, %164 ]
  %169 = icmp eq i32 %7, %106
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.30) #27
  br label %171

171:                                              ; preds = %170, %167
  %172 = phi i8 [ 1, %170 ], [ %168, %167 ]
  %173 = icmp eq i32 %39, %137
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.31) #27
  br label %175

175:                                              ; preds = %174, %171
  %176 = phi i8 [ 1, %174 ], [ %172, %171 ]
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr @stderr, align 8, !tbaa !45
  tail call void @dump_eh_tree(ptr noundef %179, ptr noundef nonnull %0)
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32) #27
  br label %180

180:                                              ; preds = %175, %178, %1
  ret void
}

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_call_site_record_d(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !249
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7) #27
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_call_site_record_d(ptr noundef %0) local_unnamed_addr #9 !prof !44 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18call_site_record_d, i32 noundef 127) #27
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !249
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5) #27
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18call_site_record_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !44 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #27
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #3

declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @type_list_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @break_superblocks() local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_nonfallthru(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare void @cgraph_set_nothrow_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @current_function_name() local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @action_record_hash(ptr nocapture noundef readonly %0) #10 !prof !44 {
  %2 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !280
  %4 = mul nsw i32 %3, 1009
  %5 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !282
  %7 = add nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @action_record_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !44 {
  %3 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !282
  %5 = getelementptr inbounds %struct.action_record, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !282
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.action_record, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !280
  %11 = getelementptr inbounds %struct.action_record, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !280
  %13 = icmp eq i32 %10, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %8 ]
  ret i32 %16
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 !prof !44 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !76
  switch i32 %6, label %85 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %72
    i32 3, label %86
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 8, !tbaa !78
  %9 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %8)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %86, label %11

11:                                               ; preds = %7, %15
  %12 = phi ptr [ %13, %15 ], [ %1, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !76
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %86, label %11, !llvm.loop !283

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef %9)
  br label %86

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = icmp eq ptr %23, null
  br i1 %24, label %86, label %25

25:                                               ; preds = %21, %67
  %26 = phi ptr [ %70, %67 ], [ %23, %21 ]
  %27 = phi i32 [ %68, %67 ], [ -3, %21 ]
  %28 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !125
  %34 = getelementptr inbounds %struct.tree_list, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !56
  %38 = trunc i64 %37 to i32
  %39 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %38, i32 noundef 0)
  br label %67

40:                                               ; preds = %25
  %41 = icmp eq i32 %27, -3
  br i1 %41, label %42, label %50

42:                                               ; preds = %40
  %43 = load ptr, ptr %1, align 8, !tbaa !78
  %44 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = icmp slt i32 %44, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %50

50:                                               ; preds = %42, %48, %46, %40
  %51 = phi i32 [ %49, %48 ], [ %44, %46 ], [ %27, %40 ], [ 0, %42 ]
  %52 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !56
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %50, %55
  %56 = phi ptr [ %65, %55 ], [ %53, %50 ]
  %57 = phi i32 [ %63, %55 ], [ %51, %50 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %56, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = getelementptr inbounds %struct.tree_int_cst, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !56
  %62 = trunc i64 %61 to i32
  %63 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %62, i32 noundef %57)
  %64 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !56
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %55, !llvm.loop !284

67:                                               ; preds = %55, %50, %31
  %68 = phi i32 [ %39, %31 ], [ %51, %50 ], [ %63, %55 ]
  %69 = getelementptr inbounds %struct.eh_catch_d, ptr %26, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !56
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %25, !llvm.loop !285

72:                                               ; preds = %4
  %73 = load ptr, ptr %1, align 8, !tbaa !78
  %74 = tail call fastcc i32 @collect_one_action_chain(ptr noundef %0, ptr noundef %73)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = icmp slt i32 %74, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %80

80:                                               ; preds = %72, %76, %78
  %81 = phi i32 [ %79, %78 ], [ %74, %76 ], [ 0, %72 ]
  %82 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !56
  %84 = tail call fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %83, i32 noundef %81)
  br label %86

85:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2365, ptr noundef nonnull @.str.2) #27
  br label %86

86:                                               ; preds = %67, %15, %21, %4, %19, %7, %2, %85, %80
  %87 = phi i32 [ 0, %85 ], [ %84, %80 ], [ -1, %2 ], [ %20, %19 ], [ 0, %7 ], [ -2, %4 ], [ -3, %21 ], [ %9, %15 ], [ %68, %67 ]
  ret i32 %87
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @add_call_site(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !44 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #27
  store ptr %0, ptr %4, align 8, !tbaa !249
  %5 = getelementptr inbounds %struct.call_site_record_d, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !259
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 6, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !286
  %13 = load i32, ptr %8, align 8, !tbaa !246
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3, %10
  %16 = tail call ptr @vec_gc_p_reserve(ptr noundef %8, i32 noundef 1) #27
  store ptr %16, ptr %7, align 8, !tbaa !45
  br label %17

17:                                               ; preds = %10, %15
  %18 = load ptr, ptr %7, align 8, !tbaa !45
  %19 = load i32, ptr %18, align 8, !tbaa !246
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !246
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %18, i64 0, i32 2, i64 %21
  store ptr %4, ptr %22, align 8, !tbaa !45
  %23 = load i32, ptr @call_site_base, align 4, !tbaa !60
  %24 = load ptr, ptr %7, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %24, align 8, !tbaa !246
  br label %28

28:                                               ; preds = %17, %26
  %29 = phi i32 [ %27, %26 ], [ 0, %17 ]
  %30 = add i32 %23, -1
  %31 = add i32 %30, %29
  ret i32 %31
}

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @max_label_num() local_unnamed_addr #3

declare i32 @get_first_label_num() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @emit_label_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_label_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @add_action_record(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !44 {
  %4 = alloca %struct.action_record, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.action_record, ptr %4, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !282
  %6 = getelementptr inbounds %struct.action_record, ptr %4, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !280
  %7 = call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1) #27
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = call ptr @xmalloc(i64 noundef 12) #27
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 4, !tbaa !144
  %16 = add i32 %15, 1
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi i32 [ %16, %14 ], [ 1, %10 ]
  store i32 %18, ptr %11, align 4, !tbaa !287
  %19 = getelementptr inbounds %struct.action_record, ptr %11, i64 0, i32 1
  store i32 %1, ptr %19, align 4, !tbaa !282
  %20 = getelementptr inbounds %struct.action_record, ptr %11, i64 0, i32 2
  store i32 %2, ptr %20, align 4, !tbaa !280
  store ptr %11, ptr %7, align 8, !tbaa !45
  call fastcc void @push_sleb128(i32 noundef %1)
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 4, !tbaa !144
  %27 = xor i32 %26, -1
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi i32 [ %27, %25 ], [ -1, %22 ]
  %30 = add i32 %29, %2
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %30, %28 ], [ 0, %17 ]
  call fastcc void @push_sleb128(i32 noundef %32)
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi ptr [ %11, %31 ], [ %8, %3 ]
  %35 = load i32, ptr %34, align 4, !tbaa !287
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  ret i32 %35
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @push_sleb128(i32 noundef %0) unnamed_addr #9 !prof !44 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i32 [ %0, %1 ], [ %6, %24 ]
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 127
  %6 = ashr i32 %3, 7
  %7 = icmp ult i32 %3, 64
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %6, -1
  %10 = and i32 %3, 64
  %11 = icmp ne i32 %10, 0
  %12 = and i1 %9, %11
  %13 = select i1 %12, i8 0, i8 -128
  %14 = or disjoint i8 %13, %5
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.VEC_uchar_base, ptr %15, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !148
  %20 = load i32, ptr %15, align 4, !tbaa !144
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %8, %17
  %23 = tail call ptr @vec_gc_o_reserve(ptr noundef %15, i32 noundef 1, i64 noundef 8, i64 noundef 1) #27
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  br label %24

24:                                               ; preds = %17, %22
  %25 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  %26 = load i32, ptr %25, align 4, !tbaa !144
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !144
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_uchar_base, ptr %25, i64 0, i32 2, i64 %28
  store i8 %14, ptr %29, align 1, !tbaa !56
  br i1 %12, label %46, label %2, !llvm.loop !288

30:                                               ; preds = %2
  %31 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.VEC_uchar_base, ptr %31, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !148
  %36 = load i32, ptr %31, align 4, !tbaa !144
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %33
  %39 = tail call ptr @vec_gc_o_reserve(ptr noundef %31, i32 noundef 1, i64 noundef 8, i64 noundef 1) #27
  store ptr %39, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  br label %40

40:                                               ; preds = %33, %38
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 5, i32 5), align 8, !tbaa !45
  %42 = load i32, ptr %41, align 4, !tbaa !144
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !144
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.VEC_uchar_base, ptr %41, i64 0, i32 2, i64 %44
  store i8 %5, ptr %45, align 1, !tbaa !56
  br label %46

46:                                               ; preds = %24, %40
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare i32 @asm_preferred_eh_data_format(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @size_of_encoded_value(i32 noundef) local_unnamed_addr #3

declare void @assemble_align(i32 noundef) local_unnamed_addr #3

declare void @dw2_asm_output_data(i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @eh_data_format_name(i32 noundef) local_unnamed_addr #3

declare void @dw2_asm_output_delta_uleb128(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_ttype(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !44 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !45
  br label %47

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = icmp ne i32 %11, 2
  %13 = icmp eq i64 %9, 116
  %14 = or i1 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr @type_to_runtime_map, align 8, !tbaa !45
  %17 = ptrtoint ptr %0 to i64
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 262143
  %20 = tail call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef nonnull %0, i32 noundef %19, i32 noundef 0) #27
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %15, %7
  %25 = phi ptr [ %0, %7 ], [ %23, %15 ]
  %26 = tail call ptr @expand_expr_real(ptr noundef %25, ptr noundef null, i32 noundef 0, i32 noundef 4, ptr noundef null) #27
  %27 = tail call ptr @tree_strip_nop_conversions(ptr noundef %25) #27
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %46 [
    i16 121, label %30
    i16 23, label %47
  ]

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 32
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = tail call ptr @varpool_node(ptr noundef nonnull %32) #27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %37) #27
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i64, ptr %32, align 8
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %42, 27
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  br label %47

46:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2927, ptr noundef nonnull @.str.2) #27
  br label %47

47:                                               ; preds = %40, %30, %46, %24, %5
  %48 = phi ptr [ %6, %5 ], [ %26, %24 ], [ %26, %46 ], [ %26, %30 ], [ %26, %40 ]
  %49 = phi i8 [ 1, %5 ], [ 1, %24 ], [ 1, %46 ], [ 1, %30 ], [ %45, %40 ]
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 12), align 8, !tbaa !289
  %51 = tail call zeroext i8 %50(ptr noundef %48) #27
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  switch i32 %1, label %57 [
    i32 80, label %54
    i32 0, label %54
  ]

54:                                               ; preds = %53, %53
  %55 = shl nsw i32 %2, 3
  %56 = tail call zeroext i8 @assemble_integer(ptr noundef %48, i32 noundef %2, i32 noundef %55, i32 noundef 1) #27
  br label %58

57:                                               ; preds = %53
  tail call void (i32, ptr, i8, ptr, ...) @dw2_asm_output_encoded_addr_rtx(i32 noundef %1, ptr noundef %48, i8 noundef zeroext %49, ptr noundef null) #27
  br label %58

58:                                               ; preds = %54, %57, %47
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #23

declare ptr @get_section(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dw2_asm_output_data_uleb128(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare void @varpool_mark_needed_node(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @assemble_integer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dw2_asm_output_encoded_addr_rtx(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #26

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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @init_eh_for_function, ptr @ggc_alloc_cleared_stat, i64 659}
!36 = !{ptr @init_eh_for_function, ptr @vec_gc_p_reserve, i64 1318}
!37 = !{ptr @duplicate_eh_regions, ptr @pointer_map_create, i64 49}
!38 = !{ptr @make_reg_eh_region_note, ptr @add_reg_note, i64 52571}
!39 = !{ptr @get_eh_landing_pad_from_rtx, ptr @find_reg_note, i64 63}
!40 = !{ptr @can_throw_internal, ptr @find_reg_note, i64 1739085}
!41 = !{ptr @insn_nothrow_p, ptr @find_reg_note, i64 3587320}
!42 = !{ptr @output_function_exception_table, ptr @get_personality_function, i64 38}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !46, i64 8}
!50 = !{!"_IO_FILE", !51, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !51, i64 112, !51, i64 116, !52, i64 120, !53, i64 128, !47, i64 130, !47, i64 131, !46, i64 136, !52, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !52, i64 184, !51, i64 192, !47, i64 196}
!51 = !{!"int", !47, i64 0}
!52 = !{!"long", !47, i64 0}
!53 = !{!"short", !47, i64 0}
!54 = !{!50, !46, i64 16}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!47, !47, i64 0}
!57 = !{!50, !46, i64 40}
!58 = !{!50, !46, i64 48}
!59 = !{!50, !51, i64 0}
!60 = !{!51, !51, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!"function_entry_count", i64 1}
!65 = !{!"branch_weights", i32 1, i32 0}
!66 = !{!"function_entry_count", i64 659}
!67 = !{!68, !46, i64 0}
!68 = !{!"function", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !51, i64 104, !51, i64 108, !51, i64 112, !51, i64 116, !51, i64 120, !51, i64 124, !46, i64 128, !51, i64 136, !51, i64 137, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 138, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139, !51, i64 139}
!69 = !{!"branch_weights", i32 659, i32 0}
!70 = !{!71, !51, i64 4}
!71 = !{!"VEC_eh_region_base", !51, i64 0, !51, i64 4, !47, i64 8}
!72 = !{!71, !51, i64 0}
!73 = !{!74, !51, i64 4}
!74 = !{!"VEC_eh_landing_pad_base", !51, i64 0, !51, i64 4, !47, i64 8}
!75 = !{!74, !51, i64 0}
!76 = !{!77, !51, i64 28}
!77 = !{!"eh_region_d", !46, i64 0, !46, i64 8, !46, i64 16, !51, i64 24, !51, i64 28, !47, i64 32, !46, i64 56, !46, i64 64, !46, i64 72, !47, i64 80}
!78 = !{!77, !46, i64 0}
!79 = !{!77, !46, i64 16}
!80 = !{!77, !51, i64 24}
!81 = !{!82, !47, i64 2035}
!82 = !{!"gcc_target", !83, i64 0, !85, i64 368, !86, i64 664, !51, i64 744, !46, i64 752, !46, i64 760, !46, i64 768, !46, i64 776, !46, i64 784, !46, i64 792, !46, i64 800, !46, i64 808, !46, i64 816, !46, i64 824, !46, i64 832, !46, i64 840, !46, i64 848, !46, i64 856, !46, i64 864, !46, i64 872, !46, i64 880, !46, i64 888, !46, i64 896, !46, i64 904, !46, i64 912, !46, i64 920, !46, i64 928, !46, i64 936, !46, i64 944, !46, i64 952, !46, i64 960, !46, i64 968, !46, i64 976, !46, i64 984, !46, i64 992, !46, i64 1000, !46, i64 1008, !46, i64 1016, !46, i64 1024, !46, i64 1032, !46, i64 1040, !46, i64 1048, !46, i64 1056, !52, i64 1064, !52, i64 1072, !46, i64 1080, !46, i64 1088, !46, i64 1096, !46, i64 1104, !46, i64 1112, !46, i64 1120, !46, i64 1128, !46, i64 1136, !46, i64 1144, !46, i64 1152, !46, i64 1160, !46, i64 1168, !87, i64 1176, !46, i64 1232, !46, i64 1240, !46, i64 1248, !46, i64 1256, !46, i64 1264, !46, i64 1272, !46, i64 1280, !46, i64 1288, !46, i64 1296, !46, i64 1304, !46, i64 1312, !46, i64 1320, !46, i64 1328, !46, i64 1336, !46, i64 1344, !46, i64 1352, !46, i64 1360, !46, i64 1368, !46, i64 1376, !46, i64 1384, !46, i64 1392, !46, i64 1400, !46, i64 1408, !46, i64 1416, !46, i64 1424, !46, i64 1432, !46, i64 1440, !46, i64 1448, !46, i64 1456, !52, i64 1464, !88, i64 1472, !46, i64 1664, !46, i64 1672, !46, i64 1680, !46, i64 1688, !46, i64 1696, !46, i64 1704, !46, i64 1712, !46, i64 1720, !46, i64 1728, !46, i64 1736, !46, i64 1744, !46, i64 1752, !46, i64 1760, !46, i64 1768, !46, i64 1776, !89, i64 1784, !90, i64 1792, !91, i64 1896, !92, i64 1968, !46, i64 2016, !47, i64 2024, !47, i64 2025, !47, i64 2026, !47, i64 2027, !47, i64 2028, !47, i64 2029, !47, i64 2030, !47, i64 2031, !47, i64 2032, !47, i64 2033, !47, i64 2034, !47, i64 2035}
!83 = !{!"asm_out", !46, i64 0, !46, i64 8, !46, i64 16, !84, i64 24, !84, i64 56, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288, !46, i64 296, !46, i64 304, !46, i64 312, !46, i64 320, !46, i64 328, !46, i64 336, !46, i64 344, !46, i64 352, !46, i64 360}
!84 = !{!"asm_int_op", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!85 = !{!"sched", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !46, i64 288}
!86 = !{!"vectorize", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72}
!87 = !{!"addr_space", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48}
!88 = !{!"calls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184}
!89 = !{!"c", !46, i64 0}
!90 = !{!"cxx", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96}
!91 = !{!"emutls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !47, i64 64, !47, i64 65}
!92 = !{!"target_option_hooks", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40}
!93 = !{!77, !47, i64 80}
!94 = distinct !{!94, !62, !63}
!95 = !{!96, !46, i64 16}
!96 = !{!"eh_catch_d", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!97 = !{!96, !46, i64 8}
!98 = !{!99, !46, i64 664}
!99 = !{!"lang_hooks", !46, i64 0, !52, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !46, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !100, i64 240, !101, i64 248, !102, i64 256, !103, i64 272, !104, i64 432, !105, i64 560, !46, i64 584, !46, i64 592, !46, i64 600, !46, i64 608, !46, i64 616, !46, i64 624, !46, i64 632, !46, i64 640, !46, i64 648, !46, i64 656, !46, i64 664, !47, i64 672}
!100 = !{!"lang_hooks_for_tree_inlining", !46, i64 0}
!101 = !{!"lang_hooks_for_callgraph", !46, i64 0}
!102 = !{!"lang_hooks_for_tree_dump", !46, i64 0, !46, i64 8}
!103 = !{!"lang_hooks_for_decls", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152}
!104 = !{!"lang_hooks_for_types", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !47, i64 120}
!105 = !{!"lang_hooks_for_lto", !46, i64 0, !46, i64 8, !46, i64 16}
!106 = distinct !{!106, !62, !63}
!107 = !{!77, !46, i64 56}
!108 = !{!109, !46, i64 0}
!109 = !{!"eh_landing_pad_d", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !51, i64 32}
!110 = !{!109, !46, i64 8}
!111 = !{!112, !46, i64 16}
!112 = !{!"eh_status", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !47, i64 40}
!113 = !{!109, !51, i64 32}
!114 = !{!112, !46, i64 8}
!115 = !{!"function_entry_count", i64 38}
!116 = !{!112, !46, i64 0}
!117 = !{!"function_entry_count", i64 49}
!118 = !{!119, !46, i64 0}
!119 = !{!"duplicate_eh_regions_data", !46, i64 0, !46, i64 8, !46, i64 16}
!120 = !{!119, !46, i64 8}
!121 = !{!119, !46, i64 16}
!122 = !{!"branch_weights", i32 0, i32 49}
!123 = !{!"branch_weights", i32 49, i32 0}
!124 = distinct !{!124, !62, !63}
!125 = !{!96, !46, i64 24}
!126 = !{!96, !46, i64 32}
!127 = distinct !{!127, !62, !63}
!128 = !{i64 0, i64 8, !45, i64 8, i64 4, !60}
!129 = !{!109, !46, i64 16}
!130 = distinct !{!130, !62, !63}
!131 = distinct !{!131, !62, !63}
!132 = !{!133, !46, i64 0}
!133 = !{!"simple_bitmap_def", !46, i64 0, !51, i64 8, !51, i64 12, !47, i64 16}
!134 = !{!52, !52, i64 0}
!135 = distinct !{!135, !62, !63}
!136 = distinct !{!136, !62, !63}
!137 = !{!112, !46, i64 32}
!138 = distinct !{!138, !62, !63}
!139 = distinct !{!139, !62, !63}
!140 = !{!141, !46, i64 0}
!141 = !{!"ttypes_filter", !46, i64 0, !51, i64 8}
!142 = !{!143, !51, i64 0}
!143 = !{!"VEC_tree_base", !51, i64 0, !51, i64 4, !47, i64 8}
!144 = !{!145, !51, i64 0}
!145 = !{!"VEC_uchar_base", !51, i64 0, !51, i64 4, !47, i64 8}
!146 = !{!141, !51, i64 8}
!147 = !{!143, !51, i64 4}
!148 = !{!145, !51, i64 4}
!149 = distinct !{!149, !62, !63}
!150 = distinct !{!150, !62, !63}
!151 = distinct !{!151, !62, !63}
!152 = distinct !{!152, !62, !63}
!153 = !{!154, !46, i64 280}
!154 = !{!"rtl_data", !155, i64 0, !156, i64 40, !157, i64 96, !158, i64 112, !160, i64 208, !161, i64 248, !51, i64 312, !46, i64 320, !46, i64 328, !46, i64 336, !46, i64 344, !46, i64 352, !46, i64 360, !46, i64 368, !46, i64 376, !46, i64 384, !46, i64 392, !52, i64 400, !46, i64 408, !46, i64 416, !46, i64 424, !51, i64 432, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !46, i64 456, !47, i64 464, !47, i64 465, !47, i64 466, !47, i64 467, !47, i64 468, !47, i64 469, !47, i64 470, !47, i64 471, !47, i64 472, !47, i64 473, !47, i64 474, !47, i64 475, !47, i64 476, !47, i64 477, !47, i64 478, !47, i64 479, !47, i64 480, !47, i64 481, !47, i64 482, !47, i64 483, !47, i64 484, !47, i64 485}
!155 = !{!"expr_status", !51, i64 0, !51, i64 4, !51, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!156 = !{!"emit_status", !51, i64 0, !51, i64 4, !46, i64 8, !46, i64 16, !46, i64 24, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !46, i64 48}
!157 = !{!"varasm_status", !46, i64 0, !51, i64 8}
!158 = !{!"incoming_args", !51, i64 0, !51, i64 4, !51, i64 8, !46, i64 16, !159, i64 24, !46, i64 88}
!159 = !{!"ix86_args", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60}
!160 = !{!"function_subsections", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32}
!161 = !{!"rtl_eh", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !47, i64 48}
!162 = !{!"except.c;gate_handle_eh"}
!163 = !{!109, !46, i64 24}
!164 = !{!77, !46, i64 64}
!165 = !{!77, !46, i64 72}
!166 = !{!82, !46, i64 776}
!167 = !{!168, !51, i64 0}
!168 = !{!"VEC_edge_base", !51, i64 0, !51, i64 4, !47, i64 8}
!169 = !{!170, !51, i64 48}
!170 = !{!"edge_def", !46, i64 0, !46, i64 8, !47, i64 16, !46, i64 24, !46, i64 32, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !52, i64 56}
!171 = distinct !{!171, !62, !63}
!172 = !{!173, !46, i64 48}
!173 = !{!"basic_block_def", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !47, i64 32, !46, i64 48, !46, i64 56, !47, i64 64, !52, i64 72, !51, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !51, i64 96}
!174 = !{!173, !51, i64 96}
!175 = !{!173, !46, i64 56}
!176 = !{!173, !52, i64 72}
!177 = !{!170, !52, i64 56}
!178 = !{!170, !51, i64 52}
!179 = distinct !{!179, !62, !63}
!180 = !{!68, !46, i64 8}
!181 = !{!182, !46, i64 0}
!182 = !{!"control_flow_graph", !46, i64 0, !46, i64 8, !46, i64 16, !51, i64 24, !51, i64 28, !51, i64 32, !46, i64 40, !51, i64 48, !47, i64 52, !47, i64 60, !51, i64 68, !51, i64 72}
!183 = !{!173, !46, i64 8}
!184 = !{!182, !46, i64 8}
!185 = !{!186, !46, i64 8}
!186 = !{!"rtl_bb_info", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !51, i64 32}
!187 = !{i8 0, i8 2}
!188 = distinct !{!188, !62, !63}
!189 = !{!170, !46, i64 8}
!190 = !{!186, !46, i64 0}
!191 = distinct !{!191, !62, !63}
!192 = distinct !{!192, !62, !63}
!193 = distinct !{!193, !62, !63}
!194 = distinct !{!194, !62, !63}
!195 = !{!77, !46, i64 8}
!196 = distinct !{!196, !62, !63}
!197 = !{!"function_entry_count", i64 46}
!198 = !{!"branch_weights", i32 0, i32 46}
!199 = !{!"branch_weights", i32 46, i32 0}
!200 = distinct !{!200, !62, !63}
!201 = !{!"function_entry_count", i64 68958}
!202 = !{!"branch_weights", i32 16387, i32 52571}
!203 = !{!"branch_weights", i32 16387, i32 0}
!204 = !{!"function_entry_count", i64 10749487}
!205 = !{!"branch_weights", i32 0, i32 959408, i32 7243520, i32 0, i32 2546559}
!206 = !{!"branch_weights", i32 9790079, i32 0}
!207 = distinct !{!207, !62, !63}
!208 = distinct !{!208, !62, !63}
!209 = !{!"function_entry_count", i64 63}
!210 = !{!"branch_weights", i32 5326468, i32 0}
!211 = !{!"branch_weights", i32 3621052, i32 1705416}
!212 = !{!"branch_weights", i32 0, i32 3621052}
!213 = !{!"branch_weights", i32 4572684, i32 753784}
!214 = !{!"branch_weights", i32 -1851536409, i32 0}
!215 = !{!"branch_weights", i32 753784, i32 0}
!216 = !{!"except.c;get_eh_region_and_lp_from_rtx"}
!217 = !{!"branch_weights", i32 0, i32 195258, i32 3621052, i32 0, i32 756374}
!218 = !{!"branch_weights", i32 4377426, i32 0}
!219 = !{!"function_entry_count", i64 1739085}
!220 = !{!221, !51, i64 0}
!221 = !{!"rtvec_def", !51, i64 0, !47, i64 8}
!222 = distinct !{!222, !62, !63}
!223 = !{!"function_entry_count", i64 3587320}
!224 = !{!"branch_weights", i32 3587320, i32 0}
!225 = !{!"branch_weights", i32 0, i32 3587320}
!226 = distinct !{!226, !62, !63}
!227 = !{!"function_entry_count", i64 298739}
!228 = !{!154, !46, i64 344}
!229 = !{!"branch_weights", i32 298739, i32 0}
!230 = !{!"except.c;set_nothrow_function_flags"}
!231 = !{!154, !47, i64 485}
!232 = !{!154, !47, i64 469}
!233 = !{!"branch_weights", i32 38, i32 0}
!234 = distinct !{!234, !62, !63}
!235 = distinct !{!235, !62, !63}
!236 = distinct !{!236, !62, !63}
!237 = !{!154, !47, i64 466}
!238 = !{!154, !46, i64 248}
!239 = !{!154, !46, i64 256}
!240 = !{!154, !46, i64 264}
!241 = !{!154, !47, i64 465}
!242 = !{!82, !46, i64 800}
!243 = !{!"except.c;gate_convert_to_eh_region_ranges"}
!244 = !{!154, !46, i64 288}
!245 = !{!154, !47, i64 474}
!246 = !{!247, !51, i64 0}
!247 = !{!"VEC_call_site_record_base", !51, i64 0, !51, i64 4, !47, i64 8}
!248 = distinct !{!248, !62, !63}
!249 = !{!250, !46, i64 0}
!250 = !{!"call_site_record_d", !46, i64 0, !51, i64 8}
!251 = distinct !{!251, !62, !63}
!252 = distinct !{!252, !62, !63}
!253 = distinct !{!253, !62, !63}
!254 = distinct !{!254, !62, !63}
!255 = !{!82, !47, i64 2025}
!256 = !{!82, !46, i64 120}
!257 = !{!68, !51, i64 108}
!258 = !{!82, !46, i64 136}
!259 = !{!250, !51, i64 8}
!260 = distinct !{!260, !62, !63}
!261 = distinct !{!261, !62, !63}
!262 = distinct !{!262, !62, !63}
!263 = distinct !{!263, !62, !63}
!264 = distinct !{!264, !62, !63}
!265 = !{!112, !46, i64 24}
!266 = !{!"function_entry_count", i64 1557463}
!267 = !{!"function_entry_count", i64 78}
!268 = distinct !{!268, !62, !63}
!269 = distinct !{!269, !62, !63}
!270 = distinct !{!270, !62, !63}
!271 = !{!96, !46, i64 0}
!272 = distinct !{!272, !62, !63}
!273 = distinct !{!273, !62, !63}
!274 = distinct !{!274, !63}
!275 = distinct !{!275, !62, !63}
!276 = distinct !{!276, !62, !63}
!277 = distinct !{!277, !62, !63}
!278 = distinct !{!278, !63}
!279 = distinct !{!279, !62, !63}
!280 = !{!281, !51, i64 8}
!281 = !{!"action_record", !51, i64 0, !51, i64 4, !51, i64 8}
!282 = !{!281, !51, i64 4}
!283 = distinct !{!283, !62, !63}
!284 = distinct !{!284, !62, !63}
!285 = distinct !{!285, !62, !63}
!286 = !{!247, !51, i64 4}
!287 = !{!281, !51, i64 0}
!288 = distinct !{!288, !62, !63}
!289 = !{!82, !46, i64 144}
