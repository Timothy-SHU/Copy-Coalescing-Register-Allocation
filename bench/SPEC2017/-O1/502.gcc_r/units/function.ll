; ModuleID = 'function.c'
source_filename = "function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_function_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.temp_slot = type { ptr, ptr, ptr, i64, ptr, i32, i8, i8, i32, i32, i64, i64 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x ptr] }
%struct.temp_slot_address_entry = type { i32, ptr, ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.assign_parm_data_all = type { %struct.ix86_args, %struct.args_size, ptr, ptr, ptr, ptr, i64, i64, i32 }
%struct.args_size = type { i64, ptr }
%struct.assign_parm_data_one = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.locate_and_pad_arg_data, i32, i8 }
%struct.locate_and_pad_arg_data = type { %struct.args_size, %struct.args_size, %struct.args_size, %struct.args_size, i32, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.types_used_by_vars_entry = type { ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cfun = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_vars_hash = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_cur_var_decl = dso_local local_unnamed_addr global ptr null, align 8
@function_context_stack = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@virtuals_instantiated = dso_local local_unnamed_addr global i32 0, align 4
@generating_concat_p = external local_unnamed_addr global i32, align 4
@prologue_insn_hash = internal global ptr null, align 8
@epilogue_insn_hash = internal global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str = private unnamed_addr constant [38 x i8] c"total size of local objects too large\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"function.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"size of variable %q+D is too large\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@temp_slot_address_table = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"vregs\00", align 1
@pass_instantiate_virtual_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @instantiate_virtual_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_pcc_struct_return = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_stack_check = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@next_block_index = internal global i32 2, align 4
@cfun_stack = internal unnamed_addr global ptr null, align 8
@funcdef_no = internal global i32 0, align 4
@init_machine_status = dso_local local_unnamed_addr global ptr null, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@in_dummy_function = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"function returns an aggregate\00", align 1
@reg_renumber = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"*init_function\00", align 1
@pass_init_function = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr null, ptr @init_function_for_compilation, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@ptr_mode = external local_unnamed_addr global i32, align 4
@profile_flag = external local_unnamed_addr global i32, align 4
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"unused parameter %q+D\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"*leaf_regs\00", align 1
@pass_leaf_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.9, ptr null, ptr @rest_of_handle_check_leaf_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"pro_and_epilogue\00", align 1
@pass_thread_prologue_and_epilogue = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.10, ptr null, ptr @rest_of_handle_thread_prologue_and_epilogue, ptr null, ptr null, i32 0, i32 153, i32 0, i32 0, i32 0, i32 8, i32 394243 } }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"asmcons\00", align 1
@pass_match_asm_constraints = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.11, ptr null, ptr @rest_of_match_asm_constraints, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@initial_trampoline = internal global ptr null, align 8
@gt_ggc_r_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @initial_trampoline, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @temp_slot_address_table, i64 1, i64 8, ptr @gt_ggc_m_P23temp_slot_address_entry4htab, ptr @gt_pch_n_P23temp_slot_address_entry4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rc_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @epilogue_insn_hash, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @prologue_insn_hash, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @epilogue_insn_hash, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @prologue_insn_hash, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @next_block_index, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @funcdef_no, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@current_function_is_leaf = dso_local local_unnamed_addr global i32 0, align 4
@current_function_sp_is_unchanging = dso_local local_unnamed_addr global i32 0, align 4
@current_function_uses_only_leaf_regs = dso_local local_unnamed_addr global i32 0, align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@dynamic_offset = internal unnamed_addr global i32 0, align 4
@cfa_offset = internal unnamed_addr global i32 0, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"impossible constraint in %<asm%>\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"variable %q+D might be clobbered by %<longjmp%> or %<vfork%>\00", align 1
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [61 x i8] c"argument %q+D might be clobbered by %<longjmp%> or %<vfork%>\00", align 1
@cse_not_expected = external local_unnamed_addr global i32, align 4
@caller_save_needed = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.15 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@htab_eq_pointer = external local_unnamed_addr global ptr, align 8
@prologue_locator = external local_unnamed_addr global i32, align 4
@epilogue_completed = external local_unnamed_addr global i32, align 4
@epilogue_locator = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !199 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !200
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !199 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !200
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !199 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !210

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !204
  %11 = load i8, ptr %3, align 1, !tbaa !211
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !199 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !210

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !204
  %11 = load i8, ptr %3, align 1, !tbaa !211
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !199 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !200
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !210

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #29
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !204
  %11 = load i8, ptr %3, align 1, !tbaa !211
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !199 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !200
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !199 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !210

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !212
  store i8 %12, ptr %4, align 1, !tbaa !211
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !199 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !210

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !212
  store i8 %12, ptr %4, align 1, !tbaa !211
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !199 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !210

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !212
  store i8 %12, ptr %4, align 1, !tbaa !211
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !199 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #29
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !199 {
  %2 = load i32, ptr %0, align 8, !tbaa !214
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !199 {
  %2 = load i32, ptr %0, align 8, !tbaa !214
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !199 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !215
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !199 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !215
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !199 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !199 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !199 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !199 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #29
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
  br i1 %23, label %7, label %24, !llvm.loop !216

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !199 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @push_function_context() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !200
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @allocate_struct_function(ptr noundef null, i8 noundef zeroext 0)
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !200
  %6 = load ptr, ptr @function_context_stack, align 8, !tbaa !200
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.VEC_function_p_base, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !219
  %11 = load i32, ptr %6, align 8, !tbaa !221
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4, %8
  %14 = tail call ptr @vec_heap_p_reserve(ptr noundef %6, i32 noundef 1) #29
  store ptr %14, ptr @function_context_stack, align 8, !tbaa !200
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr @function_context_stack, align 8, !tbaa !200
  %17 = load i32, ptr %16, align 8, !tbaa !221
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !221
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds %struct.VEC_function_p_base, ptr %16, i64 0, i32 2, i64 %19
  store ptr %5, ptr %20, align 8, !tbaa !200
  %21 = load ptr, ptr @cfun, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  store ptr null, ptr @cfun, align 8, !tbaa !200
  %24 = load i1, ptr @in_dummy_function, align 1
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  store ptr %26, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %30 = getelementptr inbounds %struct.tree_optimization_option, ptr %26, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %30) #29
  br label %31

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %32(ptr noundef null) #29
  br label %33

33:                                               ; preds = %31, %23, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 !prof !234 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4, !prof !235

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #29
  store ptr %9, ptr @cfun, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, -196609
  %13 = or disjoint i32 %12, 65536
  store i32 %13, ptr %10, align 8
  tail call void @init_eh_for_function() #29
  %14 = load ptr, ptr @init_machine_status, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !236

16:                                               ; preds = %7
  %17 = tail call ptr %14() #29, !prof !237
  %18 = load ptr, ptr @cfun, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !238
  br label %20

20:                                               ; preds = %16, %7
  tail call void @ix86_call_abi_override(ptr noundef %0) #29
  %21 = load i1, ptr @in_dummy_function, align 1
  br i1 %21, label %35, label %22, !prof !240

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 4
  %24 = select i1 %3, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %23, !prof !241
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %28 = select i1 %26, ptr %27, ptr %25, !prof !242
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %33, label %31, !prof !243

31:                                               ; preds = %22
  store ptr %28, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %32 = getelementptr inbounds %struct.tree_optimization_option, ptr %28, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %32) #29
  br label %33

33:                                               ; preds = %31, %22
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %34(ptr noundef %0) #29, !prof !244
  br label %35

35:                                               ; preds = %20, %33
  br i1 %3, label %74, label %36, !prof !235

36:                                               ; preds = %35
  %37 = load ptr, ptr @cfun, align 8, !tbaa !200
  %38 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !211
  %39 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 6
  store ptr %0, ptr %39, align 8, !tbaa !245
  %40 = load i32, ptr @funcdef_no, align 4, !tbaa !215
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @funcdef_no, align 4, !tbaa !215
  %42 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 14
  store i32 %40, ptr %42, align 4, !tbaa !246
  %43 = icmp eq i8 %1, 0
  br i1 %43, label %44, label %54, !prof !247

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !211
  %47 = tail call i32 @aggregate_value_p(ptr noundef %46, ptr noundef nonnull %0), !range !248
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49, !prof !249

49:                                               ; preds = %44
  %50 = load ptr, ptr @cfun, align 8, !tbaa !200
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 20
  %52 = load i32, ptr %51, align 8
  %53 = or i32 %52, 67108864
  store i32 %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %49, %44, %36
  %55 = icmp eq ptr %8, null
  br i1 %55, label %67, label %56, !prof !250

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60, !prof !250

60:                                               ; preds = %56
  %61 = tail call ptr @tree_last(ptr noundef nonnull %58) #29
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !211
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !200
  %65 = icmp eq ptr %63, %64
  %66 = select i1 %65, i32 65535, i32 4259839
  br label %67

67:                                               ; preds = %60, %56, %54
  %68 = phi i32 [ 65535, %56 ], [ 65535, %54 ], [ %66, %60 ]
  %69 = load ptr, ptr @cfun, align 8, !tbaa !200
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 20
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, -4259840
  %73 = or disjoint i32 %68, %72
  store i32 %73, ptr %70, align 8
  br label %74

74:                                               ; preds = %67, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_cfun(ptr noundef %0) local_unnamed_addr #10 !prof !251 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %26, label %4, !prof !252

4:                                                ; preds = %1
  store ptr %0, ptr @cfun, align 8, !tbaa !200
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6, !prof !253

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !245
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %8, %6 ], [ null, %4 ]
  %11 = load i1, ptr @in_dummy_function, align 1
  br i1 %11, label %26, label %12, !prof !240

12:                                               ; preds = %9
  %13 = icmp eq ptr %10, null
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 4
  %15 = select i1 %13, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %14, !prof !241
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %19 = select i1 %17, ptr %18, ptr %16, !prof !242
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %24, label %22, !prof !243

22:                                               ; preds = %12
  store ptr %19, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %23 = getelementptr inbounds %struct.tree_optimization_option, ptr %19, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %23) #29
  br label %24

24:                                               ; preds = %22, %12
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %25(ptr noundef %10) #29, !prof !254
  br label %26

26:                                               ; preds = %24, %9, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @pop_function_context() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr @function_context_stack, align 8
  %2 = load i32, ptr %1, align 8, !tbaa !221
  %3 = add i32 %2, -1
  store i32 %3, ptr %1, align 8, !tbaa !221
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_function_p_base, ptr %1, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = load ptr, ptr @cfun, align 8, !tbaa !200
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  store ptr %6, ptr @cfun, align 8, !tbaa !200
  %10 = icmp eq ptr %6, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %15)
  br label %16

16:                                               ; preds = %0, %14
  %17 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !245
  store ptr %18, ptr @current_function_decl, align 8, !tbaa !200
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !215
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @free_after_parsing(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 !prof !255 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !256
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_after_compilation(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !prof !257 {
  store ptr null, ptr @prologue_insn_hash, align 8, !tbaa !200
  store ptr null, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !258
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !267

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2)
  br label %5

5:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @x_rtl, i8 0, i64 488, i1 false)
  %6 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  store ptr null, ptr %6, align 8, !tbaa !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr @regno_reg_rtx, align 8, !tbaa !200
  tail call void @insn_locators_free() #29
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare void @insn_locators_free() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @get_frame_size() local_unnamed_addr #14 !prof !268 {
  %1 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %2 = sub nsw i64 0, %1
  ret i64 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @frame_offset_overflow(i64 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !199 {
  %3 = sub nsw i64 0, %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !211
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = shl nuw i64 1, %8
  %10 = add i64 %9, -256
  %11 = icmp ult i64 %10, %3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !211
  tail call void (i32, ptr, ...) @error_at(i32 noundef %14, ptr noundef nonnull @.str) #29
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi i8 [ 1, %12 ], [ 0, %2 ]
  ret i8 %16
}

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #9 !prof !270 {
  switch i32 %2, label %18 [
    i32 0, label %5
    i32 -1, label %8
    i32 -2, label %20
  ], !prof !271

5:                                                ; preds = %4
  %6 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef null, i32 noundef %0)
  %7 = lshr i32 %6, 3
  br label %20

8:                                                ; preds = %4
  %9 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !215
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i64 4294967280, i64 4294967264
  %13 = select i1 %11, i32 16, i32 32
  %14 = zext nneg i32 %13 to i64
  %15 = add i64 %1, 4294967295
  %16 = add i64 %15, %14
  %17 = and i64 %16, %12
  br label %20

18:                                               ; preds = %4
  %19 = sdiv i32 %2, 8
  br label %20

20:                                               ; preds = %4, %8, %18, %5
  %21 = phi i32 [ %7, %5 ], [ %13, %8 ], [ %19, %18 ], [ 1, %4 ]
  %22 = phi i64 [ %1, %5 ], [ %17, %8 ], [ %1, %18 ], [ %1, %4 ]
  %23 = shl i32 %21, 3
  %24 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %25 = sub nsw i64 %24, %22
  store i64 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %26 = icmp ugt i32 %23, -2147483648
  %27 = tail call i32 @llvm.umin.i32(i32 %23, i32 -2147483648)
  %28 = select i1 %26, i32 268435456, i32 %21, !prof !272
  %29 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %30 = icmp ult i32 %29, %27
  br i1 %30, label %31, label %54, !prof !272

31:                                               ; preds = %20
  %32 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !274
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  br label %54

35:                                               ; preds = %31
  %36 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !275
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 344, ptr noundef nonnull @.str.2) #29
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = icmp ne i8 %3, 0
  %44 = icmp eq i64 %22, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %48 = tail call i32 @get_mode_alignment(i32 noundef %0) #29
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @.str.2) #29
  br label %51

51:                                               ; preds = %42, %46, %50
  %52 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %53 = lshr i32 %52, 3
  br label %54

54:                                               ; preds = %34, %51, %39, %20
  %55 = phi i32 [ %27, %39 ], [ %52, %51 ], [ %27, %34 ], [ %27, %20 ]
  %56 = phi i32 [ %28, %39 ], [ %53, %51 ], [ %28, %34 ], [ %28, %20 ]
  %57 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !277
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %59, label %60, !prof !272

59:                                               ; preds = %54
  store i32 %55, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !277
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !278
  %62 = icmp ult i32 %61, %55
  br i1 %62, label %63, label %64, !prof !279

63:                                               ; preds = %60
  store i32 %55, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !278
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %66 = zext i32 %56 to i64
  %67 = sub nsw i64 0, %66
  %68 = and i64 %65, %67
  store i64 %68, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %69 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !215
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %73 = select i1 %70, ptr %71, ptr %72
  %74 = tail call i64 @trunc_int_for_mode(i64 noundef %68, i32 noundef 16) #29
  %75 = tail call ptr @plus_constant(ptr noundef %73, i64 noundef %74) #29
  %76 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %75) #29
  tail call void @set_mem_align(ptr noundef %76, i32 noundef %55) #29
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 33554432
  store i32 %78, ptr %76, align 8
  %79 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef nonnull %76, ptr noundef %79) #29
  store ptr %80, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  %81 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %82 = sub nsw i64 0, %81
  %83 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !211
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 3
  %86 = add nuw nsw i64 %85, 4294967295
  %87 = and i64 %86, 4294967295
  %88 = shl nuw i64 1, %87
  %89 = add i64 %88, -256
  %90 = icmp ult i64 %89, %82
  br i1 %90, label %91, label %95, !prof !272

91:                                               ; preds = %64
  %92 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %93 = getelementptr inbounds %struct.tree_decl_minimal, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !211
  tail call void (i32, ptr, ...) @error_at(i32 noundef %94, ptr noundef nonnull @.str) #29
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  br label %95

95:                                               ; preds = %64, %91
  ret ptr %76
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_stack_local_alignment(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !281 !PGOFuncName !282 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %9, !prof !283

4:                                                ; preds = %2
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !215
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 128, i32 256
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @get_mode_alignment(i32 noundef %1) #29
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %8, %4 ], [ %10, %9 ]
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %17, !prof !284

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !285
  %16 = tail call ptr %15(i32 noundef %1, i32 noundef 0) #29, !prof !293
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %0, %11 ], [ %16, %14 ]
  %19 = tail call i32 @ix86_local_alignment(ptr noundef %18, i32 noundef %1, i32 noundef %12) #29
  ret i32 %19
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @assign_stack_local(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !294 {
  %4 = tail call ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext 0)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !199 {
  %5 = icmp eq i64 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 703, ptr noundef nonnull @.str.2) #29
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp slt i32 %2, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 706, ptr noundef nonnull @.str.2) #29
  br label %10

10:                                               ; preds = %7, %9
  %11 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef %3, i32 noundef %0)
  %12 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !215
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %75, label %17

17:                                               ; preds = %10, %71
  %18 = phi ptr [ %73, %71 ], [ %14, %10 ]
  %19 = phi ptr [ %72, %71 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !295
  %22 = icmp ult i32 %21, %11
  br i1 %22, label %71, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !297
  %26 = icmp slt i64 %25, %1
  br i1 %26, label %71, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !298
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %71

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !299
  %37 = tail call i32 @objects_must_conflict_p(ptr noundef %36, ptr noundef %3) #29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %34
  %40 = icmp eq ptr %19, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !297
  %44 = load i64, ptr %24, align 8, !tbaa !297
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = icmp eq i64 %43, %44
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !295
  %51 = load i32, ptr %20, align 8, !tbaa !295
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %48, %41, %39
  %54 = load i32, ptr %20, align 8, !tbaa !295
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, ptr %24, align 8, !tbaa !297
  %58 = icmp eq i64 %57, %1
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load ptr, ptr %18, align 8, !tbaa !300
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !301
  %65 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !301
  br label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !301
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), ptr %68
  store ptr %60, ptr %70, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br label %75

71:                                               ; preds = %48, %53, %56, %17, %23, %27, %34, %46
  %72 = phi ptr [ %19, %46 ], [ %19, %34 ], [ %19, %27 ], [ %19, %23 ], [ %19, %17 ], [ %18, %56 ], [ %18, %53 ], [ %19, %48 ]
  %73 = load ptr, ptr %18, align 8, !tbaa !200
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %17, !llvm.loop !302

75:                                               ; preds = %71, %66, %10
  %76 = phi ptr [ null, %10 ], [ %18, %66 ], [ null, %71 ]
  %77 = phi ptr [ null, %10 ], [ null, %66 ], [ %72, %71 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %77, align 8, !tbaa !300
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !301
  %85 = getelementptr inbounds %struct.temp_slot, ptr %80, i64 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !301
  br label %86

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !301
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), ptr %88
  store ptr %80, ptr %90, align 8, !tbaa !200
  %91 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %92 = load ptr, ptr %91, align 8, !tbaa !298
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 16711680
  %95 = icmp eq i32 %94, 65536
  br i1 %95, label %96, label %143

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 5
  %98 = load i32, ptr %97, align 8, !tbaa !295
  %99 = lshr i32 %98, 3
  %100 = zext nneg i32 %99 to i64
  %101 = add i64 %1, -1
  %102 = add i64 %101, %100
  %103 = sub nsw i32 0, %99
  %104 = sext i32 %103 to i64
  %105 = and i64 %102, %104
  %106 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 3
  %107 = load i64, ptr %106, align 8, !tbaa !297
  %108 = sub nsw i64 %107, %105
  %109 = icmp slt i64 %108, %100
  br i1 %109, label %143, label %110

110:                                              ; preds = %96
  %111 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #29
  %112 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 7
  store i8 0, ptr %112, align 1, !tbaa !303
  %113 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 6
  store i8 0, ptr %113, align 4, !tbaa !304
  %114 = load i64, ptr %106, align 8, !tbaa !297
  %115 = sub nsw i64 %114, %105
  %116 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 3
  store i64 %115, ptr %116, align 8, !tbaa !297
  %117 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 10
  %118 = load i64, ptr %117, align 8, !tbaa !305
  %119 = add nsw i64 %118, %105
  %120 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 10
  store i64 %119, ptr %120, align 8, !tbaa !305
  %121 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 11
  %122 = load i64, ptr %121, align 8, !tbaa !306
  %123 = sub nsw i64 %122, %105
  %124 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 11
  store i64 %123, ptr %124, align 8, !tbaa !306
  %125 = load ptr, ptr %91, align 8, !tbaa !298
  %126 = tail call ptr @adjust_address_1(ptr noundef %125, i32 noundef 1, i64 noundef %105, i32 noundef 0, i32 noundef 1) #29
  %127 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 2
  store ptr %126, ptr %127, align 8, !tbaa !298
  %128 = load i32, ptr %97, align 8, !tbaa !295
  %129 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 5
  store i32 %128, ptr %129, align 8, !tbaa !295
  %130 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !299
  %132 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 4
  store ptr %131, ptr %132, align 8, !tbaa !299
  %133 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  store ptr %133, ptr %111, align 8, !tbaa !300
  %134 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %110
  %137 = getelementptr inbounds %struct.temp_slot, ptr %134, i64 0, i32 1
  store ptr %111, ptr %137, align 8, !tbaa !301
  br label %138

138:                                              ; preds = %110, %136
  %139 = getelementptr inbounds %struct.temp_slot, ptr %111, i64 0, i32 1
  store ptr null, ptr %139, align 8, !tbaa !301
  store ptr %111, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  %140 = load ptr, ptr %127, align 8, !tbaa !298
  %141 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  %142 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %140, ptr noundef %141) #29
  store ptr %142, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  store i64 %105, ptr %106, align 8, !tbaa !297
  store i64 %105, ptr %121, align 8, !tbaa !306
  br label %143

143:                                              ; preds = %96, %138, %86, %75
  %144 = phi ptr [ %77, %86 ], [ %76, %75 ], [ %77, %138 ], [ %77, %96 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %175

146:                                              ; preds = %143
  %147 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %148 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #29
  %149 = icmp eq i32 %0, 1
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !215
  %152 = and i32 %151, 32
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 128, i32 256
  %155 = icmp eq i32 %11, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 788, ptr noundef nonnull @.str.2) #29
  br label %157

157:                                              ; preds = %156, %150
  %158 = sdiv i32 %11, 8
  %159 = sext i32 %158 to i64
  %160 = add i64 %1, -1
  %161 = add i64 %160, %159
  %162 = sub nsw i32 0, %158
  %163 = sext i32 %162 to i64
  %164 = and i64 %161, %163
  br label %165

165:                                              ; preds = %146, %157
  %166 = phi i64 [ %164, %157 ], [ %1, %146 ]
  %167 = tail call ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %166, i32 noundef %11, i8 noundef zeroext 0)
  %168 = getelementptr inbounds %struct.temp_slot, ptr %148, i64 0, i32 2
  store ptr %167, ptr %168, align 8, !tbaa !298
  %169 = getelementptr inbounds %struct.temp_slot, ptr %148, i64 0, i32 5
  store i32 %11, ptr %169, align 8, !tbaa !295
  %170 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !269
  %171 = sub nsw i64 %147, %170
  %172 = getelementptr inbounds %struct.temp_slot, ptr %148, i64 0, i32 3
  store i64 %171, ptr %172, align 8, !tbaa !297
  %173 = getelementptr inbounds %struct.temp_slot, ptr %148, i64 0, i32 10
  store i64 %170, ptr %173, align 8, !tbaa !305
  %174 = getelementptr inbounds %struct.temp_slot, ptr %148, i64 0, i32 11
  store i64 %171, ptr %174, align 8, !tbaa !306
  br label %175

175:                                              ; preds = %165, %143
  %176 = phi ptr [ %148, %165 ], [ %144, %143 ]
  %177 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 6
  store i8 1, ptr %177, align 4, !tbaa !304
  %178 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 7
  store i8 0, ptr %178, align 1, !tbaa !303
  %179 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 4
  store ptr %3, ptr %179, align 8, !tbaa !299
  %180 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %181 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 8
  store i32 %180, ptr %181, align 8, !tbaa !308
  %182 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 9
  store i32 %2, ptr %182, align 4, !tbaa !309
  %183 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %180)
  %184 = load ptr, ptr %183, align 8, !tbaa !200
  store ptr %184, ptr %176, align 8, !tbaa !300
  %185 = load ptr, ptr %183, align 8, !tbaa !200
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %175
  %188 = getelementptr inbounds %struct.temp_slot, ptr %185, i64 0, i32 1
  store ptr %176, ptr %188, align 8, !tbaa !301
  br label %189

189:                                              ; preds = %175, %187
  %190 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 1
  store ptr null, ptr %190, align 8, !tbaa !301
  store ptr %176, ptr %183, align 8, !tbaa !200
  %191 = getelementptr inbounds %struct.temp_slot, ptr %176, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !298
  %193 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !211
  tail call fastcc void @insert_temp_slot_address(ptr noundef %194, ptr noundef nonnull %176)
  %195 = load ptr, ptr %191, align 8, !tbaa !298
  %196 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !211
  %198 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %197) #29
  %199 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  %200 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %198, ptr noundef %199) #29
  store ptr %200, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !280
  %201 = icmp eq ptr %3, null
  br i1 %201, label %219, label %202

202:                                              ; preds = %189
  %203 = tail call i32 @get_alias_set(ptr noundef nonnull %3) #29
  tail call void @set_mem_alias_set(ptr noundef %198, i32 noundef %203) #29
  tail call void @set_mem_align(ptr noundef %198, i32 noundef %11) #29
  %204 = load i64, ptr %3, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i32, ptr %198, align 8
  %207 = shl i32 %205, 8
  %208 = and i32 %207, 134217728
  %209 = and i32 %206, -134217729
  %210 = or disjoint i32 %208, %209
  store i32 %210, ptr %198, align 8
  %211 = load i64, ptr %3, align 8
  %212 = trunc i64 %211 to i16
  switch i16 %212, label %216 [
    i16 15, label %213
    i16 16, label %213
    i16 17, label %213
    i16 18, label %213
    i16 13, label %213
  ]

213:                                              ; preds = %202, %202, %202, %202, %202
  %214 = and i32 %210, 1879048191
  %215 = or disjoint i32 %214, 268435456
  store i32 %215, ptr %198, align 8
  br label %220

216:                                              ; preds = %202
  %217 = and i32 %210, 1879048191
  %218 = or disjoint i32 %217, -2147483648
  store i32 %218, ptr %198, align 8
  br label %220

219:                                              ; preds = %189
  tail call void @set_mem_alias_set(ptr noundef %198, i32 noundef 0) #29
  tail call void @set_mem_align(ptr noundef %198, i32 noundef %11) #29
  br label %220

220:                                              ; preds = %219, %213, %216
  %221 = load i32, ptr %198, align 8
  %222 = or i32 %221, 33554432
  store i32 %222, ptr %198, align 8
  ret ptr %198
}

declare i32 @objects_must_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @temp_slots_at_level(i32 noundef %0) unnamed_addr #15 !prof !199 !PGOFuncName !310 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !311

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !312
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %40, label %9, !prof !314

9:                                                ; preds = %6
  %10 = add nsw i32 %0, 1
  br i1 %3, label %13, label %11, !prof !315

11:                                               ; preds = %9
  %12 = load i32, ptr %2, align 8, !tbaa !312
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ 0, %9 ]
  br i1 %3, label %17, label %15, !prof !315

15:                                               ; preds = %13
  %16 = load i32, ptr %2, align 8, !tbaa !312
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %19 = sub nsw i32 %10, %18
  br i1 %3, label %26, label %20, !prof !315

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !316
  %23 = load i32, ptr %2, align 8, !tbaa !312
  %24 = sub i32 %22, %23
  %25 = icmp uge i32 %24, %19
  br label %28

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, %10
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i1 [ %25, %20 ], [ %27, %26 ]
  br i1 %29, label %32, label %30, !prof !317

30:                                               ; preds = %28
  %31 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %19) #29
  store ptr %31, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200
  br label %32

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200, !nonnull !318, !noundef !318
  store i32 %10, ptr %33, align 8, !tbaa !312
  %34 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %33, i64 0, i32 2
  %35 = sext i32 %14 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = sub nsw i32 %10, %14
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %36, i8 0, i64 %39, i1 false), !prof !319
  br label %40

40:                                               ; preds = %32, %6
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %41, i64 0, i32 2
  %44 = select i1 %42, ptr null, ptr %43, !prof !320
  %45 = sext i32 %0 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  ret ptr %46
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_temp_slot_address(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !199 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #29
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !321
  %6 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store i32 0, ptr %3, align 4, !tbaa !215
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %9, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  store i32 %10, ptr %4, align 8, !tbaa !324
  %11 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  %12 = call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #29
  store ptr %4, ptr %12, align 8, !tbaa !200
  ret void
}

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @assign_stack_temp(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !199 {
  %4 = tail call ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @assign_temp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !255 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !215
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %14, !prof !325

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  br label %14

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %13, %11 ], [ %0, %4 ]
  %16 = phi ptr [ %0, %11 ], [ null, %4 ]
  %17 = load i64, ptr %15, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 14
  br i1 %19, label %20, label %22, !prof !325

20:                                               ; preds = %14
  %21 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #29
  br label %27

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = load i64, ptr %15, align 8
  %30 = trunc i64 %29 to i32
  %31 = lshr i32 %30, 21
  %32 = and i32 %31, 1
  store i32 %32, ptr %5, align 4, !tbaa !215
  %33 = icmp eq i32 %28, 1
  %34 = icmp ne i32 %2, 0
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %56, !prof !325

36:                                               ; preds = %27
  %37 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %15) #29
  switch i64 %37, label %40 [
    i64 0, label %41
    i64 -1, label %38
  ]

38:                                               ; preds = %36
  %39 = tail call i64 @max_int_size_in_bytes(ptr noundef nonnull %15) #29
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %36, %40, %38
  %42 = phi i64 [ %39, %38 ], [ 1, %36 ], [ %37, %40 ]
  %43 = icmp ne ptr %16, null
  %44 = icmp eq i64 %42, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !211
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %16) #29
  br label %53

53:                                               ; preds = %52, %46, %41
  %54 = phi i64 [ 1, %52 ], [ -1, %46 ], [ %42, %41 ]
  %55 = tail call ptr @assign_stack_temp_for_type(i32 noundef %28, i64 noundef %54, i32 noundef %1, ptr noundef nonnull %15)
  br label %63

56:                                               ; preds = %27
  %57 = icmp eq i32 %3, 0
  br i1 %57, label %58, label %60, !prof !325

58:                                               ; preds = %56
  %59 = call i32 @promote_mode(ptr noundef nonnull %15, i32 noundef %28, ptr noundef nonnull %5) #29
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %28, %56 ], [ %59, %58 ]
  %62 = call ptr @gen_reg_rtx(i32 noundef %61) #29
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %55, %53 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  ret ptr %64
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @update_temp_slot_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !326 {
  br label %3

3:                                                ; preds = %35, %52, %46, %32, %18, %2
  %4 = phi ptr [ %0, %2 ], [ %22, %18 ], [ %31, %32 ], [ %45, %46 ], [ %53, %52 ], [ %39, %35 ]
  %5 = phi ptr [ %1, %2 ], [ %5, %18 ], [ %34, %32 ], [ %47, %46 ], [ %54, %52 ], [ %41, %35 ]
  %6 = tail call i32 @rtx_equal_p(ptr noundef %4, ptr noundef %5) #29
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %56, !prof !327

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %55, !prof !327

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 49
  br i1 %14, label %15, label %56, !prof !328

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %56 [
    i16 37, label %18
    i16 49, label %23
  ], !prof !329

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  tail call void @update_temp_slot_address(ptr noundef %20, ptr noundef nonnull %5)
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  br label %3

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = tail call i32 @rtx_equal_p(ptr noundef %25, ptr noundef %27) #29
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  br i1 %29, label %35, label %32, !prof !330

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  br label %3

35:                                               ; preds = %23
  %36 = load ptr, ptr %26, align 8, !tbaa !211
  %37 = tail call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %36) #29
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %24, align 8, !tbaa !211
  %40 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !211
  br i1 %38, label %42, label %3, !prof !331

42:                                               ; preds = %35
  %43 = tail call i32 @rtx_equal_p(ptr noundef %39, ptr noundef %41) #29
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %30, align 8, !tbaa !211
  br i1 %44, label %48, label %46, !prof !331

46:                                               ; preds = %42
  %47 = load ptr, ptr %26, align 8, !tbaa !211
  br label %3

48:                                               ; preds = %42
  %49 = load ptr, ptr %40, align 8, !tbaa !211
  %50 = tail call i32 @rtx_equal_p(ptr noundef %45, ptr noundef %49) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !332

52:                                               ; preds = %48
  %53 = load ptr, ptr %24, align 8, !tbaa !211
  %54 = load ptr, ptr %26, align 8, !tbaa !211
  br label %3

55:                                               ; preds = %8
  tail call fastcc void @insert_temp_slot_address(ptr noundef %5, ptr noundef nonnull %9)
  br label %56

56:                                               ; preds = %48, %15, %11, %3, %55
  ret void
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @find_temp_slot_from_address(ptr noundef %0) unnamed_addr #15 !prof !333 !PGOFuncName !334 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.temp_slot_address_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !321
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #29
  store i32 0, ptr %2, align 4, !tbaa !215
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %8, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #29
  store i32 %9, ptr %3, align 8, !tbaa !324
  %10 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  %11 = call ptr @htab_find_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %9) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !335

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !323
  br label %96

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 49
  br i1 %19, label %20, label %29, !prof !336

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %29, !prof !330

26:                                               ; preds = %20
  %27 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %22)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %96, !prof !331

29:                                               ; preds = %26, %20, %16
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %42, !prof !336

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %42, !prof !337

39:                                               ; preds = %33
  %40 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %35)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %96

42:                                               ; preds = %39, %29, %33
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %95, !prof !336

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !211
  %49 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %95, !prof !337

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !211
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 30
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %58, align 8, !tbaa !312
  %62 = add i32 %61, -1
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi i32 [ %62, %60 ], [ -1, %57 ]
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %63, %89
  %67 = phi i1 [ %91, %89 ], [ %65, %63 ]
  %68 = phi i32 [ %90, %89 ], [ %64, %63 ]
  %69 = call fastcc ptr @temp_slots_at_level(i32 noundef %68)
  %70 = load ptr, ptr %69, align 8, !tbaa !200
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %52, align 8, !tbaa !211
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !211
  br label %76

76:                                               ; preds = %72, %86
  %77 = phi ptr [ %70, %72 ], [ %87, %86 ]
  %78 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 10
  %79 = load i64, ptr %78, align 8, !tbaa !305
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.temp_slot, ptr %77, i64 0, i32 11
  %83 = load i64, ptr %82, align 8, !tbaa !306
  %84 = add nsw i64 %83, %79
  %85 = icmp slt i64 %75, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %76, %81
  %87 = load ptr, ptr %77, align 8, !tbaa !200
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %76, !llvm.loop !338

89:                                               ; preds = %86, %66
  %90 = add nsw i32 %68, -1
  %91 = icmp slt i32 %68, 1
  br i1 %91, label %92, label %66, !llvm.loop !339

92:                                               ; preds = %89, %81, %63
  %93 = phi i1 [ %65, %63 ], [ %67, %81 ], [ %91, %89 ]
  %94 = phi ptr [ undef, %63 ], [ %77, %81 ], [ undef, %89 ]
  br i1 %93, label %95, label %96

95:                                               ; preds = %92, %51, %46, %42
  br label %96

96:                                               ; preds = %39, %26, %92, %95, %13
  %97 = phi ptr [ %15, %13 ], [ null, %95 ], [ %94, %92 ], [ %27, %26 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  ret ptr %97
}

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_temp_addr_taken(ptr noundef readonly %0) local_unnamed_addr #9 !prof !199 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !215
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %9)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.temp_slot, ptr %17, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !303
  br label %21

21:                                               ; preds = %16, %19, %3, %7, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @preserve_temp_slots(ptr noundef %0) local_unnamed_addr #15 !prof !340 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %63, !prof !341

3:                                                ; preds = %1
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !311

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !312
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %11 = icmp sgt i32 %10, %4
  br i1 %11, label %43, label %12, !prof !314

12:                                               ; preds = %9
  %13 = add nsw i32 %4, 1
  br i1 %6, label %16, label %14, !prof !315

14:                                               ; preds = %12
  %15 = load i32, ptr %5, align 8, !tbaa !312
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %15, %14 ], [ 0, %12 ]
  br i1 %6, label %20, label %18, !prof !315

18:                                               ; preds = %16
  %19 = load i32, ptr %5, align 8, !tbaa !312
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %19, %18 ], [ 0, %16 ]
  %22 = sub nsw i32 %13, %21
  br i1 %6, label %29, label %23, !prof !315

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %5, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !316
  %26 = load i32, ptr %5, align 8, !tbaa !312
  %27 = sub i32 %25, %26
  %28 = icmp uge i32 %27, %22
  br label %31

29:                                               ; preds = %20
  %30 = icmp eq i32 %21, %13
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i1 [ %28, %23 ], [ %30, %29 ]
  br i1 %32, label %35, label %33, !prof !317

33:                                               ; preds = %31
  %34 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %5, i32 noundef %22) #29
  store ptr %34, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200
  br label %35

35:                                               ; preds = %33, %31
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200, !nonnull !318, !noundef !318
  store i32 %13, ptr %36, align 8, !tbaa !312
  %37 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %36, i64 0, i32 2
  %38 = sext i32 %17 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = sub nsw i32 %13, %17
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %42, i1 false), !prof !342
  br label %43

43:                                               ; preds = %9, %35
  %44 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %44, i64 0, i32 2
  %47 = select i1 %45, ptr null, ptr %46, !prof !320
  %48 = sext i32 %4 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = icmp eq ptr %50, null
  br i1 %51, label %148, label %52, !prof !343

52:                                               ; preds = %43, %61
  %53 = phi ptr [ %54, %61 ], [ %50, %43 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !300
  %55 = getelementptr inbounds %struct.temp_slot, ptr %53, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !303
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %60 = add nsw i32 %59, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %53, i32 noundef %60)
  br label %61

61:                                               ; preds = %52, %58
  %62 = icmp eq ptr %54, null
  br i1 %62, label %148, label %52, !prof !343, !llvm.loop !344

63:                                               ; preds = %1
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 1073807359
  %66 = icmp eq i32 %65, 1073741861
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %0)
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %68, %67 ], [ null, %63 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = load i32, ptr %0, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 43
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !211
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !215
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %85, label %101

85:                                               ; preds = %76, %72
  %86 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %87 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %86)
  %88 = load ptr, ptr %87, align 8, !tbaa !200
  %89 = icmp eq ptr %88, null
  br i1 %89, label %148, label %90

90:                                               ; preds = %85, %99
  %91 = phi ptr [ %92, %99 ], [ %88, %85 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !300
  %93 = getelementptr inbounds %struct.temp_slot, ptr %91, i64 0, i32 7
  %94 = load i8, ptr %93, align 1, !tbaa !303
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %98 = add nsw i32 %97, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %91, i32 noundef %98)
  br label %99

99:                                               ; preds = %90, %96
  %100 = icmp eq ptr %92, null
  br i1 %100, label %148, label %90, !llvm.loop !345

101:                                              ; preds = %76
  %102 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %78)
  br label %103

103:                                              ; preds = %69, %101
  %104 = phi ptr [ %102, %101 ], [ %70, %69 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.temp_slot, ptr %104, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !308
  %109 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %109)
  %113 = load ptr, ptr %112, align 8, !tbaa !200
  %114 = icmp eq ptr %113, null
  br i1 %114, label %128, label %115

115:                                              ; preds = %111, %126
  %116 = phi ptr [ %117, %126 ], [ %113, %111 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !300
  %118 = icmp eq ptr %104, %116
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.temp_slot, ptr %116, i64 0, i32 7
  %121 = load i8, ptr %120, align 1, !tbaa !303
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %125 = add nsw i32 %124, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %116, i32 noundef %125)
  br label %126

126:                                              ; preds = %115, %119, %123
  %127 = icmp eq ptr %117, null
  br i1 %127, label %128, label %115, !llvm.loop !346

128:                                              ; preds = %126, %111
  %129 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %130 = add nsw i32 %129, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %104, i32 noundef %130)
  %131 = getelementptr inbounds %struct.temp_slot, ptr %104, i64 0, i32 7
  store i8 0, ptr %131, align 1, !tbaa !303
  br label %148

132:                                              ; preds = %103
  %133 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %134 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %133)
  %135 = load ptr, ptr %134, align 8, !tbaa !200
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %132, %146
  %138 = phi ptr [ %139, %146 ], [ %135, %132 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !300
  %140 = getelementptr inbounds %struct.temp_slot, ptr %138, i64 0, i32 9
  %141 = load i32, ptr %140, align 4, !tbaa !309
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %145 = add nsw i32 %144, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %138, i32 noundef %145)
  br label %146

146:                                              ; preds = %137, %143
  %147 = icmp eq ptr %139, null
  br i1 %147, label %148, label %137, !llvm.loop !347

148:                                              ; preds = %146, %99, %61, %132, %85, %43, %106, %128
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @move_slot_to_level(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !199 {
  %3 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !308
  %5 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %4)
  %6 = load ptr, ptr %0, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = getelementptr inbounds %struct.temp_slot, ptr %6, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !301
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !301
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr %5, ptr %14
  store ptr %6, ptr %16, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %17 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1)
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  store ptr %18, ptr %0, align 8, !tbaa !300
  %19 = load ptr, ptr %17, align 8, !tbaa !200
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 1
  store ptr %0, ptr %22, align 8, !tbaa !301
  br label %23

23:                                               ; preds = %12, %21
  store ptr null, ptr %13, align 8, !tbaa !301
  store ptr %0, ptr %17, align 8, !tbaa !200
  store i32 %1, ptr %3, align 8, !tbaa !308
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_temp_slots() local_unnamed_addr #15 !prof !348 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !311

4:                                                ; preds = %0
  %5 = load i32, ptr %2, align 8, !tbaa !312
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %40, label %9, !prof !314

9:                                                ; preds = %6
  %10 = add nsw i32 %1, 1
  br i1 %3, label %13, label %11, !prof !315

11:                                               ; preds = %9
  %12 = load i32, ptr %2, align 8, !tbaa !312
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ 0, %9 ]
  br i1 %3, label %17, label %15, !prof !315

15:                                               ; preds = %13
  %16 = load i32, ptr %2, align 8, !tbaa !312
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %19 = sub nsw i32 %10, %18
  br i1 %3, label %26, label %20, !prof !315

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !316
  %23 = load i32, ptr %2, align 8, !tbaa !312
  %24 = sub i32 %22, %23
  %25 = icmp uge i32 %24, %19
  br label %28

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, %10
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i1 [ %25, %20 ], [ %27, %26 ]
  br i1 %29, label %32, label %30, !prof !317

30:                                               ; preds = %28
  %31 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %19) #29
  store ptr %31, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200
  br label %32

32:                                               ; preds = %30, %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200, !nonnull !318, !noundef !318
  store i32 %10, ptr %33, align 8, !tbaa !312
  %34 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %33, i64 0, i32 2
  %35 = sext i32 %14 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = sub nsw i32 %10, %14
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %36, i8 0, i64 %39, i1 false), !prof !349
  br label %40

40:                                               ; preds = %6, %32
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %41, i64 0, i32 2
  %44 = select i1 %42, ptr null, ptr %43, !prof !320
  %45 = sext i32 %1 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !200
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49, !prof !343

49:                                               ; preds = %40, %57
  %50 = phi i8 [ %58, %57 ], [ 0, %40 ]
  %51 = phi ptr [ %52, %57 ], [ %47, %40 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !300
  %53 = getelementptr inbounds %struct.temp_slot, ptr %51, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !309
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call fastcc void @make_slot_available(ptr noundef nonnull %51)
  br label %57

57:                                               ; preds = %49, %56
  %58 = phi i8 [ %50, %49 ], [ 1, %56 ]
  %59 = icmp eq ptr %52, null
  br i1 %59, label %60, label %49, !prof !343, !llvm.loop !350

60:                                               ; preds = %57
  %61 = icmp eq i8 %58, 0
  br i1 %61, label %64, label %62, !prof !351

62:                                               ; preds = %60
  %63 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  tail call void @htab_traverse(ptr noundef %63, ptr noundef nonnull @remove_unused_temp_slot_addresses_1, ptr noundef null) #29
  tail call fastcc void @combine_temp_slots()
  br label %64

64:                                               ; preds = %40, %62, %60
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @make_slot_available(ptr noundef %0) unnamed_addr #9 !prof !199 {
  %2 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !308
  %4 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %3)
  %5 = load ptr, ptr %0, align 8, !tbaa !300
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !301
  %10 = getelementptr inbounds %struct.temp_slot, ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !301
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %4, ptr %13
  store ptr %5, ptr %15, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  store ptr %16, ptr %0, align 8, !tbaa !300
  %17 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.temp_slot, ptr %17, i64 0, i32 1
  store ptr %0, ptr %20, align 8, !tbaa !301
  br label %21

21:                                               ; preds = %11, %19
  store ptr null, ptr %12, align 8, !tbaa !301
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  %22 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 6
  store i8 0, ptr %22, align 4, !tbaa !304
  store i32 -1, ptr %2, align 8, !tbaa !308
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @combine_temp_slots() unnamed_addr #16 !prof !199 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !215
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %108

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !215
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !200
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr @optimize, align 4
  %11 = icmp eq i32 %10, 0
  br label %16

12:                                               ; preds = %16
  %13 = add nuw nsw i32 %18, 1
  %14 = load ptr, ptr %17, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !llvm.loop !352

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %7, %9 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %19 = icmp eq i32 %18, 101
  %20 = icmp ugt i32 %18, 10
  %21 = select i1 %20, i1 %11, i1 false
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %108, label %12

23:                                               ; preds = %12, %6, %3
  %24 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !353
  %25 = icmp eq ptr %24, null
  br i1 %25, label %108, label %26

26:                                               ; preds = %23, %106
  %27 = phi ptr [ %28, %106 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !300
  %29 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !298
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16711680
  %33 = icmp eq i32 %32, 65536
  br i1 %33, label %34, label %106

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 10
  %36 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 11
  %37 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 3
  %38 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 3
  br label %39

39:                                               ; preds = %34, %88
  %40 = phi ptr [ %44, %88 ], [ %28, %34 ]
  %41 = phi i32 [ %90, %88 ], [ 0, %34 ]
  %42 = icmp eq ptr %40, null
  br i1 %42, label %91, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %40, align 8, !tbaa !300
  %45 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !298
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 16711680
  %49 = icmp eq i32 %48, 65536
  br i1 %49, label %50, label %88

50:                                               ; preds = %43
  %51 = load i64, ptr %35, align 8, !tbaa !305
  %52 = load i64, ptr %36, align 8, !tbaa !306
  %53 = add nsw i64 %52, %51
  %54 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 10
  %55 = load i64, ptr %54, align 8, !tbaa !305
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !297
  %60 = load i64, ptr %38, align 8, !tbaa !297
  %61 = add nsw i64 %60, %59
  store i64 %61, ptr %38, align 8, !tbaa !297
  %62 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %63 = load i64, ptr %62, align 8, !tbaa !306
  %64 = add nsw i64 %63, %52
  store i64 %64, ptr %36, align 8, !tbaa !306
  br label %76

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %67 = load i64, ptr %66, align 8, !tbaa !306
  %68 = add nsw i64 %67, %55
  %69 = icmp eq i64 %68, %51
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, ptr %37, align 8, !tbaa !297
  %72 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !297
  %74 = add nsw i64 %73, %71
  store i64 %74, ptr %72, align 8, !tbaa !297
  %75 = add nsw i64 %67, %52
  store i64 %75, ptr %66, align 8, !tbaa !306
  br label %88

76:                                               ; preds = %65, %57
  br i1 %56, label %77, label %88

77:                                               ; preds = %76
  %78 = icmp eq ptr %44, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !301
  %82 = getelementptr inbounds %struct.temp_slot, ptr %44, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !301
  br label %83

83:                                               ; preds = %79, %77
  %84 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !301
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), ptr %85
  store ptr %44, ptr %87, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %88

88:                                               ; preds = %76, %83, %43, %70
  %89 = phi i1 [ true, %70 ], [ false, %43 ], [ false, %83 ], [ false, %76 ]
  %90 = phi i32 [ 1, %70 ], [ %41, %43 ], [ %41, %83 ], [ %41, %76 ]
  br i1 %89, label %91, label %39, !llvm.loop !354

91:                                               ; preds = %88, %39
  %92 = phi i32 [ %41, %39 ], [ %90, %88 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %27, align 8, !tbaa !300
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !301
  %100 = getelementptr inbounds %struct.temp_slot, ptr %95, i64 0, i32 1
  store ptr %99, ptr %100, align 8, !tbaa !301
  br label %101

101:                                              ; preds = %97, %94
  %102 = getelementptr inbounds %struct.temp_slot, ptr %27, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !301
  %104 = icmp eq ptr %103, null
  %105 = select i1 %104, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), ptr %103
  store ptr %95, ptr %105, align 8, !tbaa !200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %106

106:                                              ; preds = %91, %101, %26
  %107 = icmp eq ptr %28, null
  br i1 %107, label %108, label %26, !llvm.loop !355

108:                                              ; preds = %16, %106, %23, %0
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @push_temp_slots() local_unnamed_addr #17 !prof !356 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @pop_temp_slots() local_unnamed_addr #15 !prof !356 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !311

4:                                                ; preds = %0
  %5 = load i32, ptr %2, align 8, !tbaa !312
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %40, label %9, !prof !314

9:                                                ; preds = %6
  %10 = add nsw i32 %1, 1
  br i1 %3, label %13, label %11, !prof !315

11:                                               ; preds = %9
  %12 = load i32, ptr %2, align 8, !tbaa !312
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ 0, %9 ]
  br i1 %3, label %17, label %15, !prof !315

15:                                               ; preds = %13
  %16 = load i32, ptr %2, align 8, !tbaa !312
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %19 = sub nsw i32 %10, %18
  br i1 %3, label %26, label %20, !prof !315

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !316
  %23 = load i32, ptr %2, align 8, !tbaa !312
  %24 = sub i32 %22, %23
  %25 = icmp uge i32 %24, %19
  br label %28

26:                                               ; preds = %17
  %27 = icmp eq i32 %18, %10
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i1 [ %25, %20 ], [ %27, %26 ]
  br i1 %29, label %32, label %30, !prof !317

30:                                               ; preds = %28
  %31 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %19) #29
  store ptr %31, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200
  br label %32

32:                                               ; preds = %30, %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !200, !nonnull !318, !noundef !318
  store i32 %10, ptr %33, align 8, !tbaa !312
  %34 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %33, i64 0, i32 2
  %35 = sext i32 %14 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = sub nsw i32 %10, %14
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %36, i8 0, i64 %39, i1 false), !prof !342
  br label %40

40:                                               ; preds = %6, %32
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %41, i64 0, i32 2
  %44 = select i1 %42, ptr null, ptr %43, !prof !320
  %45 = sext i32 %1 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !200
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49, !prof !343

49:                                               ; preds = %40, %49
  %50 = phi ptr [ %51, %49 ], [ %47, %40 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !300
  tail call fastcc void @make_slot_available(ptr noundef nonnull %50)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %49, !prof !343, !llvm.loop !357

53:                                               ; preds = %49
  %54 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  tail call void @htab_traverse(ptr noundef %54, ptr noundef nonnull @remove_unused_temp_slot_addresses_1, ptr noundef null) #29
  tail call fastcc void @combine_temp_slots()
  br label %55

55:                                               ; preds = %40, %53
  %56 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !307
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_temp_slots() local_unnamed_addr #10 !prof !255 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), i8 0, i64 20, i1 false)
  %1 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !358

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 32, ptr noundef nonnull @temp_slot_address_hash, ptr noundef nonnull @temp_slot_address_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %4, ptr @temp_slot_address_table, align 8, !tbaa !200
  br label %6

5:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #29
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @temp_slot_address_hash(ptr nocapture noundef readonly %0) #18 !prof !199 {
  %2 = load i32, ptr %0, align 8, !tbaa !324
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define internal i32 @temp_slot_address_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !199 {
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !321
  %7 = tail call i32 @exp_equiv_p(ptr noundef %4, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1) #29
  ret i32 %7
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @instantiate_decl_rtl(ptr noundef %0) local_unnamed_addr #10 !prof !359 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %8 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !360

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %31 [
    i16 41, label %8
    i16 43, label %13
  ], !prof !361

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  tail call void @instantiate_decl_rtl(ptr noundef %10)
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  br label %2

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !215
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %31, label %22, !prof !362

22:                                               ; preds = %13
  %23 = icmp eq i32 %17, 37
  br i1 %23, label %24, label %29, !prof !363

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !211
  %27 = add i32 %26, -58
  %28 = icmp ult i32 %27, -5
  br i1 %28, label %31, label %29, !prof !325

29:                                               ; preds = %24, %22
  %30 = tail call i32 @for_each_rtx(ptr noundef nonnull %14, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #29
  br label %31

31:                                               ; preds = %13, %24, %5, %2, %29
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @instantiate_virtual_regs_in_rtx(ptr nocapture noundef %0, ptr noundef writeonly %1) #15 !prof !364 !PGOFuncName !365 {
  %3 = load ptr, ptr %0, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %95, label %5, !prof !366

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %95 [
    i16 37, label %8
    i16 49, label %47
  ], !prof !367

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %18, !prof !368

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %13 = icmp ne i8 %12, 0
  %14 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false, !prof !369
  %17 = select i1 %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %36

18:                                               ; preds = %8
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %36, label %21, !prof !370

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %27, !prof !370

24:                                               ; preds = %21
  %25 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %26 = sext i32 %25 to i64
  br label %36

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %36, label %30, !prof !371

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %40, !prof !372

33:                                               ; preds = %30
  %34 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %33, %27, %24, %18, %11
  %37 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %24 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %33 ], [ %17, %11 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %18 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %27 ]
  %38 = phi i64 [ %26, %24 ], [ %35, %33 ], [ 0, %11 ], [ 0, %18 ], [ 0, %27 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !200
  br label %40

40:                                               ; preds = %30, %36
  %41 = phi i64 [ %38, %36 ], [ undef, %30 ]
  %42 = phi ptr [ %39, %36 ], [ null, %30 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %95, label %44, !prof !373

44:                                               ; preds = %40
  %45 = tail call ptr @plus_constant(ptr noundef nonnull %42, i64 noundef %41) #29
  store ptr %45, ptr %0, align 8, !tbaa !200
  %46 = icmp eq ptr %1, null
  br i1 %46, label %95, label %94, !prof !374

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !211
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %52, label %59, !prof !368

52:                                               ; preds = %47
  %53 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %54 = icmp ne i8 %53, 0
  %55 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %56 = icmp ne i8 %55, 0
  %57 = select i1 %54, i1 %56, i1 false, !prof !369
  %58 = select i1 %57, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %77

59:                                               ; preds = %47
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %61 = icmp eq ptr %60, %49
  br i1 %61, label %77, label %62, !prof !370

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %68, !prof !370

65:                                               ; preds = %62
  %66 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %67 = sext i32 %66 to i64
  br label %77

68:                                               ; preds = %62
  %69 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %70 = icmp eq ptr %69, %49
  br i1 %70, label %77, label %71, !prof !371

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %73 = icmp eq ptr %72, %49
  br i1 %73, label %74, label %81, !prof !372

74:                                               ; preds = %71
  %75 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %76 = sext i32 %75 to i64
  br label %77

77:                                               ; preds = %74, %68, %65, %59, %52
  %78 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %65 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %74 ], [ %58, %52 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %59 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %68 ]
  %79 = phi i64 [ %67, %65 ], [ %76, %74 ], [ 0, %52 ], [ 0, %59 ], [ 0, %68 ]
  %80 = load ptr, ptr %78, align 8, !tbaa !200
  br label %81

81:                                               ; preds = %71, %77
  %82 = phi i64 [ %79, %77 ], [ undef, %71 ]
  %83 = phi ptr [ %80, %77 ], [ null, %71 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85, !prof !375

85:                                               ; preds = %81
  %86 = tail call ptr @plus_constant(ptr noundef nonnull %83, i64 noundef %82) #29
  %87 = load i32, ptr %3, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !211
  %92 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %89, ptr noundef %86, ptr noundef %91) #29
  store ptr %92, ptr %0, align 8, !tbaa !200
  %93 = icmp eq ptr %1, null
  br i1 %93, label %95, label %94, !prof !376

94:                                               ; preds = %85, %44
  store i8 1, ptr %1, align 1, !tbaa !211
  br label %95

95:                                               ; preds = %94, %81, %5, %85, %40, %44, %2
  %96 = phi i32 [ 0, %2 ], [ -1, %44 ], [ -1, %40 ], [ -1, %85 ], [ 0, %5 ], [ 0, %81 ], [ -1, %94 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @instantiate_virtual_regs() #10 !prof !255 !PGOFuncName !377 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  %4 = load i32, ptr @target_flags, align 4, !tbaa !215
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10, !prof !325

7:                                                ; preds = %0
  %8 = tail call i32 @ix86_cfun_abi() #29
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %7, %0
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !378
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !325

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  %19 = tail call i32 @ix86_function_type_abi(ptr noundef %18) #29
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21, !prof !325

21:                                               ; preds = %17
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %23 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %22) #29
  br label %24

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = add nsw i32 %25, %11
  br label %27

27:                                               ; preds = %7, %24
  %28 = phi i32 [ %26, %24 ], [ 0, %7 ]
  store i32 %28, ptr @dynamic_offset, align 4, !tbaa !215
  %29 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !379
  store i32 %29, ptr @cfa_offset, align 4, !tbaa !215
  tail call void @init_recog() #29
  %30 = tail call ptr @get_insns() #29
  %31 = icmp eq ptr %30, null
  br i1 %31, label %575, label %32, !prof !380

32:                                               ; preds = %27, %570
  %33 = phi ptr [ %573, %570 ], [ %30, %27 ]
  %34 = phi i64 [ %571, %570 ], [ undef, %27 ]
  %35 = load i32, ptr %33, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %570, !prof !381

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !211
  %42 = load i32, ptr %41, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %44 [
    i16 24, label %570
    i16 25, label %570
    i16 20, label %570
    i16 21, label %570
    i16 16, label %570
  ], !prof !382

44:                                               ; preds = %39
  %45 = icmp eq i32 %36, 7
  br i1 %45, label %46, label %48, !prof !383

46:                                               ; preds = %44
  %47 = call i32 @for_each_rtx(ptr noundef nonnull %40, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #29
  br label %556

48:                                               ; preds = %44
  %49 = and i32 %42, 65535
  %50 = icmp eq i32 %49, 23
  br i1 %50, label %53, label %51, !prof !384

51:                                               ; preds = %48
  %52 = call ptr @single_set_2(ptr noundef nonnull %33, ptr noundef nonnull %41) #29
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ %41, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %293, label %56, !prof !385

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %61, label %68, !prof !368

61:                                               ; preds = %56
  %62 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %63 = icmp ne i8 %62, 0
  %64 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %63, i1 %65, i1 false, !prof !369
  %67 = select i1 %66, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %86

68:                                               ; preds = %56
  %69 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %70 = icmp eq ptr %69, %58
  br i1 %70, label %86, label %71, !prof !370

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %73 = icmp eq ptr %72, %58
  br i1 %73, label %74, label %77, !prof !370

74:                                               ; preds = %71
  %75 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %76 = sext i32 %75 to i64
  br label %86

77:                                               ; preds = %71
  %78 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %79 = icmp eq ptr %78, %58
  br i1 %79, label %86, label %80, !prof !371

80:                                               ; preds = %77
  %81 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %82 = icmp eq ptr %81, %58
  br i1 %82, label %83, label %90, !prof !372

83:                                               ; preds = %80
  %84 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %85 = sext i32 %84 to i64
  br label %86

86:                                               ; preds = %83, %77, %74, %68, %61
  %87 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %74 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %83 ], [ %67, %61 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %68 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %77 ]
  %88 = phi i64 [ %76, %74 ], [ %85, %83 ], [ 0, %61 ], [ 0, %68 ], [ 0, %77 ]
  %89 = load ptr, ptr %87, align 8, !tbaa !200
  br label %90

90:                                               ; preds = %80, %86
  %91 = phi i64 [ %88, %86 ], [ %34, %80 ]
  %92 = phi ptr [ %89, %86 ], [ null, %80 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %112, label %94, !prof !386

94:                                               ; preds = %90
  call void @start_sequence() #29
  %95 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = call i32 @for_each_rtx(ptr noundef nonnull %95, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #29
  %97 = load i32, ptr %92, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load ptr, ptr %95, align 8, !tbaa !211
  %101 = sub nsw i64 0, %91
  %102 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %101) #29
  %103 = call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %99, ptr noundef %100, ptr noundef %102) #29
  %104 = call ptr @force_operand(ptr noundef %103, ptr noundef nonnull %92) #29
  %105 = icmp eq ptr %104, %92
  br i1 %105, label %108, label %106

106:                                              ; preds = %94
  %107 = call ptr @emit_move_insn(ptr noundef nonnull %92, ptr noundef %104) #29
  br label %108

108:                                              ; preds = %106, %94
  %109 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %110 = call ptr @emit_insn_before(ptr noundef %109, ptr noundef nonnull %33) #29
  %111 = call ptr @delete_insn(ptr noundef nonnull %33) #29
  br label %556

112:                                              ; preds = %90
  %113 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !211
  %115 = icmp eq ptr %59, %114
  br i1 %115, label %116, label %123, !prof !368

116:                                              ; preds = %112
  %117 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %118 = icmp ne i8 %117, 0
  %119 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %120 = icmp ne i8 %119, 0
  %121 = select i1 %118, i1 %120, i1 false, !prof !369
  %122 = select i1 %121, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %141

123:                                              ; preds = %112
  %124 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %125 = icmp eq ptr %124, %114
  br i1 %125, label %141, label %126, !prof !370

126:                                              ; preds = %123
  %127 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %128 = icmp eq ptr %127, %114
  br i1 %128, label %129, label %132, !prof !370

129:                                              ; preds = %126
  %130 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %131 = sext i32 %130 to i64
  br label %141

132:                                              ; preds = %126
  %133 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %134 = icmp eq ptr %133, %114
  br i1 %134, label %141, label %135, !prof !371

135:                                              ; preds = %132
  %136 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %137 = icmp eq ptr %136, %114
  br i1 %137, label %138, label %145, !prof !372

138:                                              ; preds = %135
  %139 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %138, %132, %129, %123, %116
  %142 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %129 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %138 ], [ %122, %116 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %123 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %132 ]
  %143 = phi i64 [ %131, %129 ], [ %140, %138 ], [ 0, %116 ], [ 0, %123 ], [ 0, %132 ]
  %144 = load ptr, ptr %142, align 8, !tbaa !200
  br label %145

145:                                              ; preds = %135, %141
  %146 = phi i64 [ %143, %141 ], [ %91, %135 ]
  %147 = phi ptr [ %144, %141 ], [ null, %135 ]
  %148 = icmp ne ptr %147, null
  %149 = icmp ne i64 %146, 0
  %150 = select i1 %148, i1 %149, i1 false, !prof !387
  br i1 %150, label %151, label %175, !prof !387

151:                                              ; preds = %145
  %152 = load i32, ptr %58, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 37
  br i1 %154, label %155, label %175

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !211
  %158 = icmp ugt i32 %157, 57
  br i1 %158, label %159, label %175

159:                                              ; preds = %155
  call void @start_sequence() #29
  %160 = load ptr, ptr %57, align 8, !tbaa !211
  %161 = load i32, ptr %160, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %146) #29
  %165 = load ptr, ptr %57, align 8, !tbaa !211
  %166 = call ptr @expand_simple_binop(i32 noundef %163, i32 noundef 49, ptr noundef nonnull %147, ptr noundef %164, ptr noundef %165, i32 noundef 1, i32 noundef 3) #29
  %167 = load ptr, ptr %57, align 8, !tbaa !211
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %171, label %169

169:                                              ; preds = %159
  %170 = call ptr @emit_move_insn(ptr noundef %167, ptr noundef %166) #29
  br label %171

171:                                              ; preds = %169, %159
  %172 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %173 = call ptr @emit_insn_before(ptr noundef %172, ptr noundef nonnull %33) #29
  %174 = call ptr @delete_insn(ptr noundef nonnull %33) #29
  br label %556

175:                                              ; preds = %155, %151, %145
  call void @extract_insn(ptr noundef nonnull %33) #29
  %176 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !211
  %178 = load ptr, ptr %113, align 8, !tbaa !211
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 49
  %182 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %183 = icmp sgt i8 %182, 2
  %184 = select i1 %181, i1 %183, i1 false, !prof !388
  %185 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8
  %186 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %187 = icmp eq ptr %185, %186
  %188 = select i1 %184, i1 %187, i1 false, !prof !388
  %189 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8
  %190 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %191 = icmp eq ptr %189, %190
  %192 = select i1 %188, i1 %191, i1 false, !prof !388
  br i1 %192, label %193, label %296, !prof !388

193:                                              ; preds = %175
  %194 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !200
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 30
  br i1 %197, label %198, label %296, !prof !389

198:                                              ; preds = %193
  %199 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !200
  %200 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %202, label %209, !prof !368

202:                                              ; preds = %198
  %203 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %204 = icmp ne i8 %203, 0
  %205 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %206 = icmp ne i8 %205, 0
  %207 = select i1 %204, i1 %206, i1 false, !prof !369
  %208 = select i1 %207, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %227

209:                                              ; preds = %198
  %210 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %211 = icmp eq ptr %210, %199
  br i1 %211, label %227, label %212, !prof !370

212:                                              ; preds = %209
  %213 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %214 = icmp eq ptr %213, %199
  br i1 %214, label %215, label %218, !prof !370

215:                                              ; preds = %212
  %216 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %217 = sext i32 %216 to i64
  br label %227

218:                                              ; preds = %212
  %219 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %220 = icmp eq ptr %219, %199
  br i1 %220, label %227, label %221, !prof !371

221:                                              ; preds = %218
  %222 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %223 = icmp eq ptr %222, %199
  br i1 %223, label %224, label %231, !prof !372

224:                                              ; preds = %221
  %225 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %226 = sext i32 %225 to i64
  br label %227

227:                                              ; preds = %224, %218, %215, %209, %202
  %228 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %215 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %224 ], [ %208, %202 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %209 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %218 ]
  %229 = phi i64 [ %217, %215 ], [ %226, %224 ], [ 0, %202 ], [ 0, %209 ], [ 0, %218 ]
  %230 = load ptr, ptr %228, align 8, !tbaa !200
  br label %231

231:                                              ; preds = %221, %227
  %232 = phi i64 [ %229, %227 ], [ %146, %221 ]
  %233 = phi ptr [ %230, %227 ], [ null, %221 ]
  %234 = icmp eq ptr %233, null
  br i1 %234, label %296, label %235, !prof !390

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !211
  %238 = add nsw i64 %237, %232
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = load ptr, ptr %57, align 8, !tbaa !211
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 37
  br i1 %244, label %245, label %255

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1
  %247 = load i32, ptr %246, align 8, !tbaa !211
  %248 = icmp ugt i32 %247, 57
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  call void @start_sequence() #29
  %250 = load ptr, ptr %57, align 8, !tbaa !211
  %251 = call ptr @emit_move_insn(ptr noundef %250, ptr noundef nonnull %233) #29
  %252 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %253 = call ptr @emit_insn_before(ptr noundef %252, ptr noundef nonnull %33) #29
  %254 = call ptr @delete_insn(ptr noundef nonnull %33) #29
  br label %556

255:                                              ; preds = %245, %240, %235
  %256 = load i32, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 2), align 8, !tbaa !215
  %257 = call ptr @gen_int_mode(i64 noundef %238, i32 noundef %256) #29
  %258 = icmp slt i32 %177, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %255
  %260 = zext nneg i32 %177 to i64
  %261 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %260, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !391
  %263 = getelementptr inbounds %struct.insn_operand_data, ptr %262, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !393
  %265 = icmp eq ptr %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.insn_operand_data, ptr %262, i64 1, i32 2
  %268 = load i16, ptr %267, align 8
  %269 = zext i16 %268 to i32
  %270 = call i32 %264(ptr noundef nonnull %233, i32 noundef %269) #29
  br label %271

271:                                              ; preds = %266, %259, %255
  %272 = phi i32 [ %270, %266 ], [ 1, %255 ], [ 1, %259 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %296, label %274

274:                                              ; preds = %271
  br i1 %258, label %287, label %275

275:                                              ; preds = %274
  %276 = zext nneg i32 %177 to i64
  %277 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %276, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !391
  %279 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 2
  %280 = load ptr, ptr %279, align 8, !tbaa !393
  %281 = icmp eq ptr %280, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 2, i32 2
  %284 = load i16, ptr %283, align 8
  %285 = zext i16 %284 to i32
  %286 = call i32 %280(ptr noundef %257, i32 noundef %285) #29
  br label %287

287:                                              ; preds = %282, %275, %274
  %288 = phi i32 [ %286, %282 ], [ 1, %274 ], [ 1, %275 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %287
  store ptr %233, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !200
  %291 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8, !tbaa !200
  store ptr %233, ptr %291, align 8, !tbaa !200
  store ptr %257, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !200
  %292 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8, !tbaa !200
  store ptr %257, ptr %292, align 8, !tbaa !200
  br label %296

293:                                              ; preds = %53
  call void @extract_insn(ptr noundef nonnull %33) #29
  %294 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  %295 = load i32, ptr %294, align 8, !tbaa !211
  br label %296

296:                                              ; preds = %293, %290, %287, %271, %231, %193, %175
  %297 = phi i64 [ %34, %293 ], [ %232, %231 ], [ %238, %271 ], [ %238, %287 ], [ %238, %290 ], [ %146, %193 ], [ %146, %175 ]
  %298 = phi i8 [ 0, %293 ], [ 0, %231 ], [ 0, %271 ], [ 0, %287 ], [ 1, %290 ], [ 0, %193 ], [ 0, %175 ]
  %299 = phi i32 [ %295, %293 ], [ %177, %231 ], [ %177, %271 ], [ %177, %287 ], [ %177, %290 ], [ %177, %193 ], [ %177, %175 ]
  %300 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !395
  %301 = icmp sgt i8 %300, 0
  br i1 %301, label %302, label %511, !prof !397

302:                                              ; preds = %296, %504
  %303 = phi i64 [ %507, %504 ], [ 0, %296 ]
  %304 = phi i8 [ %506, %504 ], [ %298, %296 ]
  %305 = phi i64 [ %505, %504 ], [ %297, %296 ]
  %306 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %303
  %307 = load ptr, ptr %306, align 8, !tbaa !200
  %308 = load i32, ptr %307, align 8
  %309 = trunc i32 %308 to i16
  switch i16 %309, label %504 [
    i16 43, label %310
    i16 37, label %350
    i16 39, label %396
  ], !prof !398

310:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %311 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !211
  store ptr %312, ptr %2, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #29
  store i8 0, ptr %3, align 1, !tbaa !211
  %313 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef nonnull %3) #29
  %314 = load i8, ptr %3, align 1, !tbaa !211
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %348, label %316, !prof !399

316:                                              ; preds = %310
  %317 = icmp slt i32 %299, 0
  call void @start_sequence() #29
  %318 = load ptr, ptr %2, align 8, !tbaa !200
  %319 = call ptr @replace_equiv_address(ptr noundef nonnull %307, ptr noundef %318) #29
  br i1 %317, label %332, label %320, !prof !400

320:                                              ; preds = %316
  %321 = zext nneg i32 %299 to i64
  %322 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %321, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !391
  %324 = getelementptr inbounds %struct.insn_operand_data, ptr %323, i64 %303
  %325 = load ptr, ptr %324, align 8, !tbaa !393
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327, !prof !400

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.insn_operand_data, ptr %323, i64 %303, i32 2
  %329 = load i16, ptr %328, align 8
  %330 = zext i16 %329 to i32
  %331 = call i32 %325(ptr noundef %319, i32 noundef %330) #29, !prof !401
  br label %332

332:                                              ; preds = %327, %320, %316
  %333 = phi i32 [ %331, %327 ], [ 1, %316 ], [ 1, %320 ]
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %342, !prof !400

335:                                              ; preds = %332
  %336 = load ptr, ptr %2, align 8, !tbaa !200
  %337 = load i32, ptr %336, align 8
  %338 = lshr i32 %337, 16
  %339 = and i32 %338, 255
  %340 = call ptr @force_reg(i32 noundef %339, ptr noundef nonnull %336) #29
  store ptr %340, ptr %2, align 8, !tbaa !200
  %341 = call ptr @replace_equiv_address(ptr noundef %319, ptr noundef %340) #29
  br label %342

342:                                              ; preds = %335, %332
  %343 = phi ptr [ %319, %332 ], [ %341, %335 ]
  %344 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346, !prof !402

346:                                              ; preds = %342
  %347 = call ptr @emit_insn_before(ptr noundef nonnull %344, ptr noundef nonnull %33) #29
  br label %348

348:                                              ; preds = %346, %342, %310
  %349 = phi ptr [ %307, %310 ], [ %343, %346 ], [ %343, %342 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  br i1 %315, label %504, label %456, !prof !399

350:                                              ; preds = %302
  %351 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %352 = icmp eq ptr %351, %307
  br i1 %352, label %353, label %360, !prof !368

353:                                              ; preds = %350
  %354 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %355 = icmp ne i8 %354, 0
  %356 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %357 = icmp ne i8 %356, 0
  %358 = select i1 %355, i1 %357, i1 false, !prof !369
  %359 = select i1 %358, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %378

360:                                              ; preds = %350
  %361 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %362 = icmp eq ptr %361, %307
  br i1 %362, label %378, label %363, !prof !370

363:                                              ; preds = %360
  %364 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %365 = icmp eq ptr %364, %307
  br i1 %365, label %366, label %369, !prof !370

366:                                              ; preds = %363
  %367 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %368 = sext i32 %367 to i64
  br label %378

369:                                              ; preds = %363
  %370 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %371 = icmp eq ptr %370, %307
  br i1 %371, label %378, label %372, !prof !371

372:                                              ; preds = %369
  %373 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %374 = icmp eq ptr %373, %307
  br i1 %374, label %375, label %382, !prof !372

375:                                              ; preds = %372
  %376 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %377 = sext i32 %376 to i64
  br label %378

378:                                              ; preds = %375, %369, %366, %360, %353
  %379 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %366 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %375 ], [ %359, %353 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %360 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %369 ]
  %380 = phi i64 [ %368, %366 ], [ %377, %375 ], [ 0, %353 ], [ 0, %360 ], [ 0, %369 ]
  %381 = load ptr, ptr %379, align 8, !tbaa !200
  br label %382

382:                                              ; preds = %372, %378
  %383 = phi i64 [ %380, %378 ], [ %305, %372 ]
  %384 = phi ptr [ %381, %378 ], [ null, %372 ]
  %385 = icmp eq ptr %384, null
  br i1 %385, label %504, label %386, !prof !403

386:                                              ; preds = %382
  %387 = icmp eq i64 %383, 0
  br i1 %387, label %456, label %388

388:                                              ; preds = %386
  call void @start_sequence() #29
  %389 = load i32, ptr %307, align 8
  %390 = lshr i32 %389, 16
  %391 = and i32 %390, 255
  %392 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %383) #29
  %393 = call ptr @expand_simple_binop(i32 noundef %391, i32 noundef 49, ptr noundef nonnull %384, ptr noundef %392, ptr noundef null, i32 noundef 1, i32 noundef 3) #29
  %394 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %395 = call ptr @emit_insn_before(ptr noundef %394, ptr noundef nonnull %33) #29
  br label %456

396:                                              ; preds = %302
  %397 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !211
  %399 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %400 = icmp eq ptr %399, %398
  br i1 %400, label %401, label %408, !prof !368

401:                                              ; preds = %396
  %402 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !276
  %403 = icmp ne i8 %402, 0
  %404 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %405 = icmp ne i8 %404, 0
  %406 = select i1 %403, i1 %405, i1 false, !prof !369
  %407 = select i1 %406, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), !prof !369
  br label %426

408:                                              ; preds = %396
  %409 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !200
  %410 = icmp eq ptr %409, %398
  br i1 %410, label %426, label %411, !prof !370

411:                                              ; preds = %408
  %412 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !200
  %413 = icmp eq ptr %412, %398
  br i1 %413, label %414, label %417, !prof !370

414:                                              ; preds = %411
  %415 = load i32, ptr @dynamic_offset, align 4, !tbaa !215
  %416 = sext i32 %415 to i64
  br label %426

417:                                              ; preds = %411
  %418 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !200
  %419 = icmp eq ptr %418, %398
  br i1 %419, label %426, label %420, !prof !371

420:                                              ; preds = %417
  %421 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !200
  %422 = icmp eq ptr %421, %398
  br i1 %422, label %423, label %430, !prof !372

423:                                              ; preds = %420
  %424 = load i32, ptr @cfa_offset, align 4, !tbaa !215
  %425 = sext i32 %424 to i64
  br label %426

426:                                              ; preds = %423, %417, %414, %408, %401
  %427 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %414 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %423 ], [ %407, %401 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %408 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %417 ]
  %428 = phi i64 [ %416, %414 ], [ %425, %423 ], [ 0, %401 ], [ 0, %408 ], [ 0, %417 ]
  %429 = load ptr, ptr %427, align 8, !tbaa !200
  br label %430

430:                                              ; preds = %420, %426
  %431 = phi i64 [ %428, %426 ], [ %305, %420 ]
  %432 = phi ptr [ %429, %426 ], [ null, %420 ]
  %433 = icmp eq ptr %432, null
  br i1 %433, label %504, label %434, !prof !404

434:                                              ; preds = %430
  %435 = icmp eq i64 %431, 0
  br i1 %435, label %444, label %436

436:                                              ; preds = %434
  call void @start_sequence() #29
  %437 = load i32, ptr %432, align 8
  %438 = lshr i32 %437, 16
  %439 = and i32 %438, 255
  %440 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %431) #29
  %441 = call ptr @expand_simple_binop(i32 noundef %439, i32 noundef 49, ptr noundef nonnull %432, ptr noundef %440, ptr noundef null, i32 noundef 1, i32 noundef 3) #29
  %442 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %443 = call ptr @emit_insn_before(ptr noundef %442, ptr noundef nonnull %33) #29
  br label %444

444:                                              ; preds = %436, %434
  %445 = phi ptr [ %441, %436 ], [ %432, %434 ]
  %446 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %303
  %447 = load i32, ptr %446, align 4, !tbaa !215
  %448 = load i32, ptr %445, align 8
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  %451 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 1
  %452 = load i32, ptr %451, align 8, !tbaa !211
  %453 = call ptr @simplify_gen_subreg(i32 noundef %447, ptr noundef nonnull %445, i32 noundef %450, i32 noundef %452) #29
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %456

455:                                              ; preds = %444
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1600, ptr noundef nonnull @.str.2) #29
  br label %456

456:                                              ; preds = %455, %444, %388, %386, %348
  %457 = phi i64 [ %431, %455 ], [ %431, %444 ], [ %383, %386 ], [ %383, %388 ], [ %305, %348 ]
  %458 = phi ptr [ null, %455 ], [ %453, %444 ], [ %384, %386 ], [ %393, %388 ], [ %349, %348 ]
  %459 = icmp slt i32 %299, 0
  br i1 %459, label %472, label %460, !prof !400

460:                                              ; preds = %456
  %461 = zext nneg i32 %299 to i64
  %462 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %461, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !391
  %464 = getelementptr inbounds %struct.insn_operand_data, ptr %463, i64 %303
  %465 = load ptr, ptr %464, align 8, !tbaa !393
  %466 = icmp eq ptr %465, null
  br i1 %466, label %472, label %467, !prof !400

467:                                              ; preds = %460
  %468 = getelementptr inbounds %struct.insn_operand_data, ptr %463, i64 %303, i32 2
  %469 = load i16, ptr %468, align 8
  %470 = zext i16 %469 to i32
  %471 = call i32 %465(ptr noundef %458, i32 noundef %470) #29, !prof !401
  br label %472

472:                                              ; preds = %467, %460, %456
  %473 = phi i32 [ %471, %467 ], [ 1, %456 ], [ 1, %460 ]
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %500, !prof !400

475:                                              ; preds = %472
  call void @start_sequence() #29
  %476 = load i32, ptr %458, align 8
  %477 = and i32 %476, 65535
  %478 = icmp eq i32 %477, 37
  br i1 %478, label %479, label %486

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1
  %481 = load i32, ptr %480, align 8, !tbaa !211
  %482 = icmp ult i32 %481, 58
  br i1 %482, label %484, label %483

483:                                              ; preds = %479
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1615, ptr noundef nonnull @.str.2) #29
  br label %484

484:                                              ; preds = %483, %479
  %485 = call ptr @copy_to_reg(ptr noundef nonnull %458) #29
  br label %494

486:                                              ; preds = %475
  %487 = sext i32 %299 to i64
  %488 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %487, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !391
  %490 = getelementptr inbounds %struct.insn_operand_data, ptr %489, i64 %303, i32 2
  %491 = load i16, ptr %490, align 8
  %492 = zext i16 %491 to i32
  %493 = call ptr @force_reg(i32 noundef %492, ptr noundef nonnull %458) #29
  br label %494

494:                                              ; preds = %486, %484
  %495 = phi ptr [ %485, %484 ], [ %493, %486 ]
  %496 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %497 = icmp eq ptr %496, null
  br i1 %497, label %500, label %498

498:                                              ; preds = %494
  %499 = call ptr @emit_insn_before(ptr noundef nonnull %496, ptr noundef nonnull %33) #29
  br label %500

500:                                              ; preds = %498, %494, %472
  %501 = phi ptr [ %458, %472 ], [ %495, %498 ], [ %495, %494 ]
  store ptr %501, ptr %306, align 8, !tbaa !200
  %502 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %303
  %503 = load ptr, ptr %502, align 8, !tbaa !200
  store ptr %501, ptr %503, align 8, !tbaa !200
  br label %504

504:                                              ; preds = %500, %430, %382, %348, %302
  %505 = phi i64 [ %305, %302 ], [ %431, %430 ], [ %457, %500 ], [ %383, %382 ], [ %305, %348 ]
  %506 = phi i8 [ %304, %302 ], [ %304, %430 ], [ 1, %500 ], [ %304, %382 ], [ %304, %348 ]
  %507 = add nuw nsw i64 %303, 1
  %508 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !395
  %509 = sext i8 %508 to i64
  %510 = icmp slt i64 %507, %509
  br i1 %510, label %302, label %511, !prof !405, !llvm.loop !406

511:                                              ; preds = %504, %296
  %512 = phi i64 [ %297, %296 ], [ %505, %504 ]
  %513 = phi i8 [ %298, %296 ], [ %506, %504 ]
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %535, label %515, !prof !407

515:                                              ; preds = %511
  %516 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !408
  %517 = icmp sgt i8 %516, 0
  br i1 %517, label %518, label %533, !prof !409

518:                                              ; preds = %515, %518
  %519 = phi i64 [ %529, %518 ], [ 0, %515 ]
  %520 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !211
  %522 = sext i8 %521 to i64
  %523 = and i64 %522, 4294967295
  %524 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %523
  %525 = load ptr, ptr %524, align 8, !tbaa !200
  %526 = call ptr @copy_rtx(ptr noundef %525) #29
  %527 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %519
  %528 = load ptr, ptr %527, align 8, !tbaa !200
  store ptr %526, ptr %528, align 8, !tbaa !200
  %529 = add nuw nsw i64 %519, 1
  %530 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !408
  %531 = sext i8 %530 to i64
  %532 = icmp slt i64 %529, %531
  br i1 %532, label %518, label %533, !prof !409, !llvm.loop !410

533:                                              ; preds = %518, %515
  %534 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  store i32 -1, ptr %534, align 8, !tbaa !211
  br label %535

535:                                              ; preds = %533, %511
  %536 = load ptr, ptr %40, align 8, !tbaa !211
  %537 = call i32 @asm_noperands(ptr noundef %536) #29
  %538 = icmp sgt i32 %537, -1
  br i1 %538, label %539, label %545, !prof !383

539:                                              ; preds = %535
  %540 = load ptr, ptr %40, align 8, !tbaa !211
  %541 = call i32 @check_asm_operands(ptr noundef %540) #29
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %556

543:                                              ; preds = %539
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %33, ptr noundef nonnull @.str.12) #29
  %544 = call ptr @delete_insn(ptr noundef nonnull %33) #29
  br label %556

545:                                              ; preds = %535
  %546 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !211
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %552, !prof !411

549:                                              ; preds = %545
  %550 = load ptr, ptr %40, align 8, !tbaa !211
  %551 = call i32 @recog(ptr noundef %550, ptr noundef nonnull %33, ptr noundef null) #29
  store i32 %551, ptr %546, align 8, !tbaa !211
  br label %552

552:                                              ; preds = %549, %545
  %553 = load i32, ptr %546, align 8, !tbaa !211
  %554 = icmp slt i32 %553, 0
  br i1 %554, label %555, label %556, !prof !383

555:                                              ; preds = %552
  call void @_fatal_insn_not_found(ptr noundef nonnull %33, ptr noundef nonnull @.str.1, i32 noundef 1652, ptr noundef nonnull @.str.2) #29
  br label %556

556:                                              ; preds = %555, %552, %543, %539, %249, %171, %108, %46
  %557 = phi i64 [ %34, %46 ], [ %512, %543 ], [ %512, %539 ], [ %512, %555 ], [ %512, %552 ], [ %146, %171 ], [ %238, %249 ], [ %91, %108 ]
  %558 = load i32, ptr %33, align 8
  %559 = and i32 %558, 134217728
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %570, !prof !412

561:                                              ; preds = %556
  %562 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1, i32 0, i32 0, i64 1
  %563 = call i32 @for_each_rtx(ptr noundef nonnull %562, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #29
  %564 = load i32, ptr %33, align 8
  %565 = and i32 %564, 65535
  %566 = icmp eq i32 %565, 10
  br i1 %566, label %567, label %570, !prof !413

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1, i32 0, i32 0, i64 2
  %569 = call i32 @for_each_rtx(ptr noundef nonnull %568, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #29
  br label %570

570:                                              ; preds = %39, %39, %39, %39, %32, %39, %567, %561, %556
  %571 = phi i64 [ %557, %567 ], [ %557, %561 ], [ %557, %556 ], [ %34, %39 ], [ %34, %32 ], [ %34, %39 ], [ %34, %39 ], [ %34, %39 ], [ %34, %39 ]
  %572 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %573 = load ptr, ptr %572, align 8, !tbaa !211
  %574 = icmp eq ptr %573, null
  br i1 %574, label %575, label %32, !prof !414, !llvm.loop !415

575:                                              ; preds = %570, %27
  %576 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %577 = getelementptr inbounds %struct.tree_decl_non_common, ptr %576, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !211
  %579 = icmp eq ptr %578, null
  br i1 %579, label %602, label %580, !prof !380

580:                                              ; preds = %575, %598
  %581 = phi ptr [ %600, %598 ], [ %578, %575 ]
  %582 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %581, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !211
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %587, !prof !325

585:                                              ; preds = %580
  call void @make_decl_rtl(ptr noundef nonnull %581) #29
  %586 = load ptr, ptr %582, align 8, !tbaa !211
  br label %587

587:                                              ; preds = %585, %580
  %588 = phi ptr [ %586, %585 ], [ %583, %580 ]
  call void @instantiate_decl_rtl(ptr noundef %588)
  %589 = getelementptr inbounds %struct.tree_parm_decl, ptr %581, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !211
  call void @instantiate_decl_rtl(ptr noundef %590)
  %591 = getelementptr inbounds %struct.tree_decl_common, ptr %581, i64 0, i32 2
  %592 = load i64, ptr %591, align 8
  %593 = and i64 %592, 67108864
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %598, label %595, !prof !363

595:                                              ; preds = %587
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #29
  %596 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %581) #29
  store ptr %596, ptr %1, align 8, !tbaa !200
  %597 = call ptr @walk_tree_1(ptr noundef nonnull %1, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #29
  br label %598

598:                                              ; preds = %595, %587
  %599 = getelementptr inbounds %struct.tree_common, ptr %581, i64 0, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !211
  %601 = icmp eq ptr %600, null
  br i1 %601, label %602, label %580, !prof !416, !llvm.loop !417

602:                                              ; preds = %598, %575
  %603 = getelementptr inbounds %struct.tree_decl_common, ptr %576, i64 0, i32 5
  %604 = load ptr, ptr %603, align 8, !tbaa !211
  call fastcc void @instantiate_decls_1(ptr noundef %604)
  %605 = load ptr, ptr @cfun, align 8, !tbaa !200
  %606 = getelementptr inbounds %struct.function, ptr %605, i64 0, i32 9
  %607 = load ptr, ptr %606, align 8, !tbaa !418
  store ptr null, ptr %606, align 8, !tbaa !418
  %608 = icmp eq ptr %607, null
  br i1 %608, label %627, label %609, !prof !419

609:                                              ; preds = %602, %625
  %610 = phi ptr [ %612, %625 ], [ %607, %602 ]
  %611 = getelementptr inbounds %struct.tree_common, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !211
  %613 = getelementptr inbounds %struct.tree_list, ptr %610, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !211
  %615 = load i64, ptr %614, align 8
  %616 = and i64 %615, 65535
  %617 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %616, i64 11
  %618 = load i8, ptr %617, align 1, !tbaa !211
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %625, label %620, !prof !409

620:                                              ; preds = %609
  %621 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %614, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !211
  %623 = icmp eq ptr %622, null
  br i1 %623, label %625, label %624, !prof !409

624:                                              ; preds = %620
  call void @instantiate_decl_rtl(ptr noundef nonnull %622)
  br label %625

625:                                              ; preds = %624, %620, %609
  call void @ggc_free(ptr noundef nonnull %610) #29
  %626 = icmp eq ptr %612, null
  br i1 %626, label %627, label %609, !prof !343, !llvm.loop !420

627:                                              ; preds = %625, %602
  %628 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 99), align 8, !tbaa !421
  call void %628() #29, !prof !422
  store i32 1, ptr @virtuals_instantiated, align 4, !tbaa !215
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @aggregate_value_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !423 {
  br label %3

3:                                                ; preds = %47, %2
  %4 = phi ptr [ %0, %2 ], [ %48, %47 ]
  %5 = phi ptr [ %1, %2 ], [ %38, %47 ]
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !215
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11, !prof !424

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ %4, %3 ]
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17, !prof !425

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %36 [
    i16 59, label %20
    i16 29, label %32
    i16 20, label %37
    i16 21, label %37
    i16 1, label %35
  ], !prof !426

20:                                               ; preds = %17
  %21 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %5) #29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28, !prof !427

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi ptr [ %27, %23 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  br label %37

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  br label %37

35:                                               ; preds = %17
  br label %37

36:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1887, ptr noundef nonnull @.str.2) #29
  br label %37

37:                                               ; preds = %17, %28, %32, %35, %36, %17, %14
  %38 = phi ptr [ %5, %36 ], [ null, %35 ], [ %5, %17 ], [ %34, %32 ], [ %31, %28 ], [ null, %14 ], [ %5, %17 ]
  %39 = phi ptr [ null, %36 ], [ null, %35 ], [ null, %17 ], [ %5, %32 ], [ %21, %28 ], [ null, %14 ], [ null, %17 ]
  %40 = load i64, ptr %15, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %49 [
    i16 19, label %124
    i16 16, label %42
  ], !prof !428

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !429

47:                                               ; preds = %42
  %48 = tail call ptr @first_field(ptr noundef nonnull %15) #29
  br label %3

49:                                               ; preds = %37, %42
  %50 = load i64, ptr %4, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %57 [
    i16 34, label %52
    i16 36, label %52
  ], !prof !430

52:                                               ; preds = %49, %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 268435456
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %124, !prof !431

57:                                               ; preds = %52, %49
  %58 = and i64 %50, 65535
  %59 = icmp eq i64 %58, 59
  %60 = icmp ne ptr %39, null
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %71, !prof !432

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_decl_non_common, ptr %39, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !211
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66, !prof !433

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 268435456
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %124, !prof !434

71:                                               ; preds = %57, %66, %62
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 3), align 8, !tbaa !435
  %73 = tail call zeroext i8 %72(ptr noundef nonnull %15, ptr noundef %38) #29, !prof !436
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %124, !prof !437

75:                                               ; preds = %71
  %76 = load i64, ptr %15, align 8
  %77 = and i64 %76, 262144
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %124, !prof !437

79:                                               ; preds = %75
  %80 = load i32, ptr @flag_pcc_struct_return, align 4, !tbaa !215
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82, !prof !438

82:                                               ; preds = %79
  %83 = trunc i64 %76 to i32
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -15
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %124, label %87, !prof !439

87:                                               ; preds = %82, %79
  %88 = tail call ptr @hard_function_value(ptr noundef nonnull %15, ptr noundef null, ptr noundef %38, i32 noundef 0) #29
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %92, label %124, !prof !440

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !211
  %95 = sext i32 %94 to i64
  %96 = load i64, ptr %15, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 14
  br i1 %98, label %99, label %101, !prof !441

99:                                               ; preds = %92
  %100 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #29
  br label %106

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi i32 [ %100, %99 ], [ %105, %101 ]
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %95, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !211
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %124, label %112, !prof !442

112:                                              ; preds = %106
  %113 = sext i32 %94 to i64
  %114 = zext i8 %110 to i64
  br label %118

115:                                              ; preds = %118
  %116 = add nuw nsw i64 %119, 1
  %117 = icmp eq i64 %116, %114
  br i1 %117, label %124, label %118, !prof !443, !llvm.loop !444

118:                                              ; preds = %112, %115
  %119 = phi i64 [ 0, %112 ], [ %116, %115 ]
  %120 = add nsw i64 %119, %113
  %121 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !211
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %115, !prof !445

124:                                              ; preds = %118, %115, %106, %66, %52, %82, %87, %75, %71, %37
  %125 = phi i32 [ 0, %37 ], [ 1, %71 ], [ 1, %75 ], [ 1, %82 ], [ 0, %87 ], [ 1, %52 ], [ 1, %66 ], [ 0, %106 ], [ 0, %115 ], [ 1, %118 ]
  ret i32 %125
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

declare ptr @first_field(ptr noundef) local_unnamed_addr #3

declare ptr @hard_function_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @use_register_for_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !446 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 20), align 8, !tbaa !447
  %3 = tail call zeroext i8 %2() #29, !prof !448
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %49, label %5, !prof !449

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 327680
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %49, !prof !450

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 255
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %49, label %14, !prof !449

14:                                               ; preds = %9
  %15 = load i32, ptr @flag_float_store, align 4, !tbaa !215
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17, !prof !450

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %28 [
    i16 9, label %49
    i16 13, label %22
    i16 14, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 9
  br i1 %27, label %49, label %28

28:                                               ; preds = %22, %17, %14
  %29 = and i64 %11, 1024
  %30 = icmp eq i64 %29, 0
  %31 = load i32, ptr @optimize, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !prof !451
  br i1 %33, label %34, label %49, !prof !449

34:                                               ; preds = %28
  %35 = and i64 %11, 16777216
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = add i16 %41, -16
  %43 = icmp ult i16 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !211
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37, %44
  br label %49

49:                                               ; preds = %22, %17, %44, %34, %28, %9, %5, %1, %48
  %50 = phi i8 [ 1, %48 ], [ 1, %1 ], [ 0, %5 ], [ 0, %9 ], [ 1, %28 ], [ 0, %34 ], [ 0, %44 ], [ 0, %17 ], [ 0, %22 ]
  ret i8 %50
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pass_by_reference(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #10 !prof !452 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6, !prof !453

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %45, !prof !454

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14, !prof !453

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %45, !prof !454

18:                                               ; preds = %14
  %19 = and i64 %7, 65535
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %21, label %40, !prof !453

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @first_field(ptr noundef nonnull %2) #29
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !211
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #29
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %33, %35, %18, %21, %4
  %41 = phi i32 [ %1, %21 ], [ %1, %18 ], [ %1, %4 ], [ %34, %33 ], [ %39, %35 ]
  %42 = phi ptr [ %2, %21 ], [ %2, %18 ], [ null, %4 ], [ %29, %33 ], [ %29, %35 ]
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 5), align 8, !tbaa !455
  %44 = tail call zeroext i8 %43(ptr noundef %0, i32 noundef %41, ptr noundef %42, i8 noundef zeroext %3) #29, !prof !456
  br label %45

45:                                               ; preds = %10, %14, %6, %40
  %46 = phi i8 [ %44, %40 ], [ 1, %6 ], [ 1, %14 ], [ 1, %10 ]
  ret i8 %46
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @reference_callee_copied(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #9 !prof !199 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 12), align 8, !tbaa !457
  %12 = tail call zeroext i8 %11(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) #29
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i8 [ %12, %10 ], [ 0, %6 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gimplify_parameters() local_unnamed_addr #10 !prof !257 {
  %1 = alloca %struct.assign_parm_data_all, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.assign_parm_data_one, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  store ptr null, ptr %2, align 8, !tbaa !200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %1, i8 0, i64 136, i1 false)
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  call void @init_cumulative_args(ptr noundef nonnull %1, ptr noundef %6, ptr noundef null, ptr noundef %4) #29
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %8 = call i32 @ix86_reg_parm_stack_space(ptr noundef %7) #29
  %9 = getelementptr inbounds %struct.assign_parm_data_all, ptr %1, i64 0, i32 8
  store i32 %8, ptr %9, align 8, !tbaa !458
  %10 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %1)
  %11 = icmp eq ptr %10, null
  br label %12

12:                                               ; preds = %124, %0
  %13 = phi i32 [ 0, %0 ], [ %125, %124 ]
  br i1 %11, label %21, label %14, !prof !461

14:                                               ; preds = %12
  %15 = load i32, ptr %10, align 8, !tbaa !462
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %17, label %21, !prof !464

17:                                               ; preds = %14
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds %struct.VEC_tree_base, ptr %10, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !200
  br label %21

21:                                               ; preds = %12, %14, %17
  %22 = phi ptr [ %20, %17 ], [ null, %14 ], [ null, %12 ]
  %23 = phi i1 [ false, %17 ], [ true, %14 ], [ true, %12 ]
  br i1 %23, label %126, label %24, !prof !464

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.assign_parm_data_one, ptr %3, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #29
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %1, ptr noundef %22, ptr noundef nonnull %3)
  %26 = load i32, ptr %25, align 4, !tbaa !465
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %124, label %28, !prof !267

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !211
  %31 = icmp eq ptr %30, null
  br i1 %31, label %124, label %32, !prof !267

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.assign_parm_data_one, ptr %3, i64 0, i32 6
  %34 = getelementptr inbounds %struct.assign_parm_data_one, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.assign_parm_data_one, ptr %3, i64 0, i32 9
  %36 = load i32, ptr %33, align 8, !tbaa !468
  %37 = load ptr, ptr %34, align 8, !tbaa !469
  %38 = load i8, ptr %35, align 4
  %39 = and i8 %38, 1
  %40 = zext nneg i8 %39 to i32
  call void @function_arg_advance(ptr noundef nonnull %1, i32 noundef %36, ptr noundef %37, i32 noundef %40) #29
  %41 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %34, ptr noundef nonnull @gimplify_parm_type, ptr noundef nonnull %2, ptr noundef null) #29
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !211
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 23
  br i1 %46, label %48, label %47, !prof !470

47:                                               ; preds = %32
  call void @gimplify_one_sizepos(ptr noundef nonnull %29, ptr noundef nonnull %2) #29
  call void @gimplify_one_sizepos(ptr noundef nonnull %42, ptr noundef nonnull %2) #29
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i8, ptr %35, align 4
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %124, label %52, !prof !470

52:                                               ; preds = %48
  %53 = load ptr, ptr %34, align 8, !tbaa !469
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !211
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @vector_type_mode(ptr noundef nonnull %55) #29
  br label %66

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  %68 = load i64, ptr %55, align 8
  %69 = and i64 %68, 262144
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8, ptr %35, align 4
  %73 = and i8 %72, 1
  %74 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 12), align 8, !tbaa !457
  %75 = call zeroext i8 %74(ptr noundef nonnull %1, i32 noundef %67, ptr noundef nonnull %55, i8 noundef zeroext %73) #29
  br label %76

76:                                               ; preds = %66, %71
  %77 = phi i8 [ %75, %71 ], [ 0, %66 ]
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %42, align 8, !tbaa !211
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 23
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load i32, ptr @flag_stack_check, align 4, !tbaa !215
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call i32 @compare_tree_int(ptr noundef nonnull %80, i64 noundef 40) #29
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %87, %84
  %91 = call ptr @get_name(ptr noundef %22) #29
  %92 = call ptr @create_tmp_var(ptr noundef nonnull %55, ptr noundef %91) #29
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %92, i64 0, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, -1025
  store i64 %95, ptr %93, align 8
  %96 = load i64, ptr %22, align 8
  %97 = and i64 %96, 262144
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %90
  %100 = and i64 %96, -262145
  store i64 %100, ptr %22, align 8
  %101 = load i64, ptr %92, align 8
  %102 = or i64 %101, 262144
  store i64 %102, ptr %92, align 8
  br label %118

103:                                              ; preds = %87, %79
  %104 = call ptr @build_pointer_type(ptr noundef nonnull %55) #29
  %105 = call ptr @get_name(ptr noundef %22) #29
  %106 = call ptr @create_tmp_var(ptr noundef %104, ptr noundef %105) #29
  %107 = getelementptr inbounds %struct.tree_decl_common, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, -1025
  store i64 %109, ptr %107, align 8
  %110 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %106) #29
  %111 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !200
  %112 = load ptr, ptr %42, align 8, !tbaa !211
  %113 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %111, i32 noundef 1, ptr noundef %112) #29
  %114 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %104, ptr noundef %113) #29
  %115 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !211
  %117 = call ptr @build2_stat(i32 noundef 53, ptr noundef %116, ptr noundef %106, ptr noundef %114) #29
  call void @gimplify_and_add(ptr noundef %117, ptr noundef nonnull %2) #29
  br label %118

118:                                              ; preds = %90, %99, %103
  %119 = phi ptr [ %110, %103 ], [ %92, %99 ], [ %92, %90 ]
  %120 = call ptr @gimplify_assign(ptr noundef %119, ptr noundef %22, ptr noundef nonnull %2) #29
  call void @decl_value_expr_insert(ptr noundef %22, ptr noundef %119) #29
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = or i64 %122, 67108864
  store i64 %123, ptr %121, align 8
  br label %124

124:                                              ; preds = %48, %118, %76, %24, %28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #29
  %125 = add i32 %13, 1
  br label %12, !llvm.loop !471

126:                                              ; preds = %21
  br i1 %11, label %128, label %127, !prof !267

127:                                              ; preds = %126
  call void @free(ptr noundef %10)
  br label %128

128:                                              ; preds = %126, %127
  %129 = load ptr, ptr %2, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %1) #29
  ret ptr %129
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @assign_parms_augmented_arg_list(ptr nocapture noundef %0) unnamed_addr #10 !prof !472 !PGOFuncName !473 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8, !prof !474

8:                                                ; preds = %1, %19
  %9 = phi ptr [ %26, %19 ], [ %6, %1 ]
  %10 = phi ptr [ %20, %19 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !475

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.VEC_tree_base, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !476
  %15 = load i32, ptr %10, align 8, !tbaa !462
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %8, %12
  %18 = tail call ptr @vec_heap_p_reserve(ptr noundef %10, i32 noundef 1) #29
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %10, %12 ]
  %21 = load i32, ptr %20, align 8, !tbaa !462
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !462
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %20, i64 0, i32 2, i64 %23
  store ptr %9, ptr %24, align 8, !tbaa !200
  %25 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !prof !477, !llvm.loop !478

28:                                               ; preds = %19, %1
  %29 = phi ptr [ null, %1 ], [ %20, %19 ]
  %30 = load ptr, ptr %5, align 8, !tbaa !211
  %31 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !479
  %32 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = tail call i32 @aggregate_value_p(ptr noundef %33, ptr noundef %2), !range !248
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %77, label %36, !prof !475

36:                                               ; preds = %28
  %37 = load ptr, ptr @cfun, align 8, !tbaa !200
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 20
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 134217728
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !480
  %44 = load ptr, ptr %3, align 8, !tbaa !211
  %45 = tail call ptr %43(ptr noundef %44, i32 noundef 1) #29
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !211
  %50 = tail call ptr @build_pointer_type(ptr noundef %49) #29
  %51 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !211
  %53 = tail call ptr @build_decl_stat(i32 noundef %52, i32 noundef 34, ptr noundef null, ptr noundef %50) #29
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 5
  store ptr %50, ptr %54, align 8, !tbaa !211
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = or i64 %56, 5120
  store i64 %57, ptr %55, align 8
  %58 = load ptr, ptr %31, align 8, !tbaa !479
  %59 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !211
  store ptr %53, ptr %31, align 8, !tbaa !479
  %60 = icmp eq ptr %29, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.VEC_tree_base, ptr %29, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !476
  %64 = load i32, ptr %29, align 8, !tbaa !462
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %47, %61
  %67 = tail call ptr @vec_heap_p_reserve(ptr noundef %29, i32 noundef 1) #29
  br label %68

68:                                               ; preds = %61, %66
  %69 = phi ptr [ %67, %66 ], [ %29, %61 ]
  %70 = load i32, ptr %69, align 8, !tbaa !462
  %71 = getelementptr inbounds %struct.VEC_tree_base, ptr %69, i64 0, i32 2, i64 0
  %72 = getelementptr inbounds %struct.VEC_tree_base, ptr %69, i64 1
  %73 = add i32 %70, 1
  store i32 %73, ptr %69, align 8, !tbaa !462
  %74 = zext i32 %70 to i64
  %75 = shl nuw nsw i64 %74, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %72, ptr nonnull align 8 %71, i64 %75, i1 false)
  store ptr %53, ptr %71, align 8, !tbaa !200
  %76 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 2
  store ptr %53, ptr %76, align 8, !tbaa !481
  br label %77

77:                                               ; preds = %68, %42, %36, %28
  %78 = phi ptr [ %29, %28 ], [ %69, %68 ], [ %29, %42 ], [ %29, %36 ]
  %79 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !482
  %80 = icmp eq ptr %79, null
  br i1 %80, label %172, label %81, !prof !475

81:                                               ; preds = %77, %168
  %82 = phi ptr [ %169, %168 ], [ %78, %77 ]
  %83 = phi i32 [ %171, %168 ], [ 0, %77 ]
  %84 = icmp eq ptr %82, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %82, align 8, !tbaa !462
  %87 = icmp ugt i32 %86, %83
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = zext i32 %83 to i64
  %90 = getelementptr inbounds %struct.VEC_tree_base, ptr %82, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !200
  br label %92

92:                                               ; preds = %88, %85, %81
  %93 = phi ptr [ %91, %88 ], [ null, %85 ], [ null, %81 ]
  %94 = phi i1 [ false, %88 ], [ true, %85 ], [ true, %81 ]
  br i1 %94, label %172, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !211
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 13
  br i1 %100, label %101, label %168

101:                                              ; preds = %95
  %102 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !482
  %103 = tail call zeroext i8 %102(ptr noundef nonnull %97) #29
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %168, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !211
  %108 = load i64, ptr %93, align 8
  %109 = lshr i64 %108, 18
  %110 = and i64 %109, 1
  %111 = tail call ptr @copy_node_stat(ptr noundef nonnull %93) #29
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  store ptr %107, ptr %112, align 8, !tbaa !211
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !211
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !211
  store ptr %116, ptr %113, align 8, !tbaa !211
  %117 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 2
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, -256
  store i64 %119, ptr %117, align 8
  %120 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 1
  store ptr null, ptr %120, align 8, !tbaa !211
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 4
  store ptr null, ptr %121, align 8, !tbaa !211
  %122 = shl nuw nsw i64 %110, 12
  %123 = and i64 %118, -5376
  %124 = shl nuw nsw i64 %110, 10
  %125 = or disjoint i64 %122, %123
  %126 = or disjoint i64 %125, %124
  store i64 %126, ptr %117, align 8
  %127 = load i64, ptr %111, align 8
  %128 = and i64 %127, -262145
  store i64 %128, ptr %111, align 8
  tail call void @layout_decl(ptr noundef nonnull %111, i32 noundef 0) #29
  %129 = zext i32 %83 to i64
  %130 = getelementptr inbounds %struct.VEC_tree_base, ptr %82, i64 0, i32 2, i64 %129
  store ptr %111, ptr %130, align 8, !tbaa !200
  %131 = load i64, ptr %111, align 8
  %132 = and i64 %131, 65535
  %133 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !215
  %135 = add i32 %134, -4
  %136 = icmp ult i32 %135, 7
  br i1 %136, label %137, label %140

137:                                              ; preds = %105
  %138 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !211
  br label %140

140:                                              ; preds = %137, %105
  %141 = phi i32 [ %139, %137 ], [ 0, %105 ]
  %142 = tail call ptr @build_decl_stat(i32 noundef %141, i32 noundef 34, ptr noundef null, ptr noundef %107) #29
  %143 = load ptr, ptr %113, align 8, !tbaa !211
  %144 = getelementptr inbounds %struct.tree_decl_common, ptr %142, i64 0, i32 5
  store ptr %143, ptr %144, align 8, !tbaa !211
  %145 = getelementptr inbounds %struct.tree_decl_common, ptr %142, i64 0, i32 2
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, -5121
  %148 = or disjoint i64 %122, %147
  %149 = or disjoint i64 %148, %124
  store i64 %149, ptr %145, align 8
  tail call void @layout_decl(ptr noundef %142, i32 noundef 0) #29
  %150 = add i32 %83, 1
  br i1 %84, label %156, label %151

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.VEC_tree_base, ptr %82, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !476
  %154 = load i32, ptr %82, align 8, !tbaa !462
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %151, %140
  %157 = tail call ptr @vec_heap_p_reserve(ptr noundef %82, i32 noundef 1) #29
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi ptr [ %157, %156 ], [ %82, %151 ]
  %160 = load i32, ptr %159, align 8, !tbaa !462
  %161 = zext i32 %150 to i64
  %162 = getelementptr inbounds %struct.VEC_tree_base, ptr %159, i64 0, i32 2, i64 %161
  %163 = getelementptr inbounds ptr, ptr %162, i64 1
  %164 = add i32 %160, 1
  store i32 %164, ptr %159, align 8, !tbaa !462
  %165 = sub i32 %160, %150
  %166 = zext i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %163, ptr nonnull align 8 %162, i64 %167, i1 false)
  store ptr %142, ptr %162, align 8, !tbaa !200
  br label %168

168:                                              ; preds = %158, %101, %95
  %169 = phi ptr [ %82, %101 ], [ %159, %158 ], [ %82, %95 ]
  %170 = phi i32 [ %83, %101 ], [ %150, %158 ], [ %83, %95 ]
  %171 = add i32 %170, 1
  br label %81, !llvm.loop !483

172:                                              ; preds = %92, %77
  %173 = phi ptr [ %78, %77 ], [ %82, %92 ]
  ret ptr %173
}

; Function Attrs: nounwind uwtable
define internal fastcc void @assign_parm_find_data_types(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !472 !PGOFuncName !484 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %5 = load ptr, ptr @cfun, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !475

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 4
  br label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %20 = load i8, ptr %19, align 4
  %21 = or i8 %20, 1
  store i8 %21, ptr %19, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !485
  %24 = tail call zeroext i8 %23(ptr noundef %0) #29
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %27 = load i8, ptr %26, align 4
  br i1 %25, label %30, label %28

28:                                               ; preds = %22
  %29 = or i8 %27, 1
  store i8 %29, ptr %26, align 4
  br label %32

30:                                               ; preds = %22
  %31 = and i8 %27, -2
  store i8 %31, ptr %26, align 4
  br label %32

32:                                               ; preds = %18, %30, %28, %10
  %33 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !211
  %37 = load ptr, ptr @global_trees, align 16, !tbaa !200
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %49, label %39, !prof !486

39:                                               ; preds = %32
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp ne i64 %41, 34
  %43 = icmp eq ptr %36, null
  %44 = select i1 %42, i1 true, i1 %43, !prof !486
  br i1 %44, label %49, label %45, !prof !486

45:                                               ; preds = %39
  %46 = load i64, ptr %34, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 19
  br i1 %48, label %49, label %51, !prof !486

49:                                               ; preds = %45, %39, %32
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !200
  br label %151

51:                                               ; preds = %45
  %52 = load i64, ptr %36, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 14
  br i1 %54, label %55, label %57, !prof !486

55:                                               ; preds = %51
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %36) #29
  br label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %57 ]
  %64 = load i64, ptr %34, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  br i1 %66, label %67, label %69, !prof !486

67:                                               ; preds = %62
  %68 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #29
  br label %74

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %74

74:                                               ; preds = %69, %67
  %75 = phi i32 [ %68, %67 ], [ %73, %69 ]
  %76 = load i64, ptr %36, align 8
  %77 = and i64 %76, 65534
  %78 = icmp eq i64 %77, 16
  br i1 %78, label %79, label %88, !prof !486

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 4096
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = tail call ptr @first_field(ptr noundef nonnull %36) #29
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !211
  br label %88

88:                                               ; preds = %74, %84, %79
  %89 = phi ptr [ %87, %84 ], [ %36, %79 ], [ %36, %74 ]
  %90 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %91 = load i8, ptr %90, align 4
  %92 = and i8 %91, 1
  %93 = icmp eq ptr %89, null
  br i1 %93, label %128, label %94, !prof !453

94:                                               ; preds = %88
  %95 = load i64, ptr %89, align 8
  %96 = and i64 %95, 262144
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %134, !prof !454

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !211
  %101 = icmp eq ptr %100, null
  br i1 %101, label %134, label %102, !prof !453

102:                                              ; preds = %98
  %103 = load i64, ptr %100, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 23
  br i1 %105, label %106, label %134, !prof !454

106:                                              ; preds = %102
  %107 = and i64 %95, 65535
  %108 = icmp eq i64 %107, 16
  br i1 %108, label %109, label %128, !prof !453

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 4096
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %109
  %115 = tail call ptr @first_field(ptr noundef nonnull %89) #29
  %116 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !211
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 14
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %117) #29
  br label %128

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %128

128:                                              ; preds = %123, %121, %109, %106, %88
  %129 = phi i32 [ %63, %109 ], [ %63, %106 ], [ %63, %88 ], [ %122, %121 ], [ %127, %123 ]
  %130 = phi ptr [ %89, %109 ], [ %89, %106 ], [ null, %88 ], [ %117, %121 ], [ %117, %123 ]
  %131 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 5), align 8, !tbaa !455
  %132 = tail call zeroext i8 %131(ptr noundef %0, i32 noundef %129, ptr noundef %130, i8 noundef zeroext %92) #29, !prof !487
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %138, label %134, !prof !475

134:                                              ; preds = %94, %102, %98, %128
  %135 = tail call ptr @build_pointer_type(ptr noundef %89) #29
  %136 = load i8, ptr %90, align 4
  %137 = or i8 %136, 2
  store i8 %137, ptr %90, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = phi ptr [ %135, %134 ], [ %34, %128 ]
  %140 = phi ptr [ %135, %134 ], [ %89, %128 ]
  %141 = phi i32 [ 16, %134 ], [ %75, %128 ]
  %142 = phi i32 [ 16, %134 ], [ %63, %128 ]
  %143 = load i64, ptr %140, align 8
  %144 = trunc i64 %143 to i32
  %145 = lshr i32 %144, 21
  %146 = and i32 %145, 1
  store i32 %146, ptr %4, align 4, !tbaa !215
  %147 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %148 = getelementptr inbounds %struct.tree_common, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !211
  %150 = call i32 @promote_function_mode(ptr noundef nonnull %140, i32 noundef %142, ptr noundef nonnull %4, ptr noundef %149, i32 noundef 0) #29
  br label %151

151:                                              ; preds = %138, %49
  %152 = phi ptr [ %50, %49 ], [ %139, %138 ]
  %153 = phi ptr [ %50, %49 ], [ %140, %138 ]
  %154 = phi i32 [ 0, %49 ], [ %141, %138 ]
  %155 = phi i32 [ 0, %49 ], [ %142, %138 ]
  %156 = phi i32 [ 0, %49 ], [ %150, %138 ]
  store ptr %152, ptr %2, align 8, !tbaa !488
  %157 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  store ptr %153, ptr %157, align 8, !tbaa !469
  %158 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  store i32 %154, ptr %158, align 8, !tbaa !489
  %159 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 5
  store i32 %155, ptr %159, align 4, !tbaa !465
  %160 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  store i32 %156, ptr %160, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  ret void
}

declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @gimplify_parm_type(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #10 !prof !490 !PGOFuncName !491 {
  %4 = load ptr, ptr %0, align 8, !tbaa !200
  store i32 0, ptr %1, align 4, !tbaa !215
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !215
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %23, !prof !492

10:                                               ; preds = %3
  %11 = trunc i64 %5 to i16
  switch i16 %11, label %12 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !493

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !211
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !267

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = or i64 %17, %5
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23, !prof !267

21:                                               ; preds = %16
  tail call void @gimplify_type_sizes(ptr noundef nonnull %4, ptr noundef %2) #29
  br label %22

22:                                               ; preds = %10, %10, %21
  store i32 1, ptr %1, align 4, !tbaa !215
  br label %23

23:                                               ; preds = %22, %16, %12, %3
  ret ptr null
}

declare void @gimplify_one_sizepos(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @locate_and_pad_parm(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #10 !prof !494 {
  %8 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #29
  %9 = icmp eq i32 %2, 0
  %10 = icmp sgt i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false, !prof !402
  br i1 %11, label %12, label %31, !prof !400

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !495
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %14) #29
  %19 = load i64, ptr %5, align 8, !tbaa !496
  %20 = tail call ptr @size_int_kind(i64 noundef %19, i32 noundef 1) #29
  %21 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %18, ptr noundef %20) #29
  %22 = zext nneg i32 %8 to i64
  %23 = tail call ptr @size_int_kind(i64 noundef %22, i32 noundef 1) #29
  %24 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %21, ptr noundef %23) #29
  store ptr %24, ptr %13, align 8, !tbaa !495
  br label %29

25:                                               ; preds = %12
  %26 = load i64, ptr %5, align 8, !tbaa !496
  %27 = zext nneg i32 %8 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %16
  %30 = phi i64 [ 0, %16 ], [ %27, %25 ]
  store i64 %30, ptr %5, align 8, !tbaa !496
  br label %31

31:                                               ; preds = %29, %25, %7
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33, !prof !400

33:                                               ; preds = %31
  %34 = tail call ptr @size_in_bytes(ptr noundef nonnull %1) #29
  br label %41

35:                                               ; preds = %31
  %36 = zext i32 %0 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !211
  %39 = zext i8 %38 to i64
  %40 = tail call ptr @size_int_kind(i64 noundef %39, i32 noundef 0) #29
  br label %41

41:                                               ; preds = %35, %33
  %42 = phi ptr [ %34, %33 ], [ %40, %35 ]
  %43 = tail call i32 @ix86_function_arg_boundary(i32 noundef %0, ptr noundef %1) #29
  %44 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 4
  store i32 1, ptr %44, align 8, !tbaa !497
  %45 = tail call i32 @llvm.umin.i32(i32 %43, i32 -2147483648)
  %46 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 5
  store i32 %45, ptr %46, align 4, !tbaa !498
  %47 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %49, label %60, !prof !400

49:                                               ; preds = %41
  %50 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !274
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 %45, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  br label %60

53:                                               ; preds = %49
  %54 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !275
  %55 = icmp eq i8 %54, 0
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3558, ptr noundef nonnull @.str.2) #29
  br label %60

60:                                               ; preds = %59, %53, %52, %41
  %61 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !277
  %62 = icmp ult i32 %61, %45
  br i1 %62, label %63, label %64, !prof !400

63:                                               ; preds = %60
  store i32 %45, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !277
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !499
  %66 = icmp ult i32 %65, %45
  br i1 %66, label %67, label %68, !prof !400

67:                                               ; preds = %64
  store i32 %45, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !499
  br label %68

68:                                               ; preds = %67, %64
  br i1 %9, label %72, label %69, !prof !402

69:                                               ; preds = %68
  %70 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #29
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %69, %68
  %73 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 3
  %74 = sdiv i32 %45, 8
  %75 = icmp sgt i32 %45, 32
  br i1 %75, label %76, label %80, !prof !400

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !495
  %79 = load i64, ptr %5, align 8, !tbaa !496
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i64 [ %79, %76 ], [ 0, %72 ]
  %82 = phi ptr [ %78, %76 ], [ null, %72 ]
  %83 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 3, i32 1
  %84 = icmp sgt i32 %45, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  br i1 %84, label %85, label %119, !prof !402

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !495
  %88 = icmp eq ptr %87, null
  br i1 %88, label %109, label %89, !prof !402

89:                                               ; preds = %85
  %90 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #29
  %91 = load ptr, ptr %86, align 8, !tbaa !495
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, ptr %5, align 8, !tbaa !496
  %95 = tail call ptr @size_int_kind(i64 noundef %94, i32 noundef 1) #29
  br label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %98 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %97, ptr noundef nonnull %91) #29
  %99 = load i64, ptr %5, align 8, !tbaa !496
  %100 = tail call ptr @size_int_kind(i64 noundef %99, i32 noundef 1) #29
  %101 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %98, ptr noundef %100) #29
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi ptr [ %95, %93 ], [ %101, %96 ]
  %104 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %103, ptr noundef %90) #29
  %105 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %104, i32 noundef %74) #29
  %106 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %105, ptr noundef %90) #29
  store ptr %106, ptr %86, align 8, !tbaa !495
  store i64 0, ptr %5, align 8, !tbaa !496
  br i1 %75, label %107, label %119

107:                                              ; preds = %102
  %108 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %106, ptr noundef %82) #29
  store ptr %108, ptr %83, align 8, !tbaa !495
  br label %119

109:                                              ; preds = %85
  %110 = load i64, ptr %5, align 8, !tbaa !496
  %111 = zext nneg i32 %74 to i64
  %112 = add nsw i64 %111, -1
  %113 = add i64 %112, %110
  %114 = sub nsw i32 0, %74
  %115 = sext i32 %114 to i64
  %116 = and i64 %113, %115
  store i64 %116, ptr %5, align 8, !tbaa !496
  br i1 %75, label %117, label %119, !prof !400

117:                                              ; preds = %109
  %118 = sub nsw i64 %116, %81
  store i64 %118, ptr %73, align 8, !tbaa !496
  br label %119

119:                                              ; preds = %69, %117, %109, %107, %102, %80
  %120 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !500
  %121 = icmp eq i32 %0, 1
  br i1 %121, label %128, label %122, !prof !400

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.tree_int_cst, ptr %42, i64 0, i32 1
  %124 = load i64, ptr %123, align 8, !tbaa !211
  %125 = add i64 %124, 3
  %126 = and i64 %125, -4
  %127 = tail call ptr @size_int_kind(i64 noundef %126, i32 noundef 0) #29
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi ptr [ %127, %122 ], [ %42, %119 ]
  %130 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %130, ptr noundef nonnull align 8 dereferenceable(16) %120, i64 16, i1 false), !tbaa.struct !500
  %131 = tail call i32 @host_integerp(ptr noundef %129, i32 noundef 1) #29
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133, !prof !400

133:                                              ; preds = %128
  %134 = tail call i64 @tree_low_cst(ptr noundef %129, i32 noundef 1) #29
  %135 = and i64 %134, 3
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %139, label %137, !prof !402

137:                                              ; preds = %133, %128
  %138 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %129, i32 noundef 4) #29
  br label %139

139:                                              ; preds = %133, %137
  %140 = phi ptr [ %138, %137 ], [ %129, %133 ]
  %141 = tail call i32 @host_integerp(ptr noundef %140, i32 noundef 0) #29
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143, !prof !400

143:                                              ; preds = %139
  %144 = tail call i64 @tree_low_cst(ptr noundef %140, i32 noundef 0) #29
  %145 = load i64, ptr %6, align 8, !tbaa !502
  %146 = add nsw i64 %145, %144
  store i64 %146, ptr %6, align 8, !tbaa !502
  br label %156

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !503
  %150 = icmp eq ptr %149, null
  %151 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %152 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %151, ptr noundef %140) #29
  br i1 %150, label %153, label %154

153:                                              ; preds = %147
  store ptr %152, ptr %148, align 8, !tbaa !503
  br label %156

154:                                              ; preds = %147
  %155 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %149, ptr noundef %152) #29
  store ptr %155, ptr %148, align 8, !tbaa !503
  br label %156

156:                                              ; preds = %153, %154, %143
  %157 = icmp eq i32 %8, 0
  %158 = select i1 %157, i32 %3, i32 0, !prof !402
  %159 = sext i32 %158 to i64
  %160 = load i64, ptr %6, align 8, !tbaa !502
  %161 = sub nsw i64 %160, %159
  store i64 %161, ptr %6, align 8, !tbaa !502
  ret void
}

declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_function_arg_boundary(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @generate_setjmp_warnings() local_unnamed_addr #9 !prof !199 {
  %1 = tail call ptr @regstat_get_setjmp_crosses() #29
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !504
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !505
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %56, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8, !tbaa !507
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !211
  tail call fastcc void @setjmp_vars_warning(ptr noundef nonnull %1, ptr noundef %14)
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %11, %52
  %20 = phi ptr [ %54, %52 ], [ %17, %11 ]
  %21 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !211
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  tail call void @make_decl_rtl(ptr noundef nonnull %20) #29
  %25 = load ptr, ptr %21, align 8, !tbaa !211
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ %25, %24 ], [ %22, %19 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %21, align 8, !tbaa !211
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call void @make_decl_rtl(ptr noundef nonnull %20) #29
  %33 = load ptr, ptr %21, align 8, !tbaa !211
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %33, %32 ], [ %30, %29 ]
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load ptr, ptr %21, align 8, !tbaa !211
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  tail call void @make_decl_rtl(ptr noundef nonnull %20) #29
  %43 = load ptr, ptr %21, align 8, !tbaa !211
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ %40, %39 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !211
  %48 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef nonnull %1, i32 noundef %47), !range !509
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.14, ptr noundef nonnull %20) #29
  br label %52

52:                                               ; preds = %50, %44, %34, %26
  %53 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !211
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %19, !llvm.loop !510

56:                                               ; preds = %52, %11, %0, %8
  ret void
}

declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @setjmp_vars_warning(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !199 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2, %29
  %7 = phi ptr [ %31, %29 ], [ %4, %2 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 32
  %11 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !211
  %25 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %24), !range !509
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.13, ptr noundef nonnull %7) #29
  br label %29

29:                                               ; preds = %6, %14, %18, %22, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !511

33:                                               ; preds = %29, %2
  %34 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  tail call fastcc void @setjmp_vars_warning(ptr noundef %0, ptr noundef nonnull %38)
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !211
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !512

42:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @reorder_blocks() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = icmp eq ptr %3, null
  br i1 %4, label %111, label %5

5:                                                ; preds = %0
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #29
  tail call void @clear_block_marks(ptr noundef nonnull %3)
  %7 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 5
  store ptr null, ptr %7, align 8, !tbaa !211
  %8 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !211
  %9 = tail call ptr @get_insns() #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %97, label %11

11:                                               ; preds = %5, %91
  %12 = phi ptr [ %93, %91 ], [ %3, %5 ]
  %13 = phi ptr [ %95, %91 ], [ %9, %5 ]
  %14 = phi ptr [ %92, %91 ], [ %6, %5 ]
  %15 = load i32, ptr %13, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %18, label %91

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %20 = load i32, ptr %19, align 8, !tbaa !211
  switch i32 %20, label %91 [
    i32 2, label %21
    i32 3, label %71
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !211
  %24 = getelementptr inbounds %struct.tree_block, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %23, ptr %25
  %28 = load i64, ptr %23, align 8
  %29 = and i64 %28, 4194304
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = tail call ptr @copy_node_stat(ptr noundef nonnull %23) #29
  %33 = getelementptr inbounds %struct.tree_block, ptr %32, i64 0, i32 8
  store ptr %27, ptr %33, align 8, !tbaa !211
  %34 = getelementptr inbounds %struct.tree_block, ptr %27, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = getelementptr inbounds %struct.tree_block, ptr %32, i64 0, i32 9
  store ptr %35, ptr %36, align 8, !tbaa !211
  store ptr %32, ptr %34, align 8, !tbaa !211
  store ptr %32, ptr %22, align 8, !tbaa !211
  br label %37

37:                                               ; preds = %31, %21
  %38 = phi ptr [ %32, %31 ], [ %23, %21 ]
  %39 = getelementptr inbounds %struct.tree_block, ptr %38, i64 0, i32 5
  store ptr null, ptr %39, align 8, !tbaa !211
  %40 = load i64, ptr %38, align 8
  %41 = or i64 %40, 4194304
  store i64 %41, ptr %38, align 8
  %42 = icmp eq ptr %38, %12
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = icmp eq ptr %38, %27
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.tree_block, ptr %27, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !211
  %48 = icmp eq ptr %47, %12
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3896, ptr noundef nonnull @.str.2) #29
  br label %50

50:                                               ; preds = %49, %45, %43
  %51 = getelementptr inbounds %struct.tree_block, ptr %38, i64 0, i32 6
  store ptr %12, ptr %51, align 8, !tbaa !211
  %52 = getelementptr inbounds %struct.tree_block, ptr %12, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !211
  %54 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  store ptr %53, ptr %54, align 8, !tbaa !211
  store ptr %38, ptr %52, align 8, !tbaa !211
  br label %55

55:                                               ; preds = %50, %37
  %56 = phi ptr [ %27, %50 ], [ %12, %37 ]
  %57 = icmp eq ptr %14, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.VEC_tree_base, ptr %14, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !476
  %61 = load i32, ptr %14, align 8, !tbaa !462
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55
  %64 = tail call ptr @vec_heap_p_reserve(ptr noundef %14, i32 noundef 1) #29
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %14, %58 ]
  %67 = load i32, ptr %66, align 8, !tbaa !462
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !462
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds %struct.VEC_tree_base, ptr %66, i64 0, i32 2, i64 %69
  store ptr %38, ptr %70, align 8, !tbaa !200
  br label %91

71:                                               ; preds = %18
  %72 = load i32, ptr %14, align 8, !tbaa !462
  %73 = add i32 %72, -1
  store i32 %73, ptr %14, align 8, !tbaa !462
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.VEC_tree_base, ptr %14, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !200
  %77 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  store ptr %76, ptr %77, align 8, !tbaa !211
  %78 = getelementptr inbounds %struct.tree_block, ptr %12, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !211
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %71, %81
  %82 = phi ptr [ %83, %81 ], [ null, %71 ]
  %83 = phi ptr [ %85, %81 ], [ %79, %71 ]
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !211
  store ptr %82, ptr %84, align 8, !tbaa !211
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %81, !llvm.loop !513

87:                                               ; preds = %81, %71
  %88 = phi ptr [ null, %71 ], [ %83, %81 ]
  store ptr %88, ptr %78, align 8, !tbaa !211
  %89 = getelementptr inbounds %struct.tree_block, ptr %12, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !211
  br label %91

91:                                               ; preds = %87, %65, %18, %11
  %92 = phi ptr [ %14, %18 ], [ %14, %87 ], [ %66, %65 ], [ %14, %11 ]
  %93 = phi ptr [ %12, %18 ], [ %90, %87 ], [ %56, %65 ], [ %12, %11 ]
  %94 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !211
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %11, !llvm.loop !514

97:                                               ; preds = %91, %5
  %98 = phi ptr [ %6, %5 ], [ %92, %91 ]
  %99 = load ptr, ptr %7, align 8, !tbaa !211
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %103, %101 ], [ null, %97 ]
  %103 = phi ptr [ %105, %101 ], [ %99, %97 ]
  %104 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !211
  store ptr %102, ptr %104, align 8, !tbaa !211
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %101, !llvm.loop !513

107:                                              ; preds = %101, %97
  %108 = phi ptr [ null, %97 ], [ %103, %101 ]
  store ptr %108, ptr %7, align 8, !tbaa !211
  %109 = icmp eq ptr %98, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void @free(ptr noundef %98)
  br label %111

111:                                              ; preds = %110, %107, %0
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_block_marks(ptr noundef %0) local_unnamed_addr #20 !prof !490 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !464

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %10, %3 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -4194305
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  tail call void @clear_block_marks(ptr noundef %8)
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !470, !llvm.loop !515

12:                                               ; preds = %3, %1
  ret void
}

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @blocks_nreverse(ptr noundef %0) local_unnamed_addr #21 !prof !516 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !343

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ null, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !211
  store ptr %4, ptr %6, align 8, !tbaa !211
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !prof !343, !llvm.loop !513

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %5, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @number_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !517 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = tail call fastcc i32 @all_blocks(ptr noundef %3, ptr noundef null)
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #29
  %8 = tail call fastcc i32 @all_blocks(ptr noundef %3, ptr noundef %7)
  %9 = icmp sgt i32 %4, 1
  br i1 %9, label %10, label %27, !prof !518

10:                                               ; preds = %1
  %11 = load i32, ptr @next_block_index, align 4, !tbaa !215
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 1, %10 ], [ %24, %13 ]
  %15 = phi i32 [ %11, %10 ], [ %16, %13 ]
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds ptr, ptr %7, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.tree_block, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %15, 1
  %22 = and i32 %20, 1
  %23 = or disjoint i32 %22, %21
  store i32 %23, ptr %19, align 8
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !prof !519, !llvm.loop !520

26:                                               ; preds = %13
  store i32 %16, ptr @next_block_index, align 4, !tbaa !215
  br label %27

27:                                               ; preds = %26, %1
  tail call void @free(ptr noundef %7)
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @debug_find_var_in_block_tree(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #22 !prof !199 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !llvm.loop !521

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %27, label %6

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !llvm.loop !522

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = phi ptr [ %26, %17 ], [ undef, %13 ]
  %24 = tail call ptr @debug_find_var_in_block_tree(ptr noundef %0, ptr noundef nonnull %22)
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %23, ptr %24
  br i1 %25, label %17, label %27

27:                                               ; preds = %10, %21, %17, %13
  %28 = phi ptr [ null, %13 ], [ null, %17 ], [ %26, %21 ], [ %1, %10 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invoke_set_current_function_hook(ptr noundef %0) unnamed_addr #10 !prof !523 !PGOFuncName !524 {
  %2 = load i1, ptr @in_dummy_function, align 1
  br i1 %2, label %17, label %3, !prof !240

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 4
  %6 = select i1 %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %5, !prof !241
  %7 = load ptr, ptr %6, align 8, !tbaa !211
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %10 = select i1 %8, ptr %9, ptr %7, !prof !242
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %15, label %13, !prof !243

13:                                               ; preds = %3
  store ptr %10, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %14 = getelementptr inbounds %struct.tree_optimization_option, ptr %10, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %14) #29
  br label %15

15:                                               ; preds = %13, %3
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %16(ptr noundef %0) #29, !prof !525
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @push_cfun(ptr noundef %0) local_unnamed_addr #15 !prof !526 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = load ptr, ptr @cfun_stack, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !527

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VEC_function_p_base, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !219
  %8 = load i32, ptr %3, align 8, !tbaa !221
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12, !prof !527

10:                                               ; preds = %1, %5
  %11 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef 1) #29
  store ptr %11, ptr @cfun_stack, align 8, !tbaa !200
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr @cfun_stack, align 8, !tbaa !200
  %14 = load i32, ptr %13, align 8, !tbaa !221
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !221
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VEC_function_p_base, ptr %13, i64 0, i32 2, i64 %16
  store ptr %2, ptr %17, align 8, !tbaa !200
  %18 = load ptr, ptr @cfun, align 8, !tbaa !200
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %42, label %20, !prof !528

20:                                               ; preds = %12
  store ptr %0, ptr @cfun, align 8, !tbaa !200
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22, !prof !529

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !245
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %24, %22 ], [ null, %20 ]
  %27 = load i1, ptr @in_dummy_function, align 1
  br i1 %27, label %42, label %28, !prof !240

28:                                               ; preds = %25
  %29 = icmp eq ptr %26, null
  %30 = getelementptr inbounds %struct.tree_function_decl, ptr %26, i64 0, i32 4
  %31 = select i1 %29, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %30, !prof !241
  %32 = load ptr, ptr %31, align 8, !tbaa !211
  %33 = icmp eq ptr %32, null
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %35 = select i1 %33, ptr %34, ptr %32, !prof !242
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %40, label %38, !prof !243

38:                                               ; preds = %28
  store ptr %35, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %39 = getelementptr inbounds %struct.tree_optimization_option, ptr %35, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %39) #29
  br label %40

40:                                               ; preds = %38, %28
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %41(ptr noundef %26) #29, !prof !530
  br label %42

42:                                               ; preds = %40, %25, %12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @pop_cfun() local_unnamed_addr #15 !prof !531 {
  %1 = load ptr, ptr @cfun_stack, align 8
  %2 = load i32, ptr %1, align 8, !tbaa !221
  %3 = add i32 %2, -1
  store i32 %3, ptr %1, align 8, !tbaa !221
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_function_p_base, ptr %1, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = load ptr, ptr @cfun, align 8, !tbaa !200
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %31, label %9, !prof !532

9:                                                ; preds = %0
  store ptr %6, ptr @cfun, align 8, !tbaa !200
  %10 = icmp eq ptr %6, null
  br i1 %10, label %14, label %11, !prof !533

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !245
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = load i1, ptr @in_dummy_function, align 1
  br i1 %16, label %31, label %17, !prof !240

17:                                               ; preds = %14
  %18 = icmp eq ptr %15, null
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %15, i64 0, i32 4
  %20 = select i1 %18, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %19, !prof !241
  %21 = load ptr, ptr %20, align 8, !tbaa !211
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %24 = select i1 %22, ptr %23, ptr %21, !prof !242
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %29, label %27, !prof !243

27:                                               ; preds = %17
  store ptr %24, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %28 = getelementptr inbounds %struct.tree_optimization_option, ptr %24, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %28) #29
  br label %29

29:                                               ; preds = %27, %17
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %30(ptr noundef %15) #29, !prof !530
  br label %31

31:                                               ; preds = %29, %14, %0
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_funcdef_no() local_unnamed_addr #23 !prof !199 {
  %1 = load i32, ptr @funcdef_no, align 4, !tbaa !215
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @funcdef_no, align 4, !tbaa !215
  ret i32 %1
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

declare void @init_eh_for_function() local_unnamed_addr #3

declare void @ix86_call_abi_override(ptr noundef) local_unnamed_addr #3

declare ptr @tree_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @push_struct_function(ptr noundef %0) local_unnamed_addr #9 !prof !534 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = load ptr, ptr @cfun_stack, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !535

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VEC_function_p_base, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !219
  %8 = load i32, ptr %3, align 8, !tbaa !221
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12, !prof !536

10:                                               ; preds = %1, %5
  %11 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef 1) #29
  store ptr %11, ptr @cfun_stack, align 8, !tbaa !200
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr @cfun_stack, align 8, !tbaa !200
  %14 = load i32, ptr %13, align 8, !tbaa !221
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !221
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VEC_function_p_base, ptr %13, i64 0, i32 2, i64 %16
  store ptr %2, ptr %17, align 8, !tbaa !200
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_dummy_function_start() local_unnamed_addr #9 !prof !523 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %2, label %3, !prof !536

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4214, ptr noundef nonnull @.str.2) #29
  br label %3

3:                                                ; preds = %0, %2
  store i1 true, ptr @in_dummy_function, align 1
  tail call void @push_struct_function(ptr noundef null)
  tail call fastcc void @prepare_function_start()
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @prepare_function_start() unnamed_addr #10 !prof !257 !PGOFuncName !537 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !538
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !470

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4181, ptr noundef nonnull @.str.2) #29
  br label %4

4:                                                ; preds = %0, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), i8 0, i64 20, i1 false)
  %5 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !200
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !358

7:                                                ; preds = %4
  %8 = tail call ptr @htab_create_alloc(i64 noundef 32, ptr noundef nonnull @temp_slot_address_hash, ptr noundef nonnull @temp_slot_address_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %8, ptr @temp_slot_address_table, align 8, !tbaa !200
  br label %10

9:                                                ; preds = %4
  tail call void @htab_empty(ptr noundef nonnull %5) #29
  br label %10

10:                                               ; preds = %7, %9
  tail call void @init_emit() #29
  tail call void @init_varasm_status() #29
  tail call void @init_expr() #29
  tail call void @default_rtl_profile() #29
  %11 = load i32, ptr @optimize, align 4, !tbaa !215
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr @cse_not_expected, align 4, !tbaa !215
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !215
  store ptr null, ptr @reg_renumber, align 8, !tbaa !200
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !215
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !215
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !539
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_function_start(ptr noundef %0) local_unnamed_addr #10 !prof !255 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3, !prof !325

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !325

7:                                                ; preds = %3
  %8 = load ptr, ptr @cfun, align 8, !tbaa !200
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %29, label %10, !prof !325

10:                                               ; preds = %7
  store ptr %5, ptr @cfun, align 8, !tbaa !200
  %11 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = load i1, ptr @in_dummy_function, align 1
  br i1 %13, label %29, label %14, !prof !240

14:                                               ; preds = %10
  %15 = icmp eq ptr %12, null
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 4
  %17 = select i1 %15, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %16, !prof !241
  %18 = load ptr, ptr %17, align 8, !tbaa !211
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %21 = select i1 %19, ptr %20, ptr %18, !prof !242
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %26, label %24, !prof !243

24:                                               ; preds = %14
  store ptr %21, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !200
  %25 = getelementptr inbounds %struct.tree_optimization_option, ptr %21, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %25) #29
  br label %26

26:                                               ; preds = %24, %14
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !222
  tail call void %27(ptr noundef %12) #29, !prof !540
  br label %29

28:                                               ; preds = %3, %1
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0)
  br label %29

29:                                               ; preds = %26, %10, %7, %28
  tail call fastcc void @prepare_function_start()
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -15
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %41, !prof !325

39:                                               ; preds = %29
  %40 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.5) #29
  br label %41

41:                                               ; preds = %29, %39
  ret void
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @init_function_for_compilation() #24 !prof !255 {
  store ptr null, ptr @reg_renumber, align 8, !tbaa !200
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @expand_main_function() local_unnamed_addr #25 !prof !199 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @stack_protect_prologue() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !541
  %2 = tail call ptr %1() #29
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !542
  %4 = tail call ptr @expand_expr_real(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  %5 = tail call ptr @expand_expr_real(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  %6 = tail call ptr @gen_stack_protect_set(ptr noundef %4, ptr noundef %5) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call ptr @emit_insn(ptr noundef nonnull %6) #29
  br label %12

10:                                               ; preds = %0
  %11 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef %5) #29
  br label %12

12:                                               ; preds = %8, %10
  ret void
}

declare ptr @gen_stack_protect_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @stack_protect_epilogue() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !541
  %2 = tail call ptr %1() #29
  %3 = tail call ptr @gen_label_rtx() #29
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !542
  %5 = tail call ptr @expand_expr_real(ptr noundef %4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  %6 = tail call ptr @expand_expr_real(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  %7 = tail call ptr @gen_stack_protect_test(ptr noundef %5, ptr noundef %6, ptr noundef %3) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = tail call ptr @emit_insn(ptr noundef nonnull %7) #29
  br label %13

11:                                               ; preds = %0
  %12 = load i32, ptr @ptr_mode, align 4, !tbaa !215
  tail call void @emit_cmp_and_jump_insns(ptr noundef %5, ptr noundef %6, i32 noundef 81, ptr noundef null, i32 noundef %12, i32 noundef 1, ptr noundef %3) #29
  br label %13

13:                                               ; preds = %11, %9
  %14 = tail call ptr @get_last_insn() #29
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @predict_insn_def(ptr noundef nonnull %14, i32 noundef 9, i32 noundef 1) #29
  br label %19

19:                                               ; preds = %18, %13
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 84), align 8, !tbaa !543
  %21 = tail call ptr %20() #29
  tail call void @expand_expr_stmt(ptr noundef %21) #29
  %22 = tail call ptr @emit_label(ptr noundef %3) #29
  ret void
}

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare ptr @gen_stack_protect_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare void @predict_insn_def(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_expr_stmt(ptr noundef) local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @expand_function_start(ptr noundef %0) local_unnamed_addr #10 !prof !255 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.assign_parm_data_all, align 8
  %5 = alloca %struct.assign_parm_data_one, align 8
  tail call void @init_recog_no_volatile() #29
  %6 = load i32, ptr @profile_flag, align 4, !tbaa !215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !363

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16777216
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i8
  store i8 %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !544
  %16 = load ptr, ptr @stack_limit_rtx, align 8, !tbaa !200
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18, !prof !363

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  %25 = zext i1 %24 to i8
  store i8 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 34), align 2, !tbaa !545
  %26 = tail call ptr @gen_label_rtx() #29
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !546
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !211
  %29 = tail call i32 @aggregate_value_p(ptr noundef %28, ptr noundef %0), !range !248
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31, !prof !363

31:                                               ; preds = %23
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !480
  %33 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  %35 = tail call ptr %32(ptr noundef %34, i32 noundef 2) #29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @gen_reg_rtx(i32 noundef 16) #29
  %39 = tail call ptr @emit_move_insn(ptr noundef %38, ptr noundef nonnull %35) #29
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi ptr [ %38, %37 ], [ null, %31 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %117, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %27, align 8, !tbaa !211
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 268435456
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = trunc i64 %46 to i32
  %51 = and i32 %50, 255
  %52 = tail call ptr @gen_rtx_MEM(i32 noundef %51, ptr noundef nonnull %41) #29
  %53 = load ptr, ptr %27, align 8, !tbaa !211
  tail call void @set_mem_attributes(ptr noundef %52, ptr noundef %53, i32 noundef 1) #29
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi ptr [ %41, %43 ], [ %52, %49 ]
  %56 = load ptr, ptr %27, align 8, !tbaa !211
  tail call void @set_decl_rtl(ptr noundef %56, ptr noundef %55) #29
  br label %117

57:                                               ; preds = %23
  %58 = load ptr, ptr %27, align 8, !tbaa !211
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 255
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64, !prof !325

63:                                               ; preds = %57
  tail call void @set_decl_rtl(ptr noundef %58, ptr noundef null) #29
  br label %117

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !211
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %72, !prof !325

70:                                               ; preds = %64
  %71 = tail call i32 @vector_type_mode(ptr noundef nonnull %66) #29
  br label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  br label %77

77:                                               ; preds = %72, %70
  %78 = phi i32 [ %71, %70 ], [ %76, %72 ]
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %99, label %80, !prof !325

80:                                               ; preds = %77
  %81 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !547
  %82 = tail call zeroext i8 %81(ptr noundef nonnull %66) #29, !prof !548
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %99, label %84, !prof !363

84:                                               ; preds = %80
  %85 = load ptr, ptr %27, align 8, !tbaa !211
  %86 = load i64, ptr %66, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %66) #29
  br label %96

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i32 [ %90, %89 ], [ %95, %91 ]
  %98 = tail call ptr @gen_reg_rtx(i32 noundef %97) #29
  tail call void @set_decl_rtl(ptr noundef %85, ptr noundef %98) #29
  br label %112

99:                                               ; preds = %80, %77
  %100 = tail call ptr @hard_function_value(ptr noundef nonnull %66, ptr noundef %0, ptr noundef null, i32 noundef 1) #29
  %101 = load i32, ptr %100, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %108 [
    i16 37, label %103
    i16 15, label %109
  ], !prof !549

103:                                              ; preds = %99
  %104 = load ptr, ptr %27, align 8, !tbaa !211
  %105 = lshr i32 %101, 16
  %106 = and i32 %105, 255
  %107 = tail call ptr @gen_reg_rtx(i32 noundef %106) #29
  tail call void @set_decl_rtl(ptr noundef %104, ptr noundef %107) #29
  br label %112

108:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4454, ptr noundef nonnull @.str.2) #29
  br label %109

109:                                              ; preds = %99, %108
  %110 = load ptr, ptr %27, align 8, !tbaa !211
  %111 = tail call ptr @gen_group_rtx(ptr noundef nonnull %100) #29
  tail call void @set_decl_rtl(ptr noundef %110, ptr noundef %111) #29
  br label %112

112:                                              ; preds = %103, %109, %96
  %113 = load ptr, ptr %27, align 8, !tbaa !211
  %114 = getelementptr inbounds %struct.tree_decl_common, ptr %113, i64 0, i32 2
  %115 = load i64, ptr %114, align 8
  %116 = or i64 %115, 16777216
  store i64 %116, ptr %114, align 8
  br label %117

117:                                              ; preds = %40, %54, %63, %112
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #29
  %118 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 17), align 8, !tbaa !550
  %119 = tail call ptr %118() #29, !prof !551
  store ptr %119, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  %120 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %121 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !211
  call void @init_cumulative_args(ptr noundef nonnull %4, ptr noundef %122, ptr noundef null, ptr noundef %120) #29
  %123 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %124 = call i32 @ix86_reg_parm_stack_space(ptr noundef %123) #29
  %125 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 8
  store i32 %124, ptr %125, align 8, !tbaa !458
  %126 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %4)
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 5
  br label %129

129:                                              ; preds = %1245, %117
  %130 = phi i32 [ 0, %117 ], [ %1246, %1245 ]
  br i1 %127, label %138, label %131, !prof !553

131:                                              ; preds = %129
  %132 = load i32, ptr %126, align 8, !tbaa !462
  %133 = icmp ugt i32 %132, %130
  br i1 %133, label %134, label %138, !prof !554

134:                                              ; preds = %131
  %135 = zext i32 %130 to i64
  %136 = getelementptr inbounds %struct.VEC_tree_base, ptr %126, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !200
  br label %138

138:                                              ; preds = %134, %131, %129
  %139 = phi ptr [ %137, %134 ], [ null, %131 ], [ null, %129 ]
  %140 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %129 ]
  br i1 %140, label %1247, label %141, !prof !554

141:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #29
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %4, ptr noundef %139, ptr noundef nonnull %5)
  %142 = load i32, ptr %128, align 4, !tbaa !465
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154, !prof !325

144:                                              ; preds = %141
  %145 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  call void @set_decl_rtl(ptr noundef %139, ptr noundef %145) #29
  %146 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %139, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !211
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  call void @make_decl_rtl(ptr noundef %139) #29
  %150 = load ptr, ptr %146, align 8, !tbaa !211
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi ptr [ %150, %149 ], [ %147, %144 ]
  %153 = getelementptr inbounds %struct.tree_parm_decl, ptr %139, i64 0, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !211
  br label %1245

154:                                              ; preds = %141
  %155 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 6
  %156 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 1
  %157 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 2
  %158 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 8
  %159 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  %160 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 3
  %161 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 4
  %162 = load i32, ptr %155, align 8, !tbaa !468
  %163 = load ptr, ptr %156, align 8, !tbaa !469
  %164 = call i32 @ix86_function_arg_boundary(i32 noundef %162, ptr noundef %163) #29
  %165 = load ptr, ptr %156, align 8, !tbaa !469
  %166 = load i32, ptr %155, align 8, !tbaa !468
  %167 = call i32 @ix86_minimum_alignment(ptr noundef %165, i32 noundef %166, i32 noundef %164) #29
  %168 = load ptr, ptr %5, align 8, !tbaa !488
  %169 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 7
  %170 = load i32, ptr %169, align 8, !tbaa !211
  %171 = icmp ugt i32 %170, %167
  br i1 %171, label %172, label %189, !prof !325

172:                                              ; preds = %154
  %173 = load i64, ptr %168, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 14
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 @vector_type_mode(ptr noundef nonnull %168) #29
  br label %183

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_type, ptr %168, i64 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  br label %183

183:                                              ; preds = %178, %176
  %184 = phi i32 [ %177, %176 ], [ %182, %178 ]
  %185 = load ptr, ptr %5, align 8, !tbaa !488
  %186 = getelementptr inbounds %struct.tree_type, ptr %185, i64 0, i32 7
  %187 = load i32, ptr %186, align 8, !tbaa !211
  %188 = call i32 @ix86_minimum_alignment(ptr noundef nonnull %168, i32 noundef %184, i32 noundef %187) #29
  br label %189

189:                                              ; preds = %183, %154
  %190 = phi i32 [ %188, %183 ], [ %167, %154 ]
  %191 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %192 = icmp ult i32 %191, %190
  br i1 %192, label %193, label %198, !prof !325

193:                                              ; preds = %189
  %194 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !274
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3180, ptr noundef nonnull @.str.2) #29
  br label %197

197:                                              ; preds = %196, %193
  store i32 %190, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  br label %198

198:                                              ; preds = %197, %189
  %199 = load ptr, ptr @cfun, align 8, !tbaa !200
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 20
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 4194304
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %218, label %204, !prof !363

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !211
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store i32 0, ptr %3, align 4, !tbaa !215
  %209 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 7), align 8, !tbaa !555
  %210 = load i32, ptr %155, align 8, !tbaa !468
  %211 = load ptr, ptr %156, align 8, !tbaa !469
  call void %209(ptr noundef nonnull %4, i32 noundef %210, ptr noundef %211, ptr noundef nonnull %3, i32 noundef 0) #29
  %212 = load i32, ptr %3, align 4, !tbaa !215
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 6
  %216 = zext nneg i32 %212 to i64
  store i64 %216, ptr %215, align 8, !tbaa !556
  br label %217

217:                                              ; preds = %214, %208
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  br label %218

218:                                              ; preds = %217, %204, %198
  %219 = load i32, ptr %155, align 8, !tbaa !468
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225, !prof !325

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 3
  %223 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 2
  %224 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  store ptr %224, ptr %222, align 8, !tbaa !557
  store ptr %224, ptr %223, align 8, !tbaa !558
  br label %311

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  %227 = load ptr, ptr %156, align 8, !tbaa !469
  %228 = load i8, ptr %226, align 4
  %229 = and i8 %228, 1
  %230 = zext nneg i8 %229 to i32
  %231 = call ptr @function_arg(ptr noundef nonnull %4, i32 noundef %219, ptr noundef %227, i32 noundef %230) #29
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %248, !prof !363

233:                                              ; preds = %225
  %234 = load i32, ptr %128, align 4, !tbaa !465
  store i32 %234, ptr %155, align 8, !tbaa !468
  %235 = load i8, ptr %226, align 4
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %248, !prof !325

238:                                              ; preds = %233
  %239 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !559
  %240 = call zeroext i8 %239(ptr noundef nonnull %4) #29
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = load i32, ptr %155, align 8, !tbaa !468
  %244 = load ptr, ptr %156, align 8, !tbaa !469
  %245 = call ptr @function_arg(ptr noundef nonnull %4, i32 noundef %243, ptr noundef %244, i32 noundef 1) #29
  %246 = icmp ne ptr %245, null
  %247 = zext i1 %246 to i8
  br label %248

248:                                              ; preds = %242, %238, %233, %225
  %249 = phi i8 [ 0, %233 ], [ %247, %242 ], [ 0, %238 ], [ 1, %225 ]
  %250 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !560
  %251 = load i32, ptr %155, align 8, !tbaa !468
  %252 = load ptr, ptr %156, align 8, !tbaa !469
  %253 = call zeroext i8 %250(i32 noundef %251, ptr noundef %252) #29, !prof !561
  %254 = icmp eq i8 %253, 0
  %255 = select i1 %254, ptr %231, ptr null, !prof !363
  %256 = icmp eq ptr %255, null
  br i1 %256, label %282, label %257, !prof !363

257:                                              ; preds = %248
  %258 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 8
  %259 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !562
  %260 = load i32, ptr %155, align 8, !tbaa !468
  %261 = load ptr, ptr %156, align 8, !tbaa !469
  %262 = load i8, ptr %226, align 4
  %263 = and i8 %262, 1
  %264 = call i32 %259(ptr noundef nonnull %4, i32 noundef %260, ptr noundef %261, i8 noundef zeroext %263) #29
  store i32 %264, ptr %258, align 8, !tbaa !563
  %265 = icmp ne i32 %264, 0
  %266 = load i32, ptr %125, align 8
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %265, i1 %267, i1 false
  br i1 %268, label %269, label %282

269:                                              ; preds = %257
  %270 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 7
  %271 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 6
  %272 = load i64, ptr %270, align 8, !tbaa !564
  %273 = icmp eq i64 %272, 0
  %274 = load i64, ptr %271, align 8
  %275 = icmp eq i64 %274, 0
  %276 = select i1 %273, i1 %275, i1 false
  br i1 %276, label %278, label %277

277:                                              ; preds = %269
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2379, ptr noundef nonnull @.str.2) #29
  br label %278

278:                                              ; preds = %277, %269
  %279 = sext i32 %264 to i64
  %280 = add nsw i64 %279, 3
  %281 = and i64 %280, -4
  store i64 %281, ptr %271, align 8, !tbaa !556
  store i64 %281, ptr %270, align 8, !tbaa !564
  br label %282

282:                                              ; preds = %278, %257, %248
  %283 = phi i64 [ 0, %248 ], [ %279, %278 ], [ 0, %257 ]
  %284 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 8
  %285 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 1
  %286 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7
  %287 = load i32, ptr %155, align 8, !tbaa !468
  %288 = load ptr, ptr %156, align 8, !tbaa !469
  %289 = zext nneg i8 %249 to i32
  %290 = load i32, ptr %284, align 8
  %291 = select i1 %256, i32 0, i32 %290, !prof !363
  %292 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  call void @locate_and_pad_parm(i32 noundef %287, ptr noundef %288, i32 noundef %289, i32 noundef %291, ptr noundef %292, ptr noundef nonnull %285, ptr noundef nonnull %286)
  %293 = icmp eq i8 %249, 0
  br i1 %293, label %294, label %300, !prof !363

294:                                              ; preds = %282
  %295 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 5
  %296 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !565
  %297 = load i32, ptr %295, align 4, !tbaa !566
  %298 = icmp ult i32 %296, %297
  br i1 %298, label %299, label %300, !prof !363

299:                                              ; preds = %294
  store i32 %297, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !565
  br label %300

300:                                              ; preds = %299, %294, %282
  %301 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 7
  %302 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 2
  %303 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 1
  %304 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 2
  %305 = load i64, ptr %301, align 8, !tbaa !564
  %306 = sub nsw i64 %305, %283
  %307 = load i64, ptr %302, align 8, !tbaa !567
  %308 = add nsw i64 %307, %306
  store i64 %308, ptr %302, align 8, !tbaa !567
  %309 = load i64, ptr %303, align 8, !tbaa !568
  %310 = add nsw i64 %309, %306
  store i64 %310, ptr %303, align 8, !tbaa !568
  store ptr %255, ptr %304, align 8, !tbaa !558
  br label %311

311:                                              ; preds = %300, %221
  %312 = load ptr, ptr %157, align 8, !tbaa !558
  %313 = icmp ne ptr %312, null
  %314 = load i32, ptr %158, align 8
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %313, i1 %315, i1 false, !prof !325
  br i1 %316, label %317, label %335, !prof !325

317:                                              ; preds = %311
  %318 = load i32, ptr %312, align 8
  %319 = and i32 %318, 65535
  %320 = icmp eq i32 %319, 15
  br i1 %320, label %321, label %332

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !211
  %324 = getelementptr inbounds %struct.rtvec_def, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !200
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !211
  %328 = icmp eq ptr %327, null
  %329 = load i32, ptr %125, align 8
  %330 = icmp sgt i32 %329, 0
  %331 = select i1 %328, i1 true, i1 %330
  br i1 %331, label %335, label %546

332:                                              ; preds = %317
  %333 = load i32, ptr %125, align 8, !tbaa !458
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %546

335:                                              ; preds = %332, %321, %311
  %336 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7
  %337 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 1
  %338 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 0, i32 1
  %339 = load i64, ptr %336, align 8, !tbaa !569
  %340 = load i64, ptr %337, align 8, !tbaa !570
  %341 = add nsw i64 %340, %339
  store i64 %341, ptr %337, align 8, !tbaa !570
  %342 = load ptr, ptr %338, align 8, !tbaa !571
  %343 = icmp eq ptr %342, null
  br i1 %343, label %360, label %344, !prof !363

344:                                              ; preds = %335
  %345 = call i32 @host_integerp(ptr noundef nonnull %342, i32 noundef 0) #29
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = call i64 @tree_low_cst(ptr noundef nonnull %342, i32 noundef 0) #29
  %349 = load i64, ptr %337, align 8, !tbaa !570
  %350 = add nsw i64 %349, %348
  store i64 %350, ptr %337, align 8, !tbaa !570
  br label %360

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 1, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !572
  %354 = icmp eq ptr %353, null
  %355 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %356 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %355, ptr noundef nonnull %342) #29
  br i1 %354, label %357, label %358

357:                                              ; preds = %351
  store ptr %356, ptr %352, align 8, !tbaa !572
  br label %360

358:                                              ; preds = %351
  %359 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %353, ptr noundef %356) #29
  store ptr %359, ptr %352, align 8, !tbaa !572
  br label %360

360:                                              ; preds = %335, %347, %357, %358
  %361 = load ptr, ptr %157, align 8, !tbaa !558
  %362 = icmp eq ptr %361, null
  br i1 %362, label %378, label %363, !prof !363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 2
  %365 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 2, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !573
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %371

368:                                              ; preds = %363
  %369 = load i64, ptr %364, align 8, !tbaa !567
  %370 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %369) #29
  br label %393

371:                                              ; preds = %363
  %372 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %373 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %372, ptr noundef nonnull %366) #29
  %374 = load i64, ptr %364, align 8, !tbaa !567
  %375 = call ptr @size_int_kind(i64 noundef %374, i32 noundef 1) #29
  %376 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %373, ptr noundef %375) #29
  %377 = call ptr @expand_expr_real(ptr noundef %376, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  br label %393

378:                                              ; preds = %360
  %379 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 1
  %380 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 1, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !574
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %386, !prof !363

383:                                              ; preds = %378
  %384 = load i64, ptr %379, align 8, !tbaa !568
  %385 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %384) #29
  br label %393

386:                                              ; preds = %378
  %387 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %388 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %387, ptr noundef nonnull %381) #29
  %389 = load i64, ptr %379, align 8, !tbaa !568
  %390 = call ptr @size_int_kind(i64 noundef %389, i32 noundef 1) #29
  %391 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %388, ptr noundef %390) #29
  %392 = call ptr @expand_expr_real(ptr noundef %391, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  br label %393

393:                                              ; preds = %386, %383, %371, %368
  %394 = phi ptr [ %370, %368 ], [ %377, %371 ], [ %385, %383 ], [ %392, %386 ]
  %395 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !552
  %396 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  %397 = icmp eq ptr %394, %396
  br i1 %397, label %400, label %398, !prof !363

398:                                              ; preds = %393
  %399 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %395, ptr noundef %394) #29
  br label %400

400:                                              ; preds = %398, %393
  %401 = phi ptr [ %399, %398 ], [ %395, %393 ]
  %402 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  %403 = load i32, ptr %155, align 8, !tbaa !468
  %404 = call ptr @gen_rtx_MEM(i32 noundef %403, ptr noundef %401) #29
  %405 = load i8, ptr %402, align 4
  %406 = and i8 %405, 2
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %408, label %451, !prof !363

408:                                              ; preds = %400
  call void @set_mem_attributes(ptr noundef %404, ptr noundef %139, i32 noundef 1) #29
  %409 = load i32, ptr %155, align 8, !tbaa !468
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %451, label %411, !prof !325

411:                                              ; preds = %408
  %412 = getelementptr inbounds %struct.tree_decl_common, ptr %139, i64 0, i32 2
  %413 = load i64, ptr %412, align 8
  %414 = trunc i64 %413 to i32
  %415 = and i32 %414, 255
  %416 = icmp eq i32 %409, %415
  br i1 %416, label %451, label %417, !prof !363

417:                                              ; preds = %411
  %418 = zext i32 %409 to i64
  %419 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !211
  %421 = zext i8 %420 to i64
  %422 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %421) #29
  call void @set_mem_size(ptr noundef %404, ptr noundef %422) #29
  %423 = getelementptr inbounds %struct.rtx_def, ptr %404, i64 0, i32 1, i32 0, i32 0, i64 1
  %424 = load ptr, ptr %423, align 8, !tbaa !211
  %425 = icmp eq ptr %424, null
  br i1 %425, label %451, label %426

426:                                              ; preds = %417
  %427 = load ptr, ptr %424, align 8, !tbaa !575
  %428 = icmp eq ptr %427, null
  br i1 %428, label %451, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.mem_attrs, ptr %424, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !577
  %432 = icmp eq ptr %431, null
  br i1 %432, label %451, label %433

433:                                              ; preds = %429
  %434 = load i64, ptr %412, align 8
  %435 = trunc i64 %434 to i32
  %436 = and i32 %435, 255
  %437 = load i32, ptr %155, align 8, !tbaa !468
  %438 = call i32 @subreg_lowpart_offset(i32 noundef %436, i32 noundef %437) #29
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %451, label %440

440:                                              ; preds = %433
  %441 = load ptr, ptr %423, align 8, !tbaa !211
  %442 = icmp eq ptr %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.mem_attrs, ptr %441, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !577
  br label %446

446:                                              ; preds = %443, %440
  %447 = phi ptr [ %445, %443 ], [ null, %440 ]
  %448 = sub nsw i32 0, %438
  %449 = sext i32 %448 to i64
  %450 = call ptr @plus_constant(ptr noundef %447, i64 noundef %449) #29
  call void @set_mem_offset(ptr noundef %404, ptr noundef %450) #29
  br label %451

451:                                              ; preds = %446, %433, %429, %426, %417, %411, %408, %400
  %452 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 5
  %453 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 4
  %454 = load i32, ptr %452, align 4, !tbaa !566
  %455 = load i32, ptr %453, align 8, !tbaa !578
  %456 = icmp eq i32 %455, 2
  %457 = load ptr, ptr %157, align 8
  %458 = icmp eq ptr %457, null
  %459 = select i1 %456, i1 %458, i1 false, !prof !325
  br i1 %459, label %460, label %472, !prof !325

460:                                              ; preds = %451
  %461 = load i32, ptr %394, align 8
  %462 = and i32 %461, 65535
  %463 = icmp eq i32 %462, 30
  br i1 %463, label %464, label %472

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %466 = load i64, ptr %465, align 8, !tbaa !211
  %467 = trunc i64 %466 to i32
  %468 = shl i32 %467, 3
  %469 = or i32 %468, %454
  %470 = sub i32 0, %469
  %471 = and i32 %469, %470
  br label %472

472:                                              ; preds = %464, %460, %451
  %473 = phi i32 [ %471, %464 ], [ 8, %460 ], [ %454, %451 ]
  call void @set_mem_align(ptr noundef %404, i32 noundef %473) #29
  %474 = load ptr, ptr %157, align 8, !tbaa !558
  %475 = icmp eq ptr %474, null
  br i1 %475, label %477, label %476, !prof !363

476:                                              ; preds = %472
  call void @set_reg_attrs_for_parm(ptr noundef nonnull %474, ptr noundef %404) #29
  br label %477

477:                                              ; preds = %476, %472
  %478 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 3
  store ptr %404, ptr %478, align 8, !tbaa !557
  %479 = load ptr, ptr %157, align 8, !tbaa !558
  %480 = load i32, ptr %158, align 8, !tbaa !563
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %501, label %482, !prof !363

482:                                              ; preds = %477
  %483 = load i32, ptr %479, align 8
  %484 = and i32 %483, 65535
  %485 = icmp eq i32 %484, 15
  br i1 %485, label %486, label %491

486:                                              ; preds = %482
  %487 = call ptr @validize_mem(ptr noundef %404) #29
  %488 = load ptr, ptr %156, align 8, !tbaa !469
  %489 = call i64 @int_size_in_bytes(ptr noundef %488) #29
  %490 = trunc i64 %489 to i32
  call void @emit_group_store(ptr noundef %487, ptr noundef nonnull %479, ptr noundef %488, i32 noundef %490) #29
  br label %544

491:                                              ; preds = %482
  %492 = and i32 %480, 3
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %495, label %494

494:                                              ; preds = %491
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2530, ptr noundef nonnull @.str.2) #29
  br label %495

495:                                              ; preds = %494, %491
  %496 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 0, i32 1
  %497 = load i32, ptr %496, align 8, !tbaa !211
  %498 = call ptr @validize_mem(ptr noundef %404) #29
  %499 = load i32, ptr %158, align 8, !tbaa !563
  %500 = sdiv i32 %499, 4
  call void @move_block_from_reg(i32 noundef %497, ptr noundef %498, i32 noundef %500) #29
  br label %544

501:                                              ; preds = %477
  %502 = icmp eq ptr %479, null
  br i1 %502, label %544, label %503, !prof !363

503:                                              ; preds = %501
  %504 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 4
  %505 = load i32, ptr %479, align 8
  %506 = and i32 %505, 65535
  %507 = icmp ne i32 %506, 15
  %508 = load i32, ptr %504, align 8
  %509 = icmp eq i32 %508, 1
  %510 = select i1 %507, i1 true, i1 %509
  %511 = load i32, ptr %128, align 4
  %512 = icmp eq i32 %511, 1
  %513 = select i1 %510, i1 true, i1 %512
  br i1 %513, label %544, label %514

514:                                              ; preds = %503
  %515 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !211
  %517 = load i32, ptr %516, align 8, !tbaa !579
  %518 = sext i32 %517 to i64
  %519 = icmp eq i32 %517, 0
  br i1 %519, label %544, label %520

520:                                              ; preds = %514, %541
  %521 = phi i64 [ %542, %541 ], [ 0, %514 ]
  %522 = getelementptr inbounds %struct.rtvec_def, ptr %516, i64 0, i32 1, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !200
  %524 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !211
  %526 = icmp eq ptr %525, null
  br i1 %526, label %541, label %527

527:                                              ; preds = %520
  %528 = load i32, ptr %525, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 37
  br i1 %530, label %531, label %541

531:                                              ; preds = %527
  %532 = lshr i32 %528, 16
  %533 = and i32 %532, 255
  %534 = icmp eq i32 %533, %511
  br i1 %534, label %535, label %541

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1, i32 0, i32 0, i64 1
  %537 = load ptr, ptr %536, align 8, !tbaa !211
  %538 = getelementptr inbounds %struct.rtx_def, ptr %537, i64 0, i32 1
  %539 = load i64, ptr %538, align 8, !tbaa !211
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %535, %531, %527, %520
  %542 = add nuw i64 %521, 1
  %543 = icmp eq i64 %542, %518
  br i1 %543, label %544, label %520, !llvm.loop !581

544:                                              ; preds = %541, %535, %514, %503, %501, %495, %486
  %545 = phi ptr [ %479, %503 ], [ %404, %495 ], [ %404, %486 ], [ %404, %501 ], [ %479, %514 ], [ %525, %535 ], [ %479, %541 ]
  store ptr %545, ptr %157, align 8, !tbaa !558
  br label %546

546:                                              ; preds = %332, %321, %544
  %547 = load ptr, ptr %157, align 8, !tbaa !558
  %548 = load i8, ptr %159, align 4
  %549 = lshr i8 %548, 1
  %550 = and i8 %549, 1
  call void @set_decl_incoming_rtl(ptr noundef %139, ptr noundef %547, i8 noundef zeroext %550) #29
  %551 = load i32, ptr %155, align 8, !tbaa !468
  %552 = load ptr, ptr %156, align 8, !tbaa !469
  %553 = load i8, ptr %159, align 4
  %554 = and i8 %553, 1
  %555 = zext nneg i8 %554 to i32
  call void @function_arg_advance(ptr noundef nonnull %4, i32 noundef %551, ptr noundef %552, i32 noundef %555) #29
  %556 = load ptr, ptr %160, align 8, !tbaa !557
  %557 = icmp eq ptr %556, null
  br i1 %557, label %581, label %558, !prof !325

558:                                              ; preds = %546
  %559 = load ptr, ptr %5, align 8, !tbaa !488
  %560 = icmp eq ptr %559, null
  br i1 %560, label %581, label %561, !prof !325

561:                                              ; preds = %558
  %562 = getelementptr inbounds %struct.tree_type, ptr %559, i64 0, i32 7
  %563 = load i32, ptr %562, align 8, !tbaa !211
  %564 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1, i32 0, i32 0, i64 1
  %565 = load ptr, ptr %564, align 8, !tbaa !211
  %566 = icmp eq ptr %565, null
  br i1 %566, label %570, label %567, !prof !325

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.mem_attrs, ptr %565, i64 0, i32 4
  %569 = load i32, ptr %568, align 4, !tbaa !582
  br label %570

570:                                              ; preds = %567, %561
  %571 = phi i32 [ %569, %567 ], [ 8, %561 ]
  %572 = icmp ugt i32 %563, %571
  br i1 %572, label %573, label %581, !prof !325

573:                                              ; preds = %570
  br i1 %566, label %577, label %574

574:                                              ; preds = %573
  %575 = getelementptr inbounds %struct.mem_attrs, ptr %565, i64 0, i32 4
  %576 = load i32, ptr %575, align 4, !tbaa !582
  br label %577

577:                                              ; preds = %574, %573
  %578 = phi i32 [ %576, %574 ], [ 8, %573 ]
  %579 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !215
  %580 = icmp ult i32 %578, %579
  br i1 %580, label %606, label %581

581:                                              ; preds = %577, %570, %558, %546
  %582 = load ptr, ptr %157, align 8, !tbaa !558
  %583 = icmp eq ptr %582, %556
  br i1 %583, label %584, label %591, !prof !363

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 4
  %586 = load i32, ptr %585, align 8, !tbaa !489
  %587 = icmp eq i32 %586, 1
  %588 = load i32, ptr %128, align 4
  %589 = icmp eq i32 %586, %588
  %590 = select i1 %587, i1 true, i1 %589, !prof !325
  br i1 %590, label %591, label %606, !prof !363

591:                                              ; preds = %584, %581
  %592 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !542
  %593 = icmp eq ptr %592, null
  br i1 %593, label %606, label %594, !prof !363

594:                                              ; preds = %591
  %595 = load i32, ptr @flag_stack_protect, align 4, !tbaa !215
  %596 = icmp eq i32 %595, 2
  br i1 %596, label %605, label %597

597:                                              ; preds = %594
  %598 = load i8, ptr %159, align 4
  %599 = and i8 %598, 2
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %597
  %602 = load ptr, ptr %5, align 8, !tbaa !488
  %603 = load i64, ptr %602, align 8
  %604 = trunc i64 %603 to i16
  switch i16 %604, label %606 [
    i16 10, label %605
    i16 12, label %605
  ]

605:                                              ; preds = %601, %601, %597, %594
  br label %606

606:                                              ; preds = %584, %605, %601, %591, %577
  %607 = phi ptr [ null, %605 ], [ %556, %591 ], [ null, %577 ], [ %556, %601 ], [ null, %584 ]
  store ptr %607, ptr %160, align 8, !tbaa !557
  %608 = load i32, ptr %161, align 8, !tbaa !489
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %616, label %610, !prof !325

610:                                              ; preds = %606
  %611 = load ptr, ptr %157, align 8, !tbaa !558
  %612 = load i32, ptr %611, align 8
  %613 = and i32 %612, 16711680
  %614 = icmp eq i32 %613, 65536
  %615 = zext i1 %614 to i8
  br label %616

616:                                              ; preds = %610, %606
  %617 = phi i8 [ 1, %606 ], [ %615, %610 ]
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %707, label %619, !prof !363

619:                                              ; preds = %616
  %620 = load ptr, ptr %157, align 8, !tbaa !558
  %621 = load i32, ptr %620, align 8
  %622 = and i32 %621, 65535
  %623 = icmp eq i32 %622, 15
  br i1 %623, label %624, label %626

624:                                              ; preds = %619
  %625 = call ptr @emit_group_move_into_temps(ptr noundef nonnull %620) #29
  br label %626

626:                                              ; preds = %624, %619
  %627 = phi ptr [ %625, %624 ], [ %620, %619 ]
  %628 = load ptr, ptr %156, align 8, !tbaa !469
  %629 = call i64 @int_size_in_bytes(ptr noundef %628) #29
  %630 = add nsw i64 %629, 3
  %631 = icmp eq ptr %607, null
  br i1 %631, label %632, label %652

632:                                              ; preds = %626
  %633 = and i64 %630, -4
  %634 = getelementptr inbounds %struct.tree_decl_common, ptr %139, i64 0, i32 3
  %635 = load i32, ptr %634, align 8, !tbaa !211
  %636 = call i32 @llvm.umax.i32(i32 %635, i32 32)
  store i32 %636, ptr %634, align 8, !tbaa !211
  %637 = call ptr @assign_stack_local_1(i32 noundef 1, i64 noundef %633, i32 noundef %636, i8 noundef zeroext 0)
  %638 = load i32, ptr %627, align 8
  %639 = lshr i32 %638, 16
  %640 = and i32 %639, 255
  %641 = zext nneg i32 %640 to i64
  %642 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !211
  %644 = zext i8 %643 to i64
  %645 = icmp eq i64 %629, %644
  br i1 %645, label %646, label %651

646:                                              ; preds = %632
  %647 = load i32, ptr %637, align 8
  %648 = shl nuw nsw i32 %640, 16
  %649 = and i32 %647, -16711681
  %650 = or disjoint i32 %649, %648
  store i32 %650, ptr %637, align 8
  br label %651

651:                                              ; preds = %646, %632
  call void @set_mem_attributes(ptr noundef %637, ptr noundef %139, i32 noundef 1) #29
  br label %652

652:                                              ; preds = %651, %626
  %653 = phi ptr [ %637, %651 ], [ %607, %626 ]
  %654 = load i32, ptr %627, align 8
  %655 = trunc i32 %654 to i16
  switch i16 %655, label %693 [
    i16 37, label %656
    i16 15, label %656
  ]

656:                                              ; preds = %652, %652
  %657 = call ptr @validize_mem(ptr noundef %653) #29
  %658 = load i32, ptr %627, align 8
  %659 = and i32 %658, 65535
  %660 = icmp eq i32 %659, 15
  br i1 %660, label %661, label %670

661:                                              ; preds = %656
  %662 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %663 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %664 = load ptr, ptr %662, align 8, !tbaa !583
  %665 = load ptr, ptr %663, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %664, ptr noundef %665) #29
  %666 = load ptr, ptr %156, align 8, !tbaa !469
  %667 = trunc i64 %629 to i32
  call void @emit_group_store(ptr noundef %657, ptr noundef nonnull %627, ptr noundef %666, i32 noundef %667) #29
  %668 = call ptr @get_insns() #29
  store ptr %668, ptr %662, align 8, !tbaa !583
  %669 = call ptr @get_last_insn() #29
  store ptr %669, ptr %663, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %706

670:                                              ; preds = %656
  %671 = icmp eq i64 %629, 0
  br i1 %671, label %706, label %672

672:                                              ; preds = %670
  %673 = icmp slt i64 %629, 5
  br i1 %673, label %674, label %688

674:                                              ; preds = %672
  %675 = trunc i64 %629 to i32
  %676 = shl i32 %675, 3
  %677 = call i32 @mode_for_size(i32 noundef %676, i32 noundef 2, i32 noundef 0) #29
  %678 = icmp eq i32 %677, 1
  %679 = getelementptr inbounds %struct.rtx_def, ptr %627, i64 0, i32 1
  %680 = load i32, ptr %679, align 8, !tbaa !211
  br i1 %678, label %685, label %681

681:                                              ; preds = %674
  %682 = call ptr @gen_rtx_REG(i32 noundef %677, i32 noundef %680) #29
  %683 = call ptr @change_address(ptr noundef %657, i32 noundef %677, ptr noundef null) #29
  %684 = call ptr @emit_move_insn(ptr noundef %683, ptr noundef %682) #29
  br label %706

685:                                              ; preds = %674
  %686 = lshr i64 %630, 2
  %687 = trunc i64 %686 to i32
  call void @move_block_from_reg(i32 noundef %680, ptr noundef %657, i32 noundef %687) #29
  br label %706

688:                                              ; preds = %672
  %689 = getelementptr inbounds %struct.rtx_def, ptr %627, i64 0, i32 1
  %690 = load i32, ptr %689, align 8, !tbaa !211
  %691 = lshr i64 %630, 2
  %692 = trunc i64 %691 to i32
  call void @move_block_from_reg(i32 noundef %690, ptr noundef %657, i32 noundef %692) #29
  br label %706

693:                                              ; preds = %652
  %694 = load ptr, ptr %160, align 8, !tbaa !557
  %695 = icmp eq ptr %694, null
  br i1 %695, label %696, label %706

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %698 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %699 = load ptr, ptr %697, align 8, !tbaa !583
  %700 = load ptr, ptr %698, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %699, ptr noundef %700) #29
  %701 = load ptr, ptr %157, align 8, !tbaa !558
  %702 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %629) #29
  %703 = call ptr @emit_block_move(ptr noundef %653, ptr noundef %701, ptr noundef %702, i32 noundef 0) #29
  %704 = call ptr @get_insns() #29
  store ptr %704, ptr %697, align 8, !tbaa !583
  %705 = call ptr @get_last_insn() #29
  store ptr %705, ptr %698, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %706

706:                                              ; preds = %696, %693, %688, %685, %681, %670, %661
  store ptr %653, ptr %160, align 8, !tbaa !557
  call void @set_decl_rtl(ptr noundef %139, ptr noundef %653) #29
  br label %1245

707:                                              ; preds = %616
  %708 = load i8, ptr %159, align 4
  %709 = and i8 %708, 2
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %711, label %758, !prof !363

711:                                              ; preds = %707
  %712 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 20), align 8, !tbaa !447
  %713 = call zeroext i8 %712() #29, !prof !585
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %758, label %715, !prof !449

715:                                              ; preds = %711
  %716 = load i64, ptr %139, align 8
  %717 = and i64 %716, 327680
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %1142, !prof !450

719:                                              ; preds = %715
  %720 = getelementptr inbounds %struct.tree_decl_common, ptr %139, i64 0, i32 2
  %721 = load i64, ptr %720, align 8
  %722 = and i64 %721, 255
  %723 = icmp eq i64 %722, 1
  br i1 %723, label %1142, label %724, !prof !449

724:                                              ; preds = %719
  %725 = load i32, ptr @flag_float_store, align 4, !tbaa !215
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %738, label %727, !prof !450

727:                                              ; preds = %724
  %728 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !211
  %730 = load i64, ptr %729, align 8
  %731 = trunc i64 %730 to i16
  switch i16 %731, label %738 [
    i16 9, label %1142
    i16 13, label %732
    i16 14, label %732
  ]

732:                                              ; preds = %727, %727
  %733 = getelementptr inbounds %struct.tree_common, ptr %729, i64 0, i32 2
  %734 = load ptr, ptr %733, align 8, !tbaa !211
  %735 = load i64, ptr %734, align 8
  %736 = and i64 %735, 65535
  %737 = icmp eq i64 %736, 9
  br i1 %737, label %1142, label %738

738:                                              ; preds = %732, %727, %724
  %739 = and i64 %721, 1024
  %740 = icmp eq i64 %739, 0
  %741 = load i32, ptr @optimize, align 4
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %740, i1 %742, i1 false, !prof !451
  br i1 %743, label %744, label %758, !prof !449

744:                                              ; preds = %738
  %745 = and i64 %721, 16777216
  %746 = icmp eq i64 %745, 0
  br i1 %746, label %1142, label %747

747:                                              ; preds = %744
  %748 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %749 = load ptr, ptr %748, align 8, !tbaa !211
  %750 = load i64, ptr %749, align 8
  %751 = trunc i64 %750 to i16
  %752 = add i16 %751, -16
  %753 = icmp ult i16 %752, 3
  br i1 %753, label %754, label %758

754:                                              ; preds = %747
  %755 = getelementptr inbounds %struct.tree_type, ptr %749, i64 0, i32 14
  %756 = load ptr, ptr %755, align 8, !tbaa !211
  %757 = icmp eq ptr %756, null
  br i1 %757, label %758, label %1142

758:                                              ; preds = %711, %738, %754, %747, %707
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #29
  %759 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %760 = load ptr, ptr %759, align 8, !tbaa !211
  %761 = load i64, ptr %760, align 8
  %762 = trunc i64 %761 to i32
  %763 = lshr i32 %762, 21
  %764 = and i32 %763, 1
  store i32 %764, ptr %2, align 4, !tbaa !215
  %765 = load ptr, ptr %5, align 8, !tbaa !488
  %766 = load i32, ptr %161, align 8, !tbaa !489
  %767 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %768 = getelementptr inbounds %struct.tree_common, ptr %767, i64 0, i32 2
  %769 = load ptr, ptr %768, align 8, !tbaa !211
  %770 = call i32 @promote_function_mode(ptr noundef %765, i32 noundef %766, ptr noundef nonnull %2, ptr noundef %769, i32 noundef 2) #29
  %771 = call ptr @gen_reg_rtx(i32 noundef %770) #29
  %772 = getelementptr inbounds %struct.tree_decl_common, ptr %139, i64 0, i32 2
  %773 = load i64, ptr %772, align 8
  %774 = and i64 %773, 4096
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %776, label %777, !prof !363

776:                                              ; preds = %758
  call void @mark_user_reg(ptr noundef %771) #29
  br label %777

777:                                              ; preds = %776, %758
  %778 = load i8, ptr %159, align 4
  %779 = and i8 %778, 2
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %798, label %781, !prof !363

781:                                              ; preds = %777
  %782 = load ptr, ptr %156, align 8, !tbaa !469
  %783 = getelementptr inbounds %struct.tree_common, ptr %782, i64 0, i32 2
  %784 = load ptr, ptr %783, align 8, !tbaa !211
  %785 = load i64, ptr %784, align 8
  %786 = and i64 %785, 65535
  %787 = icmp eq i64 %786, 14
  br i1 %787, label %788, label %790

788:                                              ; preds = %781
  %789 = call i32 @vector_type_mode(ptr noundef nonnull %784) #29
  br label %795

790:                                              ; preds = %781
  %791 = getelementptr inbounds %struct.tree_type, ptr %784, i64 0, i32 6
  %792 = load i32, ptr %791, align 4
  %793 = lshr i32 %792, 16
  %794 = and i32 %793, 255
  br label %795

795:                                              ; preds = %790, %788
  %796 = phi i32 [ %789, %788 ], [ %794, %790 ]
  %797 = call ptr @gen_rtx_MEM(i32 noundef %796, ptr noundef %771) #29
  call void @set_mem_attributes(ptr noundef %797, ptr noundef %139, i32 noundef 1) #29
  br label %798

798:                                              ; preds = %777, %795
  %799 = phi ptr [ %797, %795 ], [ %771, %777 ]
  call void @set_decl_rtl(ptr noundef %139, ptr noundef %799) #29
  %800 = load ptr, ptr %157, align 8, !tbaa !558
  %801 = load i32, ptr %800, align 8
  %802 = and i32 %801, 65535
  %803 = icmp eq i32 %802, 15
  br i1 %803, label %804, label %818, !prof !325

804:                                              ; preds = %798
  %805 = lshr i32 %801, 16
  %806 = and i32 %805, 255
  %807 = icmp eq i32 %806, 1
  br i1 %807, label %818, label %808

808:                                              ; preds = %804
  %809 = call ptr @gen_reg_rtx(i32 noundef %806) #29
  %810 = load ptr, ptr %156, align 8, !tbaa !469
  %811 = load i32, ptr %800, align 8
  %812 = lshr i32 %811, 16
  %813 = and i32 %812, 255
  %814 = zext nneg i32 %813 to i64
  %815 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %814
  %816 = load i8, ptr %815, align 1, !tbaa !211
  %817 = zext i8 %816 to i32
  call void @emit_group_store(ptr noundef %809, ptr noundef nonnull %800, ptr noundef %810, i32 noundef %817) #29
  br label %818

818:                                              ; preds = %798, %804, %808
  %819 = phi ptr [ %809, %808 ], [ %800, %804 ], [ %800, %798 ]
  store ptr %819, ptr %157, align 8, !tbaa !558
  %820 = load i32, ptr %161, align 8, !tbaa !489
  %821 = load i32, ptr %128, align 4, !tbaa !465
  %822 = icmp eq i32 %820, %821
  %823 = load i32, ptr %155, align 8
  %824 = icmp eq i32 %770, %823
  %825 = select i1 %822, i1 %824, i1 false, !prof !363
  br i1 %825, label %899, label %826, !prof !363

826:                                              ; preds = %818
  %827 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %828 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %829 = load i32, ptr %819, align 8
  %830 = lshr i32 %829, 16
  %831 = and i32 %830, 255
  %832 = call ptr @gen_reg_rtx(i32 noundef %831) #29
  %833 = load ptr, ptr %157, align 8, !tbaa !558
  %834 = call ptr @validize_mem(ptr noundef %833) #29
  %835 = call ptr @emit_move_insn(ptr noundef %832, ptr noundef %834) #29
  %836 = load ptr, ptr %827, align 8, !tbaa !583
  %837 = load ptr, ptr %828, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %836, ptr noundef %837) #29
  %838 = load i32, ptr %161, align 8, !tbaa !489
  %839 = load i32, ptr %2, align 4, !tbaa !215
  %840 = call ptr @convert_to_mode(i32 noundef %838, ptr noundef %832, i32 noundef %839) #29
  %841 = load i32, ptr %840, align 8
  %842 = and i32 %841, 65535
  %843 = icmp eq i32 %842, 39
  br i1 %843, label %844, label %889

844:                                              ; preds = %826
  %845 = lshr i32 %841, 16
  %846 = and i32 %845, 255
  %847 = load i32, ptr %161, align 8, !tbaa !489
  %848 = icmp eq i32 %846, %847
  br i1 %848, label %849, label %889

849:                                              ; preds = %844
  %850 = getelementptr inbounds %struct.rtx_def, ptr %840, i64 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !211
  %852 = load i32, ptr %851, align 8
  %853 = and i32 %852, 65535
  %854 = icmp eq i32 %853, 37
  %855 = load i32, ptr %128, align 4
  %856 = icmp eq i32 %847, %855
  %857 = select i1 %854, i1 %856, i1 false
  br i1 %857, label %858, label %889

858:                                              ; preds = %849
  %859 = lshr i32 %852, 16
  %860 = and i32 %859, 255
  %861 = load ptr, ptr %157, align 8, !tbaa !558
  %862 = load i32, ptr %861, align 8
  %863 = lshr i32 %862, 16
  %864 = and i32 %863, 255
  %865 = icmp eq i32 %860, %864
  br i1 %865, label %866, label %889

866:                                              ; preds = %858
  %867 = zext nneg i32 %846 to i64
  %868 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !211
  %870 = zext nneg i32 %864 to i64
  %871 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %870
  %872 = load i8, ptr %871, align 1, !tbaa !211
  %873 = icmp ult i8 %869, %872
  br i1 %873, label %874, label %889

874:                                              ; preds = %866
  %875 = or i32 %841, 268435456
  store i32 %875, ptr %840, align 8
  %876 = load i32, ptr %2, align 4, !tbaa !215
  %877 = icmp slt i32 %876, 0
  br i1 %877, label %878, label %880

878:                                              ; preds = %874
  %879 = or i32 %841, 402653184
  br label %887

880:                                              ; preds = %874
  %881 = and i32 %875, -134283225
  store i32 %881, ptr %840, align 8
  %882 = load i32, ptr %2, align 4, !tbaa !215
  %883 = shl i32 %882, 26
  %884 = and i32 %883, 67108864
  %885 = and i32 %875, -201392089
  %886 = or disjoint i32 %884, %885
  br label %887

887:                                              ; preds = %880, %878
  %888 = phi i32 [ %886, %880 ], [ %879, %878 ]
  store i32 %888, ptr %840, align 8
  br label %889

889:                                              ; preds = %887, %866, %858, %849, %844, %826
  %890 = load i64, ptr %139, align 8
  %891 = and i64 %890, 16777216
  %892 = load ptr, ptr %5, align 8, !tbaa !488
  %893 = call ptr @make_tree(ptr noundef %892, ptr noundef nonnull %840) #29
  call void @expand_assignment(ptr noundef nonnull %139, ptr noundef %893, i8 noundef zeroext 0) #29
  %894 = load i64, ptr %139, align 8
  %895 = and i64 %894, -16777217
  %896 = or disjoint i64 %895, %891
  store i64 %896, ptr %139, align 8
  %897 = call ptr @get_insns() #29
  store ptr %897, ptr %827, align 8, !tbaa !583
  %898 = call ptr @get_last_insn() #29
  store ptr %898, ptr %828, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %902

899:                                              ; preds = %818
  %900 = call ptr @validize_mem(ptr noundef %819) #29
  %901 = call ptr @emit_move_insn(ptr noundef %771, ptr noundef %900) #29
  br label %902

902:                                              ; preds = %899, %889
  %903 = phi i8 [ 1, %889 ], [ 0, %899 ]
  %904 = load i8, ptr %159, align 4
  %905 = and i8 %904, 2
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %1018, label %907, !prof !363

907:                                              ; preds = %902
  %908 = load ptr, ptr %759, align 8, !tbaa !211
  %909 = load i64, ptr %908, align 8
  %910 = and i64 %909, 65535
  %911 = icmp eq i64 %910, 14
  br i1 %911, label %912, label %914

912:                                              ; preds = %907
  %913 = call i32 @vector_type_mode(ptr noundef nonnull %908) #29
  br label %919

914:                                              ; preds = %907
  %915 = getelementptr inbounds %struct.tree_type, ptr %908, i64 0, i32 6
  %916 = load i32, ptr %915, align 4
  %917 = lshr i32 %916, 16
  %918 = and i32 %917, 255
  br label %919

919:                                              ; preds = %914, %912
  %920 = phi i32 [ %913, %912 ], [ %918, %914 ]
  %921 = icmp eq i32 %920, 1
  br i1 %921, label %1018, label %922

922:                                              ; preds = %919
  %923 = load ptr, ptr %759, align 8, !tbaa !211
  %924 = load i64, ptr %923, align 8
  %925 = and i64 %924, 65535
  %926 = icmp eq i64 %925, 14
  br i1 %926, label %927, label %929

927:                                              ; preds = %922
  %928 = call i32 @vector_type_mode(ptr noundef nonnull %923) #29
  br label %934

929:                                              ; preds = %922
  %930 = getelementptr inbounds %struct.tree_type, ptr %923, i64 0, i32 6
  %931 = load i32, ptr %930, align 4
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 255
  br label %934

934:                                              ; preds = %929, %927
  %935 = phi i32 [ %928, %927 ], [ %933, %929 ]
  %936 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %139, i64 0, i32 1
  %937 = load ptr, ptr %936, align 8, !tbaa !211
  %938 = icmp eq ptr %937, null
  br i1 %938, label %939, label %941

939:                                              ; preds = %934
  call void @make_decl_rtl(ptr noundef %139) #29
  %940 = load ptr, ptr %936, align 8, !tbaa !211
  br label %941

941:                                              ; preds = %939, %934
  %942 = phi ptr [ %940, %939 ], [ %937, %934 ]
  %943 = load i32, ptr %942, align 8
  %944 = lshr i32 %943, 16
  %945 = and i32 %944, 255
  %946 = icmp eq i32 %935, %945
  br i1 %946, label %947, label %950

947:                                              ; preds = %941
  %948 = call zeroext i8 @use_register_for_decl(ptr noundef %139), !range !509
  %949 = icmp eq i8 %948, 0
  br i1 %949, label %1018, label %950

950:                                              ; preds = %947, %941
  %951 = load ptr, ptr %759, align 8, !tbaa !211
  %952 = load i64, ptr %951, align 8
  %953 = and i64 %952, 65535
  %954 = icmp eq i64 %953, 14
  br i1 %954, label %955, label %957

955:                                              ; preds = %950
  %956 = call i32 @vector_type_mode(ptr noundef nonnull %951) #29
  br label %962

957:                                              ; preds = %950
  %958 = getelementptr inbounds %struct.tree_type, ptr %951, i64 0, i32 6
  %959 = load i32, ptr %958, align 4
  %960 = lshr i32 %959, 16
  %961 = and i32 %960, 255
  br label %962

962:                                              ; preds = %957, %955
  %963 = phi i32 [ %956, %955 ], [ %961, %957 ]
  %964 = call ptr @gen_reg_rtx(i32 noundef %963) #29
  call void @mark_user_reg(ptr noundef %964) #29
  %965 = load i32, ptr %964, align 8
  %966 = load ptr, ptr %936, align 8, !tbaa !211
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %970

968:                                              ; preds = %962
  call void @make_decl_rtl(ptr noundef %139) #29
  %969 = load ptr, ptr %936, align 8, !tbaa !211
  br label %970

970:                                              ; preds = %968, %962
  %971 = phi ptr [ %969, %968 ], [ %966, %962 ]
  %972 = load i32, ptr %971, align 8
  %973 = xor i32 %972, %965
  %974 = and i32 %973, 16711680
  %975 = icmp eq i32 %974, 0
  %976 = load ptr, ptr %936, align 8, !tbaa !211
  %977 = icmp eq ptr %976, null
  br i1 %975, label %1010, label %978

978:                                              ; preds = %970
  %979 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %980 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  br i1 %977, label %981, label %983

981:                                              ; preds = %978
  call void @make_decl_rtl(ptr noundef %139) #29
  %982 = load ptr, ptr %936, align 8, !tbaa !211
  br label %983

983:                                              ; preds = %981, %978
  %984 = phi ptr [ %982, %981 ], [ %976, %978 ]
  %985 = load i32, ptr %984, align 8
  %986 = lshr i32 %985, 16
  %987 = and i32 %986, 255
  %988 = call ptr @gen_reg_rtx(i32 noundef %987) #29
  %989 = load ptr, ptr %759, align 8, !tbaa !211
  %990 = load i64, ptr %989, align 8
  %991 = trunc i64 %990 to i32
  %992 = lshr i32 %991, 21
  %993 = and i32 %992, 1
  %994 = load ptr, ptr %979, align 8, !tbaa !583
  %995 = load ptr, ptr %980, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %994, ptr noundef %995) #29
  %996 = load ptr, ptr %936, align 8, !tbaa !211
  %997 = icmp eq ptr %996, null
  br i1 %997, label %998, label %1000

998:                                              ; preds = %983
  call void @make_decl_rtl(ptr noundef %139) #29
  %999 = load ptr, ptr %936, align 8, !tbaa !211
  br label %1000

1000:                                             ; preds = %998, %983
  %1001 = phi ptr [ %999, %998 ], [ %996, %983 ]
  %1002 = call ptr @emit_move_insn(ptr noundef %988, ptr noundef %1001) #29
  %1003 = load i32, ptr %964, align 8
  %1004 = lshr i32 %1003, 16
  %1005 = and i32 %1004, 255
  %1006 = call ptr @convert_to_mode(i32 noundef %1005, ptr noundef %988, i32 noundef %993) #29
  %1007 = call ptr @emit_move_insn(ptr noundef nonnull %964, ptr noundef %1006) #29
  %1008 = call ptr @get_insns() #29
  store ptr %1008, ptr %979, align 8, !tbaa !583
  %1009 = call ptr @get_last_insn() #29
  store ptr %1009, ptr %980, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %1016

1010:                                             ; preds = %970
  br i1 %977, label %1011, label %1013

1011:                                             ; preds = %1010
  call void @make_decl_rtl(ptr noundef %139) #29
  %1012 = load ptr, ptr %936, align 8, !tbaa !211
  br label %1013

1013:                                             ; preds = %1011, %1010
  %1014 = phi ptr [ %1012, %1011 ], [ %976, %1010 ]
  %1015 = call ptr @emit_move_insn(ptr noundef nonnull %964, ptr noundef %1014) #29
  br label %1016

1016:                                             ; preds = %1013, %1000
  %1017 = phi i8 [ 1, %1000 ], [ %903, %1013 ]
  call void @set_decl_rtl(ptr noundef %139, ptr noundef nonnull %964) #29
  store ptr null, ptr %160, align 8, !tbaa !557
  br label %1018

1018:                                             ; preds = %1016, %947, %919, %902
  %1019 = phi i8 [ %1017, %1016 ], [ %903, %947 ], [ %903, %919 ], [ %903, %902 ]
  %1020 = phi ptr [ %964, %1016 ], [ %771, %947 ], [ %771, %919 ], [ %771, %902 ]
  %1021 = load i32, ptr %161, align 8, !tbaa !489
  %1022 = load i32, ptr %128, align 4, !tbaa !465
  %1023 = icmp ne i32 %1021, %1022
  %1024 = icmp ne i8 %1019, 0
  %1025 = or i1 %1024, %1023
  br i1 %1025, label %1132, label %1026, !prof !325

1026:                                             ; preds = %1018
  %1027 = load ptr, ptr %160, align 8, !tbaa !557
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1132, label %1029, !prof !325

1029:                                             ; preds = %1026
  %1030 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 7, i32 1, i32 1
  %1031 = load i32, ptr %1027, align 8
  %1032 = and i32 %1031, 65535
  %1033 = icmp eq i32 %1032, 43
  %1034 = load ptr, ptr %1030, align 8
  %1035 = icmp eq ptr %1034, null
  %1036 = select i1 %1033, i1 %1035, i1 false, !prof !363
  br i1 %1036, label %1037, label %1132, !prof !363

1037:                                             ; preds = %1029
  %1038 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !200
  %1039 = getelementptr inbounds %struct.rtx_def, ptr %1027, i64 0, i32 1
  %1040 = load ptr, ptr %1039, align 8, !tbaa !211
  %1041 = call i32 @reg_mentioned_p(ptr noundef %1038, ptr noundef %1040) #29
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1132, label %1043, !prof !325

1043:                                             ; preds = %1037
  %1044 = call ptr @get_last_insn() #29
  %1045 = load i32, ptr %1020, align 8
  %1046 = and i32 %1045, 65535
  %1047 = icmp eq i32 %1046, 41
  br i1 %1047, label %1048, label %1109, !prof !325

1048:                                             ; preds = %1043
  %1049 = lshr i32 %1045, 16
  %1050 = and i32 %1049, 255
  %1051 = zext nneg i32 %1050 to i64
  %1052 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1051
  %1053 = load i8, ptr %1052, align 1, !tbaa !211
  %1054 = zext i8 %1053 to i32
  %1055 = getelementptr inbounds %struct.rtx_def, ptr %1020, i64 0, i32 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !211
  %1057 = getelementptr inbounds %struct.rtx_def, ptr %1056, i64 0, i32 1
  %1058 = load i32, ptr %1057, align 8, !tbaa !211
  %1059 = getelementptr inbounds %struct.rtx_def, ptr %1020, i64 0, i32 1, i32 0, i32 0, i64 1
  %1060 = load ptr, ptr %1059, align 8, !tbaa !211
  %1061 = getelementptr inbounds %struct.rtx_def, ptr %1060, i64 0, i32 1
  %1062 = load i32, ptr %1061, align 8, !tbaa !211
  %1063 = load ptr, ptr %160, align 8, !tbaa !557
  %1064 = call ptr @adjust_address_1(ptr noundef %1063, i32 noundef %1054, i64 noundef 0, i32 noundef 0, i32 noundef 1) #29
  %1065 = load ptr, ptr %160, align 8, !tbaa !557
  %1066 = zext i8 %1053 to i64
  %1067 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1066
  %1068 = load i8, ptr %1067, align 1, !tbaa !211
  %1069 = zext i8 %1068 to i64
  %1070 = call ptr @adjust_address_1(ptr noundef %1065, i32 noundef %1054, i64 noundef %1069, i32 noundef 0, i32 noundef 1) #29
  %1071 = icmp eq ptr %1044, null
  br i1 %1071, label %1132, label %1072

1072:                                             ; preds = %1048
  %1073 = sext i32 %1062 to i64
  %1074 = sext i32 %1058 to i64
  br label %1075

1075:                                             ; preds = %1072, %1106
  %1076 = phi ptr [ %1044, %1072 ], [ %1107, %1106 ]
  %1077 = load i32, ptr %1076, align 8
  %1078 = and i32 %1077, 65535
  %1079 = add nsw i32 %1078, -7
  %1080 = icmp ult i32 %1079, 4
  br i1 %1080, label %1081, label %1089

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds %struct.rtx_def, ptr %1076, i64 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !211
  %1084 = load i32, ptr %1083, align 8
  %1085 = and i32 %1084, 65535
  %1086 = icmp eq i32 %1085, 23
  br i1 %1086, label %1089, label %1087

1087:                                             ; preds = %1081
  %1088 = call ptr @single_set_2(ptr noundef nonnull %1076, ptr noundef nonnull %1083) #29
  br label %1089

1089:                                             ; preds = %1087, %1081, %1075
  %1090 = phi ptr [ %1088, %1087 ], [ null, %1075 ], [ %1083, %1081 ]
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1106, label %1092

1092:                                             ; preds = %1089
  %1093 = getelementptr inbounds %struct.rtx_def, ptr %1090, i64 0, i32 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !211
  %1095 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !200
  %1096 = getelementptr inbounds ptr, ptr %1095, i64 %1073
  %1097 = load ptr, ptr %1096, align 8, !tbaa !200
  %1098 = icmp eq ptr %1094, %1097
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1092
  %1100 = getelementptr inbounds ptr, ptr %1095, i64 %1074
  %1101 = load ptr, ptr %1100, align 8, !tbaa !200
  %1102 = icmp eq ptr %1094, %1101
  br i1 %1102, label %1103, label %1106

1103:                                             ; preds = %1099, %1092
  %1104 = phi ptr [ %1070, %1092 ], [ %1064, %1099 ]
  %1105 = call ptr @set_unique_reg_note(ptr noundef nonnull %1076, i32 noundef 3, ptr noundef %1104) #29
  br label %1106

1106:                                             ; preds = %1103, %1099, %1089
  %1107 = call ptr @prev_nonnote_insn(ptr noundef nonnull %1076) #29
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1132, label %1075, !llvm.loop !586

1109:                                             ; preds = %1043
  %1110 = load i32, ptr %1044, align 8
  %1111 = and i32 %1110, 65535
  %1112 = add nsw i32 %1111, -7
  %1113 = icmp ult i32 %1112, 4
  br i1 %1113, label %1114, label %1122, !prof !363

1114:                                             ; preds = %1109
  %1115 = getelementptr inbounds %struct.rtx_def, ptr %1044, i64 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !211
  %1117 = load i32, ptr %1116, align 8
  %1118 = and i32 %1117, 65535
  %1119 = icmp eq i32 %1118, 23
  br i1 %1119, label %1122, label %1120, !prof !363

1120:                                             ; preds = %1114
  %1121 = call ptr @single_set_2(ptr noundef nonnull %1044, ptr noundef nonnull %1116) #29
  br label %1122

1122:                                             ; preds = %1120, %1114, %1109
  %1123 = phi ptr [ %1121, %1120 ], [ null, %1109 ], [ %1116, %1114 ]
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1132, label %1125, !prof !325

1125:                                             ; preds = %1122
  %1126 = getelementptr inbounds %struct.rtx_def, ptr %1123, i64 0, i32 1
  %1127 = load ptr, ptr %1126, align 8, !tbaa !211
  %1128 = icmp eq ptr %1127, %1020
  br i1 %1128, label %1129, label %1132, !prof !363

1129:                                             ; preds = %1125
  %1130 = load ptr, ptr %160, align 8, !tbaa !557
  %1131 = call ptr @set_unique_reg_note(ptr noundef nonnull %1044, i32 noundef 3, ptr noundef %1130) #29
  br label %1132

1132:                                             ; preds = %1106, %1048, %1129, %1125, %1122, %1037, %1029, %1026, %1018
  %1133 = load ptr, ptr %759, align 8, !tbaa !211
  %1134 = load i64, ptr %1133, align 8
  %1135 = trunc i64 %1134 to i16
  switch i16 %1135, label %1141 [
    i16 10, label %1136
    i16 12, label %1136
  ], !prof !549

1136:                                             ; preds = %1132, %1132
  %1137 = getelementptr inbounds %struct.tree_common, ptr %1133, i64 0, i32 2
  %1138 = load ptr, ptr %1137, align 8, !tbaa !211
  %1139 = getelementptr inbounds %struct.tree_type, ptr %1138, i64 0, i32 7
  %1140 = load i32, ptr %1139, align 8, !tbaa !211
  call void @mark_reg_pointer(ptr noundef %1020, i32 noundef %1140) #29
  br label %1141

1141:                                             ; preds = %1136, %1132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #29
  br label %1245

1142:                                             ; preds = %754, %744, %732, %727, %719, %715
  call fastcc void @assign_parm_remove_parallels(ptr noundef nonnull %5)
  %1143 = load i32, ptr %155, align 8, !tbaa !468
  %1144 = load i32, ptr %161, align 8, !tbaa !489
  %1145 = icmp eq i32 %1143, %1144
  br i1 %1145, label %1190, label %1146

1146:                                             ; preds = %1142
  %1147 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %1148 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %1149 = load ptr, ptr %157, align 8, !tbaa !558
  %1150 = load i32, ptr %1149, align 8
  %1151 = lshr i32 %1150, 16
  %1152 = and i32 %1151, 255
  %1153 = call ptr @gen_reg_rtx(i32 noundef %1152) #29
  %1154 = load ptr, ptr %157, align 8, !tbaa !558
  %1155 = call ptr @validize_mem(ptr noundef %1154) #29
  %1156 = call ptr @emit_move_insn(ptr noundef %1153, ptr noundef %1155) #29
  %1157 = load ptr, ptr %1147, align 8, !tbaa !583
  %1158 = load ptr, ptr %1148, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %1157, ptr noundef %1158) #29
  %1159 = load i32, ptr %161, align 8, !tbaa !489
  %1160 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %1161 = load ptr, ptr %1160, align 8, !tbaa !211
  %1162 = load i64, ptr %1161, align 8
  %1163 = trunc i64 %1162 to i32
  %1164 = lshr i32 %1163, 21
  %1165 = and i32 %1164, 1
  %1166 = call ptr @convert_to_mode(i32 noundef %1159, ptr noundef %1153, i32 noundef %1165) #29
  store ptr %1166, ptr %157, align 8, !tbaa !558
  %1167 = load ptr, ptr %160, align 8, !tbaa !557
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1190, label %1169

1169:                                             ; preds = %1146
  %1170 = load i32, ptr %161, align 8, !tbaa !489
  %1171 = load i32, ptr %1167, align 8
  %1172 = lshr i32 %1171, 16
  %1173 = and i32 %1172, 255
  %1174 = call i32 @subreg_lowpart_offset(i32 noundef %1170, i32 noundef %1173) #29
  %1175 = load ptr, ptr %160, align 8, !tbaa !557
  %1176 = load i32, ptr %161, align 8, !tbaa !489
  %1177 = call ptr @adjust_address_1(ptr noundef %1175, i32 noundef %1176, i64 noundef 0, i32 noundef 1, i32 noundef 1) #29
  store ptr %1177, ptr %160, align 8, !tbaa !557
  %1178 = icmp eq i32 %1174, 0
  br i1 %1178, label %1190, label %1179

1179:                                             ; preds = %1169
  %1180 = getelementptr inbounds %struct.rtx_def, ptr %1177, i64 0, i32 1, i32 0, i32 0, i64 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !211
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1190, label %1183

1183:                                             ; preds = %1179
  %1184 = getelementptr inbounds %struct.mem_attrs, ptr %1181, i64 0, i32 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !577
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1190, label %1187

1187:                                             ; preds = %1183
  %1188 = sext i32 %1174 to i64
  %1189 = call ptr @plus_constant(ptr noundef nonnull %1185, i64 noundef %1188) #29
  call void @set_mem_offset(ptr noundef %1177, ptr noundef %1189) #29
  br label %1190

1190:                                             ; preds = %1187, %1183, %1179, %1169, %1146, %1142
  %1191 = phi i8 [ 0, %1142 ], [ 1, %1169 ], [ 1, %1183 ], [ 1, %1187 ], [ 1, %1179 ], [ 1, %1146 ]
  %1192 = load ptr, ptr %157, align 8, !tbaa !558
  %1193 = load ptr, ptr %160, align 8, !tbaa !557
  %1194 = icmp eq ptr %1192, %1193
  br i1 %1194, label %1235, label %1195

1195:                                             ; preds = %1190
  %1196 = icmp eq ptr %1193, null
  br i1 %1196, label %1197, label %1214

1197:                                             ; preds = %1195
  %1198 = load ptr, ptr %156, align 8, !tbaa !469
  %1199 = load i32, ptr %1192, align 8
  %1200 = lshr i32 %1199, 16
  %1201 = and i32 %1200, 255
  %1202 = getelementptr inbounds %struct.tree_type, ptr %1198, i64 0, i32 7
  %1203 = load i32, ptr %1202, align 8, !tbaa !211
  %1204 = call i32 @ix86_local_alignment(ptr noundef %1198, i32 noundef %1201, i32 noundef %1203) #29
  %1205 = load ptr, ptr %157, align 8, !tbaa !558
  %1206 = load i32, ptr %1205, align 8
  %1207 = lshr i32 %1206, 16
  %1208 = and i32 %1207, 255
  %1209 = zext nneg i32 %1208 to i64
  %1210 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1209
  %1211 = load i8, ptr %1210, align 1, !tbaa !211
  %1212 = zext i8 %1211 to i64
  %1213 = call ptr @assign_stack_local_1(i32 noundef %1208, i64 noundef %1212, i32 noundef %1204, i8 noundef zeroext 0)
  store ptr %1213, ptr %160, align 8, !tbaa !557
  call void @set_mem_attributes(ptr noundef %1213, ptr noundef nonnull %139, i32 noundef 1) #29
  br label %1214

1214:                                             ; preds = %1197, %1195
  %1215 = load ptr, ptr %160, align 8, !tbaa !557
  %1216 = call ptr @validize_mem(ptr noundef %1215) #29
  %1217 = load ptr, ptr %157, align 8, !tbaa !558
  %1218 = call ptr @validize_mem(ptr noundef %1217) #29
  %1219 = load i32, ptr %1218, align 8
  %1220 = and i32 %1219, 65535
  %1221 = icmp eq i32 %1220, 43
  br i1 %1221, label %1222, label %1233

1222:                                             ; preds = %1214
  br i1 %1145, label %1223, label %1228

1223:                                             ; preds = %1222
  %1224 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %1225 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %1226 = load ptr, ptr %1224, align 8, !tbaa !583
  %1227 = load ptr, ptr %1225, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %1226, ptr noundef %1227) #29
  br label %1228

1228:                                             ; preds = %1223, %1222
  %1229 = load ptr, ptr %156, align 8, !tbaa !469
  %1230 = call i64 @int_size_in_bytes(ptr noundef %1229) #29
  %1231 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1230) #29
  %1232 = call ptr @emit_block_move(ptr noundef %1216, ptr noundef nonnull %1218, ptr noundef %1231, i32 noundef 0) #29
  br label %1235

1233:                                             ; preds = %1214
  %1234 = call ptr @emit_move_insn(ptr noundef %1216, ptr noundef nonnull %1218) #29
  br label %1235

1235:                                             ; preds = %1233, %1228, %1190
  %1236 = phi i8 [ %1191, %1190 ], [ 1, %1228 ], [ %1191, %1233 ]
  %1237 = icmp eq i8 %1236, 0
  br i1 %1237, label %1243, label %1238

1238:                                             ; preds = %1235
  %1239 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %1240 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %1241 = call ptr @get_insns() #29
  store ptr %1241, ptr %1239, align 8, !tbaa !583
  %1242 = call ptr @get_last_insn() #29
  store ptr %1242, ptr %1240, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %1243

1243:                                             ; preds = %1238, %1235
  %1244 = load ptr, ptr %160, align 8, !tbaa !557
  call void @set_decl_rtl(ptr noundef nonnull %139, ptr noundef %1244) #29
  br label %1245

1245:                                             ; preds = %1243, %1141, %706, %151
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #29
  %1246 = add i32 %130, 1
  br label %129, !llvm.loop !587

1247:                                             ; preds = %138
  %1248 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !482
  %1249 = icmp eq ptr %1248, null
  br i1 %1249, label %1372, label %1250, !prof !363

1250:                                             ; preds = %1247
  %1251 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 3
  %1252 = load ptr, ptr %1251, align 8, !tbaa !211
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1372, label %1254

1254:                                             ; preds = %1250, %1366
  %1255 = phi ptr [ %1370, %1366 ], [ %1252, %1250 ]
  %1256 = phi i32 [ %1369, %1366 ], [ 0, %1250 ]
  %1257 = getelementptr inbounds %struct.tree_common, ptr %1255, i64 0, i32 2
  %1258 = load ptr, ptr %1257, align 8, !tbaa !211
  %1259 = load i64, ptr %1258, align 8
  %1260 = and i64 %1259, 65535
  %1261 = icmp eq i64 %1260, 13
  br i1 %1261, label %1262, label %1366

1262:                                             ; preds = %1254
  %1263 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !482
  %1264 = call zeroext i8 %1263(ptr noundef nonnull %1258) #29
  %1265 = icmp eq i8 %1264, 0
  br i1 %1265, label %1366, label %1266

1266:                                             ; preds = %1262
  %1267 = getelementptr inbounds %struct.tree_decl_common, ptr %1255, i64 0, i32 2
  %1268 = load i64, ptr %1267, align 8
  %1269 = and i64 %1268, 255
  %1270 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1269
  %1271 = load i8, ptr %1270, align 1, !tbaa !211
  %1272 = zext i8 %1271 to i32
  %1273 = zext i32 %1256 to i64
  %1274 = getelementptr inbounds %struct.VEC_tree_base, ptr %126, i64 0, i32 2, i64 %1273
  %1275 = load ptr, ptr %1274, align 8, !tbaa !200
  %1276 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1275, i64 0, i32 1
  %1277 = load ptr, ptr %1276, align 8, !tbaa !211
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1281

1279:                                             ; preds = %1266
  call void @make_decl_rtl(ptr noundef %1275) #29
  %1280 = load ptr, ptr %1274, align 8, !tbaa !200
  br label %1281

1281:                                             ; preds = %1279, %1266
  %1282 = phi ptr [ %1280, %1279 ], [ %1275, %1266 ]
  %1283 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1282, i64 0, i32 1
  %1284 = load ptr, ptr %1283, align 8, !tbaa !211
  %1285 = add i32 %1256, 1
  %1286 = zext i32 %1285 to i64
  %1287 = getelementptr inbounds %struct.VEC_tree_base, ptr %126, i64 0, i32 2, i64 %1286
  %1288 = load ptr, ptr %1287, align 8, !tbaa !200
  %1289 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1288, i64 0, i32 1
  %1290 = load ptr, ptr %1289, align 8, !tbaa !211
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %1292, label %1294

1292:                                             ; preds = %1281
  call void @make_decl_rtl(ptr noundef %1288) #29
  %1293 = load ptr, ptr %1287, align 8, !tbaa !200
  br label %1294

1294:                                             ; preds = %1292, %1281
  %1295 = phi ptr [ %1293, %1292 ], [ %1288, %1281 ]
  %1296 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1295, i64 0, i32 1
  %1297 = load ptr, ptr %1296, align 8, !tbaa !211
  %1298 = load i32, ptr %1284, align 8
  %1299 = lshr i32 %1298, 16
  %1300 = trunc i32 %1299 to i8
  %1301 = icmp eq i8 %1271, %1300
  br i1 %1301, label %1305, label %1302

1302:                                             ; preds = %1294
  %1303 = call ptr @gen_lowpart_SUBREG(i32 noundef %1272, ptr noundef nonnull %1284) #29
  %1304 = call ptr @gen_lowpart_SUBREG(i32 noundef %1272, ptr noundef %1297) #29
  br label %1305

1305:                                             ; preds = %1302, %1294
  %1306 = phi ptr [ %1304, %1302 ], [ %1297, %1294 ]
  %1307 = phi ptr [ %1303, %1302 ], [ %1284, %1294 ]
  %1308 = load i64, ptr %1255, align 8
  %1309 = and i64 %1308, 262144
  %1310 = icmp eq i64 %1309, 0
  br i1 %1310, label %1339, label %1311

1311:                                             ; preds = %1305
  %1312 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %1313 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 5
  %1314 = load ptr, ptr %1257, align 8, !tbaa !211
  %1315 = call i64 @int_size_in_bytes(ptr noundef %1314) #29
  %1316 = load ptr, ptr %1257, align 8, !tbaa !211
  %1317 = load i64, ptr %1267, align 8
  %1318 = trunc i64 %1317 to i32
  %1319 = and i32 %1318, 255
  %1320 = getelementptr inbounds %struct.tree_type, ptr %1316, i64 0, i32 7
  %1321 = load i32, ptr %1320, align 8, !tbaa !211
  %1322 = call i32 @ix86_local_alignment(ptr noundef %1316, i32 noundef %1319, i32 noundef %1321) #29
  %1323 = load i64, ptr %1267, align 8
  %1324 = trunc i64 %1323 to i32
  %1325 = and i32 %1324, 255
  %1326 = call ptr @assign_stack_local_1(i32 noundef %1325, i64 noundef %1315, i32 noundef %1322, i8 noundef zeroext 0)
  call void @set_mem_attributes(ptr noundef %1326, ptr noundef nonnull %1255, i32 noundef 1) #29
  %1327 = call ptr @adjust_address_1(ptr noundef %1326, i32 noundef %1272, i64 noundef 0, i32 noundef 0, i32 noundef 1) #29
  %1328 = zext i8 %1271 to i64
  %1329 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1328
  %1330 = load i8, ptr %1329, align 1, !tbaa !211
  %1331 = zext i8 %1330 to i64
  %1332 = call ptr @adjust_address_1(ptr noundef %1326, i32 noundef %1272, i64 noundef %1331, i32 noundef 0, i32 noundef 1) #29
  %1333 = load ptr, ptr %1312, align 8, !tbaa !583
  %1334 = load ptr, ptr %1313, align 8, !tbaa !584
  call void @push_to_sequence2(ptr noundef %1333, ptr noundef %1334) #29
  %1335 = call ptr @emit_move_insn(ptr noundef %1327, ptr noundef %1307) #29
  %1336 = call ptr @emit_move_insn(ptr noundef %1332, ptr noundef %1306) #29
  %1337 = call ptr @get_insns() #29
  store ptr %1337, ptr %1312, align 8, !tbaa !583
  %1338 = call ptr @get_last_insn() #29
  store ptr %1338, ptr %1313, align 8, !tbaa !584
  call void @end_sequence() #29
  br label %1344

1339:                                             ; preds = %1305
  %1340 = load i64, ptr %1267, align 8
  %1341 = trunc i64 %1340 to i32
  %1342 = and i32 %1341, 255
  %1343 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %1342, ptr noundef %1307, ptr noundef %1306) #29
  br label %1344

1344:                                             ; preds = %1339, %1311
  %1345 = phi ptr [ %1326, %1311 ], [ %1343, %1339 ]
  call void @set_decl_rtl(ptr noundef nonnull %1255, ptr noundef %1345) #29
  %1346 = load ptr, ptr %1274, align 8, !tbaa !200
  %1347 = getelementptr inbounds %struct.tree_parm_decl, ptr %1346, i64 0, i32 1
  %1348 = load ptr, ptr %1347, align 8, !tbaa !211
  %1349 = load ptr, ptr %1287, align 8, !tbaa !200
  %1350 = getelementptr inbounds %struct.tree_parm_decl, ptr %1349, i64 0, i32 1
  %1351 = load ptr, ptr %1350, align 8, !tbaa !211
  %1352 = load i32, ptr %1348, align 8
  %1353 = lshr i32 %1352, 16
  %1354 = trunc i32 %1353 to i8
  %1355 = icmp eq i8 %1271, %1354
  br i1 %1355, label %1359, label %1356

1356:                                             ; preds = %1344
  %1357 = call ptr @gen_lowpart_SUBREG(i32 noundef %1272, ptr noundef nonnull %1348) #29
  %1358 = call ptr @gen_lowpart_SUBREG(i32 noundef %1272, ptr noundef %1351) #29
  br label %1359

1359:                                             ; preds = %1356, %1344
  %1360 = phi ptr [ %1358, %1356 ], [ %1351, %1344 ]
  %1361 = phi ptr [ %1357, %1356 ], [ %1348, %1344 ]
  %1362 = load i64, ptr %1267, align 8
  %1363 = trunc i64 %1362 to i32
  %1364 = and i32 %1363, 255
  %1365 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %1364, ptr noundef %1361, ptr noundef %1360) #29
  call void @set_decl_incoming_rtl(ptr noundef nonnull %1255, ptr noundef %1365, i8 noundef zeroext 0) #29
  br label %1366

1366:                                             ; preds = %1359, %1262, %1254
  %1367 = phi i32 [ %1285, %1359 ], [ %1256, %1262 ], [ %1256, %1254 ]
  %1368 = getelementptr inbounds %struct.tree_common, ptr %1255, i64 0, i32 1
  %1369 = add i32 %1367, 1
  %1370 = load ptr, ptr %1368, align 8, !tbaa !211
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1372, label %1254, !llvm.loop !588

1372:                                             ; preds = %1366, %1250, %1247
  br i1 %127, label %1374, label %1373, !prof !325

1373:                                             ; preds = %1372
  call void @free(ptr noundef %126)
  br label %1374

1374:                                             ; preds = %1373, %1372
  %1375 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 4
  %1376 = load ptr, ptr %1375, align 8, !tbaa !583
  %1377 = call ptr @emit_insn(ptr noundef %1376) #29
  %1378 = load ptr, ptr %27, align 8, !tbaa !211
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1411, label %1380, !prof !325

1380:                                             ; preds = %1374
  %1381 = getelementptr inbounds %struct.tree_common, ptr %1378, i64 0, i32 2
  %1382 = load ptr, ptr %1381, align 8, !tbaa !211
  %1383 = load i64, ptr %1382, align 8
  %1384 = and i64 %1383, 65535
  %1385 = icmp eq i64 %1384, 14
  br i1 %1385, label %1386, label %1388, !prof !325

1386:                                             ; preds = %1380
  %1387 = call i32 @vector_type_mode(ptr noundef nonnull %1382) #29
  br label %1393

1388:                                             ; preds = %1380
  %1389 = getelementptr inbounds %struct.tree_type, ptr %1382, i64 0, i32 6
  %1390 = load i32, ptr %1389, align 4
  %1391 = lshr i32 %1390, 16
  %1392 = and i32 %1391, 255
  br label %1393

1393:                                             ; preds = %1388, %1386
  %1394 = phi i32 [ %1387, %1386 ], [ %1392, %1388 ]
  %1395 = icmp ugt i32 %1394, 1
  br i1 %1395, label %1396, label %1411, !prof !363

1396:                                             ; preds = %1393
  %1397 = load i64, ptr %1382, align 8
  %1398 = trunc i64 %1397 to i32
  %1399 = and i32 %1398, 65535
  %1400 = add nsw i32 %1399, -15
  %1401 = icmp ult i32 %1400, 4
  br i1 %1401, label %1411, label %1402, !prof !325

1402:                                             ; preds = %1396
  %1403 = call i32 @get_mode_alignment(i32 noundef %1394) #29
  %1404 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  %1405 = icmp ult i32 %1404, %1403
  br i1 %1405, label %1406, label %1411, !prof !325

1406:                                             ; preds = %1402
  %1407 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !274
  %1408 = icmp eq i8 %1407, 0
  br i1 %1408, label %1410, label %1409

1409:                                             ; preds = %1406
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3239, ptr noundef nonnull @.str.2) #29
  br label %1410

1410:                                             ; preds = %1409, %1406
  store i32 %1403, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !273
  br label %1411

1411:                                             ; preds = %1410, %1402, %1396, %1393, %1374
  %1412 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 2
  %1413 = load ptr, ptr %1412, align 8, !tbaa !481
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1440, label %1415, !prof !363

1415:                                             ; preds = %1411
  %1416 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %1417 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1416, i64 0, i32 3
  %1418 = load ptr, ptr %1417, align 8, !tbaa !211
  %1419 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1413, i64 0, i32 1
  %1420 = load ptr, ptr %1419, align 8, !tbaa !211
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %1422, label %1426

1422:                                             ; preds = %1415
  call void @make_decl_rtl(ptr noundef nonnull %1413) #29
  %1423 = load ptr, ptr %1412, align 8, !tbaa !481
  %1424 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1423, i64 0, i32 1
  %1425 = load ptr, ptr %1424, align 8, !tbaa !211
  br label %1426

1426:                                             ; preds = %1422, %1415
  %1427 = phi ptr [ %1425, %1422 ], [ %1420, %1415 ]
  %1428 = getelementptr inbounds %struct.tree_decl_common, ptr %1418, i64 0, i32 2
  %1429 = load i64, ptr %1428, align 8
  %1430 = and i64 %1429, 268435456
  %1431 = icmp eq i64 %1430, 0
  br i1 %1431, label %1432, label %1438

1432:                                             ; preds = %1426
  %1433 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %1427, i8 noundef zeroext 0) #29
  %1434 = load i64, ptr %1428, align 8
  %1435 = trunc i64 %1434 to i32
  %1436 = and i32 %1435, 255
  %1437 = call ptr @gen_rtx_MEM(i32 noundef %1436, ptr noundef %1433) #29
  call void @set_mem_attributes(ptr noundef %1437, ptr noundef %1418, i32 noundef 1) #29
  br label %1438

1438:                                             ; preds = %1432, %1426
  %1439 = phi ptr [ %1437, %1432 ], [ %1427, %1426 ]
  call void @set_decl_rtl(ptr noundef %1418, ptr noundef %1439) #29
  br label %1440

1440:                                             ; preds = %1438, %1411
  %1441 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 6
  %1442 = load i64, ptr %1441, align 8, !tbaa !556
  %1443 = trunc i64 %1442 to i32
  store i32 %1443, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !379
  %1444 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 7
  %1445 = load i64, ptr %1444, align 8, !tbaa !564
  %1446 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 1
  %1447 = load i64, ptr %1446, align 8, !tbaa !570
  %1448 = add nsw i64 %1447, %1445
  store i64 %1448, ptr %1446, align 8, !tbaa !570
  %1449 = trunc i64 %1448 to i32
  store i32 %1449, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !589
  %1450 = call i32 @ix86_reg_parm_stack_space(ptr noundef %0) #29
  %1451 = icmp slt i32 %1450, %1449
  br i1 %1451, label %1452, label %1454, !prof !363

1452:                                             ; preds = %1440
  %1453 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !589
  br label %1456

1454:                                             ; preds = %1440
  %1455 = call i32 @ix86_reg_parm_stack_space(ptr noundef %0) #29
  br label %1456

1456:                                             ; preds = %1454, %1452
  %1457 = phi i32 [ %1453, %1452 ], [ %1455, %1454 ]
  %1458 = add nsw i32 %1457, 3
  %1459 = and i32 %1458, -4
  store i32 %1459, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !589
  %1460 = getelementptr inbounds %struct.assign_parm_data_all, ptr %4, i64 0, i32 1, i32 1
  %1461 = load ptr, ptr %1460, align 8, !tbaa !572
  %1462 = icmp eq ptr %1461, null
  br i1 %1462, label %1463, label %1466, !prof !363

1463:                                             ; preds = %1456
  %1464 = load i64, ptr %1446, align 8, !tbaa !570
  %1465 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1464) #29
  br label %1473

1466:                                             ; preds = %1456
  %1467 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !200
  %1468 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1467, ptr noundef nonnull %1461) #29
  %1469 = load i64, ptr %1446, align 8, !tbaa !570
  %1470 = call ptr @size_int_kind(i64 noundef %1469, i32 noundef 1) #29
  %1471 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1468, ptr noundef %1470) #29
  %1472 = call ptr @expand_expr_real(ptr noundef %1471, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #29
  br label %1473

1473:                                             ; preds = %1466, %1463
  %1474 = phi ptr [ %1465, %1463 ], [ %1472, %1466 ]
  store ptr %1474, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 3), align 8, !tbaa !590
  %1475 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %1476 = load ptr, ptr %1475, align 8, !tbaa !211
  %1477 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !589
  %1478 = call i32 @ix86_return_pops_args(ptr noundef %0, ptr noundef %1476, i32 noundef %1477) #29
  store i32 %1478, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3), align 8, !tbaa !591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 4), ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !592
  %1479 = load ptr, ptr %27, align 8, !tbaa !211
  %1480 = load i64, ptr %1479, align 8
  %1481 = and i64 %1480, 65535
  %1482 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1481, i64 11
  %1483 = load i8, ptr %1482, align 1, !tbaa !211
  %1484 = icmp eq i8 %1483, 0
  br i1 %1484, label %1488, label %1485, !prof !325

1485:                                             ; preds = %1473
  %1486 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1479, i64 0, i32 1
  %1487 = load ptr, ptr %1486, align 8, !tbaa !211
  br label %1488

1488:                                             ; preds = %1485, %1473
  %1489 = phi ptr [ null, %1473 ], [ %1487, %1485 ]
  store ptr %1489, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  %1490 = load ptr, ptr %27, align 8, !tbaa !211
  %1491 = load i64, ptr %1490, align 8
  %1492 = and i64 %1491, 65535
  %1493 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1492, i64 11
  %1494 = load i8, ptr %1493, align 1, !tbaa !211
  %1495 = icmp eq i8 %1494, 0
  br i1 %1495, label %1520, label %1496, !prof !325

1496:                                             ; preds = %1488
  %1497 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1490, i64 0, i32 1
  %1498 = load ptr, ptr %1497, align 8, !tbaa !211
  %1499 = icmp eq ptr %1498, null
  br i1 %1499, label %1520, label %1500, !prof !325

1500:                                             ; preds = %1496
  %1501 = load i32, ptr %1498, align 8
  %1502 = and i32 %1501, 65535
  %1503 = icmp eq i32 %1502, 37
  br i1 %1503, label %1504, label %1508, !prof !363

1504:                                             ; preds = %1500
  %1505 = getelementptr inbounds %struct.rtx_def, ptr %1498, i64 0, i32 1
  %1506 = load i32, ptr %1505, align 8, !tbaa !211
  %1507 = icmp ugt i32 %1506, 52
  br i1 %1507, label %1513, label %1520, !prof !363

1508:                                             ; preds = %1500
  %1509 = getelementptr inbounds %struct.tree_decl_common, ptr %1490, i64 0, i32 2
  %1510 = load i64, ptr %1509, align 8
  %1511 = and i64 %1510, 16777216
  %1512 = icmp eq i64 %1511, 0
  br i1 %1512, label %1520, label %1513

1513:                                             ; preds = %1508, %1504
  %1514 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !594
  %1515 = getelementptr inbounds %struct.tree_common, ptr %1490, i64 0, i32 2
  %1516 = load ptr, ptr %1515, align 8, !tbaa !211
  %1517 = call ptr %1514(ptr noundef %1516, ptr noundef %0, i8 noundef zeroext 1) #29, !prof !595
  %1518 = load i32, ptr %1517, align 8
  %1519 = or i32 %1518, -2147483648
  store i32 %1519, ptr %1517, align 8
  store ptr %1517, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  br label %1520

1520:                                             ; preds = %1488, %1496, %1504, %1508, %1513
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #29
  %1521 = load ptr, ptr @cfun, align 8, !tbaa !200
  %1522 = getelementptr inbounds %struct.function, ptr %1521, i64 0, i32 7
  %1523 = load ptr, ptr %1522, align 8, !tbaa !596
  %1524 = icmp eq ptr %1523, null
  br i1 %1524, label %1548, label %1525, !prof !363

1525:                                             ; preds = %1520
  %1526 = call ptr @gen_reg_rtx(i32 noundef 16) #29
  %1527 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !597
  %1528 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %1529 = call ptr %1527(ptr noundef %1528, i8 noundef zeroext 1) #29
  call void @set_decl_incoming_rtl(ptr noundef nonnull %1523, ptr noundef %1529, i8 noundef zeroext 0) #29
  call void @set_decl_rtl(ptr noundef nonnull %1523, ptr noundef %1526) #29
  %1530 = getelementptr inbounds %struct.tree_common, ptr %1523, i64 0, i32 2
  %1531 = load ptr, ptr %1530, align 8, !tbaa !211
  %1532 = getelementptr inbounds %struct.tree_common, ptr %1531, i64 0, i32 2
  %1533 = load ptr, ptr %1532, align 8, !tbaa !211
  %1534 = getelementptr inbounds %struct.tree_type, ptr %1533, i64 0, i32 7
  %1535 = load i32, ptr %1534, align 8, !tbaa !211
  call void @mark_reg_pointer(ptr noundef %1526, i32 noundef %1535) #29
  %1536 = call ptr @emit_move_insn(ptr noundef %1526, ptr noundef %1529) #29
  %1537 = load i32, ptr %1529, align 8
  %1538 = and i32 %1537, 65535
  %1539 = icmp eq i32 %1538, 43
  br i1 %1539, label %1540, label %1548

1540:                                             ; preds = %1525
  %1541 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !200
  %1542 = getelementptr inbounds %struct.rtx_def, ptr %1529, i64 0, i32 1
  %1543 = load ptr, ptr %1542, align 8, !tbaa !211
  %1544 = call i32 @reg_mentioned_p(ptr noundef %1541, ptr noundef %1543) #29
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1548, label %1546

1546:                                             ; preds = %1540
  %1547 = call ptr @set_unique_reg_note(ptr noundef %1536, i32 noundef 3, ptr noundef nonnull %1529) #29
  br label %1548

1548:                                             ; preds = %1525, %1540, %1546, %1520
  %1549 = load ptr, ptr @cfun, align 8, !tbaa !200
  %1550 = getelementptr inbounds %struct.function, ptr %1549, i64 0, i32 8
  %1551 = load ptr, ptr %1550, align 8, !tbaa !598
  %1552 = icmp eq ptr %1551, null
  br i1 %1552, label %1578, label %1553, !prof !363

1553:                                             ; preds = %1548
  %1554 = getelementptr inbounds %struct.tree_exp, ptr %1551, i64 0, i32 3
  %1555 = load ptr, ptr %1554, align 8, !tbaa !211
  %1556 = load i64, ptr %1555, align 8
  %1557 = and i64 %1556, 65535
  %1558 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1557, i64 11
  %1559 = load i8, ptr %1558, align 1, !tbaa !211
  %1560 = icmp eq i8 %1559, 0
  br i1 %1560, label %1565, label %1561

1561:                                             ; preds = %1553
  %1562 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1555, i64 0, i32 1
  %1563 = load ptr, ptr %1562, align 8, !tbaa !211
  %1564 = icmp eq ptr %1563, null
  br i1 %1564, label %1565, label %1566

1565:                                             ; preds = %1561, %1553
  call void @expand_decl(ptr noundef nonnull %1555) #29
  br label %1566

1566:                                             ; preds = %1565, %1561
  %1567 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !200
  %1568 = load ptr, ptr @cfun, align 8, !tbaa !200
  %1569 = getelementptr inbounds %struct.function, ptr %1568, i64 0, i32 8
  %1570 = load ptr, ptr %1569, align 8, !tbaa !598
  %1571 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !200
  %1572 = call ptr @build4_stat(i32 noundef 45, ptr noundef %1567, ptr noundef %1570, ptr noundef %1571, ptr noundef null, ptr noundef null) #29
  %1573 = call ptr @expand_expr_real(ptr noundef %1572, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #29
  %1574 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %1573, i8 noundef zeroext 0) #29
  %1575 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 78), align 8, !tbaa !599
  %1576 = call ptr %1575() #29
  %1577 = call ptr @emit_move_insn(ptr noundef %1574, ptr noundef %1576) #29
  call void @update_nonlocal_goto_save_area() #29
  br label %1578

1578:                                             ; preds = %1566, %1548
  %1579 = call ptr @emit_note(i32 noundef 4) #29
  %1580 = call ptr @get_last_insn() #29
  %1581 = load i32, ptr %1580, align 8
  %1582 = and i32 %1581, 65535
  %1583 = icmp eq i32 %1582, 13
  br i1 %1583, label %1585, label %1584, !prof !363

1584:                                             ; preds = %1578
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4518, ptr noundef nonnull @.str.2) #29
  br label %1585

1585:                                             ; preds = %1578, %1584
  %1586 = call ptr @get_last_insn() #29
  store ptr %1586, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 18), align 8, !tbaa !600
  %1587 = load i32, ptr @flag_stack_check, align 4, !tbaa !215
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1591, label %1589, !prof !363

1589:                                             ; preds = %1585
  %1590 = call ptr @emit_note(i32 noundef 0) #29
  store ptr %1590, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !601
  br label %1591

1591:                                             ; preds = %1589, %1585
  call void @force_next_line_note() #29
  ret void
}

declare void @init_recog_no_volatile() local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_group_rtx(ptr noundef) local_unnamed_addr #3

declare void @set_decl_incoming_rtl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @expand_decl(ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @update_nonlocal_goto_save_area() local_unnamed_addr #3

declare ptr @emit_note(i32 noundef) local_unnamed_addr #3

declare void @force_next_line_note() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_dummy_function_end() local_unnamed_addr #9 !prof !523 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %3, label %2, !prof !602

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4542, ptr noundef nonnull @.str.2) #29
  br label %3

3:                                                ; preds = %0, %2
  %4 = tail call i32 @in_sequence_p() #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !343

6:                                                ; preds = %3, %6
  tail call void @end_sequence() #29
  %7 = tail call i32 @in_sequence_p() #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %6, !prof !343, !llvm.loop !603

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @cfun, align 8, !tbaa !200
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !256
  tail call void @free_after_compilation(ptr noundef %10)
  %12 = load ptr, ptr @cfun_stack, align 8
  %13 = load i32, ptr %12, align 8, !tbaa !221
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !221
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_function_p_base, ptr %12, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !200
  %18 = load ptr, ptr @cfun, align 8, !tbaa !200
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %27, label %20, !prof !536

20:                                               ; preds = %9
  store ptr %17, ptr @cfun, align 8, !tbaa !200
  %21 = icmp eq ptr %17, null
  br i1 %21, label %25, label %22, !prof !602

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !245
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %24, %22 ], [ null, %20 ]
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %26)
  br label %27

27:                                               ; preds = %9, %25
  store i1 false, ptr @in_dummy_function, align 1
  ret void
}

declare i32 @in_sequence_p() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @diddle_return_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !604 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5, !prof !605

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %35 [
    i16 37, label %13
    i16 15, label %8
  ], !prof !606

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  %11 = load i32, ptr %10, align 8, !tbaa !579
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %14, label %35

13:                                               ; preds = %5
  tail call void %0(ptr noundef nonnull %3, ptr noundef %1) #29, !prof !607
  br label %35

14:                                               ; preds = %8, %29
  %15 = phi i64 [ %30, %29 ], [ 0, %8 ]
  %16 = phi ptr [ %31, %29 ], [ %10, %8 ]
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !211
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void %0(ptr noundef nonnull %20, ptr noundef %1) #29
  br label %29

29:                                               ; preds = %28, %24, %14
  %30 = add nuw nsw i64 %15, 1
  %31 = load ptr, ptr %9, align 8, !tbaa !211
  %32 = load i32, ptr %31, align 8, !tbaa !579
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %14, label %35, !llvm.loop !608

35:                                               ; preds = %29, %8, %13, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clobber_return_register() local_unnamed_addr #10 !prof !255 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  %2 = icmp eq ptr %1, null
  br i1 %2, label %35, label %3, !prof !325

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %35 [
    i16 37, label %11
    i16 15, label %6
  ], !prof !549

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  %9 = load i32, ptr %8, align 8, !tbaa !579
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %13, label %35

11:                                               ; preds = %3
  %12 = tail call ptr @emit_clobber(ptr noundef nonnull %1) #29
  br label %35

13:                                               ; preds = %6, %29
  %14 = phi i64 [ %30, %29 ], [ 0, %6 ]
  %15 = phi ptr [ %31, %29 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !200
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !211
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @emit_clobber(ptr noundef nonnull %19) #29
  br label %29

29:                                               ; preds = %27, %23, %13
  %30 = add nuw nsw i64 %14, 1
  %31 = load ptr, ptr %7, align 8, !tbaa !211
  %32 = load i32, ptr %31, align 8, !tbaa !579
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %13, label %35, !llvm.loop !608

35:                                               ; preds = %29, %6, %0, %3, %11
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %37 = getelementptr inbounds %struct.tree_decl_non_common, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !211
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %40, i64 11
  %42 = load i8, ptr %41, align 1, !tbaa !211
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %58, label %44, !prof !325

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %38, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !211
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48, !prof !325

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %58, !prof !363

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !211
  %55 = icmp ugt i32 %54, 52
  br i1 %55, label %56, label %58, !prof !363

56:                                               ; preds = %52
  %57 = tail call ptr @emit_clobber(ptr noundef nonnull %46) #29
  br label %58

58:                                               ; preds = %48, %52, %56, %44, %35
  ret void
}

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @do_warn_unused_parameter(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !199 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %23
  %6 = phi ptr [ %25, %23 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 16842751
  %9 = icmp eq i64 %8, 34
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 4096
  %18 = and i64 %7, 8388608
  %19 = or disjoint i64 %17, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 225, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #29
  br label %23

23:                                               ; preds = %5, %10, %14, %21
  %24 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !609

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @expand_function_end() local_unnamed_addr #10 !prof !255 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !610
  %3 = icmp eq ptr %2, null
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5, !prof !363
  br i1 %6, label %9, label %7, !prof !363

7:                                                ; preds = %0
  %8 = tail call ptr @get_arg_pointer_save_area()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, ptr @flag_stack_check, align 4, !tbaa !215
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %29, !prof !325

12:                                               ; preds = %9
  %13 = tail call ptr @get_insns() #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %12 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4092) #29
  tail call void @start_sequence() #29
  tail call void @anti_adjust_stack_and_probe(ptr noundef %21, i8 noundef zeroext 1) #29
  %22 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !601
  %24 = tail call ptr @emit_insn_before(ptr noundef %22, ptr noundef %23) #29
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !611

29:                                               ; preds = %25, %12, %20, %9
  %30 = tail call i32 @in_sequence_p() #29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !343

32:                                               ; preds = %29, %32
  tail call void @end_sequence() #29
  %33 = tail call i32 @in_sequence_p() #29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %32, !prof !343, !llvm.loop !612

35:                                               ; preds = %32, %29
  tail call void @clear_pending_stack_adjust() #29
  tail call void @do_pending_stack_adjust() #29
  tail call void @force_next_line_note() #29
  %36 = load i32, ptr @input_location, align 4, !tbaa !215
  tail call void @set_curr_insn_source_location(i32 noundef %36) #29
  %37 = tail call ptr @get_last_insn() #29
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !546
  %39 = tail call ptr @emit_label(ptr noundef %38) #29
  %40 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !215
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !363

42:                                               ; preds = %35
  %43 = tail call ptr @gen_blockage() #29
  %44 = tail call ptr @emit_insn(ptr noundef %43) #29
  br label %45

45:                                               ; preds = %42, %35
  tail call void @expand_eh_return() #29
  %46 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %47 = getelementptr inbounds %struct.tree_decl_non_common, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !211
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %50, i64 11
  %52 = load i8, ptr %51, align 1, !tbaa !211
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %172, label %54, !prof !325

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %48, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !211
  %57 = icmp eq ptr %56, null
  br i1 %57, label %172, label %58, !prof !325

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %66, !prof !363

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !211
  %65 = icmp ugt i32 %64, 52
  br i1 %65, label %71, label %172, !prof !363

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 16777216
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %172, label %71

71:                                               ; preds = %66, %62
  %72 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  %73 = load i32, ptr %72, align 8
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %76, !prof !325

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4730, ptr noundef nonnull @.str.2) #29
  br label %76

76:                                               ; preds = %71, %75
  %77 = load i32, ptr %72, align 8
  %78 = and i32 %77, 16711680
  %79 = icmp eq i32 %78, 65536
  br i1 %79, label %80, label %85, !prof !325

80:                                               ; preds = %76
  %81 = load i32, ptr %56, align 8
  %82 = and i32 %81, 16711680
  %83 = and i32 %77, -16711681
  %84 = or disjoint i32 %82, %83
  store i32 %84, ptr %72, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !211
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93, !prof !325

91:                                               ; preds = %85
  %92 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #29
  br label %98

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %118, label %101, !prof !325

101:                                              ; preds = %98
  %102 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !547
  %103 = load ptr, ptr %86, align 8, !tbaa !211
  %104 = tail call zeroext i8 %102(ptr noundef %103) #29, !prof !548
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %118, label %106, !prof !363

106:                                              ; preds = %101
  %107 = load i32, ptr %56, align 8
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !211
  %112 = tail call ptr @gen_rtx_REG(i32 noundef %109, i32 noundef %111) #29
  %113 = tail call ptr @emit_move_insn(ptr noundef %112, ptr noundef nonnull %56) #29
  %114 = load i32, ptr %56, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = tail call zeroext i8 @shift_return_value(i32 noundef %116, i8 noundef zeroext 1, ptr noundef nonnull %72) #29
  br label %172

118:                                              ; preds = %101, %98
  %119 = load i32, ptr %72, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = load i32, ptr %56, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %140, label %126, !prof !363

126:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #29
  %127 = load ptr, ptr %86, align 8, !tbaa !211
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = lshr i32 %129, 21
  %131 = and i32 %130, 1
  store i32 %131, ptr %1, align 4, !tbaa !215
  %132 = load i32, ptr %56, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %136 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !211
  %138 = call i32 @promote_function_mode(ptr noundef nonnull %127, i32 noundef %134, ptr noundef nonnull %1, ptr noundef %137, i32 noundef 1) #29
  %139 = load i32, ptr %1, align 4, !tbaa !215
  call void @convert_move(ptr noundef nonnull %72, ptr noundef nonnull %56, i32 noundef %139) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #29
  br label %172

140:                                              ; preds = %118
  %141 = and i32 %119, 65535
  %142 = icmp eq i32 %141, 15
  %143 = and i32 %122, 65535
  br i1 %142, label %144, label %151, !prof !325

144:                                              ; preds = %140
  %145 = icmp eq i32 %143, 15
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  tail call void @emit_group_move(ptr noundef nonnull %72, ptr noundef nonnull %56) #29
  br label %172

147:                                              ; preds = %144
  %148 = load ptr, ptr %86, align 8, !tbaa !211
  %149 = tail call i64 @int_size_in_bytes(ptr noundef %148) #29
  %150 = trunc i64 %149 to i32
  tail call void @emit_group_load(ptr noundef nonnull %72, ptr noundef nonnull %56, ptr noundef %148, i32 noundef %150) #29
  br label %172

151:                                              ; preds = %140
  %152 = icmp eq i32 %143, 41
  br i1 %152, label %153, label %170, !prof !325

153:                                              ; preds = %151
  %154 = zext nneg i32 %124 to i64
  %155 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !211
  %157 = icmp eq i8 %156, 10
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %154
  %160 = load i8, ptr %159, align 1, !tbaa !211
  %161 = icmp ult i8 %160, 5
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, ptr @generating_concat_p, align 4, !tbaa !215
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !215
  %164 = load i32, ptr %56, align 8
  %165 = lshr i32 %164, 16
  %166 = and i32 %165, 255
  %167 = tail call ptr @gen_reg_rtx(i32 noundef %166) #29
  store i32 %163, ptr @generating_concat_p, align 4, !tbaa !215
  %168 = tail call ptr @emit_move_insn(ptr noundef %167, ptr noundef nonnull %56) #29
  %169 = tail call ptr @emit_move_insn(ptr noundef nonnull %72, ptr noundef %167) #29
  br label %172

170:                                              ; preds = %158, %153, %151
  %171 = tail call ptr @emit_move_insn(ptr noundef nonnull %72, ptr noundef nonnull %56) #29
  br label %172

172:                                              ; preds = %62, %66, %126, %162, %170, %146, %147, %106, %54, %45
  %173 = load ptr, ptr @cfun, align 8, !tbaa !200
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 20
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 201326592
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %221, label %178, !prof !363

178:                                              ; preds = %172
  %179 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %180 = getelementptr inbounds %struct.tree_decl_non_common, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !211
  %182 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !211
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  call void @make_decl_rtl(ptr noundef %181) #29
  %186 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %187 = getelementptr inbounds %struct.tree_decl_non_common, ptr %186, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !211
  %189 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !211
  br label %191

191:                                              ; preds = %178, %185
  %192 = phi ptr [ %190, %185 ], [ %183, %178 ]
  %193 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %194 = getelementptr inbounds %struct.tree_decl_non_common, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !211
  %196 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !211
  %198 = getelementptr inbounds %struct.tree_decl_common, ptr %195, i64 0, i32 2
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 268435456
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !211
  br label %208

205:                                              ; preds = %191
  %206 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !211
  br label %208

208:                                              ; preds = %205, %202
  %209 = phi ptr [ %204, %202 ], [ %197, %205 ]
  %210 = phi ptr [ %192, %202 ], [ %207, %205 ]
  %211 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !594
  %212 = call ptr @build_pointer_type(ptr noundef %209) #29
  %213 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %214 = call ptr %211(ptr noundef %212, ptr noundef %213, i8 noundef zeroext 1) #29
  %215 = load i32, ptr %214, align 8
  %216 = or i32 %215, -2147483648
  store i32 %216, ptr %214, align 8
  %217 = lshr i32 %215, 16
  %218 = and i32 %217, 255
  %219 = call ptr @convert_memory_address_addr_space(i32 noundef %218, ptr noundef %210, i8 noundef zeroext 0) #29
  %220 = call ptr @emit_move_insn(ptr noundef nonnull %214, ptr noundef %219) #29
  store ptr %214, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  br label %221

221:                                              ; preds = %172, %208
  call void @start_sequence() #29
  call void @clobber_return_register()
  %222 = call ptr @get_insns() #29
  call void @end_sequence() #29
  %223 = call ptr @emit_insn_after(ptr noundef %222, ptr noundef %37) #29
  %224 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !613
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226, !prof !363

226:                                              ; preds = %221
  %227 = call ptr @emit_label(ptr noundef nonnull %224) #29
  br label %228

228:                                              ; preds = %226, %221
  %229 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !215
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231, !prof !363

231:                                              ; preds = %228
  %232 = call ptr @gen_blockage() #29
  %233 = call ptr @emit_insn(ptr noundef %232) #29
  br label %234

234:                                              ; preds = %231, %228
  %235 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !542
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237, !prof !363

237:                                              ; preds = %234
  call void @stack_protect_epilogue()
  br label %238

238:                                              ; preds = %237, %234
  %239 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !593
  %240 = icmp eq ptr %239, null
  br i1 %240, label %273, label %241, !prof !325

241:                                              ; preds = %238
  %242 = load i32, ptr %239, align 8
  %243 = trunc i32 %242 to i16
  switch i16 %243, label %273 [
    i16 37, label %249
    i16 15, label %244
  ], !prof !549

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !211
  %247 = load i32, ptr %246, align 8, !tbaa !579
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %251, label %273

249:                                              ; preds = %241
  %250 = call ptr @emit_use(ptr noundef nonnull %239) #29
  br label %273

251:                                              ; preds = %244, %267
  %252 = phi i64 [ %268, %267 ], [ 0, %244 ]
  %253 = phi ptr [ %269, %267 ], [ %246, %244 ]
  %254 = getelementptr inbounds %struct.rtvec_def, ptr %253, i64 0, i32 1, i64 %252
  %255 = load ptr, ptr %254, align 8, !tbaa !200
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !211
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 37
  br i1 %260, label %261, label %267

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !211
  %264 = icmp ult i32 %263, 53
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = call ptr @emit_use(ptr noundef nonnull %257) #29
  br label %267

267:                                              ; preds = %265, %261, %251
  %268 = add nuw nsw i64 %252, 1
  %269 = load ptr, ptr %245, align 8, !tbaa !211
  %270 = load i32, ptr %269, align 8, !tbaa !579
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %251, label %273, !llvm.loop !608

273:                                              ; preds = %267, %244, %238, %241, %249
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_arg_pointer_save_area() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !610
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !211
  %5 = zext i8 %4 to i64
  %6 = tail call ptr @assign_stack_local_1(i32 noundef 16, i64 noundef %5, i32 noundef 0, i8 noundef zeroext 0)
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !610
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %1, %0 ], [ %6, %3 ]
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4, !tbaa !614
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void @start_sequence() #29
  %12 = tail call ptr @validize_mem(ptr noundef %8) #29
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !552
  %14 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %13) #29
  %15 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  tail call void @push_topmost_sequence() #29
  %16 = tail call ptr @entry_of_function() #29
  %17 = tail call ptr @emit_insn_after(ptr noundef %15, ptr noundef %16) #29
  tail call void @pop_topmost_sequence() #29
  br label %18

18:                                               ; preds = %11, %7
  ret ptr %8
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare void @anti_adjust_stack_and_probe(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @clear_pending_stack_adjust() local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #3

declare ptr @gen_blockage() local_unnamed_addr #3

declare void @expand_eh_return() local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @shift_return_value(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_group_move(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

declare void @push_topmost_sequence() local_unnamed_addr #3

declare ptr @entry_of_function() local_unnamed_addr #3

declare void @pop_topmost_sequence() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @maybe_copy_epilogue_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !615 {
  %3 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !616

5:                                                ; preds = %2
  %6 = tail call ptr @htab_find(ptr noundef nonnull %3, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !617

8:                                                ; preds = %5
  %9 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %10 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %1, i32 noundef 1) #29
  %11 = load ptr, ptr %10, align 8, !tbaa !200
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !618

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4945, ptr noundef nonnull @.str.2) #29
  br label %14

14:                                               ; preds = %8, %13
  store ptr %1, ptr %10, align 8, !tbaa !200
  br label %15

15:                                               ; preds = %2, %5, %14
  ret void
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @prologue_epilogue_contains(ptr noundef %0) local_unnamed_addr #15 !prof !619 {
  %2 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !200
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4, !prof !620

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %32, !prof !621

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !211
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %32, !prof !622

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = load i32, ptr %16, align 8, !tbaa !579
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %23, %14
  %20 = phi i64 [ %24, %23 ], [ %18, %14 ]
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = add nsw i64 %20, -1
  %25 = load ptr, ptr %9, align 8, !tbaa !211
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !200
  %30 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef %29) #29
  %31 = icmp eq ptr %30, null
  br i1 %31, label %19, label %70, !llvm.loop !623

32:                                               ; preds = %8, %4
  %33 = tail call ptr @htab_find(ptr noundef nonnull %2, ptr noundef nonnull %0) #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %70, !prof !624

35:                                               ; preds = %19, %1, %32
  %36 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38, !prof !620

38:                                               ; preds = %35
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %66, !prof !621

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !211
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %66, !prof !622

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !211
  %51 = load i32, ptr %50, align 8, !tbaa !579
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi i64 [ %58, %57 ], [ %52, %48 ]
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = add nsw i64 %54, -1
  %59 = load ptr, ptr %43, align 8, !tbaa !211
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !211
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !200
  %64 = tail call ptr @htab_find(ptr noundef nonnull %36, ptr noundef %63) #29
  %65 = icmp eq ptr %64, null
  br i1 %65, label %53, label %70, !llvm.loop !623

66:                                               ; preds = %42, %38
  %67 = tail call ptr @htab_find(ptr noundef nonnull %36, ptr noundef nonnull %0) #29
  %68 = icmp ne ptr %67, null
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %23, %57, %53, %66, %35, %32
  %71 = phi i32 [ 1, %32 ], [ %69, %66 ], [ 0, %35 ], [ 0, %53 ], [ 1, %57 ], [ 1, %23 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #10 !prof !255 {
  %1 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !200
  %2 = icmp eq ptr %1, null
  br i1 %2, label %94, label %3, !prof !325

3:                                                ; preds = %0
  %4 = tail call i64 @htab_elements(ptr noundef nonnull %1) #29
  %5 = tail call ptr @get_insns() #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7, !prof !409

7:                                                ; preds = %3, %59
  %8 = phi i64 [ %62, %59 ], [ %4, %3 ]
  %9 = phi ptr [ %64, %59 ], [ %5, %3 ]
  %10 = phi ptr [ %61, %59 ], [ null, %3 ]
  %11 = phi ptr [ %60, %59 ], [ null, %3 ]
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 13
  br i1 %14, label %15, label %20, !prof !625

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !211
  %18 = icmp eq i32 %17, 5
  %19 = select i1 %18, ptr %9, ptr %11, !prof !626
  br label %59

20:                                               ; preds = %7
  %21 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23, !prof !620

23:                                               ; preds = %20
  %24 = icmp eq i32 %13, 8
  br i1 %24, label %25, label %49, !prof !621

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !211
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %49, !prof !622

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = load i32, ptr %33, align 8, !tbaa !579
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %40, %31
  %37 = phi i64 [ %41, %40 ], [ %35, %31 ]
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = add nsw i64 %37, -1
  %42 = load ptr, ptr %26, align 8, !tbaa !211
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !211
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !200
  %47 = tail call ptr @htab_find(ptr noundef nonnull %21, ptr noundef %46) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %36, label %53, !llvm.loop !623

49:                                               ; preds = %25, %23
  %50 = tail call ptr @htab_find(ptr noundef nonnull %21, ptr noundef nonnull %9) #29
  %51 = icmp ne ptr %50, null
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %36, %40, %20, %49
  %54 = phi i8 [ %52, %49 ], [ 0, %20 ], [ 0, %36 ], [ 1, %40 ]
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56, !prof !627

56:                                               ; preds = %53
  %57 = add i64 %8, -1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %66, label %59, !prof !628

59:                                               ; preds = %15, %56, %53
  %60 = phi ptr [ %11, %56 ], [ %11, %53 ], [ %19, %15 ]
  %61 = phi ptr [ %9, %56 ], [ %10, %53 ], [ %10, %15 ]
  %62 = phi i64 [ %57, %56 ], [ %8, %53 ], [ %8, %15 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !211
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %7, !prof !629, !llvm.loop !630

66:                                               ; preds = %59, %56, %3
  %67 = phi ptr [ null, %3 ], [ %60, %59 ], [ %11, %56 ]
  %68 = phi ptr [ null, %3 ], [ %61, %59 ], [ %9, %56 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %94, label %70, !prof !325

70:                                               ; preds = %66
  %71 = icmp eq ptr %67, null
  br i1 %71, label %72, label %84, !prof !325

72:                                               ; preds = %70, %79
  %73 = phi ptr [ %75, %79 ], [ %68, %70 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !211
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %80, label %79

79:                                               ; preds = %72, %80
  br label %72, !llvm.loop !631

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  %82 = load i32, ptr %81, align 8, !tbaa !211
  %83 = icmp eq i32 %82, 5
  br i1 %83, label %84, label %79

84:                                               ; preds = %80, %70
  %85 = phi ptr [ %67, %70 ], [ %75, %80 ]
  %86 = load i32, ptr %68, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %92, !prof !325

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !211
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %91, %89 ], [ %68, %84 ]
  tail call void @reorder_insns(ptr noundef nonnull %85, ptr noundef nonnull %85, ptr noundef %93) #29
  br label %94

94:                                               ; preds = %66, %92, %0
  %95 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %96 = icmp eq ptr %95, null
  br i1 %96, label %220, label %97, !prof !325

97:                                               ; preds = %94
  %98 = load ptr, ptr @cfun, align 8, !tbaa !200
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !504
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !632
  %103 = icmp eq ptr %102, null
  br label %104

104:                                              ; preds = %218, %97
  %105 = phi i32 [ 0, %97 ], [ %219, %218 ]
  br i1 %103, label %106, label %107, !prof !633

106:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %107

107:                                              ; preds = %106, %104
  %108 = load ptr, ptr %102, align 8, !tbaa !200
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !633

110:                                              ; preds = %107
  %111 = load i32, ptr %108, align 8, !tbaa !634
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %111, %110 ], [ 0, %107 ]
  %114 = icmp eq i32 %113, %105
  br i1 %114, label %119, label %115, !prof !636

115:                                              ; preds = %112
  %116 = zext i32 %105 to i64
  %117 = getelementptr inbounds %struct.VEC_edge_base, ptr %108, i64 0, i32 2, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !200
  br label %119

119:                                              ; preds = %112, %115
  %120 = phi ptr [ %118, %115 ], [ null, %112 ]
  br i1 %114, label %220, label %121, !prof !636

121:                                              ; preds = %119
  %122 = load ptr, ptr %120, align 8, !tbaa !637
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !211
  %125 = load ptr, ptr %124, align 8, !tbaa !211
  %126 = icmp eq ptr %125, null
  br i1 %126, label %193, label %127, !prof !409

127:                                              ; preds = %121, %187
  %128 = phi ptr [ %191, %187 ], [ %125, %121 ]
  %129 = phi ptr [ %189, %187 ], [ null, %121 ]
  %130 = phi ptr [ %188, %187 ], [ null, %121 ]
  %131 = load ptr, ptr %123, align 8, !tbaa !211
  %132 = getelementptr inbounds %struct.rtl_bb_info, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !639
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1, i32 0, i32 0, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !211
  %136 = icmp eq ptr %128, %135
  br i1 %136, label %193, label %137, !prof !641

137:                                              ; preds = %127
  %138 = load i32, ptr %128, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 13
  br i1 %140, label %141, label %147, !prof !642

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 1
  %143 = load i32, ptr %142, align 8, !tbaa !211
  %144 = icmp eq i32 %143, 6
  br i1 %144, label %145, label %187, !prof !643

145:                                              ; preds = %141
  %146 = icmp eq ptr %130, null
  br i1 %146, label %187, label %193, !prof !644

147:                                              ; preds = %137
  %148 = icmp eq ptr %130, null
  br i1 %148, label %149, label %187, !prof !645

149:                                              ; preds = %147
  %150 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %151 = icmp eq ptr %150, null
  br i1 %151, label %182, label %152, !prof !620

152:                                              ; preds = %149
  %153 = icmp eq i32 %139, 8
  br i1 %153, label %154, label %178, !prof !621

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !211
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 5
  br i1 %159, label %160, label %178, !prof !622

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !211
  %163 = load i32, ptr %162, align 8, !tbaa !579
  %164 = zext i32 %163 to i64
  br label %165

165:                                              ; preds = %169, %160
  %166 = phi i64 [ %170, %169 ], [ %164, %160 ]
  %167 = trunc i64 %166 to i32
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = add nsw i64 %166, -1
  %171 = load ptr, ptr %155, align 8, !tbaa !211
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !211
  %174 = getelementptr inbounds %struct.rtvec_def, ptr %173, i64 0, i32 1, i64 %170
  %175 = load ptr, ptr %174, align 8, !tbaa !200
  %176 = tail call ptr @htab_find(ptr noundef nonnull %150, ptr noundef %175) #29
  %177 = icmp eq ptr %176, null
  br i1 %177, label %165, label %182, !llvm.loop !623

178:                                              ; preds = %154, %152
  %179 = tail call ptr @htab_find(ptr noundef nonnull %150, ptr noundef nonnull %128) #29
  %180 = icmp ne ptr %179, null
  %181 = zext i1 %180 to i8
  br label %182

182:                                              ; preds = %165, %169, %149, %178
  %183 = phi i8 [ %181, %178 ], [ 0, %149 ], [ 0, %165 ], [ 1, %169 ]
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185, !prof !646

185:                                              ; preds = %182
  %186 = icmp eq ptr %129, null
  br i1 %186, label %187, label %193, !prof !647

187:                                              ; preds = %145, %141, %185, %182, %147
  %188 = phi ptr [ null, %145 ], [ %130, %141 ], [ %128, %185 ], [ null, %182 ], [ %130, %147 ]
  %189 = phi ptr [ %128, %145 ], [ %129, %141 ], [ null, %185 ], [ %129, %182 ], [ %129, %147 ]
  %190 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !211
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %127, !prof !641, !llvm.loop !648

193:                                              ; preds = %127, %145, %187, %185, %121
  %194 = phi ptr [ null, %121 ], [ %130, %127 ], [ %130, %145 ], [ %188, %187 ], [ %128, %185 ]
  %195 = phi ptr [ null, %121 ], [ %129, %127 ], [ %128, %145 ], [ %189, %187 ], [ %129, %185 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %209, label %197, !prof !317

197:                                              ; preds = %193
  %198 = icmp eq ptr %194, null
  br i1 %198, label %199, label %203, !prof !317

199:                                              ; preds = %197
  %200 = load ptr, ptr %123, align 8, !tbaa !211
  %201 = getelementptr inbounds %struct.rtl_bb_info, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !639
  br label %203

203:                                              ; preds = %199, %197
  %204 = phi ptr [ %202, %199 ], [ %194, %197 ]
  %205 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1, i32 0, i32 0, i64 1
  %206 = load ptr, ptr %205, align 8, !tbaa !211
  %207 = icmp eq ptr %206, %195
  br i1 %207, label %209, label %208, !prof !644

208:                                              ; preds = %203
  tail call void @reorder_insns(ptr noundef nonnull %195, ptr noundef nonnull %195, ptr noundef %206) #29
  br label %209

209:                                              ; preds = %193, %208, %203
  %210 = load ptr, ptr %102, align 8, !tbaa !200
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212, !prof !317

212:                                              ; preds = %209
  %213 = load i32, ptr %210, align 8, !tbaa !634
  br label %214

214:                                              ; preds = %212, %209
  %215 = phi i32 [ %213, %212 ], [ 0, %209 ]
  %216 = icmp ult i32 %105, %215
  br i1 %216, label %218, label %217, !prof !649

217:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %218

218:                                              ; preds = %214, %217
  %219 = add i32 %105, 1
  br label %104, !llvm.loop !650

220:                                              ; preds = %119, %94
  ret void
}

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @current_function_name() local_unnamed_addr #9 !prof !199 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !200
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !651
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = tail call ptr %4(ptr noundef %6, i32 noundef 2) #29
  br label %8

8:                                                ; preds = %0, %3
  %9 = phi ptr [ %7, %3 ], [ @.str.8, %0 ]
  ret ptr %9
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @used_types_insert(ptr noundef %0) local_unnamed_addr #15 !prof !652 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %13 [
    i16 10, label %6
    i16 12, label %6
    i16 15, label %6
  ], !prof !653

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !211
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13, !prof !654

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  br label %2, !llvm.loop !655

13:                                               ; preds = %2, %6
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !656

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !211
  %22 = icmp eq ptr %15, %21
  br i1 %22, label %23, label %26, !prof !657

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ %3, %17 ]
  %28 = load i32, ptr @debug_info_level, align 4, !tbaa !215
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30, !prof !658

30:                                               ; preds = %26
  %31 = load ptr, ptr @cfun, align 8, !tbaa !200
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = icmp eq ptr %27, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !659
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !200
  %41 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !200
  %42 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef %40, ptr noundef %41, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %42, ptr %36, align 8, !tbaa !659
  br label %43

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %36, align 8, !tbaa !659
  %45 = tail call ptr @htab_find_slot(ptr noundef %44, ptr noundef nonnull %27, i32 noundef 1) #29
  %46 = load ptr, ptr %45, align 8, !tbaa !200
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  store ptr %27, ptr %45, align 8, !tbaa !200
  br label %52

49:                                               ; preds = %30
  %50 = load ptr, ptr @types_used_by_cur_var_decl, align 8, !tbaa !200
  %51 = tail call ptr @tree_cons_stat(ptr noundef %27, ptr noundef null, ptr noundef %50) #29
  store ptr %51, ptr @types_used_by_cur_var_decl, align 8, !tbaa !200
  br label %52

52:                                               ; preds = %48, %43, %33, %49, %26
  ret void
}

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @types_used_by_vars_do_hash(ptr noundef %0) #9 !prof !199 {
  %2 = tail call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0) unnamed_addr #9 !prof !199 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !660
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !662
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5498, ptr noundef nonnull @.str.2) #29
  br label %11

11:                                               ; preds = %7, %10
  %12 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %13 = tail call i32 @iterative_hash(ptr noundef nonnull %12, i64 noundef 8, i32 noundef 0) #29
  %14 = tail call i32 @iterative_hash(ptr noundef %0, i64 noundef 8, i32 noundef %13) #29
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @types_used_by_vars_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 !prof !199 {
  %3 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !660
  %5 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !660
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !662
  %10 = load ptr, ptr %1, align 8, !tbaa !662
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @types_used_by_var_decl_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !199 {
  %3 = alloca %struct.types_used_by_vars_entry, align 8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  %8 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %3, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !660
  store ptr %0, ptr %3, align 8, !tbaa !662
  %9 = load ptr, ptr @types_used_by_vars_hash, align 8, !tbaa !200
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @types_used_by_vars_do_hash, ptr noundef nonnull @types_used_by_vars_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %12, ptr @types_used_by_vars_hash, align 8, !tbaa !200
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @types_used_by_vars_hash, align 8, !tbaa !200
  %15 = call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef nonnull %3)
  %16 = call ptr @htab_find_slot_with_hash(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %15, i32 noundef 1) #29
  %17 = load ptr, ptr %16, align 8, !tbaa !200
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_stat(i64 noundef 16) #29
  store ptr %0, ptr %20, align 8, !tbaa !662
  %21 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %20, i64 0, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !660
  store ptr %20, ptr %16, align 8, !tbaa !200
  br label %22

22:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @rest_of_handle_check_leaf_regs() #26 !prof !255 !PGOFuncName !663 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_thread_prologue_and_epilogue() #10 !prof !255 !PGOFuncName !664 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !215
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !325

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #29
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @cfun, align 8, !tbaa !200
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !504
  %9 = load ptr, ptr %8, align 8, !tbaa !665
  tail call void @rtl_profile_for_bb(ptr noundef %9) #29
  tail call void @start_sequence() #29
  %10 = tail call ptr @gen_prologue() #29
  %11 = tail call ptr @emit_insn(ptr noundef %10) #29
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !544
  %13 = icmp ne i8 %12, 0
  %14 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false, !prof !325
  br i1 %16, label %17, label %20, !prof !325

17:                                               ; preds = %5
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !200
  %19 = tail call ptr @emit_use(ptr noundef %18) #29
  br label %20

20:                                               ; preds = %17, %5
  %21 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27, !prof !666

23:                                               ; preds = %20
  %24 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !200
  %25 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !200
  %26 = tail call ptr @htab_create_alloc(i64 noundef 17, ptr noundef %24, ptr noundef %25, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %26, ptr @prologue_insn_hash, align 8, !tbaa !200
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi ptr [ %26, %23 ], [ %21, %20 ]
  %29 = icmp eq ptr %10, null
  br i1 %29, label %40, label %30, !prof !667

30:                                               ; preds = %27, %36
  %31 = phi ptr [ %38, %36 ], [ %10, %27 ]
  %32 = tail call ptr @htab_find_slot(ptr noundef %28, ptr noundef nonnull %31, i32 noundef 1) #29
  %33 = load ptr, ptr %32, align 8, !tbaa !200
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !668

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4927, ptr noundef nonnull @.str.2) #29
  br label %36

36:                                               ; preds = %35, %30
  store ptr %31, ptr %32, align 8, !tbaa !200
  %37 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !211
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !prof !669, !llvm.loop !670

40:                                               ; preds = %36, %27
  %41 = tail call ptr @emit_note(i32 noundef 5) #29
  %42 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !544
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44, !prof !363

44:                                               ; preds = %40
  %45 = tail call ptr @gen_blockage() #29
  %46 = tail call ptr @emit_insn(ptr noundef %45) #29
  br label %47

47:                                               ; preds = %44, %40
  %48 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  %49 = load i32, ptr @prologue_locator, align 4, !tbaa !215
  %50 = icmp eq ptr %48, null
  br i1 %50, label %63, label %51, !prof !380

51:                                               ; preds = %47, %59
  %52 = phi ptr [ %61, %59 ], [ %48, %47 ]
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %59, !prof !671

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  store i32 %49, ptr %58, align 8, !tbaa !211
  br label %59

59:                                               ; preds = %57, %51
  %60 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !211
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %51, !prof !672, !llvm.loop !673

63:                                               ; preds = %59, %47
  %64 = load ptr, ptr @cfun, align 8, !tbaa !200
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !504
  %67 = load ptr, ptr %66, align 8, !tbaa !665
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !674
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !325

71:                                               ; preds = %63
  %72 = load i32, ptr %69, align 8, !tbaa !634
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %71, %63
  %76 = phi i8 [ %74, %71 ], [ 0, %63 ]
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79, !prof !325

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5052, ptr noundef nonnull @.str.2) #29
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr @cfun, align 8, !tbaa !200
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !504
  %83 = load ptr, ptr %82, align 8, !tbaa !665
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !674
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !325

87:                                               ; preds = %79
  %88 = load i32, ptr %85, align 8, !tbaa !634
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %91, label %90, !prof !363

90:                                               ; preds = %87, %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 645, ptr noundef nonnull @.str.2) #29
  br label %91

91:                                               ; preds = %90, %87
  %92 = load ptr, ptr %84, align 8, !tbaa !674
  %93 = getelementptr inbounds %struct.VEC_edge_base, ptr %92, i64 0, i32 2, i64 0
  %94 = load ptr, ptr %93, align 8, !tbaa !200
  tail call void @insert_insn_on_edge(ptr noundef %48, ptr noundef %94) #29
  %95 = load ptr, ptr @cfun, align 8, !tbaa !200
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !504
  %98 = getelementptr inbounds %struct.control_flow_graph, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !632
  %100 = icmp eq ptr %99, null
  br label %101

101:                                              ; preds = %130, %91
  %102 = phi i32 [ 0, %91 ], [ %131, %130 ]
  br i1 %100, label %103, label %104, !prof !325

103:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %104

104:                                              ; preds = %103, %101
  %105 = load ptr, ptr %99, align 8, !tbaa !200
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107, !prof !325

107:                                              ; preds = %104
  %108 = load i32, ptr %105, align 8, !tbaa !634
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %108, %107 ], [ 0, %104 ]
  %111 = icmp eq i32 %110, %102
  br i1 %111, label %116, label %112, !prof !325

112:                                              ; preds = %109
  %113 = zext i32 %102 to i64
  %114 = getelementptr inbounds %struct.VEC_edge_base, ptr %105, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !200
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi ptr [ %115, %112 ], [ null, %109 ]
  br i1 %111, label %132, label %118, !prof !325

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 7
  %120 = load i32, ptr %119, align 8, !tbaa !676
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %132, label %123, !prof !363

123:                                              ; preds = %118
  br i1 %106, label %126, label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %105, align 8, !tbaa !634
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ %125, %124 ], [ 0, %123 ]
  %128 = icmp ult i32 %102, %127
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %130

130:                                              ; preds = %129, %126
  %131 = add i32 %102, 1
  br label %101, !llvm.loop !677

132:                                              ; preds = %118, %116
  %133 = icmp eq ptr %117, null
  br i1 %133, label %505, label %134, !prof !325

134:                                              ; preds = %132
  %135 = load ptr, ptr @cfun, align 8, !tbaa !200
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !504
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !632
  tail call void @rtl_profile_for_bb(ptr noundef %139) #29
  %140 = load i32, ptr @optimize, align 4, !tbaa !215
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %363, label %142, !prof !325

142:                                              ; preds = %134
  %143 = tail call i32 @ix86_can_use_return_insn_p() #29
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %363, label %145, !prof !363

145:                                              ; preds = %142
  %146 = load ptr, ptr @cfun, align 8, !tbaa !200
  %147 = getelementptr inbounds %struct.function, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !504
  %149 = getelementptr inbounds %struct.control_flow_graph, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !632
  %151 = icmp eq ptr %150, null
  br label %152

152:                                              ; preds = %181, %145
  %153 = phi i32 [ 0, %145 ], [ %182, %181 ]
  br i1 %151, label %154, label %155

154:                                              ; preds = %152
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %155

155:                                              ; preds = %154, %152
  %156 = load ptr, ptr %150, align 8, !tbaa !200
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %156, align 8, !tbaa !634
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i32 [ %159, %158 ], [ 0, %155 ]
  %162 = icmp eq i32 %161, %153
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = zext i32 %153 to i64
  %165 = getelementptr inbounds %struct.VEC_edge_base, ptr %156, i64 0, i32 2, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !200
  br label %167

167:                                              ; preds = %163, %160
  %168 = phi ptr [ %166, %163 ], [ null, %160 ]
  br i1 %162, label %183, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.edge_def, ptr %168, i64 0, i32 7
  %171 = load i32, ptr %170, align 8, !tbaa !676
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  br i1 %157, label %177, label %175

175:                                              ; preds = %174
  %176 = load i32, ptr %156, align 8, !tbaa !634
  br label %177

177:                                              ; preds = %175, %174
  %178 = phi i32 [ %176, %175 ], [ 0, %174 ]
  %179 = icmp ult i32 %153, %178
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %181

181:                                              ; preds = %180, %177
  %182 = add i32 %153, 1
  br label %152, !llvm.loop !678

183:                                              ; preds = %169, %167
  %184 = icmp eq ptr %168, null
  br i1 %184, label %360, label %185

185:                                              ; preds = %183
  %186 = load ptr, ptr %168, align 8, !tbaa !637
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !211
  %189 = getelementptr inbounds %struct.rtl_bb_info, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !211
  %191 = icmp eq ptr %190, null
  br i1 %191, label %204, label %192

192:                                              ; preds = %185, %200
  %193 = phi ptr [ %202, %200 ], [ %190, %185 ]
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 12
  br i1 %196, label %204, label %197

197:                                              ; preds = %192
  %198 = tail call i32 @active_insn_p(ptr noundef nonnull %193) #29
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !211
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %192, !llvm.loop !679

204:                                              ; preds = %200, %192, %197, %185
  %205 = phi ptr [ %190, %185 ], [ %202, %200 ], [ %193, %192 ], [ %193, %197 ]
  %206 = load ptr, ptr %187, align 8, !tbaa !211
  %207 = load ptr, ptr %206, align 8, !tbaa !680
  %208 = icmp eq ptr %207, %205
  br i1 %208, label %209, label %360

209:                                              ; preds = %204
  %210 = load i32, ptr %205, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 12
  br i1 %212, label %213, label %360

213:                                              ; preds = %209
  %214 = icmp eq ptr %186, null
  br label %215

215:                                              ; preds = %252, %213
  %216 = phi i32 [ 0, %213 ], [ %253, %252 ]
  %217 = zext i32 %216 to i64
  br label %218

218:                                              ; preds = %215, %327
  br i1 %214, label %219, label %220

219:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %220

220:                                              ; preds = %219, %218
  %221 = load ptr, ptr %186, align 8, !tbaa !200
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr %221, align 8, !tbaa !634
  br label %225

225:                                              ; preds = %223, %220
  %226 = phi i32 [ %224, %223 ], [ 0, %220 ]
  %227 = icmp eq i32 %226, %216
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.VEC_edge_base, ptr %221, i64 0, i32 2, i64 %217
  %230 = load ptr, ptr %229, align 8, !tbaa !200
  br label %231

231:                                              ; preds = %228, %225
  %232 = phi ptr [ %230, %228 ], [ null, %225 ]
  %233 = icmp eq ptr %232, null
  br i1 %233, label %333, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %232, align 8, !tbaa !637
  %236 = load ptr, ptr @cfun, align 8, !tbaa !200
  %237 = getelementptr inbounds %struct.function, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !504
  %239 = load ptr, ptr %238, align 8, !tbaa !665
  %240 = icmp eq ptr %235, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %234
  br i1 %214, label %242, label %243

242:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %243

243:                                              ; preds = %242, %241
  %244 = load ptr, ptr %186, align 8, !tbaa !200
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = load i32, ptr %244, align 8, !tbaa !634
  br label %248

248:                                              ; preds = %246, %243
  %249 = phi i32 [ %247, %246 ], [ 0, %243 ]
  %250 = icmp ult i32 %216, %249
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %252

252:                                              ; preds = %323, %326, %314, %317, %294, %297, %269, %272, %248, %251
  %253 = add i32 %216, 1
  br label %215, !llvm.loop !681

254:                                              ; preds = %234
  %255 = getelementptr inbounds %struct.basic_block_def, ptr %235, i64 0, i32 7
  %256 = load ptr, ptr %255, align 8, !tbaa !211
  %257 = getelementptr inbounds %struct.rtl_bb_info, ptr %256, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !639
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 9
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.rtx_def, ptr %258, i64 1, i32 1, i32 0, i32 0, i64 2
  %264 = load ptr, ptr %263, align 8, !tbaa !211
  %265 = icmp eq ptr %264, %205
  br i1 %265, label %273, label %266

266:                                              ; preds = %262, %254
  br i1 %222, label %269, label %267

267:                                              ; preds = %266
  %268 = load i32, ptr %221, align 8, !tbaa !634
  br label %269

269:                                              ; preds = %267, %266
  %270 = phi i32 [ %268, %267 ], [ 0, %266 ]
  %271 = icmp ult i32 %216, %270
  br i1 %271, label %252, label %272

272:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %252

273:                                              ; preds = %262
  %274 = tail call i32 @simplejump_p(ptr noundef nonnull %258) #29
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %273
  %277 = tail call ptr @gen_return() #29
  %278 = load ptr, ptr %255, align 8, !tbaa !211
  %279 = getelementptr inbounds %struct.rtl_bb_info, ptr %278, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !639
  %281 = tail call ptr @emit_jump_insn_after(ptr noundef %277, ptr noundef %280) #29
  %282 = tail call ptr @delete_insn(ptr noundef nonnull %258) #29
  br label %327

283:                                              ; preds = %273
  %284 = tail call i32 @condjump_p(ptr noundef nonnull %258) #29
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %318, label %286

286:                                              ; preds = %283
  %287 = tail call i32 @redirect_jump(ptr noundef nonnull %258, ptr noundef null, i32 noundef 0) #29
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = load ptr, ptr %186, align 8, !tbaa !200
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr %290, align 8, !tbaa !634
  br label %294

294:                                              ; preds = %292, %289
  %295 = phi i32 [ %293, %292 ], [ 0, %289 ]
  %296 = icmp ult i32 %216, %295
  br i1 %296, label %252, label %297

297:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %252

298:                                              ; preds = %286
  %299 = getelementptr inbounds %struct.basic_block_def, ptr %235, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !674
  %301 = icmp eq ptr %300, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %298
  %303 = load i32, ptr %300, align 8, !tbaa !634
  %304 = icmp eq i32 %303, 1
  %305 = zext i1 %304 to i8
  br label %306

306:                                              ; preds = %302, %298
  %307 = phi i8 [ %305, %302 ], [ 0, %298 ]
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %327, label %309

309:                                              ; preds = %306
  %310 = load ptr, ptr %186, align 8, !tbaa !200
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr %310, align 8, !tbaa !634
  br label %314

314:                                              ; preds = %312, %309
  %315 = phi i32 [ %313, %312 ], [ 0, %309 ]
  %316 = icmp ult i32 %216, %315
  br i1 %316, label %252, label %317

317:                                              ; preds = %314
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %252

318:                                              ; preds = %283
  %319 = load ptr, ptr %186, align 8, !tbaa !200
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %319, align 8, !tbaa !634
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %322, %321 ], [ 0, %318 ]
  %325 = icmp ult i32 %216, %324
  br i1 %325, label %252, label %326

326:                                              ; preds = %323
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %252

327:                                              ; preds = %306, %276
  %328 = load ptr, ptr @cfun, align 8, !tbaa !200
  %329 = getelementptr inbounds %struct.function, ptr %328, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !504
  %331 = getelementptr inbounds %struct.control_flow_graph, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !632
  tail call void @redirect_edge_succ(ptr noundef nonnull %232, ptr noundef %332) #29
  br label %218

333:                                              ; preds = %231
  %334 = load ptr, ptr %187, align 8, !tbaa !211
  %335 = getelementptr inbounds %struct.rtl_bb_info, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !639
  %337 = tail call ptr @emit_barrier_after(ptr noundef %336) #29
  %338 = tail call ptr @gen_return() #29
  %339 = load ptr, ptr %187, align 8, !tbaa !211
  %340 = getelementptr inbounds %struct.rtl_bb_info, ptr %339, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !639
  %342 = tail call ptr @emit_jump_insn_after(ptr noundef %338, ptr noundef %341) #29
  %343 = load ptr, ptr %187, align 8, !tbaa !211
  %344 = getelementptr inbounds %struct.rtl_bb_info, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !639
  %346 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !674
  %348 = icmp eq ptr %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %333
  %350 = load i32, ptr %347, align 8, !tbaa !634
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %353, label %352

352:                                              ; preds = %349, %333
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 645, ptr noundef nonnull @.str.2) #29
  br label %353

353:                                              ; preds = %352, %349
  %354 = load ptr, ptr %346, align 8, !tbaa !674
  %355 = getelementptr inbounds %struct.VEC_edge_base, ptr %354, i64 0, i32 2, i64 0
  %356 = load ptr, ptr %355, align 8, !tbaa !200
  %357 = getelementptr inbounds %struct.edge_def, ptr %356, i64 0, i32 7
  %358 = load i32, ptr %357, align 8, !tbaa !676
  %359 = and i32 %358, -2
  store i32 %359, ptr %357, align 8, !tbaa !676
  br label %360

360:                                              ; preds = %353, %209, %204, %183
  %361 = phi i1 [ false, %353 ], [ false, %183 ], [ true, %209 ], [ true, %204 ]
  %362 = phi ptr [ %345, %353 ], [ null, %183 ], [ null, %209 ], [ null, %204 ]
  br i1 %361, label %363, label %505

363:                                              ; preds = %360, %142, %134
  %364 = phi ptr [ %362, %360 ], [ null, %142 ], [ null, %134 ]
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !215
  %365 = load ptr, ptr @cfun, align 8, !tbaa !200
  %366 = getelementptr inbounds %struct.function, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !504
  %368 = getelementptr inbounds %struct.control_flow_graph, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !632
  %370 = icmp eq ptr %369, null
  br label %371

371:                                              ; preds = %423, %363
  %372 = phi i32 [ 0, %363 ], [ %424, %423 ]
  br i1 %370, label %373, label %374, !prof !682

373:                                              ; preds = %371
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %374

374:                                              ; preds = %373, %371
  %375 = load ptr, ptr %369, align 8, !tbaa !200
  %376 = icmp eq ptr %375, null
  br i1 %376, label %379, label %377, !prof !682

377:                                              ; preds = %374
  %378 = load i32, ptr %375, align 8, !tbaa !634
  br label %379

379:                                              ; preds = %377, %374
  %380 = phi i32 [ %378, %377 ], [ 0, %374 ]
  %381 = icmp eq i32 %380, %372
  br i1 %381, label %386, label %382, !prof !683

382:                                              ; preds = %379
  %383 = zext i32 %372 to i64
  %384 = getelementptr inbounds %struct.VEC_edge_base, ptr %375, i64 0, i32 2, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !200
  br label %386

386:                                              ; preds = %382, %379
  %387 = phi ptr [ %385, %382 ], [ null, %379 ]
  br i1 %381, label %425, label %388, !prof !683

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct.edge_def, ptr %387, i64 0, i32 7
  %390 = load i32, ptr %389, align 8, !tbaa !676
  %391 = and i32 %390, 1
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %414, !prof !684

393:                                              ; preds = %388
  %394 = load ptr, ptr %387, align 8, !tbaa !637
  %395 = getelementptr inbounds %struct.basic_block_def, ptr %394, i64 0, i32 7
  %396 = load ptr, ptr %395, align 8, !tbaa !211
  %397 = getelementptr inbounds %struct.rtl_bb_info, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !639
  %399 = tail call i32 @eh_returnjump_p(ptr noundef %398) #29
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %414, label %401, !prof !685

401:                                              ; preds = %393
  %402 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 0, i32 1, i32 0, i32 0, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !211
  %404 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 1
  %405 = load ptr, ptr %404, align 8, !tbaa !211
  %406 = tail call ptr @try_split(ptr noundef %405, ptr noundef %398, i32 noundef 1) #29
  %407 = icmp eq ptr %406, %398
  br i1 %407, label %414, label %408

408:                                              ; preds = %401
  %409 = getelementptr inbounds %struct.rtx_def, ptr %403, i64 0, i32 1, i32 0, i32 0, i64 2
  %410 = load ptr, ptr %409, align 8, !tbaa !211
  %411 = getelementptr inbounds %struct.rtx_def, ptr %406, i64 0, i32 1, i32 0, i32 0, i64 2
  %412 = load ptr, ptr %411, align 8, !tbaa !211
  tail call fastcc void @record_insns(ptr noundef %410, ptr noundef %412, ptr noundef nonnull @epilogue_insn_hash)
  %413 = tail call ptr @emit_note_after(i32 noundef 6, ptr noundef %403) #29
  br label %414

414:                                              ; preds = %408, %401, %393, %388
  %415 = load ptr, ptr %369, align 8, !tbaa !200
  %416 = icmp eq ptr %415, null
  br i1 %416, label %419, label %417, !prof !686

417:                                              ; preds = %414
  %418 = load i32, ptr %415, align 8, !tbaa !634
  br label %419

419:                                              ; preds = %417, %414
  %420 = phi i32 [ %418, %417 ], [ 0, %414 ]
  %421 = icmp ult i32 %372, %420
  br i1 %421, label %423, label %422, !prof !687

422:                                              ; preds = %419
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %423

423:                                              ; preds = %422, %419
  %424 = add i32 %372, 1
  br label %371, !llvm.loop !688

425:                                              ; preds = %386
  %426 = load ptr, ptr @cfun, align 8, !tbaa !200
  %427 = getelementptr inbounds %struct.function, ptr %426, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !504
  %429 = getelementptr inbounds %struct.control_flow_graph, ptr %428, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !632
  %431 = icmp eq ptr %430, null
  br label %432

432:                                              ; preds = %461, %425
  %433 = phi i32 [ 0, %425 ], [ %462, %461 ]
  br i1 %431, label %434, label %435, !prof !686

434:                                              ; preds = %432
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %435

435:                                              ; preds = %434, %432
  %436 = load ptr, ptr %430, align 8, !tbaa !200
  %437 = icmp eq ptr %436, null
  br i1 %437, label %440, label %438, !prof !686

438:                                              ; preds = %435
  %439 = load i32, ptr %436, align 8, !tbaa !634
  br label %440

440:                                              ; preds = %438, %435
  %441 = phi i32 [ %439, %438 ], [ 0, %435 ]
  %442 = icmp eq i32 %441, %433
  br i1 %442, label %447, label %443, !prof !686

443:                                              ; preds = %440
  %444 = zext i32 %433 to i64
  %445 = getelementptr inbounds %struct.VEC_edge_base, ptr %436, i64 0, i32 2, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !200
  br label %447

447:                                              ; preds = %443, %440
  %448 = phi ptr [ %446, %443 ], [ null, %440 ]
  br i1 %442, label %463, label %449, !prof !686

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.edge_def, ptr %448, i64 0, i32 7
  %451 = load i32, ptr %450, align 8, !tbaa !676
  %452 = and i32 %451, 1
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %463, !prof !684

454:                                              ; preds = %449
  br i1 %437, label %457, label %455, !prof !689

455:                                              ; preds = %454
  %456 = load i32, ptr %436, align 8, !tbaa !634
  br label %457

457:                                              ; preds = %455, %454
  %458 = phi i32 [ %456, %455 ], [ 0, %454 ]
  %459 = icmp ult i32 %433, %458
  br i1 %459, label %461, label %460, !prof !685

460:                                              ; preds = %457
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %461

461:                                              ; preds = %460, %457
  %462 = add i32 %433, 1
  br label %432, !llvm.loop !690

463:                                              ; preds = %449, %447
  %464 = icmp eq ptr %448, null
  br i1 %464, label %505, label %465, !prof !325

465:                                              ; preds = %463
  tail call void @start_sequence() #29
  %466 = tail call ptr @emit_note(i32 noundef 6) #29
  %467 = tail call ptr @gen_epilogue() #29
  %468 = tail call ptr @emit_jump_insn(ptr noundef %467) #29
  %469 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !200
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %475, !prof !666

471:                                              ; preds = %465
  %472 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !200
  %473 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !200
  %474 = tail call ptr @htab_create_alloc(i64 noundef 17, ptr noundef %472, ptr noundef %473, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %474, ptr @epilogue_insn_hash, align 8, !tbaa !200
  br label %475

475:                                              ; preds = %471, %465
  %476 = phi ptr [ %474, %471 ], [ %469, %465 ]
  %477 = icmp eq ptr %467, null
  br i1 %477, label %488, label %478, !prof !667

478:                                              ; preds = %475, %484
  %479 = phi ptr [ %486, %484 ], [ %467, %475 ]
  %480 = tail call ptr @htab_find_slot(ptr noundef %476, ptr noundef nonnull %479, i32 noundef 1) #29
  %481 = load ptr, ptr %480, align 8, !tbaa !200
  %482 = icmp eq ptr %481, null
  br i1 %482, label %484, label %483, !prof !668

483:                                              ; preds = %478
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4927, ptr noundef nonnull @.str.2) #29
  br label %484

484:                                              ; preds = %483, %478
  store ptr %479, ptr %480, align 8, !tbaa !200
  %485 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 0, i32 1, i32 0, i32 0, i64 2
  %486 = load ptr, ptr %485, align 8, !tbaa !211
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %478, !prof !669, !llvm.loop !670

488:                                              ; preds = %484, %475
  %489 = load i32, ptr @epilogue_locator, align 4, !tbaa !215
  %490 = icmp eq ptr %467, null
  br i1 %490, label %503, label %491, !prof !380

491:                                              ; preds = %488, %499
  %492 = phi ptr [ %501, %499 ], [ %467, %488 ]
  %493 = load i32, ptr %492, align 8
  %494 = and i32 %493, 65535
  %495 = add nsw i32 %494, -7
  %496 = icmp ult i32 %495, 4
  br i1 %496, label %497, label %499, !prof !691

497:                                              ; preds = %491
  %498 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1, i32 0, i32 2
  store i32 %489, ptr %498, align 8, !tbaa !211
  br label %499

499:                                              ; preds = %497, %491
  %500 = getelementptr inbounds %struct.rtx_def, ptr %492, i64 0, i32 1, i32 0, i32 0, i64 2
  %501 = load ptr, ptr %500, align 8, !tbaa !211
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %491, !prof !692, !llvm.loop !673

503:                                              ; preds = %499, %488
  %504 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  tail call void @insert_insn_on_edge(ptr noundef %504, ptr noundef nonnull %448) #29
  br label %505

505:                                              ; preds = %503, %463, %360, %132
  %506 = phi ptr [ null, %132 ], [ %362, %360 ], [ %364, %463 ], [ %466, %503 ]
  tail call void @default_rtl_profile() #29
  tail call void @commit_edge_insertions() #29
  %507 = load ptr, ptr @cfun, align 8, !tbaa !200
  %508 = getelementptr inbounds %struct.function, ptr %507, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !504
  %510 = getelementptr inbounds %struct.control_flow_graph, ptr %509, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !632
  %512 = icmp eq ptr %511, null
  br label %513

513:                                              ; preds = %555, %505
  %514 = phi i32 [ 0, %505 ], [ %556, %555 ]
  br i1 %512, label %515, label %516, !prof !682

515:                                              ; preds = %513
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %516

516:                                              ; preds = %515, %513
  %517 = load ptr, ptr %511, align 8, !tbaa !200
  %518 = icmp eq ptr %517, null
  br i1 %518, label %521, label %519, !prof !682

519:                                              ; preds = %516
  %520 = load i32, ptr %517, align 8, !tbaa !634
  br label %521

521:                                              ; preds = %519, %516
  %522 = phi i32 [ %520, %519 ], [ 0, %516 ]
  %523 = icmp eq i32 %522, %514
  br i1 %523, label %528, label %524, !prof !683

524:                                              ; preds = %521
  %525 = zext i32 %514 to i64
  %526 = getelementptr inbounds %struct.VEC_edge_base, ptr %517, i64 0, i32 2, i64 %525
  %527 = load ptr, ptr %526, align 8, !tbaa !200
  br label %528

528:                                              ; preds = %524, %521
  %529 = phi ptr [ %527, %524 ], [ null, %521 ]
  br i1 %523, label %557, label %530, !prof !683

530:                                              ; preds = %528
  %531 = getelementptr inbounds %struct.edge_def, ptr %529, i64 0, i32 7
  %532 = load i32, ptr %531, align 8, !tbaa !676
  %533 = and i32 %532, 1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %546, label %535, !prof !687

535:                                              ; preds = %530
  %536 = load ptr, ptr %529, align 8, !tbaa !637
  %537 = getelementptr inbounds %struct.basic_block_def, ptr %536, i64 0, i32 7
  %538 = load ptr, ptr %537, align 8, !tbaa !211
  %539 = getelementptr inbounds %struct.rtl_bb_info, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !639
  %541 = tail call i32 @returnjump_p(ptr noundef %540) #29
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %546, label %543

543:                                              ; preds = %535
  %544 = load i32, ptr %531, align 8, !tbaa !676
  %545 = and i32 %544, -2
  store i32 %545, ptr %531, align 8, !tbaa !676
  br label %546

546:                                              ; preds = %543, %535, %530
  %547 = load ptr, ptr %511, align 8, !tbaa !200
  %548 = icmp eq ptr %547, null
  br i1 %548, label %551, label %549, !prof !686

549:                                              ; preds = %546
  %550 = load i32, ptr %547, align 8, !tbaa !634
  br label %551

551:                                              ; preds = %549, %546
  %552 = phi i32 [ %550, %549 ], [ 0, %546 ]
  %553 = icmp ult i32 %514, %552
  br i1 %553, label %555, label %554, !prof !687

554:                                              ; preds = %551
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %555

555:                                              ; preds = %554, %551
  %556 = add i32 %514, 1
  br label %513, !llvm.loop !693

557:                                              ; preds = %528
  %558 = load ptr, ptr @cfun, align 8, !tbaa !200
  %559 = getelementptr inbounds %struct.function, ptr %558, i64 0, i32 1
  %560 = load ptr, ptr %559, align 8, !tbaa !504
  %561 = getelementptr inbounds %struct.control_flow_graph, ptr %560, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !632
  %563 = icmp eq ptr %562, null
  br label %564

564:                                              ; preds = %627, %557
  %565 = phi i32 [ 0, %557 ], [ %628, %627 ]
  br i1 %563, label %566, label %567, !prof !682

566:                                              ; preds = %564
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #29
  br label %567

567:                                              ; preds = %566, %564
  %568 = load ptr, ptr %562, align 8, !tbaa !200
  %569 = icmp eq ptr %568, null
  br i1 %569, label %572, label %570, !prof !682

570:                                              ; preds = %567
  %571 = load i32, ptr %568, align 8, !tbaa !634
  br label %572

572:                                              ; preds = %570, %567
  %573 = phi i32 [ %571, %570 ], [ 0, %567 ]
  %574 = icmp eq i32 %573, %565
  br i1 %574, label %579, label %575, !prof !683

575:                                              ; preds = %572
  %576 = zext i32 %565 to i64
  %577 = getelementptr inbounds %struct.VEC_edge_base, ptr %568, i64 0, i32 2, i64 %576
  %578 = load ptr, ptr %577, align 8, !tbaa !200
  br label %579

579:                                              ; preds = %575, %572
  %580 = phi ptr [ %578, %575 ], [ null, %572 ]
  %581 = icmp eq ptr %580, null
  br i1 %581, label %629, label %582, !prof !683

582:                                              ; preds = %579
  %583 = load ptr, ptr %580, align 8, !tbaa !637
  %584 = getelementptr inbounds %struct.basic_block_def, ptr %583, i64 0, i32 7
  %585 = load ptr, ptr %584, align 8, !tbaa !211
  %586 = getelementptr inbounds %struct.rtl_bb_info, ptr %585, i64 0, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !639
  %588 = load i32, ptr %587, align 8
  %589 = and i32 %588, 16842751
  %590 = icmp eq i32 %589, 16777226
  br i1 %590, label %598, label %591, !prof !684

591:                                              ; preds = %582
  br i1 %569, label %594, label %592, !prof !325

592:                                              ; preds = %591
  %593 = load i32, ptr %568, align 8, !tbaa !634
  br label %594

594:                                              ; preds = %592, %591
  %595 = phi i32 [ %593, %592 ], [ 0, %591 ]
  %596 = icmp ult i32 %565, %595
  br i1 %596, label %627, label %597, !prof !363, !llvm.loop !694

597:                                              ; preds = %594
  br label %626, !llvm.loop !694

598:                                              ; preds = %582
  tail call void @start_sequence() #29
  %599 = tail call ptr @emit_note(i32 noundef 6) #29
  %600 = tail call ptr @gen_sibcall_epilogue() #29
  %601 = tail call ptr @emit_insn(ptr noundef %600) #29
  %602 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  tail call fastcc void @record_insns(ptr noundef %602, ptr noundef null, ptr noundef nonnull @epilogue_insn_hash)
  %603 = load i32, ptr @epilogue_locator, align 4, !tbaa !215
  %604 = icmp eq ptr %602, null
  br i1 %604, label %617, label %605, !prof !380

605:                                              ; preds = %598, %613
  %606 = phi ptr [ %615, %613 ], [ %602, %598 ]
  %607 = load i32, ptr %606, align 8
  %608 = and i32 %607, 65535
  %609 = add nsw i32 %608, -7
  %610 = icmp ult i32 %609, 4
  br i1 %610, label %611, label %613, !prof !666

611:                                              ; preds = %605
  %612 = getelementptr inbounds %struct.rtx_def, ptr %606, i64 0, i32 1, i32 0, i32 2
  store i32 %603, ptr %612, align 8, !tbaa !211
  br label %613

613:                                              ; preds = %611, %605
  %614 = getelementptr inbounds %struct.rtx_def, ptr %606, i64 0, i32 1, i32 0, i32 0, i64 2
  %615 = load ptr, ptr %614, align 8, !tbaa !211
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %605, !prof !695, !llvm.loop !673

617:                                              ; preds = %613, %598
  %618 = tail call ptr @emit_insn_before(ptr noundef %602, ptr noundef nonnull %587) #29
  %619 = load ptr, ptr %562, align 8, !tbaa !200
  %620 = icmp eq ptr %619, null
  br i1 %620, label %623, label %621, !prof !689

621:                                              ; preds = %617
  %622 = load i32, ptr %619, align 8, !tbaa !634
  br label %623

623:                                              ; preds = %621, %617
  %624 = phi i32 [ %622, %621 ], [ 0, %617 ]
  %625 = icmp ult i32 %565, %624
  br i1 %625, label %627, label %626, !prof !685

626:                                              ; preds = %623, %597
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #29
  br label %627

627:                                              ; preds = %626, %623, %594
  %628 = add i32 %565, 1
  br label %564

629:                                              ; preds = %579
  %630 = icmp eq ptr %506, null
  br i1 %630, label %647, label %631, !prof !325

631:                                              ; preds = %629, %645
  %632 = phi ptr [ %634, %645 ], [ %506, %629 ]
  %633 = getelementptr inbounds %struct.rtx_def, ptr %632, i64 0, i32 1, i32 0, i32 0, i64 2
  %634 = load ptr, ptr %633, align 8, !tbaa !211
  %635 = load i32, ptr %632, align 8
  %636 = and i32 %635, 65535
  %637 = icmp eq i32 %636, 13
  br i1 %637, label %638, label %645, !prof !696

638:                                              ; preds = %631
  %639 = getelementptr inbounds %struct.rtx_def, ptr %632, i64 1
  %640 = load i32, ptr %639, align 8, !tbaa !211
  %641 = icmp eq i32 %640, 4
  br i1 %641, label %642, label %645, !prof !697

642:                                              ; preds = %638
  %643 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 0, i32 1, i32 0, i32 0, i64 1
  %644 = load ptr, ptr %643, align 8, !tbaa !211
  tail call void @reorder_insns(ptr noundef nonnull %632, ptr noundef nonnull %632, ptr noundef %644) #29
  br label %645

645:                                              ; preds = %642, %638, %631
  %646 = icmp eq ptr %634, null
  br i1 %646, label %647, label %631, !prof !698, !llvm.loop !699

647:                                              ; preds = %645, %629
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !215
  tail call void @df_update_entry_exit_and_calls() #29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_match_asm_constraints() #10 !prof !255 !PGOFuncName !700 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 32), align 4, !tbaa !701
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %70, label %3, !prof !363

3:                                                ; preds = %0
  %4 = tail call i32 @df_set_flags(i32 noundef 32) #29
  %5 = load ptr, ptr @cfun, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !504
  %8 = load ptr, ptr %7, align 8, !tbaa !665
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !702
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !632
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %70, label %14

14:                                               ; preds = %3, %61
  %15 = phi ptr [ %63, %61 ], [ %10, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = load ptr, ptr %17, align 8, !tbaa !211
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %14, %57
  %21 = phi ptr [ %59, %57 ], [ %18, %14 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !211
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !639
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %61, label %28

28:                                               ; preds = %20
  %29 = load i32, ptr %21, align 8
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -7
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %57 [
    i16 15, label %38
    i16 23, label %43
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !211
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %40, align 8, !tbaa !579
  br label %43

43:                                               ; preds = %33, %38
  %44 = phi ptr [ %41, %38 ], [ %34, %33 ]
  %45 = phi i32 [ %42, %38 ], [ 1, %33 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !200
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 23
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !211
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 17
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  tail call fastcc void @match_asm_constraints_1(ptr noundef nonnull %21, ptr noundef nonnull %44, i32 noundef %45)
  br label %57

57:                                               ; preds = %43, %28, %33, %50, %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !211
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %20, !llvm.loop !703

61:                                               ; preds = %57, %20, %14
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !702
  %64 = load ptr, ptr @cfun, align 8, !tbaa !200
  %65 = getelementptr inbounds %struct.function, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !504
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !632
  %69 = icmp eq ptr %63, %68
  br i1 %69, label %70, label %14, !llvm.loop !704

70:                                               ; preds = %61, %3, %0
  %71 = phi i32 [ 0, %0 ], [ 131072, %3 ], [ 131072, %61 ]
  ret i32 %71
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #9 !prof !199 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !321
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %8) #29
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !323
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %1, %11, %15, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_temp_slot(ptr noundef %0) local_unnamed_addr #9 !prof !199 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !300
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !301
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !298
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #29
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !299
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #29
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P23temp_slot_address_entry4htab(ptr noundef %0) #9 !prof !199 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !705
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !707
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !705
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_temp_slot_address_entry(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !707
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !708

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !705
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #29
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #9 !prof !199 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23temp_slot_address_entry, i32 noundef 63) #29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !321
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %6) #29
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !323
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %9, %13, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_23temp_slot_address_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !199 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #29
  %8 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #29
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_temp_slot(ptr noundef %0) local_unnamed_addr #9 !prof !199 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9temp_slot, i32 noundef 124) #29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !300
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !298
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #29
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !299
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #29
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9temp_slot(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !199 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #29
  %7 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #29
  %8 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #29
  %9 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #29
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P23temp_slot_address_entry4htab(ptr noundef %0) #9 !prof !199 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 199) #29
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !705
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !707
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !705
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !200
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_temp_slot_address_entry(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !707
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !709

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !705
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 217) #29
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P23temp_slot_address_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !199 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !705
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !707
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !705
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #29
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !707
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !710

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #29
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

declare i32 @ggc_marked_p(ptr noundef) #3

declare void @gt_ggc_m_P7rtx_def4htab(ptr noundef) #3

declare void @gt_pch_n_P7rtx_def4htab(ptr noundef) #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_local_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @remove_unused_temp_slot_addresses_1(ptr nocapture noundef %0, ptr nocapture readnone %1) #27 !prof !199 {
  %3 = load ptr, ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !323
  %6 = getelementptr inbounds %struct.temp_slot, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 4, !tbaa !304
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !200
  br label %10

10:                                               ; preds = %9, %2
  ret i32 1
}

declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #3

declare void @init_recog() local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare i32 @check_asm_operands(ptr noundef) local_unnamed_addr #3

declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noalias noundef ptr @instantiate_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #9 !prof !199 {
  %4 = load ptr, ptr %0, align 8, !tbaa !200
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !215
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !215
  %12 = load i64, ptr %4, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !215
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %13, i64 11
  %19 = load i8, ptr %18, align 1, !tbaa !211
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !211
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @instantiate_decl_rtl(ptr noundef nonnull %23)
  br label %26

26:                                               ; preds = %3, %11, %17, %21, %25
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal fastcc void @instantiate_decls_1(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !490 !PGOFuncName !711 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !712

6:                                                ; preds = %1, %30
  %7 = phi ptr [ %32, %30 ], [ %4, %1 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !211
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13, !prof !325

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !325

17:                                               ; preds = %13
  call void @instantiate_decl_rtl(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13, %6
  %19 = load i64, ptr %7, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %30, !prof !363

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 67108864
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27, !prof !363

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %28 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %7) #29
  store ptr %28, ptr %2, align 8, !tbaa !200
  %29 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  br label %30

30:                                               ; preds = %18, %22, %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !211
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %6, !prof !363, !llvm.loop !713

34:                                               ; preds = %30, %1
  %35 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !211
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38, !prof !714

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  call fastcc void @instantiate_decls_1(ptr noundef nonnull %39)
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !211
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %38, !prof !715, !llvm.loop !716

43:                                               ; preds = %38, %34
  ret void
}

declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gimplify_type_sizes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !199 {
  %3 = tail call i32 @max_reg_num() #29
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !200
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !717
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @cfun, align 8, !tbaa !200
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !504
  %15 = load ptr, ptr %14, align 8, !tbaa !665
  %16 = tail call ptr @df_get_live_out(ptr noundef %15) #29
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %16, i32 noundef %1) #29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11, %5
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %1) #29
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %11, %19, %2
  %24 = phi i8 [ 0, %2 ], [ 0, %11 ], [ %22, %19 ]
  ret i8 %24
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @all_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #20 !prof !719 !PGOFuncName !720 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4, !prof !721

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi i32 [ 0, %4 ], [ %22, %14 ]
  %8 = phi ptr [ %0, %4 ], [ %24, %14 ]
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -4194305
  store i64 %10, ptr %8, align 8
  br i1 %5, label %14, label %11, !prof !722

11:                                               ; preds = %6
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  store ptr %8, ptr %13, align 8, !tbaa !200
  br label %14

14:                                               ; preds = %11, %6
  %15 = add nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %1, i64 %18
  %20 = select i1 %5, ptr null, ptr %19, !prof !722
  %21 = tail call fastcc i32 @all_blocks(ptr noundef %17, ptr noundef %20)
  %22 = add nsw i32 %21, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !prof !723, !llvm.loop !724

26:                                               ; preds = %14, %2
  %27 = phi i32 [ 0, %2 ], [ %22, %14 ]
  ret i32 %27
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @cl_optimization_restore(ptr noundef) local_unnamed_addr #3

declare void @init_emit() local_unnamed_addr #3

declare void @init_varasm_status() local_unnamed_addr #3

declare void @init_expr() local_unnamed_addr #3

declare void @default_rtl_profile() local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_return_pops_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_reg_attrs_for_parm(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_group_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @move_block_from_reg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_group_move_into_temps(ptr noundef) local_unnamed_addr #3

declare void @push_to_sequence2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @change_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_user_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @assign_parm_remove_parallels(ptr nocapture noundef %0) unnamed_addr #10 !prof !199 !PGOFuncName !725 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !558
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %22, !prof !325

7:                                                ; preds = %1
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %9) #29
  %13 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !469
  %15 = load i32, ptr %3, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !211
  %21 = zext i8 %20 to i32
  tail call void @emit_group_store(ptr noundef %12, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %21) #29
  br label %22

22:                                               ; preds = %11, %7, %1
  %23 = phi ptr [ %12, %11 ], [ %3, %7 ], [ %3, %1 ]
  store ptr %23, ptr %2, align 8, !tbaa !558
  ret void
}

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @emit_use(ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #3

declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #3

declare ptr @gen_prologue() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @record_insns(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !726 !PGOFuncName !727 {
  %4 = load ptr, ptr %2, align 8, !tbaa !200
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !666

6:                                                ; preds = %3
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !200
  %8 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !200
  %9 = tail call ptr @htab_create_alloc(i64 noundef 17, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #29
  store ptr %9, ptr %2, align 8, !tbaa !200
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %12 = icmp eq ptr %0, %1
  br i1 %12, label %23, label %13, !prof !667

13:                                               ; preds = %10, %19
  %14 = phi ptr [ %21, %19 ], [ %0, %10 ]
  %15 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %14, i32 noundef 1) #29
  %16 = load ptr, ptr %15, align 8, !tbaa !200
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !668

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4927, ptr noundef nonnull @.str.2) #29
  br label %19

19:                                               ; preds = %13, %18
  store ptr %14, ptr %15, align 8, !tbaa !200
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !211
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %13, !prof !669, !llvm.loop !670

23:                                               ; preds = %19, %10
  ret void
}

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_can_use_return_insn_p() local_unnamed_addr #3

declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #3

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

declare i32 @condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare i32 @eh_returnjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_epilogue() local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @gen_sibcall_epilogue() local_unnamed_addr #3

declare void @df_update_entry_exit_and_calls() local_unnamed_addr #3

declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_return() local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @match_asm_constraints_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !199 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !211
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = load i32, ptr %9, align 8, !tbaa !579
  %11 = sext i32 %2 to i64
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %12, i8 0, i64 %11, i1 false)
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %156

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %16 = zext nneg i32 %10 to i64
  %17 = zext nneg i32 %10 to i64
  br label %18

18:                                               ; preds = %14, %148
  %19 = phi i64 [ 0, %14 ], [ %150, %148 ]
  %20 = phi i8 [ 0, %14 ], [ %149, %148 ]
  %21 = load ptr, ptr %15, align 8, !tbaa !211
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !200
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %26 = load i8, ptr %25, align 1, !tbaa !211
  %27 = icmp eq i8 %26, 37
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = call i64 @strtoul(ptr noundef nonnull %29, ptr noundef nonnull %4, i32 noundef 10)
  %31 = load ptr, ptr %4, align 8, !tbaa !200
  %32 = icmp eq ptr %31, %29
  br i1 %32, label %148, label %33

33:                                               ; preds = %18
  %34 = trunc i64 %30 to i32
  %35 = icmp slt i32 %34, %2
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5680, ptr noundef nonnull @.str.2) #29
  br label %37

37:                                               ; preds = %33, %36
  %38 = shl i64 %30, 32
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !200
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !211
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %19
  %45 = load ptr, ptr %44, align 8, !tbaa !200
  %46 = load i32, ptr %43, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 37
  br i1 %48, label %49, label %148

49:                                               ; preds = %37
  %50 = tail call i32 @rtx_equal_p(ptr noundef nonnull %43, ptr noundef %45) #29
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %148

52:                                               ; preds = %49
  %53 = load i32, ptr %45, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %43, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %148

62:                                               ; preds = %52, %57
  br label %63

63:                                               ; preds = %62, %69
  %64 = phi i64 [ 0, %62 ], [ %70, %69 ]
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !200
  %67 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %43, ptr noundef %66) #29
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, %17
  br i1 %71, label %74, label %63, !llvm.loop !728

72:                                               ; preds = %63
  %73 = trunc i64 %64 to i32
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi i32 [ %73, %72 ], [ %10, %69 ]
  %76 = icmp eq i32 %75, %10
  br i1 %76, label %77, label %148

77:                                               ; preds = %74
  %78 = icmp eq i64 %19, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %77
  %80 = icmp sgt i32 %2, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %79
  %82 = zext nneg i32 %2 to i64
  br label %83

83:                                               ; preds = %81, %94
  %84 = phi i64 [ 0, %81 ], [ %95, %94 ]
  %85 = getelementptr inbounds i8, ptr %12, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !211
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds ptr, ptr %1, i64 %84
  %90 = load ptr, ptr %89, align 8, !tbaa !200
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !211
  %93 = icmp eq ptr %45, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %83, %88
  %95 = add nuw nsw i64 %84, 1
  %96 = icmp eq i64 %95, %82
  br i1 %96, label %99, label %83, !llvm.loop !729

97:                                               ; preds = %88
  %98 = trunc i64 %84 to i32
  br label %99

99:                                               ; preds = %97, %94, %79
  %100 = phi i32 [ 0, %79 ], [ %98, %97 ], [ %2, %94 ]
  %101 = icmp eq i32 %100, %2
  br i1 %101, label %102, label %148

102:                                              ; preds = %99, %77
  %103 = icmp sgt i32 %2, 0
  %104 = zext nneg i32 %10 to i64
  %105 = getelementptr inbounds i8, ptr %12, i64 %39
  store i8 1, ptr %105, align 1, !tbaa !211
  tail call void @start_sequence() #29
  %106 = tail call ptr @emit_move_insn(ptr noundef nonnull %43, ptr noundef nonnull %45) #29
  %107 = tail call ptr @get_insns() #29
  tail call void @end_sequence() #29
  %108 = tail call ptr @emit_insn_before(ptr noundef %107, ptr noundef %0) #29
  br i1 %103, label %109, label %111

109:                                              ; preds = %102
  %110 = zext nneg i32 %2 to i64
  br label %112

111:                                              ; preds = %133, %102
  br label %136

112:                                              ; preds = %109, %133
  %113 = phi i64 [ 0, %109 ], [ %134, %133 ]
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !200
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !211
  %118 = tail call i32 @rtx_equal_p(ptr noundef %117, ptr noundef nonnull %45) #29
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  %121 = load ptr, ptr %114, align 8, !tbaa !200
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !211
  %124 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %123) #29
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %114, align 8, !tbaa !200
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !211
  %130 = tail call ptr @replace_rtx(ptr noundef %129, ptr noundef nonnull %45, ptr noundef nonnull %43) #29
  %131 = load ptr, ptr %114, align 8, !tbaa !200
  %132 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !211
  br label %133

133:                                              ; preds = %112, %120, %126
  %134 = add nuw nsw i64 %113, 1
  %135 = icmp eq i64 %134, %110
  br i1 %135, label %111, label %112, !llvm.loop !730

136:                                              ; preds = %111, %145
  %137 = phi i64 [ 0, %111 ], [ %146, %145 ]
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !200
  %140 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %45, ptr noundef %139) #29
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %138, align 8, !tbaa !200
  %144 = tail call ptr @replace_rtx(ptr noundef %143, ptr noundef nonnull %45, ptr noundef nonnull %43) #29
  store ptr %144, ptr %138, align 8, !tbaa !200
  br label %145

145:                                              ; preds = %136, %142
  %146 = add nuw nsw i64 %137, 1
  %147 = icmp eq i64 %146, %104
  br i1 %147, label %148, label %136, !llvm.loop !731

148:                                              ; preds = %145, %99, %74, %37, %49, %57, %18
  %149 = phi i8 [ %20, %18 ], [ %20, %57 ], [ %20, %49 ], [ %20, %37 ], [ %20, %74 ], [ %20, %99 ], [ 1, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %150 = add nuw nsw i64 %19, 1
  %151 = icmp eq i64 %150, %16
  br i1 %151, label %152, label %18, !llvm.loop !732

152:                                              ; preds = %148
  %153 = icmp eq i8 %149, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %152
  %155 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #29
  br label %156

156:                                              ; preds = %3, %154, %152
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!198}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!35 = !{ptr @allocate_struct_function, ptr @ggc_alloc_cleared_stat, i64 658}
!36 = !{ptr @allocate_struct_function, ptr @init_eh_for_function, i64 658}
!37 = !{ptr @allocate_struct_function, ptr @ix86_call_abi_override, i64 658}
!38 = !{ptr @allocate_struct_function, ptr @aggregate_value_p, i64 656}
!39 = !{ptr @allocate_struct_function, ptr @tree_last, i64 656}
!40 = !{ptr @free_after_compilation, ptr @free, i64 40}
!41 = !{ptr @free_after_compilation, ptr @insn_locators_free, i64 40}
!42 = !{ptr @assign_stack_local_1, ptr @get_stack_local_alignment, i64 12}
!43 = !{ptr @assign_stack_local_1, ptr @trunc_int_for_mode, i64 20}
!44 = !{ptr @assign_stack_local_1, ptr @plus_constant, i64 20}
!45 = !{ptr @assign_stack_local_1, ptr @gen_rtx_MEM, i64 20}
!46 = !{ptr @assign_stack_local_1, ptr @set_mem_align, i64 20}
!47 = !{ptr @assign_stack_local_1, ptr @gen_rtx_fmt_ee_stat, i64 20}
!48 = !{ptr @get_stack_local_alignment, ptr @get_mode_alignment, i64 12}
!49 = !{ptr @get_stack_local_alignment, ptr @ix86_local_alignment, i64 12}
!50 = !{ptr @assign_stack_local, ptr @assign_stack_local_1, i64 16}
!51 = !{ptr @assign_temp, ptr @gen_reg_rtx, i64 38}
!52 = !{ptr @update_temp_slot_address, ptr @rtx_equal_p, i64 180907}
!53 = !{ptr @update_temp_slot_address, ptr @find_temp_slot_from_address, i64 123277}
!54 = !{ptr @find_temp_slot_from_address, ptr @hash_rtx, i64 121566}
!55 = !{ptr @find_temp_slot_from_address, ptr @htab_find_with_hash, i64 121566}
!56 = !{ptr @find_temp_slot_from_address, ptr @find_temp_slot_from_address, i64 12716}
!57 = !{ptr @preserve_temp_slots, ptr @vec_gc_p_reserve_exact, i64 20}
!58 = !{ptr @free_temp_slots, ptr @vec_gc_p_reserve_exact, i64 30}
!59 = !{ptr @pop_temp_slots, ptr @vec_gc_p_reserve_exact, i64 20}
!60 = !{ptr @init_temp_slots, ptr @htab_empty, i64 38}
!61 = !{ptr @instantiate_decl_rtl, ptr @for_each_rtx, i64 38}
!62 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @plus_constant, i64 81781}
!63 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @simplify_gen_binary, i64 12710}
!64 = !{ptr @instantiate_virtual_regs, ptr @ix86_function_type_abi, i64 38}
!65 = !{ptr @instantiate_virtual_regs, ptr @ix86_reg_parm_stack_space, i64 38}
!66 = !{ptr @instantiate_virtual_regs, ptr @init_recog, i64 38}
!67 = !{ptr @instantiate_virtual_regs, ptr @get_insns, i64 81744}
!68 = !{ptr @instantiate_virtual_regs, ptr @single_set_2, i64 21923}
!69 = !{ptr @instantiate_virtual_regs, ptr @extract_insn, i64 768207}
!70 = !{ptr @instantiate_virtual_regs, ptr @for_each_rtx, i64 996747}
!71 = !{ptr @instantiate_virtual_regs, ptr @start_sequence, i64 81706}
!72 = !{ptr @instantiate_virtual_regs, ptr @replace_equiv_address, i64 81706}
!73 = !{ptr @instantiate_virtual_regs, ptr @end_sequence, i64 81706}
!74 = !{ptr @instantiate_virtual_regs, ptr @asm_noperands, i64 768207}
!75 = !{ptr @instantiate_virtual_regs, ptr @recog, i64 81706}
!76 = !{ptr @instantiate_virtual_regs, ptr @instantiate_decl_rtl, i64 77}
!77 = !{ptr @instantiate_virtual_regs, ptr @instantiate_decls_1, i64 38}
!78 = !{ptr @instantiate_virtual_regs, ptr @ggc_free, i64 1}
!79 = !{ptr @aggregate_value_p, ptr @get_callee_fndecl, i64 200777}
!80 = !{ptr @aggregate_value_p, ptr @hard_function_value, i64 445404}
!81 = !{ptr @gimplify_parameters, ptr @init_cumulative_args, i64 40}
!82 = !{ptr @gimplify_parameters, ptr @ix86_reg_parm_stack_space, i64 40}
!83 = !{ptr @gimplify_parameters, ptr @assign_parms_augmented_arg_list, i64 40}
!84 = !{ptr @gimplify_parameters, ptr @assign_parm_find_data_types, i64 40}
!85 = !{ptr @gimplify_parameters, ptr @function_arg_advance, i64 40}
!86 = !{ptr @gimplify_parameters, ptr @walk_tree_without_duplicates_1, i64 40}
!87 = !{ptr @gimplify_parameters, ptr @free, i64 40}
!88 = !{ptr @assign_parms_augmented_arg_list, ptr @vec_heap_p_reserve, i64 78}
!89 = !{ptr @assign_parms_augmented_arg_list, ptr @aggregate_value_p, i64 78}
!90 = !{ptr @assign_parm_find_data_types, ptr @promote_function_mode, i64 78}
!91 = !{ptr @locate_and_pad_parm, ptr @ix86_reg_parm_stack_space, i64 81706}
!92 = !{ptr @locate_and_pad_parm, ptr @size_in_bytes, i64 81706}
!93 = !{ptr @locate_and_pad_parm, ptr @ix86_function_arg_boundary, i64 81706}
!94 = !{ptr @locate_and_pad_parm, ptr @size_int_kind, i64 81706}
!95 = !{ptr @locate_and_pad_parm, ptr @host_integerp, i64 163412}
!96 = !{ptr @locate_and_pad_parm, ptr @tree_low_cst, i64 163412}
!97 = !{ptr @clear_block_marks, ptr @clear_block_marks, i64 40}
!98 = !{ptr @number_blocks, ptr @all_blocks, i64 82}
!99 = !{ptr @number_blocks, ptr @xmalloc, i64 41}
!100 = !{ptr @number_blocks, ptr @free, i64 41}
!101 = !{ptr @push_struct_function, ptr @vec_heap_p_reserve, i64 1}
!102 = !{ptr @push_struct_function, ptr @allocate_struct_function, i64 3}
!103 = !{ptr @init_dummy_function_start, ptr @push_struct_function, i64 2}
!104 = !{ptr @init_dummy_function_start, ptr @prepare_function_start, i64 2}
!105 = !{ptr @prepare_function_start, ptr @htab_create_alloc, i64 1}
!106 = !{ptr @prepare_function_start, ptr @htab_empty, i64 39}
!107 = !{ptr @prepare_function_start, ptr @init_emit, i64 40}
!108 = !{ptr @prepare_function_start, ptr @init_varasm_status, i64 40}
!109 = !{ptr @prepare_function_start, ptr @init_expr, i64 40}
!110 = !{ptr @prepare_function_start, ptr @default_rtl_profile, i64 40}
!111 = !{ptr @init_function_start, ptr @prepare_function_start, i64 38}
!112 = !{ptr @expand_function_start, ptr @init_recog_no_volatile, i64 38}
!113 = !{ptr @expand_function_start, ptr @gen_label_rtx, i64 38}
!114 = !{ptr @expand_function_start, ptr @aggregate_value_p, i64 38}
!115 = !{ptr @expand_function_start, ptr @hard_function_value, i64 38}
!116 = !{ptr @expand_function_start, ptr @gen_reg_rtx, i64 76}
!117 = !{ptr @expand_function_start, ptr @set_decl_rtl, i64 76}
!118 = !{ptr @expand_function_start, ptr @init_cumulative_args, i64 38}
!119 = !{ptr @expand_function_start, ptr @ix86_reg_parm_stack_space, i64 76}
!120 = !{ptr @expand_function_start, ptr @assign_parms_augmented_arg_list, i64 38}
!121 = !{ptr @expand_function_start, ptr @assign_parm_find_data_types, i64 38}
!122 = !{ptr @expand_function_start, ptr @ix86_function_arg_boundary, i64 38}
!123 = !{ptr @expand_function_start, ptr @ix86_minimum_alignment, i64 38}
!124 = !{ptr @expand_function_start, ptr @function_arg, i64 38}
!125 = !{ptr @expand_function_start, ptr @locate_and_pad_parm, i64 38}
!126 = !{ptr @expand_function_start, ptr @gen_rtx_CONST_INT, i64 76}
!127 = !{ptr @expand_function_start, ptr @gen_rtx_MEM, i64 38}
!128 = !{ptr @expand_function_start, ptr @set_mem_attributes, i64 38}
!129 = !{ptr @expand_function_start, ptr @set_mem_align, i64 38}
!130 = !{ptr @expand_function_start, ptr @set_decl_incoming_rtl, i64 38}
!131 = !{ptr @expand_function_start, ptr @function_arg_advance, i64 38}
!132 = !{ptr @expand_function_start, ptr @promote_function_mode, i64 38}
!133 = !{ptr @expand_function_start, ptr @mark_user_reg, i64 38}
!134 = !{ptr @expand_function_start, ptr @validize_mem, i64 38}
!135 = !{ptr @expand_function_start, ptr @emit_move_insn, i64 38}
!136 = !{ptr @expand_function_start, ptr @reg_mentioned_p, i64 38}
!137 = !{ptr @expand_function_start, ptr @get_last_insn, i64 114}
!138 = !{ptr @expand_function_start, ptr @set_unique_reg_note, i64 38}
!139 = !{ptr @expand_function_start, ptr @mark_reg_pointer, i64 38}
!140 = !{ptr @expand_function_start, ptr @free, i64 38}
!141 = !{ptr @expand_function_start, ptr @emit_insn, i64 38}
!142 = !{ptr @expand_function_start, ptr @get_mode_alignment, i64 38}
!143 = !{ptr @expand_function_start, ptr @ix86_return_pops_args, i64 38}
!144 = !{ptr @expand_function_start, ptr @emit_note, i64 38}
!145 = !{ptr @expand_function_start, ptr @force_next_line_note, i64 38}
!146 = !{ptr @expand_dummy_function_end, ptr @in_sequence_p, i64 2}
!147 = !{ptr @expand_dummy_function_end, ptr @free_after_compilation, i64 2}
!148 = !{ptr @expand_dummy_function_end, ptr @invoke_set_current_function_hook, i64 2}
!149 = !{ptr @clobber_return_register, ptr @emit_clobber, i64 76}
!150 = !{ptr @expand_function_end, ptr @in_sequence_p, i64 38}
!151 = !{ptr @expand_function_end, ptr @clear_pending_stack_adjust, i64 38}
!152 = !{ptr @expand_function_end, ptr @do_pending_stack_adjust, i64 38}
!153 = !{ptr @expand_function_end, ptr @force_next_line_note, i64 38}
!154 = !{ptr @expand_function_end, ptr @set_curr_insn_source_location, i64 38}
!155 = !{ptr @expand_function_end, ptr @get_last_insn, i64 38}
!156 = !{ptr @expand_function_end, ptr @emit_label, i64 38}
!157 = !{ptr @expand_function_end, ptr @expand_eh_return, i64 38}
!158 = !{ptr @expand_function_end, ptr @emit_move_insn, i64 38}
!159 = !{ptr @expand_function_end, ptr @start_sequence, i64 38}
!160 = !{ptr @expand_function_end, ptr @clobber_return_register, i64 38}
!161 = !{ptr @expand_function_end, ptr @get_insns, i64 38}
!162 = !{ptr @expand_function_end, ptr @end_sequence, i64 38}
!163 = !{ptr @expand_function_end, ptr @emit_insn_after, i64 38}
!164 = !{ptr @expand_function_end, ptr @emit_use, i64 38}
!165 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find, i64 404}
!166 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find_slot, i64 131}
!167 = !{ptr @prologue_epilogue_contains, ptr @htab_find, i64 5642842}
!168 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @htab_elements, i64 38}
!169 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @get_insns, i64 38}
!170 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @htab_find, i64 218}
!171 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @reorder_insns, i64 41}
!172 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @cleanup_cfg, i64 38}
!173 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @rtl_profile_for_bb, i64 76}
!174 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @start_sequence, i64 95}
!175 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @gen_prologue, i64 38}
!176 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @emit_insn, i64 57}
!177 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @htab_create_alloc, i64 60}
!178 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @htab_find_slot, i64 378}
!179 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @emit_note, i64 95}
!180 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @get_insns, i64 95}
!181 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @end_sequence, i64 95}
!182 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @insert_insn_on_edge, i64 76}
!183 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @ix86_can_use_return_insn_p, i64 38}
!184 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @eh_returnjump_p, i64 19}
!185 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @gen_epilogue, i64 38}
!186 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @emit_jump_insn, i64 38}
!187 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @default_rtl_profile, i64 38}
!188 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @commit_edge_insertions, i64 38}
!189 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @gen_sibcall_epilogue, i64 19}
!190 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @record_insns, i64 19}
!191 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @emit_insn_before, i64 19}
!192 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @df_update_entry_exit_and_calls, i64 38}
!193 = !{ptr @instantiate_decls_1, ptr @instantiate_decl_rtl, i64 38}
!194 = !{ptr @instantiate_decls_1, ptr @instantiate_decls_1, i64 42}
!195 = !{ptr @all_blocks, ptr @all_blocks, i64 286}
!196 = !{ptr @record_insns, ptr @htab_create_alloc, i64 15}
!197 = !{ptr @record_insns, ptr @htab_find_slot, i64 95}
!198 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!199 = !{!"function_entry_count", i64 0}
!200 = !{!201, !201, i64 0}
!201 = !{!"any pointer", !202, i64 0}
!202 = !{!"omnipotent char", !203, i64 0}
!203 = !{!"Simple C/C++ TBAA"}
!204 = !{!205, !201, i64 8}
!205 = !{!"_IO_FILE", !206, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !206, i64 112, !206, i64 116, !207, i64 120, !208, i64 128, !202, i64 130, !202, i64 131, !201, i64 136, !207, i64 144, !201, i64 152, !201, i64 160, !201, i64 168, !201, i64 176, !207, i64 184, !206, i64 192, !202, i64 196}
!206 = !{!"int", !202, i64 0}
!207 = !{!"long", !202, i64 0}
!208 = !{!"short", !202, i64 0}
!209 = !{!205, !201, i64 16}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{!202, !202, i64 0}
!212 = !{!205, !201, i64 40}
!213 = !{!205, !201, i64 48}
!214 = !{!205, !206, i64 0}
!215 = !{!206, !206, i64 0}
!216 = distinct !{!216, !217, !218}
!217 = !{!"llvm.loop.mustprogress"}
!218 = !{!"llvm.loop.unroll.disable"}
!219 = !{!220, !206, i64 4}
!220 = !{!"VEC_function_p_base", !206, i64 0, !206, i64 4, !202, i64 8}
!221 = !{!220, !206, i64 0}
!222 = !{!223, !201, i64 1096}
!223 = !{!"gcc_target", !224, i64 0, !226, i64 368, !227, i64 664, !206, i64 744, !201, i64 752, !201, i64 760, !201, i64 768, !201, i64 776, !201, i64 784, !201, i64 792, !201, i64 800, !201, i64 808, !201, i64 816, !201, i64 824, !201, i64 832, !201, i64 840, !201, i64 848, !201, i64 856, !201, i64 864, !201, i64 872, !201, i64 880, !201, i64 888, !201, i64 896, !201, i64 904, !201, i64 912, !201, i64 920, !201, i64 928, !201, i64 936, !201, i64 944, !201, i64 952, !201, i64 960, !201, i64 968, !201, i64 976, !201, i64 984, !201, i64 992, !201, i64 1000, !201, i64 1008, !201, i64 1016, !201, i64 1024, !201, i64 1032, !201, i64 1040, !201, i64 1048, !201, i64 1056, !207, i64 1064, !207, i64 1072, !201, i64 1080, !201, i64 1088, !201, i64 1096, !201, i64 1104, !201, i64 1112, !201, i64 1120, !201, i64 1128, !201, i64 1136, !201, i64 1144, !201, i64 1152, !201, i64 1160, !201, i64 1168, !228, i64 1176, !201, i64 1232, !201, i64 1240, !201, i64 1248, !201, i64 1256, !201, i64 1264, !201, i64 1272, !201, i64 1280, !201, i64 1288, !201, i64 1296, !201, i64 1304, !201, i64 1312, !201, i64 1320, !201, i64 1328, !201, i64 1336, !201, i64 1344, !201, i64 1352, !201, i64 1360, !201, i64 1368, !201, i64 1376, !201, i64 1384, !201, i64 1392, !201, i64 1400, !201, i64 1408, !201, i64 1416, !201, i64 1424, !201, i64 1432, !201, i64 1440, !201, i64 1448, !201, i64 1456, !207, i64 1464, !229, i64 1472, !201, i64 1664, !201, i64 1672, !201, i64 1680, !201, i64 1688, !201, i64 1696, !201, i64 1704, !201, i64 1712, !201, i64 1720, !201, i64 1728, !201, i64 1736, !201, i64 1744, !201, i64 1752, !201, i64 1760, !201, i64 1768, !201, i64 1776, !230, i64 1784, !231, i64 1792, !232, i64 1896, !233, i64 1968, !201, i64 2016, !202, i64 2024, !202, i64 2025, !202, i64 2026, !202, i64 2027, !202, i64 2028, !202, i64 2029, !202, i64 2030, !202, i64 2031, !202, i64 2032, !202, i64 2033, !202, i64 2034, !202, i64 2035}
!224 = !{!"asm_out", !201, i64 0, !201, i64 8, !201, i64 16, !225, i64 24, !225, i64 56, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120, !201, i64 128, !201, i64 136, !201, i64 144, !201, i64 152, !201, i64 160, !201, i64 168, !201, i64 176, !201, i64 184, !201, i64 192, !201, i64 200, !201, i64 208, !201, i64 216, !201, i64 224, !201, i64 232, !201, i64 240, !201, i64 248, !201, i64 256, !201, i64 264, !201, i64 272, !201, i64 280, !201, i64 288, !201, i64 296, !201, i64 304, !201, i64 312, !201, i64 320, !201, i64 328, !201, i64 336, !201, i64 344, !201, i64 352, !201, i64 360}
!225 = !{!"asm_int_op", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24}
!226 = !{!"sched", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120, !201, i64 128, !201, i64 136, !201, i64 144, !201, i64 152, !201, i64 160, !201, i64 168, !201, i64 176, !201, i64 184, !201, i64 192, !201, i64 200, !201, i64 208, !201, i64 216, !201, i64 224, !201, i64 232, !201, i64 240, !201, i64 248, !201, i64 256, !201, i64 264, !201, i64 272, !201, i64 280, !201, i64 288}
!227 = !{!"vectorize", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72}
!228 = !{!"addr_space", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48}
!229 = !{!"calls", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120, !201, i64 128, !201, i64 136, !201, i64 144, !201, i64 152, !201, i64 160, !201, i64 168, !201, i64 176, !201, i64 184}
!230 = !{!"c", !201, i64 0}
!231 = !{!"cxx", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96}
!232 = !{!"emutls", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !202, i64 64, !202, i64 65}
!233 = !{!"target_option_hooks", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40}
!234 = !{!"function_entry_count", i64 658}
!235 = !{!"branch_weights", i32 2, i32 656}
!236 = !{!"branch_weights", i32 0, i32 658}
!237 = !{!"VP", i32 0, i64 658, i64 415346285852108609, i64 658}
!238 = !{!239, !201, i64 80}
!239 = !{!"function", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !206, i64 104, !206, i64 108, !206, i64 112, !206, i64 116, !206, i64 120, !206, i64 124, !201, i64 128, !206, i64 136, !206, i64 137, !206, i64 138, !206, i64 138, !206, i64 138, !206, i64 138, !206, i64 138, !206, i64 138, !206, i64 138, !206, i64 139, !206, i64 139, !206, i64 139, !206, i64 139, !206, i64 139, !206, i64 139, !206, i64 139}
!240 = !{!"branch_weights", i32 4, i32 5704}
!241 = !{!"branch_weights", i32 2847, i32 2857}
!242 = !{!"branch_weights", i32 2857, i32 2847}
!243 = !{!"branch_weights", i32 5704, i32 0}
!244 = !{!"VP", i32 0, i64 657, i64 -1990238910397079049, i64 657}
!245 = !{!239, !201, i64 48}
!246 = !{!239, !206, i64 108}
!247 = !{!"branch_weights", i32 656, i32 0}
!248 = !{i32 0, i32 2}
!249 = !{!"branch_weights", i32 652, i32 4}
!250 = !{!"branch_weights", i32 0, i32 656}
!251 = !{!"function_entry_count", i64 695}
!252 = !{!"branch_weights", i32 2, i32 693}
!253 = !{!"branch_weights", i32 693, i32 0}
!254 = !{!"VP", i32 0, i64 692, i64 -1990238910397079049, i64 692}
!255 = !{!"function_entry_count", i64 38}
!256 = !{!239, !201, i64 88}
!257 = !{!"function_entry_count", i64 40}
!258 = !{!259, !201, i64 88}
!259 = !{!"rtl_data", !260, i64 0, !261, i64 40, !262, i64 96, !263, i64 112, !265, i64 208, !266, i64 248, !206, i64 312, !201, i64 320, !201, i64 328, !201, i64 336, !201, i64 344, !201, i64 352, !201, i64 360, !201, i64 368, !201, i64 376, !201, i64 384, !201, i64 392, !207, i64 400, !201, i64 408, !201, i64 416, !201, i64 424, !206, i64 432, !206, i64 436, !206, i64 440, !206, i64 444, !206, i64 448, !206, i64 452, !201, i64 456, !202, i64 464, !202, i64 465, !202, i64 466, !202, i64 467, !202, i64 468, !202, i64 469, !202, i64 470, !202, i64 471, !202, i64 472, !202, i64 473, !202, i64 474, !202, i64 475, !202, i64 476, !202, i64 477, !202, i64 478, !202, i64 479, !202, i64 480, !202, i64 481, !202, i64 482, !202, i64 483, !202, i64 484, !202, i64 485}
!260 = !{!"expr_status", !206, i64 0, !206, i64 4, !206, i64 8, !201, i64 16, !201, i64 24, !201, i64 32}
!261 = !{!"emit_status", !206, i64 0, !206, i64 4, !201, i64 8, !201, i64 16, !201, i64 24, !206, i64 32, !206, i64 36, !206, i64 40, !206, i64 44, !201, i64 48}
!262 = !{!"varasm_status", !201, i64 0, !206, i64 8}
!263 = !{!"incoming_args", !206, i64 0, !206, i64 4, !206, i64 8, !201, i64 16, !264, i64 24, !201, i64 88}
!264 = !{!"ix86_args", !206, i64 0, !206, i64 4, !206, i64 8, !206, i64 12, !206, i64 16, !206, i64 20, !206, i64 24, !206, i64 28, !206, i64 32, !206, i64 36, !206, i64 40, !206, i64 44, !206, i64 48, !206, i64 52, !206, i64 56, !206, i64 60}
!265 = !{!"function_subsections", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32}
!266 = !{!"rtl_eh", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !202, i64 48}
!267 = !{!"branch_weights", i32 0, i32 40}
!268 = !{!"function_entry_count", i64 1025}
!269 = !{!259, !207, i64 400}
!270 = !{!"function_entry_count", i64 20}
!271 = !{!"branch_weights", i32 8, i32 12, i32 0, i32 0}
!272 = !{!"branch_weights", i32 0, i32 20}
!273 = !{!259, !206, i64 452}
!274 = !{!259, !202, i64 482}
!275 = !{!259, !202, i64 483}
!276 = !{!259, !202, i64 479}
!277 = !{!259, !206, i64 436}
!278 = !{!259, !206, i64 448}
!279 = !{!"branch_weights", i32 4, i32 16}
!280 = !{!259, !201, i64 368}
!281 = !{!"function_entry_count", i64 12}
!282 = !{!"function.c;get_stack_local_alignment"}
!283 = !{!"branch_weights", i32 0, i32 12}
!284 = !{!"branch_weights", i32 12, i32 0}
!285 = !{!286, !201, i64 448}
!286 = !{!"lang_hooks", !201, i64 0, !207, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120, !201, i64 128, !201, i64 136, !201, i64 144, !201, i64 152, !201, i64 160, !201, i64 168, !201, i64 176, !201, i64 184, !201, i64 192, !201, i64 200, !201, i64 208, !201, i64 216, !201, i64 224, !201, i64 232, !287, i64 240, !288, i64 248, !289, i64 256, !290, i64 272, !291, i64 432, !292, i64 560, !201, i64 584, !201, i64 592, !201, i64 600, !201, i64 608, !201, i64 616, !201, i64 624, !201, i64 632, !201, i64 640, !201, i64 648, !201, i64 656, !201, i64 664, !202, i64 672}
!287 = !{!"lang_hooks_for_tree_inlining", !201, i64 0}
!288 = !{!"lang_hooks_for_callgraph", !201, i64 0}
!289 = !{!"lang_hooks_for_tree_dump", !201, i64 0, !201, i64 8}
!290 = !{!"lang_hooks_for_decls", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !201, i64 120, !201, i64 128, !201, i64 136, !201, i64 144, !201, i64 152}
!291 = !{!"lang_hooks_for_types", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !201, i64 112, !202, i64 120}
!292 = !{!"lang_hooks_for_lto", !201, i64 0, !201, i64 8, !201, i64 16}
!293 = !{!"VP", i32 0, i64 12, i64 746784871645613821, i64 12}
!294 = !{!"function_entry_count", i64 16}
!295 = !{!296, !206, i64 40}
!296 = !{!"temp_slot", !201, i64 0, !201, i64 8, !201, i64 16, !207, i64 24, !201, i64 32, !206, i64 40, !202, i64 44, !202, i64 45, !206, i64 48, !206, i64 52, !207, i64 56, !207, i64 64}
!297 = !{!296, !207, i64 24}
!298 = !{!296, !201, i64 16}
!299 = !{!296, !201, i64 32}
!300 = !{!296, !201, i64 0}
!301 = !{!296, !201, i64 8}
!302 = distinct !{!302, !217, !218}
!303 = !{!296, !202, i64 45}
!304 = !{!296, !202, i64 44}
!305 = !{!296, !207, i64 56}
!306 = !{!296, !207, i64 64}
!307 = !{!259, !206, i64 432}
!308 = !{!296, !206, i64 48}
!309 = !{!296, !206, i64 52}
!310 = !{!"function.c;temp_slots_at_level"}
!311 = !{!"branch_weights", i32 38, i32 570094}
!312 = !{!313, !206, i64 0}
!313 = !{!"VEC_temp_slot_p_base", !206, i64 0, !206, i64 4, !202, i64 8}
!314 = !{!"branch_weights", i32 570063, i32 69}
!315 = !{!"branch_weights", i32 38, i32 31}
!316 = !{!313, !206, i64 4}
!317 = !{!"branch_weights", i32 0, i32 69}
!318 = !{}
!319 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 8, i64 0, i64 17, i64 0}
!320 = !{!"branch_weights", i32 0, i32 570132}
!321 = !{!322, !201, i64 8}
!322 = !{!"temp_slot_address_entry", !206, i64 0, !201, i64 8, !201, i64 16}
!323 = !{!322, !201, i64 16}
!324 = !{!322, !206, i64 0}
!325 = !{!"branch_weights", i32 0, i32 38}
!326 = !{!"function_entry_count", i64 108850}
!327 = !{!"branch_weights", i32 108850, i32 0}
!328 = !{!"branch_weights", i32 12739, i32 96111}
!329 = !{!"branch_weights", i32 0, i32 0, i32 12739}
!330 = !{!"branch_weights", i32 12716, i32 23}
!331 = !{!"branch_weights", i32 12716, i32 0}
!332 = !{!"branch_weights", i32 0, i32 12716}
!333 = !{!"function_entry_count", i64 121566}
!334 = !{!"function.c;find_temp_slot_from_address"}
!335 = !{!"branch_weights", i32 121566, i32 0}
!336 = !{!"branch_weights", i32 12739, i32 108827}
!337 = !{!"branch_weights", i32 0, i32 12739}
!338 = distinct !{!338, !217, !218}
!339 = distinct !{!339, !217, !218}
!340 = !{!"function_entry_count", i64 161300}
!341 = !{!"branch_weights", i32 161300, i32 0}
!342 = !{!"VP", i32 1, i64 19, i64 16, i64 8, i64 8, i64 8, i64 17, i64 1}
!343 = !{!"branch_weights", i32 1, i32 0}
!344 = distinct !{!344, !217, !218}
!345 = distinct !{!345, !217, !218}
!346 = distinct !{!346, !217, !218}
!347 = distinct !{!347, !217, !218}
!348 = !{!"function_entry_count", i64 247492}
!349 = !{!"VP", i32 1, i64 29, i64 16, i64 13, i64 8, i64 13, i64 17, i64 3}
!350 = distinct !{!350, !217, !218}
!351 = !{!"branch_weights", i32 247492, i32 0}
!352 = distinct !{!352, !217, !218}
!353 = !{!259, !201, i64 424}
!354 = distinct !{!354, !217, !218}
!355 = distinct !{!355, !217, !218}
!356 = !{!"function_entry_count", i64 161340}
!357 = distinct !{!357, !217, !218}
!358 = !{!"branch_weights", i32 1, i32 77}
!359 = !{!"function_entry_count", i64 115}
!360 = !{!"branch_weights", i32 0, i32 115}
!361 = !{!"branch_weights", i32 38, i32 0, i32 77}
!362 = !{!"branch_weights", i32 39, i32 38}
!363 = !{!"branch_weights", i32 38, i32 0}
!364 = !{!"function_entry_count", i64 1408932}
!365 = !{!"function.c;instantiate_virtual_regs_in_rtx"}
!366 = !{!"branch_weights", i32 837161, i32 571771}
!367 = !{!"branch_weights", i32 474963, i32 83737, i32 13071}
!368 = !{!"branch_weights", i32 132, i32 2212425}
!369 = !{!"branch_weights", i32 0, i32 132}
!370 = !{!"branch_weights", i32 0, i32 2212425}
!371 = !{!"branch_weights", i32 81649, i32 2130776}
!372 = !{!"branch_weights", i32 0, i32 2130776}
!373 = !{!"branch_weights", i32 14666, i32 69071}
!374 = !{!"branch_weights", i32 75, i32 68996}
!375 = !{!"branch_weights", i32 361, i32 12710}
!376 = !{!"branch_weights", i32 0, i32 12710}
!377 = !{!"function.c;instantiate_virtual_regs"}
!378 = !{!259, !206, i64 312}
!379 = !{!259, !206, i64 120}
!380 = !{!"branch_weights", i32 1, i32 151}
!381 = !{!"branch_weights", i32 768340, i32 437442}
!382 = !{!"branch_weights", i32 768203, i32 38, i32 76, i32 23, i32 0, i32 0}
!383 = !{!"branch_weights", i32 0, i32 768203}
!384 = !{!"branch_weights", i32 746280, i32 21923}
!385 = !{!"branch_weights", i32 2200, i32 766003}
!386 = !{!"branch_weights", i32 766003, i32 0}
!387 = !{!"branch_weights", i32 0, i32 766003}
!388 = !{!"branch_weights", i32 3430, i32 762573}
!389 = !{!"branch_weights", i32 2800, i32 630}
!390 = !{!"branch_weights", i32 2800, i32 0}
!391 = !{!392, !201, i64 24}
!392 = !{!"insn_data", !201, i64 0, !202, i64 8, !201, i64 16, !201, i64 24, !202, i64 32, !202, i64 33, !202, i64 34, !202, i64 35}
!393 = !{!394, !201, i64 0}
!394 = !{!"insn_operand_data", !201, i64 0, !201, i64 8, !206, i64 16, !202, i64 18, !202, i64 19}
!395 = !{!396, !202, i64 1086}
!396 = !{!"recog_data", !202, i64 0, !202, i64 240, !202, i64 480, !202, i64 720, !202, i64 840, !202, i64 960, !202, i64 1072, !202, i64 1086, !202, i64 1087, !202, i64 1088, !202, i64 1089, !201, i64 1120}
!397 = !{!"branch_weights", i32 768202, i32 1}
!398 = !{!"branch_weights", i32 809279, i32 159581, i32 573900, i32 7043}
!399 = !{!"branch_weights", i32 77875, i32 81706}
!400 = !{!"branch_weights", i32 0, i32 81706}
!401 = !{!"VP", i32 0, i64 81706, i64 1320961495666781357, i64 81668, i64 2413368657831509256, i64 38}
!402 = !{!"branch_weights", i32 81706, i32 0}
!403 = !{!"branch_weights", i32 573900, i32 0}
!404 = !{!"branch_weights", i32 7043, i32 0}
!405 = !{!"branch_weights", i32 781601, i32 768202}
!406 = distinct !{!406, !217, !218}
!407 = !{!"branch_weights", i32 686497, i32 81706}
!408 = !{!396, !202, i64 1087}
!409 = !{!"branch_weights", i32 0, i32 1}
!410 = distinct !{!410, !217, !218}
!411 = !{!"branch_weights", i32 81706, i32 686497}
!412 = !{!"branch_weights", i32 768203, i32 0}
!413 = !{!"branch_weights", i32 68958, i32 699245}
!414 = !{!"branch_weights", i32 151, i32 4822977}
!415 = distinct !{!415, !217, !218}
!416 = !{!"branch_weights", i32 151, i32 1}
!417 = distinct !{!417, !217, !218}
!418 = !{!239, !201, i64 72}
!419 = !{!"branch_weights", i32 37, i32 1}
!420 = distinct !{!420, !217, !218}
!421 = !{!223, !201, i64 1744}
!422 = !{!"VP", i32 0, i64 38, i64 -7047677361869380989, i64 38}
!423 = !{!"function_entry_count", i64 449943}
!424 = !{!"branch_weights", i32 135890, i32 314053}
!425 = !{!"branch_weights", i32 0, i32 449943}
!426 = !{!"branch_weights", i32 0, i32 200777, i32 205658, i32 43508, i32 0, i32 0}
!427 = !{!"branch_weights", i32 0, i32 200777}
!428 = !{!"branch_weights", i32 445404, i32 4535, i32 4}
!429 = !{!"branch_weights", i32 4, i32 0}
!430 = !{!"branch_weights", i32 401225, i32 0, i32 44183}
!431 = !{!"branch_weights", i32 44183, i32 0}
!432 = !{!"branch_weights", i32 267535, i32 177873}
!433 = !{!"branch_weights", i32 56789, i32 210746}
!434 = !{!"branch_weights", i32 210746, i32 0}
!435 = !{!223, !201, i64 1496}
!436 = !{!"VP", i32 0, i64 445408, i64 487598760229390738, i64 445408}
!437 = !{!"branch_weights", i32 445408, i32 0}
!438 = !{!"branch_weights", i32 0, i32 445408}
!439 = !{!"branch_weights", i32 4, i32 445404}
!440 = !{!"branch_weights", i32 445404, i32 0}
!441 = !{!"branch_weights", i32 0, i32 445404}
!442 = !{!"branch_weights", i32 1, i32 445403}
!443 = !{!"branch_weights", i32 445403, i32 3}
!444 = distinct !{!444, !217, !218}
!445 = !{!"branch_weights", i32 0, i32 445406}
!446 = !{!"function_entry_count", i64 522508}
!447 = !{!223, !201, i64 1632}
!448 = !{!"VP", i32 0, i64 522508, i64 7351882836796118358, i64 522508}
!449 = !{!"branch_weights", i32 0, i32 522546}
!450 = !{!"branch_weights", i32 522546, i32 0}
!451 = !{!"branch_weights", i32 38, i32 522508}
!452 = !{!"function_entry_count", i64 81668}
!453 = !{!"branch_weights", i32 0, i32 81746}
!454 = !{!"branch_weights", i32 81746, i32 0}
!455 = !{!223, !201, i64 1512}
!456 = !{!"VP", i32 0, i64 81668, i64 -1506604481752345248, i64 81668}
!457 = !{!223, !201, i64 1568}
!458 = !{!459, !206, i64 128}
!459 = !{!"assign_parm_data_all", !264, i64 0, !460, i64 64, !201, i64 80, !201, i64 88, !201, i64 96, !201, i64 104, !207, i64 112, !207, i64 120, !206, i64 128}
!460 = !{!"args_size", !207, i64 0, !201, i64 8}
!461 = !{!"branch_weights", i32 0, i32 80}
!462 = !{!463, !206, i64 0}
!463 = !{!"VEC_tree_base", !206, i64 0, !206, i64 4, !202, i64 8}
!464 = !{!"branch_weights", i32 40, i32 40}
!465 = !{!466, !206, i64 36}
!466 = !{!"assign_parm_data_one", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !206, i64 32, !206, i64 36, !206, i64 40, !467, i64 48, !206, i64 120, !206, i64 124, !206, i64 124, !206, i64 124, !206, i64 124}
!467 = !{!"locate_and_pad_arg_data", !460, i64 0, !460, i64 16, !460, i64 32, !460, i64 48, !206, i64 64, !206, i64 68}
!468 = !{!466, !206, i64 40}
!469 = !{!466, !201, i64 8}
!470 = !{!"branch_weights", i32 40, i32 0}
!471 = distinct !{!471, !217, !218}
!472 = !{!"function_entry_count", i64 78}
!473 = !{!"function.c;assign_parms_augmented_arg_list"}
!474 = !{!"branch_weights", i32 1, i32 155}
!475 = !{!"branch_weights", i32 78, i32 0}
!476 = !{!463, !206, i64 4}
!477 = !{!"branch_weights", i32 155, i32 1}
!478 = distinct !{!478, !217, !218}
!479 = !{!459, !201, i64 88}
!480 = !{!223, !201, i64 1488}
!481 = !{!459, !201, i64 80}
!482 = !{!223, !201, i64 1552}
!483 = distinct !{!483, !217, !218}
!484 = !{!"function.c;assign_parm_find_data_types"}
!485 = !{!223, !201, i64 1536}
!486 = !{!"branch_weights", i32 0, i32 78}
!487 = !{!"VP", i32 0, i64 78, i64 -1506604481752345248, i64 78}
!488 = !{!466, !201, i64 0}
!489 = !{!466, !206, i64 32}
!490 = !{!"function_entry_count", i64 80}
!491 = !{!"function.c;gimplify_parm_type"}
!492 = !{!"branch_weights", i32 80, i32 0}
!493 = !{!"branch_weights", i32 40, i32 40, i32 0}
!494 = !{!"function_entry_count", i64 81706}
!495 = !{!460, !201, i64 8}
!496 = !{!460, !207, i64 0}
!497 = !{!467, !206, i64 64}
!498 = !{!467, !206, i64 68}
!499 = !{!259, !206, i64 440}
!500 = !{i64 0, i64 8, !501, i64 8, i64 8, !200}
!501 = !{!207, !207, i64 0}
!502 = !{!467, !207, i64 0}
!503 = !{!467, !201, i64 8}
!504 = !{!239, !201, i64 8}
!505 = !{!506, !206, i64 24}
!506 = !{!"control_flow_graph", !201, i64 0, !201, i64 8, !201, i64 16, !206, i64 24, !206, i64 28, !206, i64 32, !201, i64 40, !206, i64 48, !202, i64 52, !202, i64 60, !206, i64 68, !206, i64 72}
!507 = !{!508, !201, i64 0}
!508 = !{!"bitmap_head_def", !201, i64 0, !201, i64 8, !206, i64 16, !201, i64 24}
!509 = !{i8 0, i8 2}
!510 = distinct !{!510, !217, !218}
!511 = distinct !{!511, !217, !218}
!512 = distinct !{!512, !217, !218}
!513 = distinct !{!513, !217, !218}
!514 = distinct !{!514, !217, !218}
!515 = distinct !{!515, !217, !218}
!516 = !{!"function_entry_count", i64 89}
!517 = !{!"function_entry_count", i64 41}
!518 = !{!"branch_weights", i32 163, i32 1}
!519 = !{!"branch_weights", i32 163, i32 245}
!520 = distinct !{!520, !217, !218}
!521 = distinct !{!521, !217, !218}
!522 = distinct !{!522, !217, !218}
!523 = !{!"function_entry_count", i64 2}
!524 = !{!"function.c;invoke_set_current_function_hook"}
!525 = !{!"VP", i32 0, i64 1, i64 -1990238910397079049, i64 1}
!526 = !{!"function_entry_count", i64 209764}
!527 = !{!"branch_weights", i32 0, i32 209764}
!528 = !{!"branch_weights", i32 207606, i32 2158}
!529 = !{!"branch_weights", i32 0, i32 2158}
!530 = !{!"VP", i32 0, i64 2156, i64 -1990238910397079049, i64 2156}
!531 = !{!"function_entry_count", i64 209765}
!532 = !{!"branch_weights", i32 207606, i32 2159}
!533 = !{!"branch_weights", i32 2154, i32 5}
!534 = !{!"function_entry_count", i64 3}
!535 = !{!"branch_weights", i32 1, i32 2}
!536 = !{!"branch_weights", i32 0, i32 2}
!537 = !{!"function.c;prepare_function_start"}
!538 = !{!259, !201, i64 56}
!539 = !{!259, !202, i64 477}
!540 = !{!"VP", i32 0, i64 37, i64 -1990238910397079049, i64 37}
!541 = !{!223, !201, i64 1432}
!542 = !{!259, !201, i64 336}
!543 = !{!223, !201, i64 1440}
!544 = !{!259, !202, i64 471}
!545 = !{!259, !202, i64 470}
!546 = !{!259, !201, i64 352}
!547 = !{!223, !201, i64 1504}
!548 = !{!"VP", i32 0, i64 38, i64 -7850396760365598585, i64 38}
!549 = !{!"branch_weights", i32 0, i32 38, i32 0}
!550 = !{!223, !201, i64 1608}
!551 = !{!"VP", i32 0, i64 38, i64 -3949629065398695358, i64 38}
!552 = !{!259, !201, i64 200}
!553 = !{!"branch_weights", i32 0, i32 76}
!554 = !{!"branch_weights", i32 38, i32 38}
!555 = !{!223, !201, i64 1528}
!556 = !{!459, !207, i64 112}
!557 = !{!466, !201, i64 24}
!558 = !{!466, !201, i64 16}
!559 = !{!223, !201, i64 1544}
!560 = !{!223, !201, i64 1560}
!561 = !{!"VP", i32 0, i64 38, i64 5915247204820207506, i64 38}
!562 = !{!223, !201, i64 1576}
!563 = !{!466, !206, i64 120}
!564 = !{!459, !207, i64 120}
!565 = !{!259, !206, i64 444}
!566 = !{!466, !206, i64 116}
!567 = !{!466, !207, i64 80}
!568 = !{!466, !207, i64 64}
!569 = !{!466, !207, i64 48}
!570 = !{!459, !207, i64 64}
!571 = !{!466, !201, i64 56}
!572 = !{!459, !201, i64 72}
!573 = !{!466, !201, i64 88}
!574 = !{!466, !201, i64 72}
!575 = !{!576, !201, i64 0}
!576 = !{!"mem_attrs", !201, i64 0, !201, i64 8, !201, i64 16, !206, i64 24, !206, i64 28, !202, i64 32}
!577 = !{!576, !201, i64 8}
!578 = !{!466, !206, i64 112}
!579 = !{!580, !206, i64 0}
!580 = !{!"rtvec_def", !206, i64 0, !202, i64 8}
!581 = distinct !{!581, !217, !218}
!582 = !{!576, !206, i64 28}
!583 = !{!459, !201, i64 96}
!584 = !{!459, !201, i64 104}
!585 = !{!"VP", i32 0, i64 38, i64 7351882836796118358, i64 38}
!586 = distinct !{!586, !217, !218}
!587 = distinct !{!587, !217, !218}
!588 = distinct !{!588, !217, !218}
!589 = !{!259, !206, i64 116}
!590 = !{!259, !201, i64 128}
!591 = !{!259, !206, i64 112}
!592 = !{i64 0, i64 4, !215, i64 4, i64 4, !215, i64 8, i64 4, !215, i64 12, i64 4, !215, i64 16, i64 4, !215, i64 20, i64 4, !215, i64 24, i64 4, !215, i64 28, i64 4, !215, i64 32, i64 4, !215, i64 36, i64 4, !215, i64 40, i64 4, !215, i64 44, i64 4, !215, i64 48, i64 4, !215, i64 52, i64 4, !215, i64 56, i64 4, !215, i64 60, i64 4, !215}
!593 = !{!259, !201, i64 320}
!594 = !{!223, !201, i64 1592}
!595 = !{!"VP", i32 0, i64 38, i64 -7243988406964919399, i64 38}
!596 = !{!239, !201, i64 56}
!597 = !{!223, !201, i64 1640}
!598 = !{!239, !201, i64 64}
!599 = !{!223, !201, i64 1392}
!600 = !{!259, !201, i64 408}
!601 = !{!259, !201, i64 376}
!602 = !{!"branch_weights", i32 2, i32 0}
!603 = distinct !{!603, !217, !218}
!604 = !{!"function_entry_count", i64 268}
!605 = !{!"branch_weights", i32 0, i32 268}
!606 = !{!"branch_weights", i32 0, i32 268, i32 0}
!607 = !{!"VP", i32 0, i64 268, i64 -642655140681073131, i64 268}
!608 = distinct !{!608, !217, !218}
!609 = distinct !{!609, !217, !218}
!610 = !{!259, !201, i64 384}
!611 = distinct !{!611, !217, !218}
!612 = distinct !{!612, !217, !218}
!613 = !{!259, !201, i64 360}
!614 = !{!259, !202, i64 476}
!615 = !{!"function_entry_count", i64 404}
!616 = !{!"branch_weights", i32 0, i32 404}
!617 = !{!"branch_weights", i32 273, i32 131}
!618 = !{!"branch_weights", i32 131, i32 0}
!619 = !{!"function_entry_count", i64 6168229}
!620 = !{!"branch_weights", i32 6693164, i32 5642826}
!621 = !{!"branch_weights", i32 3349945, i32 2292881}
!622 = !{!"branch_weights", i32 0, i32 3349945}
!623 = distinct !{!623, !217, !218}
!624 = !{!"branch_weights", i32 6167284, i32 945}
!625 = !{!"branch_weights", i32 152, i32 200}
!626 = !{!"branch_weights", i32 38, i32 114}
!627 = !{!"branch_weights", i32 11, i32 189}
!628 = !{!"branch_weights", i32 38, i32 151}
!629 = !{!"branch_weights", i32 0, i32 352}
!630 = distinct !{!630, !217, !218}
!631 = distinct !{!631, !218}
!632 = !{!506, !201, i64 8}
!633 = !{!"branch_weights", i32 0, i32 107}
!634 = !{!635, !206, i64 0}
!635 = !{!"VEC_edge_base", !206, i64 0, !206, i64 4, !202, i64 8}
!636 = !{!"branch_weights", i32 38, i32 69}
!637 = !{!638, !201, i64 0}
!638 = !{!"edge_def", !201, i64 0, !201, i64 8, !202, i64 16, !201, i64 24, !201, i64 32, !206, i64 40, !206, i64 44, !206, i64 48, !206, i64 52, !207, i64 56}
!639 = !{!640, !201, i64 8}
!640 = !{!"rtl_bb_info", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !206, i64 32}
!641 = !{!"branch_weights", i32 0, i32 435}
!642 = !{!"branch_weights", i32 141, i32 294}
!643 = !{!"branch_weights", i32 69, i32 72}
!644 = !{!"branch_weights", i32 66, i32 3}
!645 = !{!"branch_weights", i32 277, i32 17}
!646 = !{!"branch_weights", i32 208, i32 69}
!647 = !{!"branch_weights", i32 3, i32 66}
!648 = distinct !{!648, !217, !218}
!649 = !{!"branch_weights", i32 69, i32 0}
!650 = distinct !{!650, !217, !218}
!651 = !{!286, !201, i64 176}
!652 = !{!"function_entry_count", i64 132588}
!653 = !{!"branch_weights", i32 132570, i32 18, i32 0, i32 0}
!654 = !{!"branch_weights", i32 0, i32 18}
!655 = distinct !{!655, !217, !218}
!656 = !{!"branch_weights", i32 0, i32 132588}
!657 = !{!"branch_weights", i32 132483, i32 105}
!658 = !{!"branch_weights", i32 132588, i32 0}
!659 = !{!239, !201, i64 96}
!660 = !{!661, !201, i64 8}
!661 = !{!"types_used_by_vars_entry", !201, i64 0, !201, i64 8}
!662 = !{!661, !201, i64 0}
!663 = !{!"function.c;rest_of_handle_check_leaf_regs"}
!664 = !{!"function.c;rest_of_handle_thread_prologue_and_epilogue"}
!665 = !{!506, !201, i64 0}
!666 = !{!"branch_weights", i32 76, i32 19}
!667 = !{!"branch_weights", i32 1, i32 189}
!668 = !{!"branch_weights", i32 473, i32 0}
!669 = !{!"branch_weights", i32 189, i32 757}
!670 = distinct !{!670, !217, !218}
!671 = !{!"branch_weights", i32 189, i32 38}
!672 = !{!"branch_weights", i32 151, i32 757}
!673 = distinct !{!673, !217, !218}
!674 = !{!675, !201, i64 8}
!675 = !{!"basic_block_def", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !202, i64 32, !201, i64 48, !201, i64 56, !202, i64 64, !207, i64 72, !206, i64 80, !206, i64 84, !206, i64 88, !206, i64 92, !206, i64 96}
!676 = !{!638, !206, i64 48}
!677 = distinct !{!677, !217, !218}
!678 = distinct !{!678, !217, !218}
!679 = distinct !{!679, !217, !218}
!680 = !{!640, !201, i64 0}
!681 = distinct !{!681, !217, !218}
!682 = !{!"branch_weights", i32 0, i32 95}
!683 = !{!"branch_weights", i32 38, i32 57}
!684 = !{!"branch_weights", i32 19, i32 38}
!685 = !{!"branch_weights", i32 19, i32 0}
!686 = !{!"branch_weights", i32 0, i32 57}
!687 = !{!"branch_weights", i32 57, i32 0}
!688 = distinct !{!688, !217, !218}
!689 = !{!"branch_weights", i32 0, i32 19}
!690 = distinct !{!690, !217, !218}
!691 = !{!"branch_weights", i32 189, i32 0}
!692 = !{!"branch_weights", i32 151, i32 605}
!693 = distinct !{!693, !217, !218}
!694 = distinct !{!694, !217, !218}
!695 = !{!"branch_weights", i32 151, i32 609}
!696 = !{!"branch_weights", i32 1411, i32 5824}
!697 = !{!"branch_weights", i32 0, i32 1411}
!698 = !{!"branch_weights", i32 38, i32 7197}
!699 = distinct !{!699, !217, !218}
!700 = !{!"function.c;rest_of_match_asm_constraints"}
!701 = !{!259, !202, i64 468}
!702 = !{!675, !201, i64 56}
!703 = distinct !{!703, !217, !218}
!704 = distinct !{!704, !217, !218}
!705 = !{!706, !201, i64 24}
!706 = !{!"htab", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !207, i64 32, !207, i64 40, !207, i64 48, !206, i64 56, !206, i64 60, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !206, i64 104}
!707 = !{!706, !207, i64 32}
!708 = distinct !{!708, !217, !218}
!709 = distinct !{!709, !217, !218}
!710 = distinct !{!710, !217, !218}
!711 = !{!"function.c;instantiate_decls_1"}
!712 = !{!"branch_weights", i32 42, i32 38}
!713 = distinct !{!713, !217, !218}
!714 = !{!"branch_weights", i32 38, i32 42}
!715 = !{!"branch_weights", i32 42, i32 0}
!716 = distinct !{!716, !217, !218}
!717 = !{!718, !206, i64 0}
!718 = !{!"regstat_n_sets_and_refs_t", !206, i64 0, !206, i64 4}
!719 = !{!"function_entry_count", i64 368}
!720 = !{!"function.c;all_blocks"}
!721 = !{!"branch_weights", i32 82, i32 286}
!722 = !{!"branch_weights", i32 143, i32 143}
!723 = !{!"branch_weights", i32 286, i32 0}
!724 = distinct !{!724, !217, !218}
!725 = !{!"function.c;assign_parm_remove_parallels"}
!726 = !{!"function_entry_count", i64 19}
!727 = !{!"function.c;record_insns"}
!728 = distinct !{!728, !217, !218}
!729 = distinct !{!729, !217, !218}
!730 = distinct !{!730, !217, !218}
!731 = distinct !{!731, !217, !218}
!732 = distinct !{!732, !217, !218}
