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
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
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
%struct.VEC_function_p_base = type { i32, i32, [1 x ptr] }
%struct.temp_slot = type { ptr, ptr, ptr, i64, ptr, i32, i8, i8, i32, i32, i64, i64 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.temp_slot_address_entry = type { i32, ptr, ptr }
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
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.types_used_by_vars_entry = type { ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x ptr] }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }

@cfun = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_vars_hash = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_cur_var_decl = dso_local local_unnamed_addr global ptr null, align 8
@function_context_stack = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@virtuals_instantiated = dso_local local_unnamed_addr global i32 0, align 4
@generating_concat_p = external local_unnamed_addr global i32, align 4
@prologue_insn_hash = internal global ptr null, align 8
@epilogue_insn_hash = internal global ptr null, align 8
@x_rtl = external global %struct.rtl_data, align 8
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
@cfun_stack = internal global ptr null, align 8
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_function_context() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !419
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @allocate_struct_function(ptr noundef null, i8 noundef zeroext 0) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !419
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @function_context_stack, ptr noundef %6) #22
  tail call void @set_cfun(ptr noundef null) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !423 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4, !prof !424

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !425
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #23
  store ptr %9, ptr @cfun, align 8, !tbaa !419
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, -196609
  %13 = or disjoint i32 %12, 65536
  store i32 %13, ptr %10, align 8
  tail call void @init_eh_for_function() #23
  %14 = load ptr, ptr @init_machine_status, align 8, !tbaa !419
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !426

16:                                               ; preds = %7
  %17 = tail call ptr %14() #23
  %18 = load ptr, ptr @cfun, align 8, !tbaa !419
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !427
  br label %20

20:                                               ; preds = %16, %7
  tail call void @ix86_call_abi_override(ptr noundef %0) #23
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %0) #22
  br i1 %3, label %59, label %21, !prof !424

21:                                               ; preds = %20
  %22 = load ptr, ptr @cfun, align 8, !tbaa !419
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !425
  %24 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 6
  store ptr %0, ptr %24, align 8, !tbaa !430
  %25 = tail call i32 @get_next_funcdef_no() #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !419
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 14
  store i32 %25, ptr %27, align 4, !tbaa !431
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %29, label %39, !prof !432

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !425
  %32 = tail call i32 @aggregate_value_p(ptr noundef %31, ptr noundef nonnull %0) #22, !range !433
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !434

34:                                               ; preds = %29
  %35 = load ptr, ptr @cfun, align 8, !tbaa !419
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 20
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 67108864
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %34, %29, %21
  %40 = icmp eq ptr %8, null
  br i1 %40, label %52, label %41, !prof !435

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !425
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45, !prof !435

45:                                               ; preds = %41
  %46 = tail call ptr @tree_last(ptr noundef nonnull %43) #23
  %47 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !419
  %50 = icmp eq ptr %48, %49
  %51 = select i1 %50, i32 65535, i32 4259839
  br label %52

52:                                               ; preds = %45, %41, %39
  %53 = phi i32 [ 65535, %41 ], [ 65535, %39 ], [ %51, %45 ]
  %54 = load ptr, ptr @cfun, align 8, !tbaa !419
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 20
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, -4259840
  %58 = or disjoint i32 %53, %57
  store i32 %58, ptr %55, align 8
  br label %59

59:                                               ; preds = %52, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_function_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !436 !PGOFuncName !437 {
  tail call fastcc void @VEC_function_p_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !419
  tail call fastcc void @VEC_function_p_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_cfun(ptr noundef %0) local_unnamed_addr #0 !prof !438 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !419
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4, !prof !439

4:                                                ; preds = %1
  store ptr %0, ptr @cfun, align 8, !tbaa !419
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6, !prof !440

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !430
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %8, %6 ], [ null, %4 ]
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %10) #22
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_function_context() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr @function_context_stack, align 8
  %2 = tail call fastcc ptr @VEC_function_p_base_pop(ptr noundef %1) #22
  tail call void @set_cfun(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !430
  store ptr %4, ptr @current_function_decl, align 8, !tbaa !419
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !441
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !441
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_function_p_base_pop(ptr nocapture noundef %0) unnamed_addr #2 !prof !436 !PGOFuncName !442 {
  %2 = load i32, ptr %0, align 8, !tbaa !443
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !443
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @free_after_parsing(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 !prof !445 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !446
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_after_compilation(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !445 {
  store ptr null, ptr @prologue_insn_hash, align 8, !tbaa !419
  store ptr null, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !447
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !457

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @x_rtl, i8 0, i64 488, i1 false)
  %6 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  store ptr null, ptr %6, align 8, !tbaa !427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr @regno_reg_rtx, align 8, !tbaa !419
  tail call void @insn_locators_free() #23
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @insn_locators_free() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @get_frame_size() local_unnamed_addr #7 !prof !458 {
  %1 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %2 = sub nsw i64 0, %1
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @frame_offset_overflow(i64 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !460 {
  %3 = sub nsw i64 0, %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !425
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = shl nuw i64 1, %8
  %10 = add i64 %9, -256
  %11 = icmp ult i64 %10, %3
  br i1 %11, label %12, label %15, !prof !461

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !425
  tail call void (i32, ptr, ...) @error_at(i32 noundef %14, ptr noundef nonnull @.str) #23
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi i8 [ 1, %12 ], [ 0, %2 ]
  ret i8 %16
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !460 {
  switch i32 %2, label %18 [
    i32 0, label %5
    i32 -1, label %8
    i32 -2, label %20
  ], !prof !462

5:                                                ; preds = %4
  %6 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef null, i32 noundef %0) #22
  %7 = lshr i32 %6, 3
  br label %20

8:                                                ; preds = %4
  %9 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !441
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
  %24 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %25 = sub nsw i64 %24, %22
  store i64 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %26 = icmp ugt i32 %23, -2147483648
  %27 = tail call i32 @llvm.umin.i32(i32 %23, i32 -2147483648)
  %28 = select i1 %26, i32 268435456, i32 %21, !prof !461
  %29 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %30 = icmp ult i32 %29, %27
  br i1 %30, label %31, label %54, !prof !461

31:                                               ; preds = %20
  %32 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !464
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  br label %54

35:                                               ; preds = %31
  %36 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !465
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 344, ptr noundef nonnull @.str.2) #23
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !466
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = icmp ne i8 %3, 0
  %44 = icmp eq i64 %22, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %48 = tail call i32 @get_mode_alignment(i32 noundef %0) #23
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @.str.2) #23
  br label %51

51:                                               ; preds = %42, %46, %50
  %52 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %53 = lshr i32 %52, 3
  br label %54

54:                                               ; preds = %34, %51, %39, %20
  %55 = phi i32 [ %27, %39 ], [ %52, %51 ], [ %27, %34 ], [ %27, %20 ]
  %56 = phi i32 [ %28, %39 ], [ %53, %51 ], [ %28, %34 ], [ %28, %20 ]
  %57 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !467
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %59, label %60, !prof !461

59:                                               ; preds = %54
  store i32 %55, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !467
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !468
  %62 = icmp ult i32 %61, %55
  br i1 %62, label %63, label %64, !prof !469

63:                                               ; preds = %60
  store i32 %55, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !468
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %66 = zext i32 %56 to i64
  %67 = sub nsw i64 0, %66
  %68 = and i64 %65, %67
  store i64 %68, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %69 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !441
  %70 = icmp eq i32 %69, 0
  %71 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %73 = select i1 %70, ptr %71, ptr %72
  %74 = tail call i64 @trunc_int_for_mode(i64 noundef %68, i32 noundef 16) #23
  %75 = tail call ptr @plus_constant(ptr noundef %73, i64 noundef %74) #23
  %76 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %75) #23
  tail call void @set_mem_align(ptr noundef %76, i32 noundef %55) #23
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 33554432
  store i32 %78, ptr %76, align 8
  %79 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef nonnull %76, ptr noundef %79) #23
  store ptr %80, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  %81 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %82 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %83 = tail call zeroext i8 @frame_offset_overflow(i64 noundef %81, ptr noundef %82) #22, !range !471
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85, !prof !472

85:                                               ; preds = %64
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  br label %86

86:                                               ; preds = %85, %64
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_stack_local_alignment(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !473 !PGOFuncName !474 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %9, !prof !475

4:                                                ; preds = %2
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !441
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 128, i32 256
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @get_mode_alignment(i32 noundef %1) #23
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %8, %4 ], [ %10, %9 ]
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %17, !prof !476

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !477
  %16 = tail call ptr %15(i32 noundef %1, i32 noundef 0) #23
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %0, %11 ], [ %16, %14 ]
  %19 = tail call i32 @ix86_local_alignment(ptr noundef %18, i32 noundef %1, i32 noundef %12) #23
  ret i32 %19
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_local(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !485 {
  %4 = tail call ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext 0) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !418 {
  %5 = icmp eq i64 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 703, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp slt i32 %2, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 706, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %7, %9
  %11 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef %3, i32 noundef %0) #22
  %12 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !441
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %112, label %17

17:                                               ; preds = %10, %59
  %18 = phi ptr [ %61, %59 ], [ %14, %10 ]
  %19 = phi ptr [ %60, %59 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !486
  %22 = icmp ult i32 %21, %11
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !488
  %26 = icmp slt i64 %25, %1
  br i1 %26, label %59, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !489
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !490
  %37 = tail call i32 @objects_must_conflict_p(ptr noundef %36, ptr noundef %3) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = icmp eq ptr %19, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !488
  %44 = load i64, ptr %24, align 8, !tbaa !488
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = icmp eq i64 %43, %44
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !486
  %51 = load i32, ptr %20, align 8, !tbaa !486
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %41, %39
  %54 = load i32, ptr %20, align 8, !tbaa !486
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, ptr %24, align 8, !tbaa !488
  %58 = icmp eq i64 %57, %1
  br i1 %58, label %111, label %59

59:                                               ; preds = %53, %56, %17, %23, %27, %34, %46, %48
  %60 = phi ptr [ %19, %48 ], [ %19, %46 ], [ %19, %34 ], [ %19, %27 ], [ %19, %23 ], [ %19, %17 ], [ %18, %56 ], [ %18, %53 ]
  %61 = load ptr, ptr %18, align 8, !tbaa !419
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %17, !llvm.loop !491

63:                                               ; preds = %59
  %64 = icmp eq ptr %60, null
  br i1 %64, label %112, label %65

65:                                               ; preds = %63
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %60, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %66 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !489
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 16711680
  %70 = icmp eq i32 %69, 65536
  br i1 %70, label %71, label %141

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !486
  %74 = lshr i32 %73, 3
  %75 = zext nneg i32 %74 to i64
  %76 = add i64 %1, -1
  %77 = add i64 %76, %75
  %78 = sub nsw i32 0, %74
  %79 = sext i32 %78 to i64
  %80 = and i64 %77, %79
  %81 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !488
  %83 = sub nsw i64 %82, %80
  %84 = icmp slt i64 %83, %75
  br i1 %84, label %141, label %85

85:                                               ; preds = %71
  %86 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #23
  %87 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 7
  store i8 0, ptr %87, align 1, !tbaa !493
  %88 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 6
  store i8 0, ptr %88, align 4, !tbaa !494
  %89 = load i64, ptr %81, align 8, !tbaa !488
  %90 = sub nsw i64 %89, %80
  %91 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 3
  store i64 %90, ptr %91, align 8, !tbaa !488
  %92 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 10
  %93 = load i64, ptr %92, align 8, !tbaa !495
  %94 = add nsw i64 %93, %80
  %95 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 10
  store i64 %94, ptr %95, align 8, !tbaa !495
  %96 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 11
  %97 = load i64, ptr %96, align 8, !tbaa !496
  %98 = sub nsw i64 %97, %80
  %99 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 11
  store i64 %98, ptr %99, align 8, !tbaa !496
  %100 = load ptr, ptr %66, align 8, !tbaa !489
  %101 = tail call ptr @adjust_address_1(ptr noundef %100, i32 noundef 1, i64 noundef %80, i32 noundef 0, i32 noundef 1) #23
  %102 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !489
  %103 = load i32, ptr %72, align 8, !tbaa !486
  %104 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 5
  store i32 %103, ptr %104, align 8, !tbaa !486
  %105 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !490
  %107 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !490
  tail call fastcc void @insert_slot_to_list(ptr noundef %86, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %108 = load ptr, ptr %102, align 8, !tbaa !489
  %109 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  %110 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %108, ptr noundef %109) #23
  store ptr %110, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  store i64 %80, ptr %81, align 8, !tbaa !488
  store i64 %80, ptr %96, align 8, !tbaa !496
  br label %141

111:                                              ; preds = %56
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %18, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %141

112:                                              ; preds = %63, %10
  %113 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %114 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #23
  %115 = icmp eq i32 %0, 1
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !441
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 128, i32 256
  %121 = icmp eq i32 %11, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 788, ptr noundef nonnull @.str.2) #23
  br label %123

123:                                              ; preds = %122, %116
  %124 = sdiv i32 %11, 8
  %125 = sext i32 %124 to i64
  %126 = add i64 %1, -1
  %127 = add i64 %126, %125
  %128 = sub nsw i32 0, %124
  %129 = sext i32 %128 to i64
  %130 = and i64 %127, %129
  br label %131

131:                                              ; preds = %112, %123
  %132 = phi i64 [ %130, %123 ], [ %1, %112 ]
  %133 = tail call ptr @assign_stack_local(i32 noundef %0, i64 noundef %132, i32 noundef %11) #22
  %134 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !489
  %135 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 5
  store i32 %11, ptr %135, align 8, !tbaa !486
  %136 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !459
  %137 = sub nsw i64 %113, %136
  %138 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 3
  store i64 %137, ptr %138, align 8, !tbaa !488
  %139 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 10
  store i64 %136, ptr %139, align 8, !tbaa !495
  %140 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 11
  store i64 %137, ptr %140, align 8, !tbaa !496
  br label %141

141:                                              ; preds = %71, %85, %65, %111, %131
  %142 = phi ptr [ %114, %131 ], [ %18, %111 ], [ %60, %65 ], [ %60, %85 ], [ %60, %71 ]
  %143 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 6
  store i8 1, ptr %143, align 4, !tbaa !494
  %144 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 7
  store i8 0, ptr %144, align 1, !tbaa !493
  %145 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 4
  store ptr %3, ptr %145, align 8, !tbaa !490
  %146 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %147 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 8
  store i32 %146, ptr %147, align 8, !tbaa !498
  %148 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 9
  store i32 %2, ptr %148, align 4, !tbaa !499
  %149 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %146) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef nonnull %142, ptr noundef %149) #22
  %150 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !489
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !425
  tail call fastcc void @insert_temp_slot_address(ptr noundef %153, ptr noundef nonnull %142) #22
  %154 = load ptr, ptr %150, align 8, !tbaa !489
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !425
  %157 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %156) #23
  %158 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  %159 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %157, ptr noundef %158) #23
  store ptr %159, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !470
  %160 = icmp eq ptr %3, null
  br i1 %160, label %178, label %161

161:                                              ; preds = %141
  %162 = tail call i32 @get_alias_set(ptr noundef nonnull %3) #23
  tail call void @set_mem_alias_set(ptr noundef %157, i32 noundef %162) #23
  tail call void @set_mem_align(ptr noundef %157, i32 noundef %11) #23
  %163 = load i64, ptr %3, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i32, ptr %157, align 8
  %166 = shl i32 %164, 8
  %167 = and i32 %166, 134217728
  %168 = and i32 %165, -134217729
  %169 = or disjoint i32 %167, %168
  store i32 %169, ptr %157, align 8
  %170 = load i64, ptr %3, align 8
  %171 = trunc i64 %170 to i16
  switch i16 %171, label %175 [
    i16 15, label %172
    i16 16, label %172
    i16 17, label %172
    i16 18, label %172
    i16 13, label %172
  ]

172:                                              ; preds = %161, %161, %161, %161, %161
  %173 = and i32 %169, 1879048191
  %174 = or disjoint i32 %173, 268435456
  br label %180

175:                                              ; preds = %161
  %176 = and i32 %169, 1879048191
  %177 = or disjoint i32 %176, -2147483648
  br label %180

178:                                              ; preds = %141
  tail call void @set_mem_alias_set(ptr noundef %157, i32 noundef 0) #23
  tail call void @set_mem_align(ptr noundef %157, i32 noundef %11) #23
  %179 = load i32, ptr %157, align 8
  br label %180

180:                                              ; preds = %178, %172, %175
  %181 = phi i32 [ %179, %178 ], [ %174, %172 ], [ %177, %175 ]
  %182 = or i32 %181, 33554432
  store i32 %182, ptr %157, align 8
  ret ptr %157
}

; Function Attrs: optsize
declare i32 @objects_must_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cut_slot_from_list(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !prof !418 !PGOFuncName !500 {
  %3 = load ptr, ptr %0, align 8, !tbaa !501
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !502
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.temp_slot, ptr %3, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !502
  br label %9

9:                                                ; preds = %2, %7
  %10 = icmp eq ptr %6, null
  %11 = select i1 %10, ptr %1, ptr %6
  store ptr %3, ptr %11, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_slot_to_list(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !418 !PGOFuncName !503 {
  %3 = load ptr, ptr %1, align 8, !tbaa !419
  store ptr %3, ptr %0, align 8, !tbaa !501
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.temp_slot, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !502
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !502
  store ptr %0, ptr %1, align 8, !tbaa !419
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @temp_slots_at_level(i32 noundef %0) unnamed_addr #0 !prof !504 !PGOFuncName !505 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef %2) #22
  %4 = icmp sgt i32 %3, %0
  br i1 %4, label %8, label %5, !prof !506

5:                                                ; preds = %1
  %6 = add nsw i32 %0, 1
  tail call fastcc void @VEC_temp_slot_p_gc_safe_grow_cleared(i32 noundef %6) #22
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %10 = tail call fastcc ptr @VEC_temp_slot_p_base_address(ptr noundef %9) #22
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_temp_slot_address(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !507 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #23
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !508
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !510
  %6 = tail call fastcc i32 @temp_slot_address_compute_hash(ptr noundef %3) #22
  store i32 %6, ptr %3, align 8, !tbaa !511
  %7 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !419
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %6, i32 noundef 1) #23
  store ptr %3, ptr %8, align 8, !tbaa !419
  ret void
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_temp(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !418 {
  %4 = tail call ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef null) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @assign_temp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !512 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !441
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %15, !prof !513

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !425
  %14 = load i64, ptr %13, align 8
  br label %15

15:                                               ; preds = %4, %11
  %16 = phi i64 [ %14, %11 ], [ %6, %4 ]
  %17 = phi ptr [ %13, %11 ], [ %0, %4 ]
  %18 = phi ptr [ %0, %11 ], [ null, %4 ]
  %19 = and i64 %16, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %24, !prof !513

21:                                               ; preds = %15
  %22 = tail call i32 @vector_type_mode(ptr noundef nonnull %17) #23
  %23 = load i64, ptr %17, align 8
  br label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i64 [ %23, %21 ], [ %16, %24 ]
  %31 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %32 = trunc i64 %30 to i32
  %33 = lshr i32 %32, 21
  %34 = and i32 %33, 1
  store i32 %34, ptr %5, align 4, !tbaa !441
  %35 = icmp eq i32 %31, 1
  %36 = icmp ne i32 %2, 0
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %56, !prof !514

38:                                               ; preds = %29
  %39 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %17) #23
  switch i64 %39, label %40 [
    i64 0, label %53
    i64 -1, label %41
  ]

40:                                               ; preds = %38
  br label %53

41:                                               ; preds = %38
  %42 = tail call i64 @max_int_size_in_bytes(ptr noundef nonnull %17) #23
  %43 = icmp ne ptr %18, null
  %44 = icmp eq i64 %42, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %18) #23
  br label %53

53:                                               ; preds = %40, %38, %52, %46, %41
  %54 = phi i64 [ 1, %52 ], [ -1, %46 ], [ %42, %41 ], [ %39, %40 ], [ 1, %38 ]
  %55 = tail call ptr @assign_stack_temp_for_type(i32 noundef %31, i64 noundef %54, i32 noundef %1, ptr noundef nonnull %17) #22
  br label %63

56:                                               ; preds = %29
  %57 = icmp eq i32 %3, 0
  br i1 %57, label %58, label %60, !prof !513

58:                                               ; preds = %56
  %59 = call i32 @promote_mode(ptr noundef nonnull %17, i32 noundef %31, ptr noundef nonnull %5) #23
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %31, %56 ], [ %59, %58 ]
  %62 = call ptr @gen_reg_rtx(i32 noundef %61) #23
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %55, %53 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret ptr %64
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_temp_slot_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !515 {
  %3 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %1) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %62, !prof !516

5:                                                ; preds = %2, %36
  %6 = phi ptr [ %39, %36 ], [ %1, %2 ]
  %7 = phi ptr [ %40, %36 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %5, %19
  %9 = phi ptr [ %7, %5 ], [ %23, %19 ]
  %10 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %61, !prof !517

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 49
  br i1 %15, label %16, label %62, !prof !518

16:                                               ; preds = %12
  %17 = load i32, ptr %6, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %62 [
    i16 37, label %19
    i16 49, label %26
  ], !prof !519

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  tail call void @update_temp_slot_address(ptr noundef %21, ptr noundef nonnull %6) #22
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !425
  %24 = tail call i32 @rtx_equal_p(ptr noundef %23, ptr noundef nonnull %6) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %8, label %62, !prof !520

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !425
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = tail call i32 @rtx_equal_p(ptr noundef %28, ptr noundef %30) #23
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %32, label %43, label %34, !prof !521

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

36:                                               ; preds = %56, %50, %34, %48
  %37 = phi ptr [ %27, %48 ], [ %33, %34 ], [ %33, %50 ], [ %27, %56 ]
  %38 = phi ptr [ %49, %48 ], [ %35, %34 ], [ %29, %50 ], [ %29, %56 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !425
  %40 = load ptr, ptr %37, align 8, !tbaa !425
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %39) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %5, label %62, !prof !522

43:                                               ; preds = %26
  %44 = load ptr, ptr %33, align 8, !tbaa !425
  %45 = load ptr, ptr %29, align 8, !tbaa !425
  %46 = tail call i32 @rtx_equal_p(ptr noundef %44, ptr noundef %45) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !523

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

50:                                               ; preds = %43
  %51 = load ptr, ptr %27, align 8, !tbaa !425
  %52 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !425
  %54 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef %53) #23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %36, !prof !523

56:                                               ; preds = %50
  %57 = load ptr, ptr %33, align 8, !tbaa !425
  %58 = load ptr, ptr %52, align 8, !tbaa !425
  %59 = tail call i32 @rtx_equal_p(ptr noundef %57, ptr noundef %58) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %36, !prof !524

61:                                               ; preds = %8
  tail call fastcc void @insert_temp_slot_address(ptr noundef %6, ptr noundef nonnull %10) #22
  br label %62

62:                                               ; preds = %36, %56, %19, %12, %16, %2, %61
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_temp_slot_from_address(ptr noundef %0) unnamed_addr #0 !prof !525 !PGOFuncName !526 {
  %2 = alloca %struct.temp_slot_address_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !508
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %2, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !510
  %5 = call fastcc i32 @temp_slot_address_compute_hash(ptr noundef nonnull %2) #22
  store i32 %5, ptr %2, align 8, !tbaa !511
  %6 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !419
  %7 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %5) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !527

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !510
  br label %85

12:                                               ; preds = %1
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 49
  br i1 %15, label %16, label %27, !prof !528

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %27, !prof !521

22:                                               ; preds = %16
  %23 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %18) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %85, !prof !523

25:                                               ; preds = %22
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %25, %16, %12
  %28 = phi i32 [ %26, %25 ], [ %13, %16 ], [ %13, %12 ]
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 49
  br i1 %30, label %31, label %42, !prof !528

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !425
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %42, !prof !529

37:                                               ; preds = %31
  %38 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %33) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %85

40:                                               ; preds = %37
  %41 = load i32, ptr %0, align 8
  br label %42

42:                                               ; preds = %40, %27, %31
  %43 = phi i32 [ %41, %40 ], [ %28, %27 ], [ %28, %31 ]
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %85, !prof !528

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !419
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %85, !prof !529

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !425
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 30
  br i1 %56, label %57, label %85

57:                                               ; preds = %51
  %58 = call fastcc i32 @max_slot_level() #22
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %57, %82
  %61 = phi i32 [ %83, %82 ], [ %58, %57 ]
  %62 = call fastcc ptr @temp_slots_at_level(i32 noundef %61) #22
  %63 = load ptr, ptr %62, align 8, !tbaa !419
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %52, align 8, !tbaa !425
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !425
  br label %69

69:                                               ; preds = %65, %79
  %70 = phi ptr [ %63, %65 ], [ %80, %79 ]
  %71 = getelementptr inbounds %struct.temp_slot, ptr %70, i64 0, i32 10
  %72 = load i64, ptr %71, align 8, !tbaa !495
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.temp_slot, ptr %70, i64 0, i32 11
  %76 = load i64, ptr %75, align 8, !tbaa !496
  %77 = add nsw i64 %76, %72
  %78 = icmp slt i64 %68, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %69, %74
  %80 = load ptr, ptr %70, align 8, !tbaa !419
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %69, !llvm.loop !530

82:                                               ; preds = %79, %60
  %83 = add nsw i32 %61, -1
  %84 = icmp slt i32 %61, 1
  br i1 %84, label %85, label %60, !llvm.loop !531

85:                                               ; preds = %82, %74, %42, %46, %51, %57, %37, %22, %9
  %86 = phi ptr [ %11, %9 ], [ %23, %22 ], [ %38, %37 ], [ null, %57 ], [ null, %51 ], [ null, %46 ], [ null, %42 ], [ %70, %74 ], [ null, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  ret ptr %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_temp_addr_taken(ptr noundef readonly %0) local_unnamed_addr #0 !prof !418 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !441
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %9) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.temp_slot, ptr %17, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !493
  br label %21

21:                                               ; preds = %16, %19, %3, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @preserve_temp_slots(ptr noundef %0) local_unnamed_addr #0 !prof !532 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %19, !prof !533

3:                                                ; preds = %1
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %5 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8, !prof !534

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %10, %17 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !501
  %11 = getelementptr inbounds %struct.temp_slot, ptr %9, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !493
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %16 = add nsw i32 %15, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %9, i32 noundef %16) #22
  br label %17

17:                                               ; preds = %8, %14
  %18 = icmp eq ptr %10, null
  br i1 %18, label %103, label %8, !prof !535, !llvm.loop !536

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 1073807359
  %22 = icmp eq i32 %21, 1073741861
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i32, ptr %0, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ %20, %19 ]
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !425
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !441
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %57

41:                                               ; preds = %32, %28
  %42 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %43 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %42) #22
  %44 = load ptr, ptr %43, align 8, !tbaa !419
  %45 = icmp eq ptr %44, null
  br i1 %45, label %103, label %46

46:                                               ; preds = %41, %55
  %47 = phi ptr [ %48, %55 ], [ %44, %41 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !501
  %49 = getelementptr inbounds %struct.temp_slot, ptr %47, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !tbaa !493
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %54 = add nsw i32 %53, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %47, i32 noundef %54) #22
  br label %55

55:                                               ; preds = %46, %52
  %56 = icmp eq ptr %48, null
  br i1 %56, label %103, label %46, !llvm.loop !537

57:                                               ; preds = %32
  %58 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %34) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %87, label %60

60:                                               ; preds = %23, %57
  %61 = phi ptr [ %58, %57 ], [ %24, %23 ]
  %62 = getelementptr inbounds %struct.temp_slot, ptr %61, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !498
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %63) #22
  %68 = load ptr, ptr %67, align 8, !tbaa !419
  %69 = icmp eq ptr %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %66, %81
  %71 = phi ptr [ %72, %81 ], [ %68, %66 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !501
  %73 = icmp eq ptr %61, %71
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.temp_slot, ptr %71, i64 0, i32 7
  %76 = load i8, ptr %75, align 1, !tbaa !493
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %80 = add nsw i32 %79, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %71, i32 noundef %80) #22
  br label %81

81:                                               ; preds = %70, %74, %78
  %82 = icmp eq ptr %72, null
  br i1 %82, label %83, label %70, !llvm.loop !538

83:                                               ; preds = %81, %66
  %84 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %85 = add nsw i32 %84, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %61, i32 noundef %85) #22
  %86 = getelementptr inbounds %struct.temp_slot, ptr %61, i64 0, i32 7
  store i8 0, ptr %86, align 1, !tbaa !493
  br label %103

87:                                               ; preds = %57
  %88 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %89 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %88) #22
  %90 = load ptr, ptr %89, align 8, !tbaa !419
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %87, %101
  %93 = phi ptr [ %94, %101 ], [ %90, %87 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !501
  %95 = getelementptr inbounds %struct.temp_slot, ptr %93, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !499
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %100 = add nsw i32 %99, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %93, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %92, %98
  %102 = icmp eq ptr %94, null
  br i1 %102, label %103, label %92, !llvm.loop !539

103:                                              ; preds = %101, %55, %17, %87, %41, %3, %60, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_slot_to_level(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !540 {
  %3 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !498
  %5 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %4) #22
  tail call fastcc void @cut_slot_from_list(ptr noundef %0, ptr noundef %5) #22
  %6 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef %0, ptr noundef %6) #22
  store i32 %1, ptr %3, align 8, !tbaa !498
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_temp_slots() local_unnamed_addr #0 !prof !541 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %2 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !542

5:                                                ; preds = %0, %16
  %6 = phi i1 [ false, %16 ], [ true, %0 ]
  %7 = phi ptr [ %10, %16 ], [ %3, %0 ]
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %10, %14 ], [ %7, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !501
  %11 = getelementptr inbounds %struct.temp_slot, ptr %9, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !499
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, null
  br i1 %15, label %18, label %8, !prof !535, !llvm.loop !543

16:                                               ; preds = %8
  tail call fastcc void @make_slot_available(ptr noundef nonnull %9) #22
  %17 = icmp eq ptr %10, null
  br i1 %17, label %19, label %5, !prof !535, !llvm.loop !543

18:                                               ; preds = %14
  br i1 %6, label %20, label %19, !prof !544

19:                                               ; preds = %16, %18
  tail call fastcc void @remove_unused_temp_slot_addresses() #22
  tail call fastcc void @combine_temp_slots() #22
  br label %20

20:                                               ; preds = %0, %19, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_slot_available(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !545 {
  %2 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !498
  %4 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %3) #22
  tail call fastcc void @cut_slot_from_list(ptr noundef %0, ptr noundef %4) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %5 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 6
  store i8 0, ptr %5, align 4, !tbaa !494
  store i32 -1, ptr %2, align 8, !tbaa !498
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unused_temp_slot_addresses() unnamed_addr #0 !prof !418 !PGOFuncName !546 {
  %1 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !419
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @remove_unused_temp_slot_addresses_1, ptr noundef null) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @combine_temp_slots() unnamed_addr #9 !prof !418 !PGOFuncName !547 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !441
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %78

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !441
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !419
  br i1 %5, label %7, label %23

7:                                                ; preds = %3
  %8 = icmp eq ptr %6, null
  br i1 %8, label %78, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr @optimize, align 4
  %11 = icmp eq i32 %10, 0
  br label %16

12:                                               ; preds = %16
  %13 = add nuw nsw i32 %18, 1
  %14 = load ptr, ptr %17, align 8, !tbaa !419
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !llvm.loop !548

16:                                               ; preds = %9, %12
  %17 = phi ptr [ %6, %9 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %19 = icmp eq i32 %18, 101
  %20 = icmp ugt i32 %18, 10
  %21 = select i1 %20, i1 %11, i1 false
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %78, label %12

23:                                               ; preds = %12, %3
  %24 = icmp eq ptr %6, null
  br i1 %24, label %78, label %25

25:                                               ; preds = %23, %76
  %26 = phi ptr [ %27, %76 ], [ %6, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !501
  %28 = getelementptr inbounds %struct.temp_slot, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !489
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 16711680
  %32 = icmp eq i32 %31, 65536
  br i1 %32, label %33, label %76

33:                                               ; preds = %25
  %34 = icmp eq ptr %27, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.temp_slot, ptr %26, i64 0, i32 10
  %37 = getelementptr inbounds %struct.temp_slot, ptr %26, i64 0, i32 11
  %38 = getelementptr inbounds %struct.temp_slot, ptr %26, i64 0, i32 3
  br label %39

39:                                               ; preds = %35, %74
  %40 = phi ptr [ %27, %35 ], [ %41, %74 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !501
  %42 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !489
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 16711680
  %46 = icmp eq i32 %45, 65536
  br i1 %46, label %47, label %74

47:                                               ; preds = %39
  %48 = load i64, ptr %36, align 8, !tbaa !495
  %49 = load i64, ptr %37, align 8, !tbaa !496
  %50 = add nsw i64 %49, %48
  %51 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 10
  %52 = load i64, ptr %51, align 8, !tbaa !495
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %56 = load i64, ptr %55, align 8, !tbaa !496
  %57 = add nsw i64 %56, %52
  %58 = icmp eq i64 %57, %48
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %61 = load i64, ptr %38, align 8, !tbaa !488
  %62 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !488
  %64 = add nsw i64 %63, %61
  store i64 %64, ptr %62, align 8, !tbaa !488
  %65 = add nsw i64 %56, %49
  store i64 %65, ptr %60, align 8, !tbaa !496
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %26, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %76

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !488
  %69 = load i64, ptr %38, align 8, !tbaa !488
  %70 = add nsw i64 %69, %68
  store i64 %70, ptr %38, align 8, !tbaa !488
  %71 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %72 = load i64, ptr %71, align 8, !tbaa !496
  %73 = add nsw i64 %72, %49
  store i64 %73, ptr %37, align 8, !tbaa !496
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %40, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %74

74:                                               ; preds = %54, %66, %39
  %75 = icmp eq ptr %41, null
  br i1 %75, label %76, label %39

76:                                               ; preds = %74, %59, %25
  %77 = icmp eq ptr %27, null
  br i1 %77, label %78, label %25, !llvm.loop !549

78:                                               ; preds = %16, %33, %76, %7, %23, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @push_temp_slots() local_unnamed_addr #10 !prof !550 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_temp_slots() local_unnamed_addr #0 !prof !550 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %2 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !551

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !501
  tail call fastcc void @make_slot_available(ptr noundef nonnull %6) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !535, !llvm.loop !552

9:                                                ; preds = %5
  tail call fastcc void @remove_unused_temp_slot_addresses() #22
  tail call fastcc void @combine_temp_slots() #22
  br label %10

10:                                               ; preds = %0, %9
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !497
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_temp_slots() local_unnamed_addr #0 !prof !553 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), i8 0, i64 20, i1 false)
  %1 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !419
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !554

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 32, ptr noundef nonnull @temp_slot_address_hash, ptr noundef nonnull @temp_slot_address_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %4, ptr @temp_slot_address_table, align 8, !tbaa !419
  br label %6

5:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #23
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @temp_slot_address_hash(ptr nocapture noundef readonly %0) #11 !prof !418 !PGOFuncName !555 {
  %2 = load i32, ptr %0, align 8, !tbaa !511
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @temp_slot_address_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !418 !PGOFuncName !556 {
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !508
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  %7 = tail call i32 @exp_equiv_p(ptr noundef %4, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1) #23
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #6

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #6

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @instantiate_decl_rtl(ptr noundef %0) local_unnamed_addr #0 !prof !557 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3, !prof !558

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %11, %7 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %30 [
    i16 41, label %7
    i16 43, label %13
  ], !prof !559

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  tail call void @instantiate_decl_rtl(ptr noundef %9) #22
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %3, !prof !560

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !425
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !441
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %30, label %22, !prof !561

22:                                               ; preds = %13
  %23 = icmp eq i32 %17, 37
  br i1 %23, label %24, label %28, !prof !562

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #22
  %26 = add i32 %25, -58
  %27 = icmp ult i32 %26, -5
  br i1 %27, label %30, label %28, !prof !514

28:                                               ; preds = %24, %22
  %29 = tail call i32 @for_each_rtx(ptr noundef nonnull %14, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  br label %30

30:                                               ; preds = %7, %3, %1, %13, %24, %28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !563 !PGOFuncName !564 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !425
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @instantiate_virtual_regs_in_rtx(ptr nocapture noundef %0, ptr noundef writeonly %1) #0 !prof !565 !PGOFuncName !566 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load ptr, ptr %0, align 8, !tbaa !419
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6, !prof !567

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %32 [
    i16 37, label %9
    i16 49, label %16
  ], !prof !568

9:                                                ; preds = %6
  %10 = call fastcc ptr @instantiate_new_reg(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12, !prof !569

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !570
  %14 = tail call ptr @plus_constant(ptr noundef nonnull %10, i64 noundef %13) #23
  store ptr %14, ptr %0, align 8, !tbaa !419
  %15 = icmp eq ptr %1, null
  br i1 %15, label %32, label %31, !prof !571

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = call fastcc ptr @instantiate_new_reg(ptr noundef %18, ptr noundef nonnull %3) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !572

21:                                               ; preds = %16
  %22 = load i64, ptr %3, align 8, !tbaa !570
  %23 = tail call ptr @plus_constant(ptr noundef nonnull %19, i64 noundef %22) #23
  %24 = load i32, ptr %4, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !425
  %29 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %26, ptr noundef %23, ptr noundef %28) #23
  store ptr %29, ptr %0, align 8, !tbaa !419
  %30 = icmp eq ptr %1, null
  br i1 %30, label %32, label %31, !prof !573

31:                                               ; preds = %21, %12
  store i8 1, ptr %1, align 1, !tbaa !425
  br label %32

32:                                               ; preds = %31, %16, %6, %21, %9, %12, %2
  %33 = phi i32 [ 0, %2 ], [ -1, %12 ], [ -1, %9 ], [ -1, %21 ], [ 0, %6 ], [ 0, %16 ], [ -1, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @instantiate_virtual_regs() #0 !prof !512 !PGOFuncName !574 {
  %1 = load i32, ptr @target_flags, align 4, !tbaa !441
  %2 = and i32 %1, 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7, !prof !513

4:                                                ; preds = %0
  %5 = tail call i32 @ix86_cfun_abi() #23
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %4, %0
  %8 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !575
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !425
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = tail call i32 @ix86_function_type_abi(ptr noundef %15) #23
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %20 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %19) #23
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ]
  %23 = add nsw i32 %22, %8
  br label %24

24:                                               ; preds = %4, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %4 ]
  store i32 %25, ptr @dynamic_offset, align 4, !tbaa !441
  %26 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !576
  store i32 %26, ptr @cfa_offset, align 4, !tbaa !441
  tail call void @init_recog() #23
  %27 = tail call ptr @get_insns() #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29, !prof !577

29:                                               ; preds = %24, %58
  %30 = phi ptr [ %60, %58 ], [ %27, %24 ]
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %58, !prof !578

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !425
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i16
  switch i16 %39, label %40 [
    i16 24, label %58
    i16 25, label %58
    i16 20, label %58
    i16 21, label %58
    i16 16, label %58
  ], !prof !579

40:                                               ; preds = %35
  %41 = icmp eq i32 %32, 7
  br i1 %41, label %42, label %44, !prof !580

42:                                               ; preds = %40
  %43 = tail call i32 @for_each_rtx(ptr noundef nonnull %36, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  br label %45

44:                                               ; preds = %40
  tail call fastcc void @instantiate_virtual_regs_in_insn(ptr noundef nonnull %30) #22
  br label %45

45:                                               ; preds = %42, %44
  %46 = load i32, ptr %30, align 8
  %47 = and i32 %46, 134217728
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58, !prof !581

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 1
  %51 = tail call i32 @for_each_rtx(ptr noundef nonnull %50, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  %52 = load i32, ptr %30, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %58, !prof !582

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %57 = tail call i32 @for_each_rtx(ptr noundef nonnull %56, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  br label %58

58:                                               ; preds = %29, %35, %35, %35, %35, %35, %55, %49, %45
  %59 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !425
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !prof !583, !llvm.loop !584

62:                                               ; preds = %58, %24
  %63 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  tail call fastcc void @instantiate_decls(ptr noundef %63) #22
  %64 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 99), align 8, !tbaa !585
  tail call void %64() #23
  store i32 1, ptr @virtuals_instantiated, align 4, !tbaa !441
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @aggregate_value_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !597 {
  br label %3

3:                                                ; preds = %47, %2
  %4 = phi ptr [ %0, %2 ], [ %48, %47 ]
  %5 = phi ptr [ %1, %2 ], [ %38, %47 ]
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !441
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11, !prof !598

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !425
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ %4, %3 ]
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17, !prof !599

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %36 [
    i16 59, label %20
    i16 29, label %32
    i16 20, label %37
    i16 21, label %37
    i16 1, label %35
  ], !prof !600

20:                                               ; preds = %17
  %21 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %5) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28, !prof !601

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !425
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi ptr [ %27, %23 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !425
  br label %37

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !425
  br label %37

35:                                               ; preds = %17
  br label %37

36:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1887, ptr noundef nonnull @.str.2) #23
  br label %37

37:                                               ; preds = %28, %32, %35, %36, %17, %17, %14
  %38 = phi ptr [ %5, %36 ], [ null, %35 ], [ %5, %17 ], [ %5, %17 ], [ %34, %32 ], [ %31, %28 ], [ null, %14 ]
  %39 = phi ptr [ null, %36 ], [ null, %35 ], [ null, %17 ], [ null, %17 ], [ %5, %32 ], [ %21, %28 ], [ null, %14 ]
  %40 = load i64, ptr %15, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %49 [
    i16 19, label %122
    i16 16, label %42
  ], !prof !602

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !603

47:                                               ; preds = %42
  %48 = tail call ptr @first_field(ptr noundef nonnull %15) #23
  br label %3

49:                                               ; preds = %37, %42
  %50 = load i64, ptr %4, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %57 [
    i16 34, label %52
    i16 36, label %52
  ], !prof !604

52:                                               ; preds = %49, %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 268435456
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %122, !prof !605

57:                                               ; preds = %49, %52
  %58 = and i64 %50, 65535
  %59 = icmp eq i64 %58, 59
  %60 = icmp ne ptr %39, null
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %71, !prof !606

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_decl_non_common, ptr %39, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !425
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66, !prof !607

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 268435456
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %122, !prof !608

71:                                               ; preds = %66, %62, %57
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 3), align 8, !tbaa !609
  %73 = tail call zeroext i8 %72(ptr noundef nonnull %15, ptr noundef %38) #23
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %122, !prof !610

75:                                               ; preds = %71
  %76 = load i64, ptr %15, align 8
  %77 = and i64 %76, 262144
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %122, !prof !610

79:                                               ; preds = %75
  %80 = load i32, ptr @flag_pcc_struct_return, align 4, !tbaa !441
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82, !prof !611

82:                                               ; preds = %79
  %83 = trunc i64 %76 to i32
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -15
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %122, label %87, !prof !612

87:                                               ; preds = %82, %79
  %88 = tail call ptr @hard_function_value(ptr noundef nonnull %15, ptr noundef null, ptr noundef %38, i32 noundef 0) #23
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %92, label %122, !prof !613

92:                                               ; preds = %87
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %88) #22
  %94 = sext i32 %93 to i64
  %95 = load i64, ptr %15, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %100, !prof !614

98:                                               ; preds = %92
  %99 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #23
  br label %105

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i32 [ %99, %98 ], [ %104, %100 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %94, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !425
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111, !prof !615

111:                                              ; preds = %105
  %112 = zext i8 %109 to i64
  br label %116

113:                                              ; preds = %116
  %114 = add nuw nsw i64 %117, 1
  %115 = icmp eq i64 %114, %112
  br i1 %115, label %122, label %116, !prof !616, !llvm.loop !617

116:                                              ; preds = %111, %113
  %117 = phi i64 [ 0, %111 ], [ %114, %113 ]
  %118 = add nsw i64 %117, %94
  %119 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !425
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %113, !prof !618

122:                                              ; preds = %37, %116, %113, %105, %82, %87, %75, %71, %66, %52
  %123 = phi i32 [ 1, %52 ], [ 1, %66 ], [ 1, %71 ], [ 1, %75 ], [ 1, %82 ], [ 0, %87 ], [ 0, %105 ], [ 1, %116 ], [ 0, %113 ], [ 0, %37 ]
  ret i32 %123
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @first_field(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @hard_function_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @use_register_for_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !619 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 20), align 8, !tbaa !620
  %3 = tail call zeroext i8 %2() #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %49, label %5, !prof !621

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 327680
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %49, !prof !622

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 255
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %49, label %14, !prof !621

14:                                               ; preds = %9
  %15 = load i32, ptr @flag_float_store, align 4, !tbaa !441
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17, !prof !623

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %28 [
    i16 9, label %49
    i16 13, label %22
    i16 14, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !425
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 9
  br i1 %27, label %49, label %28

28:                                               ; preds = %17, %22, %14
  %29 = and i64 %11, 1024
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49, !prof !624

31:                                               ; preds = %28
  %32 = load i32, ptr @optimize, align 4, !tbaa !441
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49, !prof !513

34:                                               ; preds = %31
  %35 = and i64 %11, 16777216
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !425
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = add i16 %41, -16
  %43 = icmp ult i16 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !425
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37, %44
  br label %49

49:                                               ; preds = %44, %34, %31, %28, %22, %17, %9, %5, %1, %48
  %50 = phi i8 [ 1, %48 ], [ 1, %1 ], [ 0, %5 ], [ 0, %9 ], [ 0, %17 ], [ 0, %22 ], [ 1, %28 ], [ 1, %31 ], [ 0, %34 ], [ 0, %44 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pass_by_reference(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !625 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6, !prof !626

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %45, !prof !627

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !425
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14, !prof !626

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %45, !prof !627

18:                                               ; preds = %14
  %19 = and i64 %7, 65535
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %21, label %40, !prof !626

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @first_field(ptr noundef nonnull %2) #23
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !425
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #23
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
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 5), align 8, !tbaa !628
  %44 = tail call zeroext i8 %43(ptr noundef %0, i32 noundef %41, ptr noundef %42, i8 noundef zeroext %3) #23
  br label %45

45:                                               ; preds = %10, %14, %6, %40
  %46 = phi i8 [ %44, %40 ], [ 1, %6 ], [ 1, %14 ], [ 1, %10 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @reference_callee_copied(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !418 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 12), align 8, !tbaa !629
  %12 = tail call zeroext i8 %11(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) #23
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i8 [ %12, %10 ], [ 0, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_parameters() local_unnamed_addr #0 !prof !445 {
  %1 = alloca %struct.assign_parm_data_all, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.assign_parm_data_one, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call fastcc void @assign_parms_initialize_all(ptr noundef nonnull %1) #22
  %6 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %1) #22
  store ptr %6, ptr %4, align 8, !tbaa !419
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #22, !range !433
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %110, label %9, !prof !630

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 5
  br label %11

11:                                               ; preds = %9, %106
  %12 = phi i32 [ 0, %9 ], [ %107, %106 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #24
  %13 = load ptr, ptr %2, align 8, !tbaa !419
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %1, ptr noundef %13, ptr noundef nonnull %5) #22
  %14 = load i32, ptr %10, align 4, !tbaa !631
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %106, label %16, !prof !457

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = icmp eq ptr %18, null
  br i1 %19, label %106, label %20, !prof !457

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 6
  %22 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  %24 = load i32, ptr %21, align 8, !tbaa !635
  %25 = load ptr, ptr %22, align 8, !tbaa !636
  %26 = load i8, ptr %23, align 4
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  call void @function_arg_advance(ptr noundef nonnull %1, i32 noundef %24, ptr noundef %25, i32 noundef %28) #23
  %29 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %22, ptr noundef nonnull @gimplify_parm_type, ptr noundef nonnull %3, ptr noundef null) #23
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !425
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %36, label %35, !prof !637

35:                                               ; preds = %20
  call void @gimplify_one_sizepos(ptr noundef nonnull %17, ptr noundef nonnull %3) #23
  call void @gimplify_one_sizepos(ptr noundef nonnull %30, ptr noundef nonnull %3) #23
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i8, ptr %23, align 4
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %106, label %40, !prof !637

40:                                               ; preds = %36
  %41 = load ptr, ptr %22, align 8, !tbaa !636
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !425
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @vector_type_mode(ptr noundef nonnull %43) #23
  %49 = load i8, ptr %23, align 4
  br label %55

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i8 [ %49, %47 ], [ %37, %50 ]
  %57 = phi i32 [ %48, %47 ], [ %54, %50 ]
  %58 = and i8 %56, 1
  %59 = call zeroext i8 @reference_callee_copied(ptr noundef nonnull %1, i32 noundef %57, ptr noundef nonnull %43, i8 noundef zeroext %58) #22
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %30, align 8, !tbaa !425
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 23
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i32, ptr @flag_stack_check, align 4, !tbaa !441
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 @compare_tree_int(ptr noundef nonnull %62, i64 noundef 40) #23
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69, %66
  %73 = call ptr @get_name(ptr noundef nonnull %13) #23
  %74 = call ptr @create_tmp_var(ptr noundef nonnull %43, ptr noundef %73) #23
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, -1025
  store i64 %77, ptr %75, align 8
  %78 = load i64, ptr %13, align 8
  %79 = and i64 %78, 262144
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %72
  %82 = and i64 %78, -262145
  store i64 %82, ptr %13, align 8
  %83 = load i64, ptr %74, align 8
  %84 = or i64 %83, 262144
  store i64 %84, ptr %74, align 8
  br label %100

85:                                               ; preds = %69, %61
  %86 = call ptr @build_pointer_type(ptr noundef nonnull %43) #23
  %87 = call ptr @get_name(ptr noundef nonnull %13) #23
  %88 = call ptr @create_tmp_var(ptr noundef %86, ptr noundef %87) #23
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, -1025
  store i64 %91, ptr %89, align 8
  %92 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %88) #23
  %93 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !419
  %94 = load ptr, ptr %30, align 8, !tbaa !425
  %95 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %93, i32 noundef 1, ptr noundef %94) #23
  %96 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %86, ptr noundef %95) #23
  %97 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !425
  %99 = call ptr @build2_stat(i32 noundef 53, ptr noundef %98, ptr noundef %88, ptr noundef %96) #23
  call void @gimplify_and_add(ptr noundef %99, ptr noundef nonnull %3) #23
  br label %100

100:                                              ; preds = %72, %81, %85
  %101 = phi ptr [ %92, %85 ], [ %74, %81 ], [ %74, %72 ]
  %102 = call ptr @gimplify_assign(ptr noundef %101, ptr noundef nonnull %13, ptr noundef nonnull %3) #23
  call void @decl_value_expr_insert(ptr noundef nonnull %13, ptr noundef %101) #23
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = or i64 %104, 67108864
  store i64 %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %36, %100, %55, %11, %16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #24
  %107 = add i32 %12, 1
  %108 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef %107, ptr noundef nonnull %2) #22, !range !433
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %11, !prof !638, !llvm.loop !639

110:                                              ; preds = %106, %0
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #22
  %111 = load ptr, ptr %3, align 8, !tbaa !419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %1) #24
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_initialize_all(ptr noundef %0) unnamed_addr #0 !prof !553 !PGOFuncName !640 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  tail call void @init_cumulative_args(ptr noundef %0, ptr noundef %4, ptr noundef null, ptr noundef %2) #23
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %6 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 8, !tbaa !641
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @assign_parms_augmented_arg_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !553 !PGOFuncName !643 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !425
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !644

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %1 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %10) #22
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !425
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !prof !645, !llvm.loop !646

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !tbaa !425
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ null, %1 ]
  %18 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !647
  %19 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !425
  %21 = tail call i32 @aggregate_value_p(ptr noundef %20, ptr noundef nonnull %3) #22, !range !433
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %48, label %23, !prof !648

23:                                               ; preds = %16
  %24 = load ptr, ptr @cfun, align 8, !tbaa !419
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !649
  %31 = load ptr, ptr %4, align 8, !tbaa !425
  %32 = tail call ptr %30(ptr noundef %31, i32 noundef 1) #23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !425
  %37 = tail call ptr @build_pointer_type(ptr noundef %36) #23
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !425
  %40 = tail call ptr @build_decl_stat(i32 noundef %39, i32 noundef 34, ptr noundef null, ptr noundef %37) #23
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 5
  store ptr %37, ptr %41, align 8, !tbaa !425
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 5120
  store i64 %44, ptr %42, align 8
  %45 = load ptr, ptr %18, align 8, !tbaa !647
  %46 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !425
  store ptr %40, ptr %18, align 8, !tbaa !647
  call fastcc void @VEC_tree_heap_safe_insert(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %40) #22
  %47 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 2
  store ptr %40, ptr %47, align 8, !tbaa !650
  br label %48

48:                                               ; preds = %34, %29, %23, %16
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !651
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !648

51:                                               ; preds = %48
  call fastcc void @split_complex_args(ptr noundef nonnull %2) #22
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %2, align 8, !tbaa !419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !652 !PGOFuncName !653 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !644

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !654
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !656

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !419
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !419
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_data_types(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !553 !PGOFuncName !657 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %5 = load ptr, ptr @cfun, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !648

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  store i8 1, ptr %11, align 4
  br label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !425
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  store i8 1, ptr %17, align 4
  br label %28

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !658
  %20 = tail call zeroext i8 %19(ptr noundef %0) #23
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %23 = load i8, ptr %22, align 4
  br i1 %21, label %26, label %24

24:                                               ; preds = %18
  %25 = or i8 %23, 1
  store i8 %25, ptr %22, align 4
  br label %28

26:                                               ; preds = %18
  %27 = and i8 %23, -2
  store i8 %27, ptr %22, align 4
  br label %28

28:                                               ; preds = %16, %26, %24, %10
  %29 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !425
  %33 = load ptr, ptr @global_trees, align 16, !tbaa !419
  %34 = icmp eq ptr %30, %33
  br i1 %34, label %45, label %35, !prof !659

35:                                               ; preds = %28
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp ne i64 %37, 34
  %39 = icmp eq ptr %32, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %45, label %41, !prof !660

41:                                               ; preds = %35
  %42 = load i64, ptr %30, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 19
  br i1 %44, label %45, label %47, !prof !659

45:                                               ; preds = %41, %35, %28
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !419
  br label %109

47:                                               ; preds = %41
  %48 = load i64, ptr %32, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %54, !prof !659

51:                                               ; preds = %47
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %32) #23
  %53 = load i64, ptr %30, align 8
  br label %59

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i64 [ %53, %51 ], [ %42, %54 ]
  %61 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %62 = and i64 %60, 65535
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %66, !prof !659

64:                                               ; preds = %59
  %65 = tail call i32 @vector_type_mode(ptr noundef nonnull %30) #23
  br label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi i32 [ %65, %64 ], [ %70, %66 ]
  %73 = load i64, ptr %32, align 8
  %74 = and i64 %73, 65534
  %75 = icmp eq i64 %74, 16
  br i1 %75, label %76, label %85, !prof !660

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = tail call ptr @first_field(ptr noundef nonnull %32) #23
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !425
  br label %85

85:                                               ; preds = %71, %81, %76
  %86 = phi ptr [ %84, %81 ], [ %32, %76 ], [ %32, %71 ]
  %87 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %88 = load i8, ptr %87, align 4
  %89 = and i8 %88, 1
  %90 = tail call zeroext i8 @pass_by_reference(ptr noundef %0, i32 noundef %61, ptr noundef %86, i8 noundef zeroext %89) #22
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %92, !prof !648

92:                                               ; preds = %85
  %93 = tail call ptr @build_pointer_type(ptr noundef %86) #23
  %94 = load i8, ptr %87, align 4
  %95 = or i8 %94, 2
  store i8 %95, ptr %87, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = phi ptr [ %93, %92 ], [ %30, %85 ]
  %98 = phi ptr [ %93, %92 ], [ %86, %85 ]
  %99 = phi i32 [ 16, %92 ], [ %72, %85 ]
  %100 = phi i32 [ 16, %92 ], [ %61, %85 ]
  %101 = load i64, ptr %98, align 8
  %102 = trunc i64 %101 to i32
  %103 = lshr i32 %102, 21
  %104 = and i32 %103, 1
  store i32 %104, ptr %4, align 4, !tbaa !441
  %105 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %106 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !425
  %108 = call i32 @promote_function_mode(ptr noundef nonnull %98, i32 noundef %100, ptr noundef nonnull %4, ptr noundef %107, i32 noundef 0) #23
  br label %109

109:                                              ; preds = %96, %45
  %110 = phi ptr [ %46, %45 ], [ %97, %96 ]
  %111 = phi ptr [ %46, %45 ], [ %98, %96 ]
  %112 = phi i32 [ 0, %45 ], [ %99, %96 ]
  %113 = phi i32 [ 0, %45 ], [ %100, %96 ]
  %114 = phi i32 [ 0, %45 ], [ %108, %96 ]
  store ptr %110, ptr %2, align 8, !tbaa !661
  %115 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  store ptr %111, ptr %115, align 8, !tbaa !636
  %116 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  store i32 %112, ptr %116, align 8, !tbaa !662
  %117 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 5
  store i32 %113, ptr %117, align 4, !tbaa !631
  %118 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  store i32 %114, ptr %118, align 8, !tbaa !635
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @gimplify_parm_type(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !663 !PGOFuncName !664 {
  %4 = load ptr, ptr %0, align 8, !tbaa !419
  store i32 0, ptr %1, align 4, !tbaa !441
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !441
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %23, !prof !665

10:                                               ; preds = %3
  %11 = trunc i64 %5 to i16
  switch i16 %11, label %12 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !666

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !425
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !457

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = or i64 %17, %5
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23, !prof !667

21:                                               ; preds = %16
  tail call void @gimplify_type_sizes(ptr noundef nonnull %4, ptr noundef %2) #23
  br label %22

22:                                               ; preds = %10, %10, %21
  store i32 1, ptr %1, align 4, !tbaa !441
  br label %23

23:                                               ; preds = %22, %16, %12, %3
  ret ptr null
}

; Function Attrs: optsize
declare void @gimplify_one_sizepos(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #12 !prof !553 !PGOFuncName !668 {
  %2 = load ptr, ptr %0, align 8, !tbaa !419
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !659

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !419
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @locate_and_pad_parm(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !prof !669 {
  %8 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #23
  %9 = icmp eq i32 %2, 0
  %10 = icmp sgt i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %31, !prof !670

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !671
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %14) #23
  %19 = load i64, ptr %5, align 8, !tbaa !672
  %20 = tail call ptr @size_int_kind(i64 noundef %19, i32 noundef 1) #23
  %21 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %18, ptr noundef %20) #23
  %22 = zext nneg i32 %8 to i64
  %23 = tail call ptr @size_int_kind(i64 noundef %22, i32 noundef 1) #23
  %24 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %21, ptr noundef %23) #23
  store ptr %24, ptr %13, align 8, !tbaa !671
  br label %29

25:                                               ; preds = %12
  %26 = load i64, ptr %5, align 8, !tbaa !672
  %27 = zext nneg i32 %8 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %16
  %30 = phi i64 [ 0, %16 ], [ %27, %25 ]
  store i64 %30, ptr %5, align 8, !tbaa !672
  br label %31

31:                                               ; preds = %29, %25, %7
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33, !prof !673

33:                                               ; preds = %31
  %34 = tail call ptr @size_in_bytes(ptr noundef nonnull %1) #23
  br label %41

35:                                               ; preds = %31
  %36 = zext i32 %0 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !425
  %39 = zext i8 %38 to i64
  %40 = tail call ptr @size_int_kind(i64 noundef %39, i32 noundef 0) #23
  br label %41

41:                                               ; preds = %35, %33
  %42 = phi ptr [ %34, %33 ], [ %40, %35 ]
  %43 = tail call i32 @ix86_function_arg_boundary(i32 noundef %0, ptr noundef %1) #23
  %44 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 4
  store i32 1, ptr %44, align 8, !tbaa !674
  %45 = icmp ugt i32 %43, -2147483648
  br i1 %45, label %46, label %47, !prof !673

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ -2147483648, %46 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 5
  store i32 %48, ptr %49, align 4, !tbaa !675
  %50 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %52, label %63, !prof !673

52:                                               ; preds = %47
  %53 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !464
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  br label %63

56:                                               ; preds = %52
  %57 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !465
  %58 = icmp eq i8 %57, 0
  %59 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3558, ptr noundef nonnull @.str.2) #23
  br label %63

63:                                               ; preds = %62, %56, %55, %47
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !467
  %65 = icmp ult i32 %64, %48
  br i1 %65, label %66, label %67, !prof !673

66:                                               ; preds = %63
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !467
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !676
  %69 = icmp ult i32 %68, %48
  br i1 %69, label %70, label %71, !prof !673

70:                                               ; preds = %67
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !676
  br label %71

71:                                               ; preds = %70, %67
  br i1 %9, label %75, label %72, !prof !677

72:                                               ; preds = %71
  %73 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #23
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %71
  %76 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 3
  tail call fastcc void @pad_to_arg_alignment(ptr noundef %5, i32 noundef %48, ptr noundef nonnull %76) #22
  br label %77

77:                                               ; preds = %75, %72
  %78 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !678
  %79 = icmp eq i32 %0, 1
  br i1 %79, label %86, label %80, !prof !673

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %42, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !425
  %83 = add i64 %82, 3
  %84 = and i64 %83, -4
  %85 = tail call ptr @size_int_kind(i64 noundef %84, i32 noundef 0) #23
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi ptr [ %85, %80 ], [ %42, %77 ]
  %88 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %78, i64 16, i1 false), !tbaa.struct !678
  %89 = tail call i32 @host_integerp(ptr noundef %87, i32 noundef 1) #23
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !673

91:                                               ; preds = %86
  %92 = tail call i64 @tree_low_cst(ptr noundef %87, i32 noundef 1) #23
  %93 = and i64 %92, 3
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %97, label %95, !prof !677

95:                                               ; preds = %91, %86
  %96 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %87, i32 noundef 4) #23
  br label %97

97:                                               ; preds = %91, %95
  %98 = phi ptr [ %96, %95 ], [ %87, %91 ]
  %99 = tail call i32 @host_integerp(ptr noundef %98, i32 noundef 0) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101, !prof !673

101:                                              ; preds = %97
  %102 = tail call i64 @tree_low_cst(ptr noundef %98, i32 noundef 0) #23
  %103 = load i64, ptr %6, align 8, !tbaa !679
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %6, align 8, !tbaa !679
  br label %114

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !680
  %108 = icmp eq ptr %107, null
  %109 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %110 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %109, ptr noundef %98) #23
  br i1 %108, label %111, label %112

111:                                              ; preds = %105
  store ptr %110, ptr %106, align 8, !tbaa !680
  br label %114

112:                                              ; preds = %105
  %113 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %107, ptr noundef %110) #23
  store ptr %113, ptr %106, align 8, !tbaa !680
  br label %114

114:                                              ; preds = %111, %112, %101
  %115 = icmp eq i32 %8, 0
  %116 = select i1 %115, i32 %3, i32 0, !prof !677
  %117 = sext i32 %116 to i64
  %118 = load i64, ptr %6, align 8, !tbaa !679
  %119 = sub nsw i64 %118, %117
  store i64 %119, ptr %6, align 8, !tbaa !679
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_function_arg_boundary(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pad_to_arg_alignment(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !669 !PGOFuncName !681 {
  %4 = sdiv i32 %1, 8
  %5 = icmp sgt i32 %1, 32
  br i1 %5, label %6, label %10, !prof !673

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.args_size, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !671
  %9 = load i64, ptr %0, align 8, !tbaa !672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %12

10:                                               ; preds = %3
  %11 = icmp sgt i32 %1, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %11, label %12, label %49, !prof !682

12:                                               ; preds = %6, %10
  %13 = phi ptr [ %8, %6 ], [ null, %10 ]
  %14 = phi i64 [ %9, %6 ], [ 0, %10 ]
  %15 = getelementptr inbounds %struct.args_size, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.args_size, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !671
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19, !prof !677

19:                                               ; preds = %12
  %20 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #23
  %21 = load ptr, ptr %16, align 8, !tbaa !671
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %0, align 8, !tbaa !672
  %25 = tail call ptr @size_int_kind(i64 noundef %24, i32 noundef 1) #23
  br label %32

26:                                               ; preds = %19
  %27 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %27, ptr noundef nonnull %21) #23
  %29 = load i64, ptr %0, align 8, !tbaa !672
  %30 = tail call ptr @size_int_kind(i64 noundef %29, i32 noundef 1) #23
  %31 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %28, ptr noundef %30) #23
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi ptr [ %25, %23 ], [ %31, %26 ]
  %34 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %33, ptr noundef %20) #23
  %35 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %34, i32 noundef %4) #23
  %36 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %35, ptr noundef %20) #23
  store ptr %36, ptr %16, align 8, !tbaa !671
  store i64 0, ptr %0, align 8, !tbaa !672
  br i1 %5, label %37, label %49

37:                                               ; preds = %32
  %38 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %36, ptr noundef %13) #23
  store ptr %38, ptr %15, align 8, !tbaa !671
  br label %49

39:                                               ; preds = %12
  %40 = load i64, ptr %0, align 8, !tbaa !672
  %41 = zext nneg i32 %4 to i64
  %42 = add nsw i64 %41, -1
  %43 = add i64 %42, %40
  %44 = sub nsw i32 0, %4
  %45 = sext i32 %44 to i64
  %46 = and i64 %43, %45
  store i64 %46, ptr %0, align 8, !tbaa !672
  br i1 %5, label %47, label %49, !prof !673

47:                                               ; preds = %39
  %48 = sub nsw i64 %46, %14
  store i64 %48, ptr %2, align 8, !tbaa !672
  br label %49

49:                                               ; preds = %32, %37, %47, %39, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @generate_setjmp_warnings() local_unnamed_addr #0 !prof !418 {
  %1 = tail call ptr @regstat_get_setjmp_crosses() #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !419
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !683
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !684
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %15, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8, !tbaa !686
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !425
  tail call fastcc void @setjmp_vars_warning(ptr noundef nonnull %1, ptr noundef %14) #22
  tail call fastcc void @setjmp_args_warning(ptr noundef nonnull %1) #22
  br label %15

15:                                               ; preds = %0, %8, %11
  ret void
}

; Function Attrs: optsize
declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setjmp_vars_warning(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !418 !PGOFuncName !688 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2, %28
  %7 = phi ptr [ %30, %28 ], [ %4, %2 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 32
  %11 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #22
  %24 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %23) #22, !range !471
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.13, ptr noundef nonnull %7) #23
  br label %28

28:                                               ; preds = %6, %14, %18, %22, %26
  %29 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !llvm.loop !689

32:                                               ; preds = %28, %2
  %33 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !425
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @setjmp_vars_warning(ptr noundef %0, ptr noundef nonnull %37) #22
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !425
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !690

41:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setjmp_args_warning(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !691 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %25
  %7 = phi ptr [ %27, %25 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !425
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #22
  %21 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %20) #22, !range !471
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #23
  br label %25

25:                                               ; preds = %11, %14, %19, %23
  %26 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !692

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_blocks() local_unnamed_addr #0 !prof !418 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #22
  store ptr %7, ptr %1, align 8, !tbaa !419
  tail call void @clear_block_marks(ptr noundef nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !425
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !425
  %10 = tail call ptr @get_insns() #23
  call fastcc void @reorder_blocks_1(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %1) #22
  %11 = load ptr, ptr %8, align 8, !tbaa !425
  %12 = tail call ptr @blocks_nreverse(ptr noundef %11) #22
  store ptr %12, ptr %8, align 8, !tbaa !425
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #22
  br label %13

13:                                               ; preds = %0, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !418 !PGOFuncName !693 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_block_marks(ptr noundef %0) local_unnamed_addr #14 !prof !663 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !694

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %10, %3 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -4194305
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  tail call void @clear_block_marks(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !695, !llvm.loop !696

12:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorder_blocks_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !418 !PGOFuncName !697 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3, %60
  %6 = phi ptr [ %61, %60 ], [ %1, %3 ]
  %7 = phi ptr [ %63, %60 ], [ %0, %3 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 13
  br i1 %10, label %11, label %60

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !425
  switch i32 %13, label %60 [
    i32 2, label %14
    i32 3, label %51
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  %17 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr %16, ptr %18
  %21 = load i64, ptr %16, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @copy_node_stat(ptr noundef nonnull %16) #23
  %26 = getelementptr inbounds %struct.tree_block, ptr %25, i64 0, i32 8
  store ptr %20, ptr %26, align 8, !tbaa !425
  %27 = getelementptr inbounds %struct.tree_block, ptr %20, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !425
  %29 = getelementptr inbounds %struct.tree_block, ptr %25, i64 0, i32 9
  store ptr %28, ptr %29, align 8, !tbaa !425
  store ptr %25, ptr %27, align 8, !tbaa !425
  store ptr %25, ptr %15, align 8, !tbaa !425
  %30 = load i64, ptr %25, align 8
  br label %31

31:                                               ; preds = %24, %14
  %32 = phi i64 [ %30, %24 ], [ %21, %14 ]
  %33 = phi ptr [ %25, %24 ], [ %16, %14 ]
  %34 = getelementptr inbounds %struct.tree_block, ptr %33, i64 0, i32 5
  store ptr null, ptr %34, align 8, !tbaa !425
  %35 = or i64 %32, 4194304
  store i64 %35, ptr %33, align 8
  %36 = icmp eq ptr %33, %6
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = icmp eq ptr %33, %20
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.tree_block, ptr %20, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !425
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3896, ptr noundef nonnull @.str.2) #23
  br label %44

44:                                               ; preds = %43, %39, %37
  %45 = getelementptr inbounds %struct.tree_block, ptr %33, i64 0, i32 6
  store ptr %6, ptr %45, align 8, !tbaa !425
  %46 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !425
  %48 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !425
  store ptr %33, ptr %46, align 8, !tbaa !425
  br label %49

49:                                               ; preds = %44, %31
  %50 = phi ptr [ %20, %44 ], [ %6, %31 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %2, ptr noundef nonnull %33) #22
  br label %60

51:                                               ; preds = %11
  %52 = load ptr, ptr %2, align 8, !tbaa !419
  %53 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %52) #22
  %54 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !425
  %55 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !425
  %57 = tail call ptr @blocks_nreverse(ptr noundef %56) #22
  store ptr %57, ptr %55, align 8, !tbaa !425
  %58 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !425
  br label %60

60:                                               ; preds = %11, %5, %51, %49
  %61 = phi ptr [ %50, %49 ], [ %59, %51 ], [ %6, %5 ], [ %6, %11 ]
  %62 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !425
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %5, !llvm.loop !698

65:                                               ; preds = %60, %3
  ret void
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @blocks_nreverse(ptr noundef %0) local_unnamed_addr #9 !prof !699 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !700

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ null, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !425
  store ptr %4, ptr %6, align 8, !tbaa !425
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !prof !535, !llvm.loop !701

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %5, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @number_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !702 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = call fastcc ptr @get_block_vector(ptr noundef %4, ptr noundef nonnull %2) #22
  %6 = load i32, ptr %2, align 4, !tbaa !441
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %25, !prof !703

8:                                                ; preds = %1
  %9 = load i32, ptr @next_block_index, align 4, !tbaa !441
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 1, %8 ], [ %22, %11 ]
  %13 = phi i32 [ %9, %8 ], [ %14, %11 ]
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds ptr, ptr %5, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  %17 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %13, 1
  %20 = and i32 %18, 1
  %21 = or disjoint i32 %20, %19
  store i32 %21, ptr %17, align 8
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11, !prof !704, !llvm.loop !705

24:                                               ; preds = %11
  store i32 %14, ptr @next_block_index, align 4, !tbaa !441
  br label %25

25:                                               ; preds = %24, %1
  tail call void @free(ptr noundef %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_block_vector(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !702 !PGOFuncName !706 {
  %3 = tail call fastcc i32 @all_blocks(ptr noundef %0, ptr noundef null) #22
  store i32 %3, ptr %1, align 4, !tbaa !441
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #23
  %7 = tail call fastcc i32 @all_blocks(ptr noundef %0, ptr noundef %6) #22
  ret ptr %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @debug_find_var_in_block_tree(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #15 !prof !418 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !llvm.loop !707

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %25, label %6

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !425
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !llvm.loop !708

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = tail call ptr @debug_find_var_in_block_tree(ptr noundef %0, ptr noundef nonnull %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %25

25:                                               ; preds = %10, %21, %17, %13
  %26 = phi ptr [ null, %13 ], [ %23, %21 ], [ null, %17 ], [ %1, %10 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invoke_set_current_function_hook(ptr noundef %0) unnamed_addr #0 !prof !709 !PGOFuncName !710 {
  %2 = load i1, ptr @in_dummy_function, align 1
  br i1 %2, label %17, label %3, !prof !711

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 4
  %6 = select i1 %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %5, !prof !712
  %7 = load ptr, ptr %6, align 8, !tbaa !425
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %10 = select i1 %8, ptr %9, ptr %7, !prof !713
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !419
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %15, label %13, !prof !714

13:                                               ; preds = %3
  store ptr %10, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !419
  %14 = getelementptr inbounds %struct.tree_optimization_option, ptr %10, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %14) #23
  br label %15

15:                                               ; preds = %13, %3
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !715
  tail call void %16(ptr noundef %0) #23
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_cfun(ptr noundef %0) local_unnamed_addr #0 !prof !716 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !419
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @cfun_stack, ptr noundef %2) #22
  tail call void @set_cfun(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_cfun() local_unnamed_addr #0 !prof !436 {
  %1 = load ptr, ptr @cfun_stack, align 8
  %2 = tail call fastcc ptr @VEC_function_p_base_pop(ptr noundef %1) #22
  tail call void @set_cfun(ptr noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_funcdef_no() local_unnamed_addr #10 !prof !717 {
  %1 = load i32, ptr @funcdef_no, align 4, !tbaa !441
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @funcdef_no, align 4, !tbaa !441
  ret i32 %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_eh_for_function() local_unnamed_addr #6

; Function Attrs: optsize
declare void @ix86_call_abi_override(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @tree_last(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_struct_function(ptr noundef %0) local_unnamed_addr #0 !prof !718 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !419
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @cfun_stack, ptr noundef %2) #22
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dummy_function_start() local_unnamed_addr #0 !prof !719 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %2, label %3, !prof !720

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4214, ptr noundef nonnull @.str.2) #23
  br label %3

3:                                                ; preds = %0, %2
  store i1 true, ptr @in_dummy_function, align 1
  tail call void @push_struct_function(ptr noundef null) #22
  tail call fastcc void @prepare_function_start() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_function_start() unnamed_addr #0 !prof !445 !PGOFuncName !721 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !722
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !637

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4181, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %0, %3
  tail call void @init_temp_slots() #22
  tail call void @init_emit() #23
  tail call void @init_varasm_status() #23
  tail call void @init_expr() #23
  tail call void @default_rtl_profile() #23
  %5 = load i32, ptr @optimize, align 4, !tbaa !441
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, ptr @cse_not_expected, align 4, !tbaa !441
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !441
  store ptr null, ptr @reg_renumber, align 8, !tbaa !419
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !441
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !441
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !723
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_function_start(ptr noundef %0) local_unnamed_addr #0 !prof !512 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !513

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !425
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !513

7:                                                ; preds = %3
  tail call void @set_cfun(ptr noundef nonnull %5) #22
  br label %9

8:                                                ; preds = %3, %1
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0) #22
  br label %9

9:                                                ; preds = %8, %7
  tail call fastcc void @prepare_function_start() #22
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !425
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -15
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %21, !prof !724

19:                                               ; preds = %9
  %20 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.5) #23
  br label %21

21:                                               ; preds = %9, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @init_function_for_compilation() #16 !prof !512 {
  store ptr null, ptr @reg_renumber, align 8, !tbaa !419
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @expand_main_function() local_unnamed_addr #17 !prof !418 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stack_protect_prologue() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !725
  %2 = tail call ptr %1() #23
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !726
  %4 = tail call fastcc ptr @expand_normal(ptr noundef %3) #22
  %5 = tail call fastcc ptr @expand_normal(ptr noundef %2) #22
  %6 = tail call ptr @gen_stack_protect_set(ptr noundef %4, ptr noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = tail call ptr @emit_insn(ptr noundef nonnull %6) #23
  br label %12

10:                                               ; preds = %0
  %11 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef %5) #23
  br label %12

12:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !727 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gen_stack_protect_set(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stack_protect_epilogue() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !725
  %2 = tail call ptr %1() #23
  %3 = tail call ptr @gen_label_rtx() #23
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !726
  %5 = tail call fastcc ptr @expand_normal(ptr noundef %4) #22
  %6 = tail call fastcc ptr @expand_normal(ptr noundef %2) #22
  %7 = tail call ptr @gen_stack_protect_test(ptr noundef %5, ptr noundef %6, ptr noundef %3) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = tail call ptr @emit_insn(ptr noundef nonnull %7) #23
  br label %13

11:                                               ; preds = %0
  %12 = load i32, ptr @ptr_mode, align 4, !tbaa !441
  tail call void @emit_cmp_and_jump_insns(ptr noundef %5, ptr noundef %6, i32 noundef 81, ptr noundef null, i32 noundef %12, i32 noundef 1, ptr noundef %3) #23
  br label %13

13:                                               ; preds = %11, %9
  %14 = tail call ptr @get_last_insn() #23
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @predict_insn_def(ptr noundef nonnull %14, i32 noundef 9, i32 noundef 1) #23
  br label %19

19:                                               ; preds = %18, %13
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 84), align 8, !tbaa !728
  %21 = tail call ptr %20() #23
  tail call void @expand_expr_stmt(ptr noundef %21) #23
  %22 = tail call ptr @emit_label(ptr noundef %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_stack_protect_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #6

; Function Attrs: optsize
declare void @predict_insn_def(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @expand_expr_stmt(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_function_start(ptr noundef %0) local_unnamed_addr #0 !prof !512 {
  tail call void @init_recog_no_volatile() #23
  %2 = load i32, ptr @profile_flag, align 4, !tbaa !441
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4, !prof !562

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  %11 = zext i1 %10 to i8
  store i8 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !729
  %12 = load ptr, ptr @stack_limit_rtx, align 8, !tbaa !419
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !562

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 33554432
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  %21 = zext i1 %20 to i8
  store i8 %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 34), align 2, !tbaa !730
  %22 = tail call ptr @gen_label_rtx() #23
  store ptr %22, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !731
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !425
  %25 = tail call i32 @aggregate_value_p(ptr noundef %24, ptr noundef %0) #22, !range !433
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %27, !prof !562

27:                                               ; preds = %19
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !649
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = tail call ptr %28(ptr noundef %30, i32 noundef 2) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %112, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @gen_reg_rtx(i32 noundef 16) #23
  %35 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef nonnull %31) #23
  %36 = icmp eq ptr %34, null
  br i1 %36, label %112, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 8, !tbaa !425
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 268435456
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = trunc i64 %40 to i32
  %45 = and i32 %44, 255
  %46 = tail call ptr @gen_rtx_MEM(i32 noundef %45, ptr noundef nonnull %34) #23
  %47 = load ptr, ptr %23, align 8, !tbaa !425
  tail call void @set_mem_attributes(ptr noundef %46, ptr noundef %47, i32 noundef 1) #23
  %48 = load ptr, ptr %23, align 8, !tbaa !425
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi ptr [ %38, %37 ], [ %48, %43 ]
  %51 = phi ptr [ %34, %37 ], [ %46, %43 ]
  tail call void @set_decl_rtl(ptr noundef %50, ptr noundef %51) #23
  br label %112

52:                                               ; preds = %19
  %53 = load ptr, ptr %23, align 8, !tbaa !425
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 255
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59, !prof !513

58:                                               ; preds = %52
  tail call void @set_decl_rtl(ptr noundef nonnull %53, ptr noundef null) #23
  br label %112

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !425
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 14
  br i1 %64, label %65, label %67, !prof !513

65:                                               ; preds = %59
  %66 = tail call i32 @vector_type_mode(ptr noundef nonnull %61) #23
  br label %72

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i32 [ %66, %65 ], [ %71, %67 ]
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %94, label %75, !prof !513

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !732
  %77 = tail call zeroext i8 %76(ptr noundef nonnull %61) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %94, label %79, !prof !562

79:                                               ; preds = %75
  %80 = load ptr, ptr %23, align 8, !tbaa !425
  %81 = load i64, ptr %61, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 14
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 @vector_type_mode(ptr noundef nonnull %61) #23
  br label %91

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 16
  %90 = and i32 %89, 255
  br label %91

91:                                               ; preds = %86, %84
  %92 = phi i32 [ %85, %84 ], [ %90, %86 ]
  %93 = tail call ptr @gen_reg_rtx(i32 noundef %92) #23
  tail call void @set_decl_rtl(ptr noundef %80, ptr noundef %93) #23
  br label %107

94:                                               ; preds = %75, %72
  %95 = tail call ptr @hard_function_value(ptr noundef nonnull %61, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1) #23
  %96 = load i32, ptr %95, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %103 [
    i16 37, label %98
    i16 15, label %104
  ], !prof !733

98:                                               ; preds = %94
  %99 = load ptr, ptr %23, align 8, !tbaa !425
  %100 = lshr i32 %96, 16
  %101 = and i32 %100, 255
  %102 = tail call ptr @gen_reg_rtx(i32 noundef %101) #23
  tail call void @set_decl_rtl(ptr noundef %99, ptr noundef %102) #23
  br label %107

103:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4454, ptr noundef nonnull @.str.2) #23
  br label %104

104:                                              ; preds = %94, %103
  %105 = load ptr, ptr %23, align 8, !tbaa !425
  %106 = tail call ptr @gen_group_rtx(ptr noundef nonnull %95) #23
  tail call void @set_decl_rtl(ptr noundef %105, ptr noundef %106) #23
  br label %107

107:                                              ; preds = %98, %104, %91
  %108 = load ptr, ptr %23, align 8, !tbaa !425
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = or i64 %110, 16777216
  store i64 %111, ptr %109, align 8
  br label %112

112:                                              ; preds = %27, %33, %49, %58, %107
  tail call fastcc void @assign_parms(ptr noundef nonnull %0) #22
  %113 = load ptr, ptr @cfun, align 8, !tbaa !419
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !734
  %116 = icmp eq ptr %115, null
  br i1 %116, label %140, label %117, !prof !562

117:                                              ; preds = %112
  %118 = tail call ptr @gen_reg_rtx(i32 noundef 16) #23
  %119 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !735
  %120 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %121 = tail call ptr %119(ptr noundef %120, i8 noundef zeroext 1) #23
  tail call void @set_decl_incoming_rtl(ptr noundef nonnull %115, ptr noundef %121, i8 noundef zeroext 0) #23
  tail call void @set_decl_rtl(ptr noundef nonnull %115, ptr noundef %118) #23
  %122 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !425
  %124 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !425
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !425
  tail call void @mark_reg_pointer(ptr noundef %118, i32 noundef %127) #23
  %128 = tail call ptr @emit_move_insn(ptr noundef %118, ptr noundef %121) #23
  %129 = load i32, ptr %121, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 43
  br i1 %131, label %132, label %140

132:                                              ; preds = %117
  %133 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !419
  %134 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !425
  %136 = tail call i32 @reg_mentioned_p(ptr noundef %133, ptr noundef %135) #23
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = tail call ptr @set_unique_reg_note(ptr noundef %128, i32 noundef 3, ptr noundef nonnull %121) #23
  br label %140

140:                                              ; preds = %117, %132, %138, %112
  %141 = load ptr, ptr @cfun, align 8, !tbaa !419
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !736
  %144 = icmp eq ptr %143, null
  br i1 %144, label %171, label %145, !prof !562

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.tree_exp, ptr %143, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !425
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %149, i64 11
  %151 = load i8, ptr %150, align 1, !tbaa !425
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %147, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !425
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153, %145
  tail call void @expand_decl(ptr noundef nonnull %147) #23
  %158 = load ptr, ptr @cfun, align 8, !tbaa !419
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !736
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi ptr [ %160, %157 ], [ %143, %153 ]
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !419
  %164 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !419
  %165 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %163, ptr noundef %162, ptr noundef %164, ptr noundef null, ptr noundef null) #23
  %166 = tail call fastcc ptr @expand_expr(ptr noundef %165) #22
  %167 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %166, i8 noundef zeroext 0) #23
  %168 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 78), align 8, !tbaa !737
  %169 = tail call ptr %168() #23
  %170 = tail call ptr @emit_move_insn(ptr noundef %167, ptr noundef %169) #23
  tail call void @update_nonlocal_goto_save_area() #23
  br label %171

171:                                              ; preds = %161, %140
  %172 = tail call ptr @emit_note(i32 noundef 4) #23
  %173 = tail call ptr @get_last_insn() #23
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, 65535
  %176 = icmp eq i32 %175, 13
  br i1 %176, label %178, label %177, !prof !562

177:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4518, ptr noundef nonnull @.str.2) #23
  br label %178

178:                                              ; preds = %171, %177
  %179 = tail call ptr @get_last_insn() #23
  store ptr %179, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 18), align 8, !tbaa !738
  %180 = load i32, ptr @flag_stack_check, align 4, !tbaa !441
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182, !prof !562

182:                                              ; preds = %178
  %183 = tail call ptr @emit_note(i32 noundef 0) #23
  store ptr %183, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !739
  br label %184

184:                                              ; preds = %182, %178
  tail call void @force_next_line_note() #23
  ret void
}

; Function Attrs: optsize
declare void @init_recog_no_volatile() local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_group_rtx(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms(ptr noundef %0) unnamed_addr #0 !prof !512 !PGOFuncName !740 {
  %2 = alloca %struct.assign_parm_data_all, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.assign_parm_data_one, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 17), align 8, !tbaa !741
  %7 = tail call ptr %6() #23
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !742
  call fastcc void @assign_parms_initialize_all(ptr noundef nonnull %2) #22
  %8 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %2) #22
  store ptr %8, ptr %4, align 8, !tbaa !419
  %9 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #22, !range !433
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %106, label %11, !prof !577

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 5
  br label %13

13:                                               ; preds = %11, %102
  %14 = phi i32 [ 0, %11 ], [ %103, %102 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #24
  %15 = load ptr, ptr %3, align 8, !tbaa !419
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %2, ptr noundef %15, ptr noundef nonnull %5) #22
  %16 = load i32, ptr %12, align 4, !tbaa !631
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28, !prof !513

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !419
  call void @set_decl_rtl(ptr noundef %15, ptr noundef %19) #23
  %20 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  call void @make_decl_rtl(ptr noundef nonnull %15) #23
  %24 = load ptr, ptr %20, align 8, !tbaa !425
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %27 = getelementptr inbounds %struct.tree_parm_decl, ptr %15, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !425
  br label %102

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 6
  %30 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  %32 = load i32, ptr %29, align 8, !tbaa !635
  %33 = load ptr, ptr %30, align 8, !tbaa !636
  %34 = call i32 @ix86_function_arg_boundary(i32 noundef %32, ptr noundef %33) #23
  %35 = call i32 @ix86_minimum_alignment(ptr noundef %33, i32 noundef %32, i32 noundef %34) #23
  %36 = load ptr, ptr %5, align 8, !tbaa !661
  %37 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !425
  %39 = icmp ugt i32 %38, %35
  br i1 %39, label %40, label %56, !prof !513

40:                                               ; preds = %28
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @vector_type_mode(ptr noundef nonnull %36) #23
  %46 = load i32, ptr %37, align 8, !tbaa !425
  br label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i32 [ %46, %44 ], [ %38, %47 ]
  %54 = phi i32 [ %45, %44 ], [ %51, %47 ]
  %55 = call i32 @ix86_minimum_alignment(ptr noundef nonnull %36, i32 noundef %54, i32 noundef %53) #23
  br label %56

56:                                               ; preds = %52, %28
  %57 = phi i32 [ %55, %52 ], [ %35, %28 ]
  %58 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %59 = icmp ult i32 %58, %57
  br i1 %59, label %60, label %65, !prof !513

60:                                               ; preds = %56
  %61 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !464
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3180, ptr noundef nonnull @.str.2) #23
  br label %64

64:                                               ; preds = %60, %63
  store i32 %57, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  br label %65

65:                                               ; preds = %64, %56
  %66 = load ptr, ptr @cfun, align 8, !tbaa !419
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 20
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 4194304
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71, !prof !562

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !425
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call fastcc void @assign_parms_setup_varargs(ptr noundef nonnull %2, ptr noundef nonnull %5) #22
  br label %76

76:                                               ; preds = %75, %71, %65
  call fastcc void @assign_parm_find_entry_rtl(ptr noundef nonnull %2, ptr noundef nonnull %5) #22
  %77 = call fastcc zeroext i8 @assign_parm_is_stack_parm(ptr noundef nonnull %2, ptr noundef nonnull %5) #22, !range !471
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79, !prof !513

79:                                               ; preds = %76
  call fastcc void @assign_parm_find_stack_rtl(ptr noundef %15, ptr noundef nonnull %5) #22
  call fastcc void @assign_parm_adjust_entry_rtl(ptr noundef nonnull %5) #22
  br label %80

80:                                               ; preds = %79, %76
  %81 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !743
  %83 = load i8, ptr %31, align 4
  %84 = lshr i8 %83, 1
  %85 = and i8 %84, 1
  call void @set_decl_incoming_rtl(ptr noundef %15, ptr noundef %82, i8 noundef zeroext %85) #23
  %86 = load i32, ptr %29, align 8, !tbaa !635
  %87 = load ptr, ptr %30, align 8, !tbaa !636
  %88 = and i8 %83, 1
  %89 = zext nneg i8 %88 to i32
  call void @function_arg_advance(ptr noundef nonnull %2, i32 noundef %86, ptr noundef %87, i32 noundef %89) #23
  call fastcc void @assign_parm_adjust_stack_rtl(ptr noundef nonnull %5) #22
  %90 = call fastcc zeroext i8 @assign_parm_setup_block_p(ptr noundef nonnull %5) #22, !range !471
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92, !prof !562

92:                                               ; preds = %80
  call fastcc void @assign_parm_setup_block(ptr noundef nonnull %2, ptr noundef %15, ptr noundef nonnull %5) #22
  br label %102

93:                                               ; preds = %80
  %94 = load i8, ptr %31, align 4
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100, !prof !562

97:                                               ; preds = %93
  %98 = call zeroext i8 @use_register_for_decl(ptr noundef %15) #22, !range !471
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100, !prof !513

100:                                              ; preds = %97, %93
  call fastcc void @assign_parm_setup_reg(ptr noundef nonnull %2, ptr noundef %15, ptr noundef nonnull %5) #22
  br label %102

101:                                              ; preds = %97
  call fastcc void @assign_parm_setup_stack(ptr noundef nonnull %2, ptr noundef %15, ptr noundef nonnull %5) #22
  br label %102

102:                                              ; preds = %92, %101, %100, %25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #24
  %103 = add i32 %14, 1
  %104 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef %103, ptr noundef nonnull %3) #22, !range !433
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %13, !prof !744, !llvm.loop !745

106:                                              ; preds = %102, %1
  %107 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !651
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !562

109:                                              ; preds = %106
  call fastcc void @assign_parms_unsplit_complex(ptr noundef nonnull %2, ptr noundef %8) #22
  br label %110

110:                                              ; preds = %109, %106
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #22
  %111 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !746
  %113 = call ptr @emit_insn(ptr noundef %112) #23
  %114 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !425
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117, !prof !513

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !425
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 14
  br i1 %122, label %123, label %125, !prof !513

123:                                              ; preds = %117
  %124 = call i32 @vector_type_mode(ptr noundef nonnull %119) #23
  br label %130

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.tree_type, ptr %119, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  br label %130

130:                                              ; preds = %125, %123
  %131 = phi i32 [ %124, %123 ], [ %129, %125 ]
  %132 = icmp ugt i32 %131, 1
  br i1 %132, label %133, label %148, !prof !747

133:                                              ; preds = %130
  %134 = load i64, ptr %119, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  %137 = add nsw i32 %136, -15
  %138 = icmp ult i32 %137, 4
  br i1 %138, label %148, label %139, !prof !724

139:                                              ; preds = %133
  %140 = call i32 @get_mode_alignment(i32 noundef %131) #23
  %141 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  %142 = icmp ult i32 %141, %140
  br i1 %142, label %143, label %148, !prof !513

143:                                              ; preds = %139
  %144 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !464
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3239, ptr noundef nonnull @.str.2) #23
  br label %147

147:                                              ; preds = %143, %146
  store i32 %140, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !463
  br label %148

148:                                              ; preds = %133, %130, %147, %139, %110
  %149 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !650
  %151 = icmp eq ptr %150, null
  br i1 %151, label %177, label %152, !prof !562

152:                                              ; preds = %148
  %153 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %154 = getelementptr inbounds %struct.tree_decl_non_common, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !425
  %156 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %150, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !425
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  call void @make_decl_rtl(ptr noundef nonnull %150) #23
  %160 = load ptr, ptr %149, align 8, !tbaa !650
  %161 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !425
  br label %163

163:                                              ; preds = %152, %159
  %164 = phi ptr [ %162, %159 ], [ %157, %152 ]
  %165 = getelementptr inbounds %struct.tree_decl_common, ptr %155, i64 0, i32 2
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 268435456
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %164, i8 noundef zeroext 0) #23
  %171 = load i64, ptr %165, align 8
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 255
  %174 = call ptr @gen_rtx_MEM(i32 noundef %173, ptr noundef %170) #23
  call void @set_mem_attributes(ptr noundef %174, ptr noundef nonnull %155, i32 noundef 1) #23
  br label %175

175:                                              ; preds = %163, %169
  %176 = phi ptr [ %174, %169 ], [ %164, %163 ]
  call void @set_decl_rtl(ptr noundef nonnull %155, ptr noundef %176) #23
  br label %177

177:                                              ; preds = %175, %148
  %178 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 6
  %179 = load i64, ptr %178, align 8, !tbaa !748
  %180 = trunc i64 %179 to i32
  store i32 %180, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !576
  %181 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 7
  %182 = load i64, ptr %181, align 8, !tbaa !749
  %183 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !750
  %185 = add nsw i64 %184, %182
  store i64 %185, ptr %183, align 8, !tbaa !750
  %186 = trunc i64 %185 to i32
  store i32 %186, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !751
  %187 = call i32 @ix86_reg_parm_stack_space(ptr noundef nonnull %0) #23
  %188 = icmp slt i32 %187, %186
  br i1 %188, label %189, label %191, !prof !562

189:                                              ; preds = %177
  %190 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !751
  br label %193

191:                                              ; preds = %177
  %192 = call i32 @ix86_reg_parm_stack_space(ptr noundef nonnull %0) #23
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = add nsw i32 %194, 3
  %196 = and i32 %195, -4
  store i32 %196, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !751
  %197 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 1, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !752
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %203, !prof !562

200:                                              ; preds = %193
  %201 = load i64, ptr %183, align 8, !tbaa !750
  %202 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %201) #23
  br label %210

203:                                              ; preds = %193
  %204 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %205 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %204, ptr noundef nonnull %198) #23
  %206 = load i64, ptr %183, align 8, !tbaa !750
  %207 = call ptr @size_int_kind(i64 noundef %206, i32 noundef 1) #23
  %208 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %205, ptr noundef %207) #23
  %209 = call fastcc ptr @expand_normal(ptr noundef %208) #22
  br label %210

210:                                              ; preds = %203, %200
  %211 = phi ptr [ %202, %200 ], [ %209, %203 ]
  store ptr %211, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 3), align 8, !tbaa !753
  %212 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !425
  %214 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !751
  %215 = call i32 @ix86_return_pops_args(ptr noundef nonnull %0, ptr noundef %213, i32 noundef %214) #23
  store i32 %215, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3), align 8, !tbaa !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 4), ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !755
  %216 = load ptr, ptr %114, align 8, !tbaa !425
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %218, i64 11
  %220 = load i8, ptr %219, align 1, !tbaa !425
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222, !prof !513

222:                                              ; preds = %210
  %223 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %216, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !425
  br label %225

225:                                              ; preds = %222, %210
  %226 = phi ptr [ null, %210 ], [ %224, %222 ]
  store ptr %226, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !756
  %227 = load ptr, ptr %114, align 8, !tbaa !425
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %229, i64 11
  %231 = load i8, ptr %230, align 1, !tbaa !425
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %256, label %233, !prof !513

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %227, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !425
  %236 = icmp eq ptr %235, null
  br i1 %236, label %256, label %237, !prof !513

237:                                              ; preds = %233
  %238 = load i32, ptr %235, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %244, !prof !513

241:                                              ; preds = %237
  %242 = call fastcc i32 @rhs_regno(ptr noundef nonnull %235) #22
  %243 = icmp ugt i32 %242, 52
  br i1 %243, label %249, label %256, !prof !513

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.tree_decl_common, ptr %227, i64 0, i32 2
  %246 = load i64, ptr %245, align 8
  %247 = and i64 %246, 16777216
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %256, label %249, !prof !513

249:                                              ; preds = %244, %241
  %250 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !757
  %251 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !425
  %253 = call ptr %250(ptr noundef %252, ptr noundef nonnull %0, i8 noundef zeroext 1) #23
  %254 = load i32, ptr %253, align 8
  %255 = or i32 %254, -2147483648
  store i32 %255, ptr %253, align 8
  store ptr %253, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !756
  br label %256

256:                                              ; preds = %241, %244, %249, %233, %225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @set_decl_incoming_rtl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @expand_decl(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !758 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @update_nonlocal_goto_save_area() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @force_next_line_note() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_dummy_function_end() local_unnamed_addr #0 !prof !719 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %3, label %2, !prof !759

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4542, ptr noundef nonnull @.str.2) #23
  br label %3

3:                                                ; preds = %0, %2
  %4 = tail call i32 @in_sequence_p() #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !760

6:                                                ; preds = %3, %6
  tail call void @end_sequence() #23
  %7 = tail call i32 @in_sequence_p() #23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %6, !prof !535, !llvm.loop !761

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @cfun, align 8, !tbaa !419
  tail call void @free_after_parsing(ptr noundef %10) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !419
  tail call void @free_after_compilation(ptr noundef %11) #22
  tail call void @pop_cfun() #22
  store i1 false, ptr @in_dummy_function, align 1
  ret void
}

; Function Attrs: optsize
declare i32 @in_sequence_p() local_unnamed_addr #6

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diddle_return_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !762 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !756
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5, !prof !763

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %37 [
    i16 37, label %13
    i16 15, label %8
  ], !prof !764

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = load i32, ptr %10, align 8, !tbaa !765
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %14, label %37

13:                                               ; preds = %5
  tail call void %0(ptr noundef nonnull %3, ptr noundef %1) #23
  br label %37

14:                                               ; preds = %8, %31
  %15 = phi i32 [ %32, %31 ], [ %11, %8 ]
  %16 = phi ptr [ %33, %31 ], [ %10, %8 ]
  %17 = phi i64 [ %34, %31 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #22
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  tail call void %0(ptr noundef nonnull %21, ptr noundef %1) #23
  %29 = load ptr, ptr %9, align 8, !tbaa !425
  %30 = load i32, ptr %29, align 8, !tbaa !765
  br label %31

31:                                               ; preds = %28, %25, %14
  %32 = phi i32 [ %30, %28 ], [ %15, %25 ], [ %15, %14 ]
  %33 = phi ptr [ %29, %28 ], [ %16, %25 ], [ %16, %14 ]
  %34 = add nuw nsw i64 %17, 1
  %35 = sext i32 %32 to i64
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %14, label %37, !llvm.loop !767

37:                                               ; preds = %31, %8, %13, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clobber_return_register() local_unnamed_addr #0 !prof !512 {
  tail call void @diddle_return_value(ptr noundef nonnull @do_clobber_return_reg, ptr noundef null) #22
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !425
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 11
  %7 = load i8, ptr %6, align 1, !tbaa !425
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9, !prof !513

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !513

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %21, !prof !562

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #22
  %19 = icmp ugt i32 %18, 52
  br i1 %19, label %20, label %21, !prof !562

20:                                               ; preds = %17
  tail call void @do_clobber_return_reg(ptr noundef nonnull %11, ptr poison) #22
  br label %21

21:                                               ; preds = %13, %17, %20, %9, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_clobber_return_reg(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !768 !PGOFuncName !769 {
  %3 = tail call ptr @emit_clobber(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_warn_unused_parameter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !418 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !425
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
  %12 = load ptr, ptr %11, align 8, !tbaa !425
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
  %22 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 225, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #23
  br label %23

23:                                               ; preds = %5, %10, %14, %21
  %24 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !425
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !770

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_function_end() local_unnamed_addr #0 !prof !512 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !771
  %3 = icmp eq ptr %2, null
  %4 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4
  %5 = icmp ne i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %9, label %7, !prof !648

7:                                                ; preds = %0
  %8 = tail call ptr @get_arg_pointer_save_area() #22
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, ptr @flag_stack_check, align 4, !tbaa !441
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %29, !prof !513

12:                                               ; preds = %9
  %13 = tail call ptr @get_insns() #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %12 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 4092) #23
  tail call void @start_sequence() #23
  tail call void @anti_adjust_stack_and_probe(ptr noundef %21, i8 noundef zeroext 1) #23
  %22 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !739
  %24 = tail call ptr @emit_insn_before(ptr noundef %22, ptr noundef %23) #23
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !772

29:                                               ; preds = %25, %12, %20, %9
  %30 = tail call i32 @in_sequence_p() #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !773

32:                                               ; preds = %29, %32
  tail call void @end_sequence() #23
  %33 = tail call i32 @in_sequence_p() #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %32, !prof !535, !llvm.loop !774

35:                                               ; preds = %32, %29
  tail call void @clear_pending_stack_adjust() #23
  tail call void @do_pending_stack_adjust() #23
  tail call void @force_next_line_note() #23
  %36 = load i32, ptr @input_location, align 4, !tbaa !441
  tail call void @set_curr_insn_source_location(i32 noundef %36) #23
  %37 = tail call ptr @get_last_insn() #23
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !731
  %39 = tail call ptr @emit_label(ptr noundef %38) #23
  %40 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !441
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !562

42:                                               ; preds = %35
  %43 = tail call ptr @gen_blockage() #23
  %44 = tail call ptr @emit_insn(ptr noundef %43) #23
  br label %45

45:                                               ; preds = %42, %35
  tail call void @expand_eh_return() #23
  %46 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %47 = getelementptr inbounds %struct.tree_decl_non_common, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %50, i64 11
  %52 = load i8, ptr %51, align 1, !tbaa !425
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %170, label %54, !prof !513

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %48, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !425
  %57 = icmp eq ptr %56, null
  br i1 %57, label %170, label %58, !prof !513

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %65, !prof !513

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #22
  %64 = icmp ugt i32 %63, 52
  br i1 %64, label %70, label %170, !prof !513

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 16777216
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %170, label %70, !prof !513

70:                                               ; preds = %65, %62
  %71 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !756
  %72 = load i32, ptr %71, align 8
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %76, !prof !513

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4730, ptr noundef nonnull @.str.2) #23
  %75 = load i32, ptr %71, align 8
  br label %76

76:                                               ; preds = %70, %74
  %77 = phi i32 [ %72, %70 ], [ %75, %74 ]
  %78 = and i32 %77, 16711680
  %79 = icmp eq i32 %78, 65536
  br i1 %79, label %80, label %85, !prof !513

80:                                               ; preds = %76
  %81 = load i32, ptr %56, align 8
  %82 = and i32 %81, 16711680
  %83 = and i32 %77, -16711681
  %84 = or disjoint i32 %82, %83
  store i32 %84, ptr %71, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !425
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93, !prof !513

91:                                               ; preds = %85
  %92 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #23
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
  br i1 %100, label %101, label %103, !prof !513

101:                                              ; preds = %98
  %102 = load i32, ptr %56, align 8
  br label %119

103:                                              ; preds = %98
  %104 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !732
  %105 = load ptr, ptr %86, align 8, !tbaa !425
  %106 = tail call zeroext i8 %104(ptr noundef %105) #23
  %107 = icmp eq i8 %106, 0
  %108 = load i32, ptr %56, align 8
  br i1 %107, label %119, label %109, !prof !562

109:                                              ; preds = %103
  %110 = lshr i32 %108, 16
  %111 = and i32 %110, 255
  %112 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #22
  %113 = tail call ptr @gen_rtx_REG(i32 noundef %111, i32 noundef %112) #23
  %114 = tail call ptr @emit_move_insn(ptr noundef %113, ptr noundef nonnull %56) #23
  %115 = load i32, ptr %56, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = tail call zeroext i8 @shift_return_value(i32 noundef %117, i8 noundef zeroext 1, ptr noundef nonnull %71) #23
  br label %170

119:                                              ; preds = %101, %103
  %120 = phi i32 [ %102, %101 ], [ %108, %103 ]
  %121 = load i32, ptr %71, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = lshr i32 %120, 16
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %138, label %127, !prof !562

127:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  %128 = load ptr, ptr %86, align 8, !tbaa !425
  %129 = load i64, ptr %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = lshr i32 %130, 21
  %132 = and i32 %131, 1
  store i32 %132, ptr %1, align 4, !tbaa !441
  %133 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %134 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !425
  %136 = call i32 @promote_function_mode(ptr noundef nonnull %128, i32 noundef %125, ptr noundef nonnull %1, ptr noundef %135, i32 noundef 1) #23
  %137 = load i32, ptr %1, align 4, !tbaa !441
  call void @convert_move(ptr noundef nonnull %71, ptr noundef nonnull %56, i32 noundef %137) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  br label %170

138:                                              ; preds = %119
  %139 = and i32 %121, 65535
  %140 = icmp eq i32 %139, 15
  %141 = and i32 %120, 65535
  br i1 %140, label %142, label %149, !prof !513

142:                                              ; preds = %138
  %143 = icmp eq i32 %141, 15
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  tail call void @emit_group_move(ptr noundef nonnull %71, ptr noundef nonnull %56) #23
  br label %170

145:                                              ; preds = %142
  %146 = load ptr, ptr %86, align 8, !tbaa !425
  %147 = tail call i64 @int_size_in_bytes(ptr noundef %146) #23
  %148 = trunc i64 %147 to i32
  tail call void @emit_group_load(ptr noundef nonnull %71, ptr noundef nonnull %56, ptr noundef %146, i32 noundef %148) #23
  br label %170

149:                                              ; preds = %138
  %150 = icmp eq i32 %141, 41
  br i1 %150, label %151, label %168, !prof !513

151:                                              ; preds = %149
  %152 = zext nneg i32 %123 to i64
  %153 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !425
  %155 = icmp eq i8 %154, 10
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %152
  %158 = load i8, ptr %157, align 1, !tbaa !425
  %159 = icmp ult i8 %158, 5
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i32, ptr @generating_concat_p, align 4, !tbaa !441
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !441
  %162 = load i32, ptr %56, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = tail call ptr @gen_reg_rtx(i32 noundef %164) #23
  store i32 %161, ptr @generating_concat_p, align 4, !tbaa !441
  %166 = tail call ptr @emit_move_insn(ptr noundef %165, ptr noundef nonnull %56) #23
  %167 = tail call ptr @emit_move_insn(ptr noundef nonnull %71, ptr noundef %165) #23
  br label %170

168:                                              ; preds = %156, %151, %149
  %169 = tail call ptr @emit_move_insn(ptr noundef nonnull %71, ptr noundef nonnull %56) #23
  br label %170

170:                                              ; preds = %62, %65, %127, %160, %168, %144, %145, %109, %54, %45
  %171 = load ptr, ptr @cfun, align 8, !tbaa !419
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 20
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 201326592
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %217, label %176, !prof !747

176:                                              ; preds = %170
  %177 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %178 = getelementptr inbounds %struct.tree_decl_non_common, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !425
  %180 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !425
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  call void @make_decl_rtl(ptr noundef nonnull %179) #23
  %184 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %185 = getelementptr inbounds %struct.tree_decl_non_common, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !425
  %187 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !425
  br label %189

189:                                              ; preds = %176, %183
  %190 = phi ptr [ %186, %183 ], [ %179, %176 ]
  %191 = phi ptr [ %188, %183 ], [ %181, %176 ]
  %192 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !425
  %194 = getelementptr inbounds %struct.tree_decl_common, ptr %190, i64 0, i32 2
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 268435456
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !425
  br label %204

201:                                              ; preds = %189
  %202 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !425
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi ptr [ %200, %198 ], [ %193, %201 ]
  %206 = phi ptr [ %191, %198 ], [ %203, %201 ]
  %207 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !757
  %208 = call ptr @build_pointer_type(ptr noundef %205) #23
  %209 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %210 = call ptr %207(ptr noundef %208, ptr noundef %209, i8 noundef zeroext 1) #23
  %211 = load i32, ptr %210, align 8
  %212 = or i32 %211, -2147483648
  store i32 %212, ptr %210, align 8
  %213 = lshr i32 %211, 16
  %214 = and i32 %213, 255
  %215 = call ptr @convert_memory_address_addr_space(i32 noundef %214, ptr noundef %206, i8 noundef zeroext 0) #23
  %216 = call ptr @emit_move_insn(ptr noundef nonnull %210, ptr noundef %215) #23
  store ptr %210, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !756
  br label %217

217:                                              ; preds = %170, %204
  call void @start_sequence() #23
  call void @clobber_return_register() #22
  %218 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %219 = call ptr @emit_insn_after(ptr noundef %218, ptr noundef %37) #23
  %220 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !775
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222, !prof !562

222:                                              ; preds = %217
  %223 = call ptr @emit_label(ptr noundef nonnull %220) #23
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !441
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227, !prof !562

227:                                              ; preds = %224
  %228 = call ptr @gen_blockage() #23
  %229 = call ptr @emit_insn(ptr noundef %228) #23
  br label %230

230:                                              ; preds = %227, %224
  %231 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !726
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233, !prof !562

233:                                              ; preds = %230
  call void @stack_protect_epilogue() #22
  br label %234

234:                                              ; preds = %233, %230
  call fastcc void @use_return_register() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_arg_pointer_save_area() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !771
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !425
  %5 = zext i8 %4 to i64
  %6 = tail call ptr @assign_stack_local(i32 noundef 16, i64 noundef %5, i32 noundef 0) #22
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !771
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %1, %0 ], [ %6, %3 ]
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4, !tbaa !776
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void @start_sequence() #23
  %12 = tail call ptr @validize_mem(ptr noundef %8) #23
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !742
  %14 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %13) #23
  %15 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  tail call void @push_topmost_sequence() #23
  %16 = tail call ptr @entry_of_function() #23
  %17 = tail call ptr @emit_insn_after(ptr noundef %15, ptr noundef %16) #23
  tail call void @pop_topmost_sequence() #23
  br label %18

18:                                               ; preds = %11, %7
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #6

; Function Attrs: optsize
declare void @anti_adjust_stack_and_probe(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @clear_pending_stack_adjust() local_unnamed_addr #6

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_blockage() local_unnamed_addr #6

; Function Attrs: optsize
declare void @expand_eh_return() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @shift_return_value(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @emit_group_move(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @use_return_register() unnamed_addr #0 !prof !512 !PGOFuncName !777 {
  tail call void @diddle_return_value(ptr noundef nonnull @do_use_return_reg, ptr noundef null) #22
  ret void
}

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @push_topmost_sequence() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @entry_of_function() local_unnamed_addr #6

; Function Attrs: optsize
declare void @pop_topmost_sequence() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_copy_epilogue_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !778 {
  %3 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !779

5:                                                ; preds = %2
  %6 = tail call ptr @htab_find(ptr noundef nonnull %3, ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !780

8:                                                ; preds = %5
  %9 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %10 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %1, i32 noundef 1) #23
  %11 = load ptr, ptr %10, align 8, !tbaa !419
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !781

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4945, ptr noundef nonnull @.str.2) #23
  br label %14

14:                                               ; preds = %8, %13
  store ptr %1, ptr %10, align 8, !tbaa !419
  br label %15

15:                                               ; preds = %2, %5, %14
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @prologue_epilogue_contains(ptr noundef %0) local_unnamed_addr #0 !prof !782 {
  %2 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !419
  %3 = tail call fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %2) #22, !range !471
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !783

5:                                                ; preds = %1
  %6 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %7 = tail call fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %6) #22, !range !471
  %8 = zext nneg i8 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !784 !PGOFuncName !785 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %36, label %4, !prof !786

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %32, !prof !787

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %32, !prof !788

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  %17 = load i32, ptr %16, align 8, !tbaa !765
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %23, %14
  %20 = phi i64 [ %24, %23 ], [ %18, %14 ]
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = add nsw i64 %20, -1
  %25 = load ptr, ptr %9, align 8, !tbaa !425
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !419
  %30 = tail call ptr @htab_find(ptr noundef nonnull %1, ptr noundef %29) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %19, label %36, !llvm.loop !789

32:                                               ; preds = %8, %4
  %33 = tail call ptr @htab_find(ptr noundef nonnull %1, ptr noundef nonnull %0) #23
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %23, %19, %2, %32
  %37 = phi i8 [ %35, %32 ], [ 0, %2 ], [ 0, %19 ], [ 1, %23 ]
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #0 !prof !512 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5, !prof !513

5:                                                ; preds = %0
  %6 = tail call i64 @htab_elements(ptr noundef nonnull %3) #23
  %7 = tail call ptr @get_insns() #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9, !prof !558

9:                                                ; preds = %5, %29
  %10 = phi i64 [ %32, %29 ], [ %6, %5 ]
  %11 = phi ptr [ %34, %29 ], [ %7, %5 ]
  %12 = phi ptr [ %31, %29 ], [ null, %5 ]
  %13 = phi ptr [ %30, %29 ], [ null, %5 ]
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %22, !prof !790

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !425
  %20 = icmp eq i32 %19, 5
  %21 = select i1 %20, ptr %11, ptr %13, !prof !791
  br label %29

22:                                               ; preds = %9
  %23 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !419
  %24 = tail call fastcc zeroext i8 @contains(ptr noundef nonnull %11, ptr noundef %23) #22, !range !471
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26, !prof !792

26:                                               ; preds = %22
  %27 = add i64 %10, -1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %29, !prof !793

29:                                               ; preds = %17, %26, %22
  %30 = phi ptr [ %13, %26 ], [ %13, %22 ], [ %21, %17 ]
  %31 = phi ptr [ %11, %26 ], [ %12, %22 ], [ %12, %17 ]
  %32 = phi i64 [ %27, %26 ], [ %10, %22 ], [ %10, %17 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !425
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %9, !prof !794, !llvm.loop !795

36:                                               ; preds = %29
  %37 = icmp eq ptr %31, null
  br i1 %37, label %64, label %38, !prof !796

38:                                               ; preds = %26, %36
  %39 = phi ptr [ %30, %36 ], [ %13, %26 ]
  %40 = phi ptr [ %31, %36 ], [ %11, %26 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %54, !prof !513

42:                                               ; preds = %38, %49
  %43 = phi ptr [ %45, %49 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !425
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %50, label %49

49:                                               ; preds = %42, %50
  br label %42

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !425
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %49

54:                                               ; preds = %50, %38
  %55 = phi ptr [ %39, %38 ], [ %45, %50 ]
  %56 = load i32, ptr %40, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %62, !prof !513

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !425
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %61, %59 ], [ %40, %54 ]
  tail call void @reorder_insns(ptr noundef nonnull %55, ptr noundef nonnull %55, ptr noundef %63) #23
  br label %64

64:                                               ; preds = %5, %36, %62, %0
  %65 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %66 = icmp eq ptr %65, null
  br i1 %66, label %141, label %67, !prof !513

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %68 = load ptr, ptr @cfun, align 8, !tbaa !419
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !683
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !797
  %73 = tail call fastcc ptr @ei_start_1(ptr noundef %72) #22
  store i32 0, ptr %1, align 8, !tbaa.struct !798
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %73, ptr %74, align 8, !tbaa.struct !799
  %75 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %73, ptr noundef nonnull %2) #22, !range !471
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %140, label %77, !prof !577

77:                                               ; preds = %67, %135
  %78 = load ptr, ptr %2, align 8, !tbaa !419
  %79 = load ptr, ptr %78, align 8, !tbaa !800
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !425
  %82 = load ptr, ptr %81, align 8, !tbaa !425
  %83 = icmp eq ptr %82, null
  br i1 %83, label %135, label %84, !prof !558

84:                                               ; preds = %77, %112
  %85 = phi ptr [ %116, %112 ], [ %82, %77 ]
  %86 = phi ptr [ %114, %112 ], [ null, %77 ]
  %87 = phi ptr [ %113, %112 ], [ null, %77 ]
  %88 = load ptr, ptr %80, align 8, !tbaa !425
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !802
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !425
  %93 = icmp eq ptr %85, %92
  br i1 %93, label %118, label %94, !prof !804

94:                                               ; preds = %84
  %95 = load i32, ptr %85, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %98, label %104, !prof !805

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 1
  %100 = load i32, ptr %99, align 8, !tbaa !425
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %102, label %112, !prof !806

102:                                              ; preds = %98
  %103 = icmp eq ptr %87, null
  br i1 %103, label %112, label %128, !prof !807

104:                                              ; preds = %94
  %105 = icmp eq ptr %87, null
  br i1 %105, label %106, label %112, !prof !808

106:                                              ; preds = %104
  %107 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !419
  %108 = tail call fastcc zeroext i8 @contains(ptr noundef nonnull %85, ptr noundef %107) #22, !range !471
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %112, label %110, !prof !809

110:                                              ; preds = %106
  %111 = icmp eq ptr %86, null
  br i1 %111, label %112, label %128, !prof !810

112:                                              ; preds = %102, %98, %110, %106, %104
  %113 = phi ptr [ null, %102 ], [ %87, %98 ], [ %85, %110 ], [ null, %106 ], [ %87, %104 ]
  %114 = phi ptr [ %85, %102 ], [ %86, %98 ], [ null, %110 ], [ %86, %106 ], [ %86, %104 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !425
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %84, !prof !811, !llvm.loop !812

118:                                              ; preds = %84, %112
  %119 = phi ptr [ %87, %84 ], [ %113, %112 ]
  %120 = phi ptr [ %86, %84 ], [ %114, %112 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122, !prof !813

122:                                              ; preds = %118
  %123 = icmp eq ptr %119, null
  br i1 %123, label %124, label %128, !prof !814

124:                                              ; preds = %122
  %125 = load ptr, ptr %80, align 8, !tbaa !425
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !802
  br label %128

128:                                              ; preds = %102, %110, %124, %122
  %129 = phi ptr [ %120, %124 ], [ %120, %122 ], [ %85, %102 ], [ %86, %110 ]
  %130 = phi ptr [ %127, %124 ], [ %119, %122 ], [ %87, %102 ], [ %85, %110 ]
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !425
  %133 = icmp eq ptr %132, %129
  br i1 %133, label %135, label %134, !prof !807

134:                                              ; preds = %128
  tail call void @reorder_insns(ptr noundef nonnull %129, ptr noundef nonnull %129, ptr noundef %132) #23
  br label %135

135:                                              ; preds = %77, %128, %134, %118
  call fastcc void @ei_next(ptr noundef nonnull %1) #22
  %136 = load i32, ptr %1, align 8
  %137 = load ptr, ptr %74, align 8
  %138 = call fastcc zeroext i8 @ei_cond(i32 %136, ptr %137, ptr noundef nonnull %2) #22, !range !471
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %77, !prof !815, !llvm.loop !816

140:                                              ; preds = %135, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #24
  br label %141

141:                                              ; preds = %140, %64
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #17 !prof !817 !PGOFuncName !818 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !819 !PGOFuncName !820 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !471
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !821

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !419
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !822 !PGOFuncName !823 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !824

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !825

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 738, ptr noundef nonnull @.str.2) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !826
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !826
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @current_function_name() local_unnamed_addr #0 !prof !418 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !419
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !828
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  %7 = tail call ptr %4(ptr noundef %6, i32 noundef 2) #23
  br label %8

8:                                                ; preds = %0, %3
  %9 = phi ptr [ %7, %3 ], [ @.str.8, %0 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @used_types_insert(ptr noundef %0) local_unnamed_addr #0 !prof !829 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %13 [
    i16 10, label %6
    i16 12, label %6
    i16 15, label %6
  ], !prof !830

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !425
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !831

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !425
  br label %2, !llvm.loop !832

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !425
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !833

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  br label %28

20:                                               ; preds = %6, %13
  %21 = phi ptr [ %15, %13 ], [ %8, %6 ]
  %22 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !425
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !425
  %26 = icmp eq ptr %21, %25
  %27 = select i1 %26, ptr %23, ptr %3, !prof !834
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi ptr [ %19, %17 ], [ %27, %20 ]
  %30 = load i32, ptr @debug_info_level, align 4, !tbaa !441
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32, !prof !835

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !419
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call fastcc void @used_types_insert_helper(ptr noundef %29, ptr noundef nonnull %33) #22
  br label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @types_used_by_cur_var_decl, align 8, !tbaa !419
  %38 = tail call ptr @tree_cons_stat(ptr noundef %29, ptr noundef null, ptr noundef %37) #23
  store ptr %38, ptr @types_used_by_cur_var_decl, align 8, !tbaa !419
  br label %39

39:                                               ; preds = %35, %36, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @used_types_insert_helper(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !836 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !837
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !419
  %10 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !419
  %11 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %11, ptr %5, align 8, !tbaa !837
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %14 = tail call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %0, i32 noundef 1) #23
  %15 = load ptr, ptr %14, align 8, !tbaa !419
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr %0, ptr %14, align 8, !tbaa !419
  br label %18

18:                                               ; preds = %12, %17, %2
  ret void
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @types_used_by_vars_do_hash(ptr noundef %0) #0 !prof !418 {
  %2 = tail call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0) #22
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !838 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !839
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !841
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5498, ptr noundef nonnull @.str.2) #23
  br label %11

11:                                               ; preds = %7, %10
  %12 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %13 = tail call i32 @iterative_hash(ptr noundef nonnull %12, i64 noundef 8, i32 noundef 0) #23
  %14 = tail call i32 @iterative_hash(ptr noundef %0, i64 noundef 8, i32 noundef %13) #23
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @types_used_by_vars_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !418 {
  %3 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !839
  %5 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !839
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !841
  %10 = load ptr, ptr %1, align 8, !tbaa !841
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @types_used_by_var_decl_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !418 {
  %3 = alloca %struct.types_used_by_vars_entry, align 8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %8 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %3, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !839
  store ptr %0, ptr %3, align 8, !tbaa !841
  %9 = load ptr, ptr @types_used_by_vars_hash, align 8, !tbaa !419
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @types_used_by_vars_do_hash, ptr noundef nonnull @types_used_by_vars_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %12, ptr @types_used_by_vars_hash, align 8, !tbaa !419
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef nonnull %3) #22
  %16 = call ptr @htab_find_slot_with_hash(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %15, i32 noundef 1) #23
  %17 = load ptr, ptr %16, align 8, !tbaa !419
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_stat(i64 noundef 16) #23
  store ptr %0, ptr %20, align 8, !tbaa !841
  %21 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %20, i64 0, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !839
  store ptr %20, ptr %16, align 8, !tbaa !419
  br label %22

22:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rest_of_handle_check_leaf_regs() #17 !prof !512 !PGOFuncName !842 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_thread_prologue_and_epilogue() #0 !prof !512 !PGOFuncName !843 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !441
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !513

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #23
  br label %5

5:                                                ; preds = %3, %0
  tail call fastcc void @thread_prologue_and_epilogue_insns() #22
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_match_asm_constraints() #0 !prof !512 !PGOFuncName !844 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 32), align 4, !tbaa !845
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %75, label %3, !prof !562

3:                                                ; preds = %0
  %4 = tail call i32 @df_set_flags(i32 noundef 32) #23
  %5 = load ptr, ptr @cfun, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !683
  %8 = load ptr, ptr %7, align 8, !tbaa !846
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !847
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !797
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %75, label %14

14:                                               ; preds = %3, %66
  %15 = phi ptr [ %67, %66 ], [ %5, %3 ]
  %16 = phi ptr [ %69, %66 ], [ %10, %3 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !425
  %19 = load ptr, ptr %18, align 8, !tbaa !425
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %14, %60
  %22 = phi ptr [ %62, %60 ], [ %19, %14 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !425
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !802
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %64, label %29

29:                                               ; preds = %21
  %30 = load i32, ptr %22, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !425
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %60 [
    i16 15, label %39
    i16 23, label %46
  ]

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !425
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %41, align 8, !tbaa !765
  %44 = load ptr, ptr %42, align 8, !tbaa !419
  %45 = load i32, ptr %44, align 8
  br label %46

46:                                               ; preds = %34, %39
  %47 = phi i32 [ %45, %39 ], [ %37, %34 ]
  %48 = phi ptr [ %44, %39 ], [ %36, %34 ]
  %49 = phi ptr [ %42, %39 ], [ %35, %34 ]
  %50 = phi i32 [ %43, %39 ], [ 1, %34 ]
  %51 = and i32 %47, 65535
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !425
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 17
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call fastcc void @match_asm_constraints_1(ptr noundef nonnull %22, ptr noundef nonnull %49, i32 noundef %50) #22
  br label %60

60:                                               ; preds = %29, %34, %46, %53, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !425
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21, !llvm.loop !849

64:                                               ; preds = %21, %60
  %65 = load ptr, ptr @cfun, align 8, !tbaa !419
  br label %66

66:                                               ; preds = %64, %14
  %67 = phi ptr [ %65, %64 ], [ %15, %14 ]
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !847
  %70 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !683
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !797
  %74 = icmp eq ptr %69, %73
  br i1 %74, label %75, label %14, !llvm.loop !850

75:                                               ; preds = %66, %3, %0
  %76 = phi i32 [ 0, %0 ], [ 131072, %3 ], [ 131072, %66 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #0 !prof !418 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !508
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %8) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !510
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %13) #22
  br label %16

16:                                               ; preds = %1, %11, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_temp_slot(ptr noundef %0) local_unnamed_addr #0 !prof !418 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !501
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !502
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %12) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !489
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #23
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !490
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #23
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P23temp_slot_address_entry4htab(ptr noundef %0) #0 !prof !418 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !851
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !853
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !851
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_temp_slot_address_entry(ptr noundef nonnull %19) #22
  %22 = load i64, ptr %11, align 8, !tbaa !853
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !854

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !851
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #23
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #0 !prof !418 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23temp_slot_address_entry, i32 noundef 63) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %6) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !510
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %11) #22
  br label %14

14:                                               ; preds = %9, %13, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_23temp_slot_address_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !418 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #23
  %8 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #23
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_temp_slot(ptr noundef %0) local_unnamed_addr #0 !prof !418 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9temp_slot, i32 noundef 124) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !501
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %5) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !502
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %10) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !489
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #23
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !490
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #23
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9temp_slot(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !418 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #23
  %7 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #23
  %8 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #23
  %9 = getelementptr inbounds %struct.temp_slot, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #23
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P23temp_slot_address_entry4htab(ptr noundef %0) #0 !prof !418 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 199) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !853
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !851
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !419
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_temp_slot_address_entry(ptr noundef nonnull %17) #22
  %20 = load i64, ptr %9, align 8, !tbaa !853
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !855

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !851
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 217) #23
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P23temp_slot_address_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !418 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !853
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !851
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #23
  %19 = load i64, ptr %9, align 8, !tbaa !853
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !856

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #23
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_marked_p(ptr noundef) #6

; Function Attrs: optsize
declare void @gt_ggc_m_P7rtx_def4htab(ptr noundef) #6

; Function Attrs: optsize
declare void @gt_pch_n_P7rtx_def4htab(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_function_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !436 !PGOFuncName !857 {
  %2 = load ptr, ptr %0, align 8, !tbaa !419
  %3 = tail call fastcc i32 @VEC_function_p_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !858

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !419
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_function_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !436 !PGOFuncName !859 {
  %3 = load i32, ptr %0, align 8, !tbaa !443
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !443
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_function_p_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !436 !PGOFuncName !860 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !858

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !861
  %6 = load i32, ptr %0, align 8, !tbaa !443
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_local_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !862 !PGOFuncName !863 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !864

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !865
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_temp_slot_p_gc_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419
  %5 = tail call fastcc ptr @VEC_temp_slot_p_base_address(ptr noundef %4) #22
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_temp_slot_p_base_address(ptr noundef readnone %0) unnamed_addr #17 !prof !869 !PGOFuncName !870 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !871
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !867 !PGOFuncName !872 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !873

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !865
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_temp_slot_p_gc_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419, !nonnull !874, !noundef !874
  store i32 %0, ptr %9, align 8, !tbaa !865
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !867 !PGOFuncName !875 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_space(ptr noundef %2, i32 noundef %0) #22, !range !433
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !876

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #23
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !419
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_temp_slot_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !867 !PGOFuncName !877 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !873

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !878
  %7 = load i32, ptr %0, align 8, !tbaa !865
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @temp_slot_address_compute_hash(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !525 !PGOFuncName !879 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !tbaa !441
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !508
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = call i32 @hash_rtx(ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @max_slot_level() unnamed_addr #18 !prof !418 !PGOFuncName !880 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef nonnull %1) #22
  %5 = add i32 %4, -1
  br label %6

6:                                                ; preds = %0, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %0 ]
  ret i32 %7
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @remove_unused_temp_slot_addresses_1(ptr nocapture noundef %0, ptr nocapture readnone %1) #19 !prof !418 !PGOFuncName !881 {
  %3 = load ptr, ptr %0, align 8, !tbaa !419
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !510
  %6 = getelementptr inbounds %struct.temp_slot, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 4, !tbaa !494
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !419
  br label %10

10:                                               ; preds = %9, %2
  ret i32 1
}

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @instantiate_new_reg(ptr noundef readnone %0, ptr nocapture noundef writeonly %1) unnamed_addr #19 !prof !882 !PGOFuncName !883 {
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !419
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %12, !prof !884

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !466
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8, !prof !885

8:                                                ; preds = %5
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !886
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8, %5
  br label %30

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !419
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %30, label %15, !prof !887

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !419
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %21, !prof !887

18:                                               ; preds = %15
  %19 = load i32, ptr @dynamic_offset, align 4, !tbaa !441
  %20 = sext i32 %19 to i64
  br label %30

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !419
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %30, label %24, !prof !888

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !419
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %34, !prof !889

27:                                               ; preds = %24
  %28 = load i32, ptr @cfa_offset, align 4, !tbaa !441
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %21, %12, %8, %27, %18, %11
  %31 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %11 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %18 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %27 ], [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), %8 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %12 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %21 ]
  %32 = phi i64 [ 0, %11 ], [ %20, %18 ], [ %29, %27 ], [ 0, %8 ], [ 0, %12 ], [ 0, %21 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !419
  store i64 %32, ptr %1, align 8, !tbaa !570
  br label %34

34:                                               ; preds = %24, %30
  %35 = phi ptr [ %33, %30 ], [ null, %24 ]
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_virtual_regs_in_insn(ptr noundef %0) unnamed_addr #0 !prof !890 !PGOFuncName !891 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %133, !prof !892

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !425
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %18, label %15, !prof !893

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %11) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %133, label %18, !prof !894

18:                                               ; preds = %9, %15
  %19 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = call fastcc ptr @instantiate_new_reg(ptr noundef %21, ptr noundef nonnull %2) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24, !prof !895

24:                                               ; preds = %18
  tail call void @start_sequence() #23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = tail call i32 @for_each_rtx(ptr noundef nonnull %25, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  %27 = load i32, ptr %22, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load ptr, ptr %25, align 8, !tbaa !425
  %31 = load i64, ptr %2, align 8, !tbaa !570
  %32 = sub nsw i64 0, %31
  %33 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %32) #23
  %34 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %29, ptr noundef %30, ptr noundef %33) #23
  %35 = tail call ptr @force_operand(ptr noundef %34, ptr noundef nonnull %22) #23
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %39, label %37

37:                                               ; preds = %24
  %38 = tail call ptr @emit_move_insn(ptr noundef nonnull %22, ptr noundef %35) #23
  br label %39

39:                                               ; preds = %37, %24
  %40 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %41 = tail call ptr @emit_insn_before(ptr noundef %40, ptr noundef nonnull %0) #23
  %42 = tail call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !425
  %46 = call fastcc ptr @instantiate_new_reg(ptr noundef %45, ptr noundef nonnull %2) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48, !prof !895

48:                                               ; preds = %43
  %49 = load i64, ptr %2, align 8, !tbaa !570
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %20, align 8, !tbaa !425
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #22
  %58 = icmp ugt i32 %57, 57
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  tail call void @start_sequence() #23
  %60 = load ptr, ptr %20, align 8, !tbaa !425
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #23
  %65 = load ptr, ptr %20, align 8, !tbaa !425
  %66 = tail call ptr @expand_simple_binop(i32 noundef %63, i32 noundef 49, ptr noundef nonnull %46, ptr noundef %64, ptr noundef %65, i32 noundef 1, i32 noundef 3) #23
  %67 = load ptr, ptr %20, align 8, !tbaa !425
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = tail call ptr @emit_move_insn(ptr noundef %67, ptr noundef %66) #23
  br label %71

71:                                               ; preds = %69, %59
  %72 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %73 = tail call ptr @emit_insn_before(ptr noundef %72, ptr noundef nonnull %0) #23
  %74 = tail call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

75:                                               ; preds = %56, %51, %48, %43
  tail call void @extract_insn(ptr noundef nonnull %0) #23
  %76 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !425
  %78 = load ptr, ptr %44, align 8, !tbaa !425
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 49
  br i1 %81, label %82, label %136, !prof !896

82:                                               ; preds = %75
  %83 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !897
  %84 = icmp sgt i8 %83, 2
  %85 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = icmp eq ptr %85, %86
  %88 = select i1 %84, i1 %87, i1 false
  %89 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8
  %90 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = icmp eq ptr %89, %90
  %92 = select i1 %88, i1 %91, i1 false
  br i1 %92, label %93, label %136, !prof !899

93:                                               ; preds = %82
  %94 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !419
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %136, !prof !900

98:                                               ; preds = %93
  %99 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !419
  %100 = call fastcc ptr @instantiate_new_reg(ptr noundef %99, ptr noundef nonnull %2) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %136, label %102, !prof !901

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !425
  %105 = load i64, ptr %2, align 8, !tbaa !570
  %106 = add nsw i64 %105, %104
  store i64 %106, ptr %2, align 8, !tbaa !570
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load ptr, ptr %20, align 8, !tbaa !425
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 37
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %109) #22
  %115 = icmp ugt i32 %114, 57
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  tail call void @start_sequence() #23
  %117 = load ptr, ptr %20, align 8, !tbaa !425
  %118 = tail call ptr @emit_move_insn(ptr noundef %117, ptr noundef nonnull %100) #23
  %119 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %120 = tail call ptr @emit_insn_before(ptr noundef %119, ptr noundef nonnull %0) #23
  %121 = tail call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

122:                                              ; preds = %113, %108, %102
  %123 = load i32, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 2), align 8, !tbaa !441
  %124 = tail call ptr @gen_int_mode(i64 noundef %106, i32 noundef %123) #23
  %125 = tail call fastcc i32 @safe_insn_predicate(i32 noundef %77, i32 noundef 1, ptr noundef nonnull %100) #22
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %122
  %128 = tail call fastcc i32 @safe_insn_predicate(i32 noundef %77, i32 noundef 2, ptr noundef %124) #22
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  store ptr %100, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !419
  %131 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8, !tbaa !419
  store ptr %100, ptr %131, align 8, !tbaa !419
  store ptr %124, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !419
  %132 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8, !tbaa !419
  store ptr %124, ptr %132, align 8, !tbaa !419
  br label %136

133:                                              ; preds = %1, %15
  tail call void @extract_insn(ptr noundef nonnull %0) #23
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !425
  br label %136

136:                                              ; preds = %75, %82, %93, %98, %130, %127, %122, %133
  %137 = phi i8 [ 1, %130 ], [ 0, %127 ], [ 0, %122 ], [ 0, %98 ], [ 0, %93 ], [ 0, %82 ], [ 0, %75 ], [ 0, %133 ]
  %138 = phi i32 [ %77, %130 ], [ %77, %127 ], [ %77, %122 ], [ %77, %98 ], [ %77, %93 ], [ %77, %82 ], [ %77, %75 ], [ %135, %133 ]
  %139 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !897
  %140 = icmp sgt i8 %139, 0
  br i1 %140, label %141, label %256, !prof !902

141:                                              ; preds = %136, %250
  %142 = phi i64 [ %252, %250 ], [ 0, %136 ]
  %143 = phi i8 [ %251, %250 ], [ %137, %136 ]
  %144 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !419
  %146 = load i32, ptr %145, align 8
  %147 = trunc i32 %146 to i16
  switch i16 %147, label %250 [
    i16 43, label %148
    i16 37, label %175
    i16 39, label %189
  ], !prof !903

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %149 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !425
  store ptr %150, ptr %3, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #24
  store i8 0, ptr %4, align 1, !tbaa !425
  %151 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef nonnull %4) #23
  %152 = load i8, ptr %4, align 1, !tbaa !425
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %174, label %154, !prof !904

154:                                              ; preds = %148
  call void @start_sequence() #23
  %155 = load ptr, ptr %3, align 8, !tbaa !419
  %156 = call ptr @replace_equiv_address(ptr noundef nonnull %145, ptr noundef %155) #23
  %157 = trunc i64 %142 to i32
  %158 = call fastcc i32 @safe_insn_predicate(i32 noundef %138, i32 noundef %157, ptr noundef %156) #22
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167, !prof !673

160:                                              ; preds = %154
  %161 = load ptr, ptr %3, align 8, !tbaa !419
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = call ptr @force_reg(i32 noundef %164, ptr noundef nonnull %161) #23
  store ptr %165, ptr %3, align 8, !tbaa !419
  %166 = call ptr @replace_equiv_address(ptr noundef %156, ptr noundef %165) #23
  br label %167

167:                                              ; preds = %160, %154
  %168 = phi ptr [ %156, %154 ], [ %166, %160 ]
  %169 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !677

171:                                              ; preds = %167
  %172 = call ptr @emit_insn_before(ptr noundef nonnull %169, ptr noundef nonnull %0) #23
  br label %173

173:                                              ; preds = %171, %167
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br label %217

174:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  br label %250

175:                                              ; preds = %141
  %176 = call fastcc ptr @instantiate_new_reg(ptr noundef nonnull %145, ptr noundef nonnull %2) #22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %250, label %178, !prof !905

178:                                              ; preds = %175
  %179 = load i64, ptr %2, align 8, !tbaa !570
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %217, label %181

181:                                              ; preds = %178
  call void @start_sequence() #23
  %182 = load i32, ptr %145, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %179) #23
  %186 = call ptr @expand_simple_binop(i32 noundef %184, i32 noundef 49, ptr noundef nonnull %176, ptr noundef %185, ptr noundef null, i32 noundef 1, i32 noundef 3) #23
  %187 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %188 = call ptr @emit_insn_before(ptr noundef %187, ptr noundef nonnull %0) #23
  br label %217

189:                                              ; preds = %141
  %190 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !425
  %192 = call fastcc ptr @instantiate_new_reg(ptr noundef %191, ptr noundef nonnull %2) #22
  %193 = icmp eq ptr %192, null
  br i1 %193, label %250, label %194, !prof !906

194:                                              ; preds = %189
  %195 = load i64, ptr %2, align 8, !tbaa !570
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %194
  call void @start_sequence() #23
  %198 = load i32, ptr %192, align 8
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  %201 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %195) #23
  %202 = call ptr @expand_simple_binop(i32 noundef %200, i32 noundef 49, ptr noundef nonnull %192, ptr noundef %201, ptr noundef null, i32 noundef 1, i32 noundef 3) #23
  %203 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %204 = call ptr @emit_insn_before(ptr noundef %203, ptr noundef nonnull %0) #23
  br label %205

205:                                              ; preds = %197, %194
  %206 = phi ptr [ %202, %197 ], [ %192, %194 ]
  %207 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %142
  %208 = load i32, ptr %207, align 4, !tbaa !441
  %209 = load i32, ptr %206, align 8
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  %212 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load i32, ptr %212, align 8, !tbaa !425
  %214 = call ptr @simplify_gen_subreg(i32 noundef %208, ptr noundef nonnull %206, i32 noundef %211, i32 noundef %213) #23
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %205
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1600, ptr noundef nonnull @.str.2) #23
  br label %217

217:                                              ; preds = %173, %178, %216, %205, %181
  %218 = phi ptr [ %214, %205 ], [ null, %216 ], [ %186, %181 ], [ %176, %178 ], [ %168, %173 ]
  %219 = trunc i64 %142 to i32
  %220 = call fastcc i32 @safe_insn_predicate(i32 noundef %138, i32 noundef %219, ptr noundef %218) #22
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %246, !prof !673

222:                                              ; preds = %217
  call void @start_sequence() #23
  %223 = load i32, ptr %218, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 37
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = call fastcc i32 @rhs_regno(ptr noundef nonnull %218) #22
  %228 = icmp ult i32 %227, 58
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1615, ptr noundef nonnull @.str.2) #23
  br label %230

230:                                              ; preds = %226, %229
  %231 = call ptr @copy_to_reg(ptr noundef nonnull %218) #23
  br label %240

232:                                              ; preds = %222
  %233 = sext i32 %138 to i64
  %234 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %233, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !907
  %236 = getelementptr inbounds %struct.insn_operand_data, ptr %235, i64 %142, i32 2
  %237 = load i16, ptr %236, align 8
  %238 = zext i16 %237 to i32
  %239 = call ptr @force_reg(i32 noundef %238, ptr noundef nonnull %218) #23
  br label %240

240:                                              ; preds = %232, %230
  %241 = phi ptr [ %231, %230 ], [ %239, %232 ]
  %242 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = call ptr @emit_insn_before(ptr noundef nonnull %242, ptr noundef nonnull %0) #23
  br label %246

246:                                              ; preds = %240, %244, %217
  %247 = phi ptr [ %218, %217 ], [ %241, %244 ], [ %241, %240 ]
  store ptr %247, ptr %144, align 8, !tbaa !419
  %248 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %142
  %249 = load ptr, ptr %248, align 8, !tbaa !419
  store ptr %247, ptr %249, align 8, !tbaa !419
  br label %250

250:                                              ; preds = %174, %141, %189, %175, %246
  %251 = phi i8 [ %143, %141 ], [ %143, %189 ], [ 1, %246 ], [ %143, %175 ], [ %143, %174 ]
  %252 = add nuw nsw i64 %142, 1
  %253 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !897
  %254 = sext i8 %253 to i64
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %141, label %256, !prof !909, !llvm.loop !910

256:                                              ; preds = %250, %136
  %257 = phi i8 [ %137, %136 ], [ %251, %250 ]
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %279, label %259, !prof !911

259:                                              ; preds = %256
  %260 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !912
  %261 = icmp sgt i8 %260, 0
  br i1 %261, label %262, label %277, !prof !913

262:                                              ; preds = %259, %262
  %263 = phi i64 [ %273, %262 ], [ 0, %259 ]
  %264 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !425
  %266 = sext i8 %265 to i64
  %267 = and i64 %266, 4294967295
  %268 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !419
  %270 = call ptr @copy_rtx(ptr noundef %269) #23
  %271 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %263
  %272 = load ptr, ptr %271, align 8, !tbaa !419
  store ptr %270, ptr %272, align 8, !tbaa !419
  %273 = add nuw nsw i64 %263, 1
  %274 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !912
  %275 = sext i8 %274 to i64
  %276 = icmp slt i64 %273, %275
  br i1 %276, label %262, label %277, !prof !914, !llvm.loop !915

277:                                              ; preds = %262, %259
  %278 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %278, align 8, !tbaa !425
  br label %279

279:                                              ; preds = %277, %256
  %280 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !425
  %282 = call i32 @asm_noperands(ptr noundef %281) #23
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %284, label %290, !prof !580

284:                                              ; preds = %279
  %285 = load ptr, ptr %280, align 8, !tbaa !425
  %286 = call i32 @check_asm_operands(ptr noundef %285) #23
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #23
  %289 = call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

290:                                              ; preds = %279
  %291 = call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #22
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294, !prof !580

293:                                              ; preds = %290
  call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1652, ptr noundef nonnull @.str.2) #23
  br label %294

294:                                              ; preds = %288, %284, %293, %290, %116, %71, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_decls(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !512 !PGOFuncName !916 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6, !prof !577

6:                                                ; preds = %1, %24
  %7 = phi ptr [ %26, %24 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !513

11:                                               ; preds = %6
  call void @make_decl_rtl(ptr noundef nonnull %7) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !425
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  call void @instantiate_decl_rtl(ptr noundef %14) #22
  %15 = getelementptr inbounds %struct.tree_parm_decl, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  call void @instantiate_decl_rtl(ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 67108864
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21, !prof !562

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %22 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %7) #23
  store ptr %22, ptr %2, align 8, !tbaa !419
  %23 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %24

24:                                               ; preds = %13, %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !425
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %6, !prof !744, !llvm.loop !917

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  call fastcc void @instantiate_decls_1(ptr noundef %30) #22
  %31 = load ptr, ptr @cfun, align 8, !tbaa !419
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !918
  store ptr null, ptr %32, align 8, !tbaa !918
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35, !prof !919

35:                                               ; preds = %28, %51
  %36 = phi ptr [ %38, %51 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !425
  %39 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !425
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %42, i64 11
  %44 = load i8, ptr %43, align 1, !tbaa !425
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46, !prof !920

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %40, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !425
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !920

50:                                               ; preds = %46
  call void @instantiate_decl_rtl(ptr noundef nonnull %48) #22
  br label %51

51:                                               ; preds = %50, %46, %35
  call void @ggc_free(ptr noundef nonnull %36) #23
  %52 = icmp eq ptr %38, null
  br i1 %52, label %53, label %35, !prof !921, !llvm.loop !922

53:                                               ; preds = %51, %28
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @safe_insn_predicate(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !923 !PGOFuncName !924 {
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %18, label %5, !prof !925

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !907
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !926
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !925

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %8, i64 %9, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call i32 %11(ptr noundef %2, i32 noundef %16) #23
  br label %18

18:                                               ; preds = %5, %3, %13
  %19 = phi i32 [ %17, %13 ], [ 1, %3 ], [ 1, %5 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @check_asm_operands(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !890 !PGOFuncName !928 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !425
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !929

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !425
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !425
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @instantiate_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 !prof !418 !PGOFuncName !930 {
  %4 = load ptr, ptr %0, align 8, !tbaa !419
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !441
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !441
  %12 = load i64, ptr %4, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !441
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %13, i64 11
  %19 = load i8, ptr %18, align 1, !tbaa !425
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !425
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @instantiate_decl_rtl(ptr noundef nonnull %23) #22
  br label %26

26:                                               ; preds = %3, %11, %17, %21, %25
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_decls_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !663 !PGOFuncName !931 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !932

6:                                                ; preds = %1, %31
  %7 = phi ptr [ %33, %31 ], [ %4, %1 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !425
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13, !prof !513

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !425
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !513

17:                                               ; preds = %13
  call void @instantiate_decl_rtl(ptr noundef nonnull %15) #22
  %18 = load i64, ptr %7, align 8
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = phi i64 [ %18, %17 ], [ %8, %13 ], [ %8, %6 ]
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %23, label %31, !prof !562

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28, !prof !562

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %29 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %7) #23
  store ptr %29, ptr %2, align 8, !tbaa !419
  %30 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %31

31:                                               ; preds = %19, %23, %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !425
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %6, !prof !933, !llvm.loop !934

35:                                               ; preds = %31, %1
  %36 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !425
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !935

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %42, %39 ], [ %37, %35 ]
  call fastcc void @instantiate_decls_1(ptr noundef nonnull %40) #22
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !425
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39, !prof !936, !llvm.loop !937

44:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: optsize
declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !553 !PGOFuncName !938 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !419
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !418 !PGOFuncName !939 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !419
  tail call fastcc void @VEC_tree_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_complex_args(ptr nocapture noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !940 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !419
  %4 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !433
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %1, %62
  %7 = phi i32 [ %64, %62 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !419
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !425
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 13
  br i1 %13, label %14, label %62

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !651
  %16 = tail call zeroext i8 %15(ptr noundef nonnull %10) #23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !425
  %21 = load i64, ptr %8, align 8
  %22 = lshr i64 %21, 18
  %23 = and i64 %22, 1
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %8) #23
  store ptr %24, ptr %2, align 8, !tbaa !419
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  store ptr %20, ptr %25, align 8, !tbaa !425
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !425
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !425
  store ptr %29, ptr %26, align 8, !tbaa !425
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !425
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 4
  store ptr null, ptr %33, align 8, !tbaa !425
  %34 = shl nuw nsw i64 %23, 12
  %35 = and i64 %31, -5376
  %36 = shl nuw nsw i64 %23, 10
  %37 = or disjoint i64 %34, %35
  %38 = or disjoint i64 %37, %36
  store i64 %38, ptr %30, align 8
  %39 = load i64, ptr %24, align 8
  %40 = and i64 %39, -262145
  store i64 %40, ptr %24, align 8
  tail call void @layout_decl(ptr noundef nonnull %24, i32 noundef 0) #23
  %41 = load ptr, ptr %0, align 8, !tbaa !419
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %41, i32 noundef %7, ptr noundef nonnull %24) #22
  %42 = load i64, ptr %24, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !441
  %46 = add i32 %45, -4
  %47 = icmp ult i32 %46, 7
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !425
  br label %51

51:                                               ; preds = %18, %48
  %52 = phi i32 [ %50, %48 ], [ 0, %18 ]
  %53 = tail call ptr @build_decl_stat(i32 noundef %52, i32 noundef 34, ptr noundef null, ptr noundef %20) #23
  %54 = load ptr, ptr %26, align 8, !tbaa !425
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 5
  store ptr %54, ptr %55, align 8, !tbaa !425
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, -5121
  %59 = or disjoint i64 %34, %58
  %60 = or disjoint i64 %59, %36
  store i64 %60, ptr %56, align 8
  tail call void @layout_decl(ptr noundef %53, i32 noundef 0) #23
  %61 = add i32 %7, 1
  tail call fastcc void @VEC_tree_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %61, ptr noundef %53) #22
  br label %62

62:                                               ; preds = %51, %14, %6
  %63 = phi i32 [ %61, %51 ], [ %7, %14 ], [ %7, %6 ]
  %64 = add i32 %63, 1
  %65 = load ptr, ptr %0, align 8, !tbaa !419
  %66 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %65, i32 noundef %64, ptr noundef nonnull %2) #22, !range !433
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %6, !llvm.loop !941

68:                                               ; preds = %62, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !553 !PGOFuncName !942 {
  %2 = load ptr, ptr %0, align 8, !tbaa !419
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !648

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !419
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !553 !PGOFuncName !943 {
  %3 = load i32, ptr %0, align 8, !tbaa !654
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !654
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #11 !prof !553 !PGOFuncName !944 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !648

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !945
  %6 = load i32, ptr %0, align 8, !tbaa !654
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !418 !PGOFuncName !946 {
  %4 = load i32, ptr %0, align 8, !tbaa !654
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !654
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !418 !PGOFuncName !947 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !419
  ret void
}

; Function Attrs: optsize
declare void @gimplify_type_sizes(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !418 !PGOFuncName !948 {
  %3 = tail call i32 @max_reg_num() #23
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @REG_N_SETS(i32 noundef %1) #22
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !419
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !683
  %12 = load ptr, ptr %11, align 8, !tbaa !846
  %13 = tail call ptr @df_get_live_out(ptr noundef %12) #23
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %1) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8, %5
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %0, i32 noundef %1) #23
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %8, %16, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %8 ], [ %19, %16 ]
  ret i8 %21
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #18 !prof !418 !PGOFuncName !949 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !419
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !950
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #2 !prof !418 !PGOFuncName !952 {
  %2 = load i32, ptr %0, align 8, !tbaa !654
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !654
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  ret ptr %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @all_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !953 !PGOFuncName !954 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4, !prof !955

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi i32 [ 0, %4 ], [ %22, %14 ]
  %8 = phi ptr [ %0, %4 ], [ %24, %14 ]
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -4194305
  store i64 %10, ptr %8, align 8
  br i1 %5, label %14, label %11, !prof !956

11:                                               ; preds = %6
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  store ptr %8, ptr %13, align 8, !tbaa !419
  br label %14

14:                                               ; preds = %11, %6
  %15 = add nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !425
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %1, i64 %18
  %20 = select i1 %5, ptr null, ptr %19, !prof !956
  %21 = tail call fastcc i32 @all_blocks(ptr noundef %17, ptr noundef %20) #22
  %22 = add nsw i32 %21, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !425
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !prof !957, !llvm.loop !958

26:                                               ; preds = %14, %2
  %27 = phi i32 [ 0, %2 ], [ %22, %14 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @cl_optimization_restore(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_emit() local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_varasm_status() local_unnamed_addr #6

; Function Attrs: optsize
declare void @init_expr() local_unnamed_addr #6

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_setup_varargs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !418 !PGOFuncName !959 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !441
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 7), align 8, !tbaa !960
  %5 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !635
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !636
  call void %4(ptr noundef %0, i32 noundef %6, ptr noundef %8, ptr noundef nonnull %3, i32 noundef 0) #23
  %9 = load i32, ptr %3, align 4, !tbaa !441
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  store i64 %12, ptr %13, align 8, !tbaa !748
  br label %14

14:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_entry_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !512 !PGOFuncName !961 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !635
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9, !prof !513

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !419
  %8 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !962
  br label %98

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !636
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = zext nneg i8 %14 to i32
  %16 = tail call ptr @function_arg(ptr noundef %0, i32 noundef %4, ptr noundef %11, i32 noundef %15) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %34, !prof !562

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !631
  store i32 %20, ptr %3, align 8, !tbaa !635
  %21 = load i8, ptr %12, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %34, !prof !513

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !963
  %26 = tail call zeroext i8 %25(ptr noundef %0) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 8, !tbaa !635
  %30 = load ptr, ptr %10, align 8, !tbaa !636
  %31 = tail call ptr @function_arg(ptr noundef %0, i32 noundef %29, ptr noundef %30, i32 noundef 1) #23
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %9, %24, %28, %18
  %35 = phi i8 [ 0, %18 ], [ %33, %28 ], [ 0, %24 ], [ 1, %9 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !964
  %37 = load i32, ptr %3, align 8, !tbaa !635
  %38 = load ptr, ptr %10, align 8, !tbaa !636
  %39 = tail call zeroext i8 %36(i32 noundef %37, ptr noundef %38) #23
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %16, ptr null, !prof !562
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43, !prof !562

43:                                               ; preds = %34
  %44 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !965
  %45 = load i32, ptr %3, align 8, !tbaa !635
  %46 = load ptr, ptr %10, align 8, !tbaa !636
  %47 = load i8, ptr %12, align 4
  %48 = and i8 %47, 1
  %49 = tail call i32 %44(ptr noundef %0, i32 noundef %45, ptr noundef %46, i8 noundef zeroext %48) #23
  %50 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 8
  store i32 %49, ptr %50, align 8, !tbaa !966
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  %54 = load i32, ptr %53, align 8, !tbaa !641
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !749
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  %62 = load i64, ptr %61, align 8, !tbaa !748
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60, %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2379, ptr noundef nonnull @.str.2) #23
  %65 = load i32, ptr %50, align 8, !tbaa !966
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi i32 [ %49, %60 ], [ %65, %64 ]
  %68 = sext i32 %49 to i64
  %69 = add nsw i64 %68, 3
  %70 = and i64 %69, -4
  %71 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  store i64 %70, ptr %71, align 8, !tbaa !748
  store i64 %70, ptr %57, align 8, !tbaa !749
  br label %72

72:                                               ; preds = %66, %52, %43, %34
  %73 = phi i64 [ 0, %34 ], [ 0, %43 ], [ 0, %52 ], [ %68, %66 ]
  %74 = phi i32 [ 0, %34 ], [ 0, %43 ], [ %49, %52 ], [ %67, %66 ]
  %75 = load i32, ptr %3, align 8, !tbaa !635
  %76 = load ptr, ptr %10, align 8, !tbaa !636
  %77 = zext nneg i8 %35 to i32
  %78 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %79 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1
  %80 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7
  tail call void @locate_and_pad_parm(i32 noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %74, ptr noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %80) #22
  %81 = icmp eq i8 %35, 0
  br i1 %81, label %82, label %88, !prof !562

82:                                               ; preds = %72
  %83 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !967
  %84 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !968
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %88, !prof !562

87:                                               ; preds = %82
  store i32 %85, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !967
  br label %88

88:                                               ; preds = %87, %82, %72
  %89 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !749
  %91 = sub nsw i64 %90, %73
  %92 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !969
  %94 = add nsw i64 %93, %91
  store i64 %94, ptr %92, align 8, !tbaa !969
  %95 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !970
  %97 = add nsw i64 %96, %91
  store i64 %97, ptr %95, align 8, !tbaa !970
  br label %98

98:                                               ; preds = %88, %6
  %99 = phi ptr [ %41, %88 ], [ %7, %6 ]
  %100 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  store ptr %99, ptr %100, align 8, !tbaa !743
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @assign_parm_is_stack_parm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !512 !PGOFuncName !971 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !743
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !562

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !966
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !419
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !425
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !641
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %6, %22, %14, %2
  %27 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !972
  %29 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !750
  %31 = add nsw i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !750
  %32 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !973
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35, !prof !562

35:                                               ; preds = %26
  %36 = tail call i32 @host_integerp(ptr noundef nonnull %33, i32 noundef 0) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call i64 @tree_low_cst(ptr noundef nonnull %33, i32 noundef 0) #23
  %40 = load i64, ptr %29, align 8, !tbaa !750
  %41 = add nsw i64 %40, %39
  store i64 %41, ptr %29, align 8, !tbaa !750
  br label %51

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !752
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %46, ptr noundef nonnull %33) #23
  br i1 %45, label %48, label %49

48:                                               ; preds = %42
  store ptr %47, ptr %43, align 8, !tbaa !752
  br label %51

49:                                               ; preds = %42
  %50 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %44, ptr noundef %47) #23
  store ptr %50, ptr %43, align 8, !tbaa !752
  br label %51

51:                                               ; preds = %26, %48, %49, %38, %22
  %52 = phi i8 [ 0, %22 ], [ 1, %38 ], [ 1, %49 ], [ 1, %48 ], [ 1, %26 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_stack_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !512 !PGOFuncName !974 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !743
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !562

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2
  %8 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !975
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !tbaa !969
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #23
  br label %36

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %15, ptr noundef nonnull %9) #23
  %17 = load i64, ptr %7, align 8, !tbaa !969
  %18 = tail call ptr @size_int_kind(i64 noundef %17, i32 noundef 1) #23
  %19 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %16, ptr noundef %18) #23
  %20 = tail call fastcc ptr @expand_normal(ptr noundef %19) #22
  br label %36

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1
  %23 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !976
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29, !prof !562

26:                                               ; preds = %21
  %27 = load i64, ptr %22, align 8, !tbaa !970
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %27) #23
  br label %36

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !419
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %30, ptr noundef nonnull %24) #23
  %32 = load i64, ptr %22, align 8, !tbaa !970
  %33 = tail call ptr @size_int_kind(i64 noundef %32, i32 noundef 1) #23
  %34 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %31, ptr noundef %33) #23
  %35 = tail call fastcc ptr @expand_normal(ptr noundef %34) #22
  br label %36

36:                                               ; preds = %26, %29, %11, %14
  %37 = phi ptr [ %13, %11 ], [ %20, %14 ], [ %28, %26 ], [ %35, %29 ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !742
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !419
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %43, label %41, !prof !562

41:                                               ; preds = %36
  %42 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %38, ptr noundef %37) #23
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %38, %36 ]
  %45 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !635
  %47 = tail call ptr @gen_rtx_MEM(i32 noundef %46, ptr noundef %44) #23
  %48 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 9
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %95, !prof !562

52:                                               ; preds = %43
  tail call void @set_mem_attributes(ptr noundef %47, ptr noundef %0, i32 noundef 1) #23
  %53 = load i32, ptr %45, align 8, !tbaa !635
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %95, label %55, !prof !513

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %95, label %61, !prof !562

61:                                               ; preds = %55
  %62 = zext i32 %53 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !425
  %65 = zext i8 %64 to i64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %65) #23
  tail call void @set_mem_size(ptr noundef %47, ptr noundef %66) #23
  %67 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !425
  %69 = icmp eq ptr %68, null
  br i1 %69, label %95, label %70

70:                                               ; preds = %61
  %71 = load ptr, ptr %68, align 8, !tbaa !977
  %72 = icmp eq ptr %71, null
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %68, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !979
  %76 = icmp eq ptr %75, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %56, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 255
  %81 = load i32, ptr %45, align 8, !tbaa !635
  %82 = tail call i32 @subreg_lowpart_offset(i32 noundef %80, i32 noundef %81) #23
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = load ptr, ptr %67, align 8, !tbaa !425
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.mem_attrs, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !979
  br label %90

90:                                               ; preds = %84, %87
  %91 = phi ptr [ %89, %87 ], [ null, %84 ]
  %92 = sub nsw i32 0, %82
  %93 = sext i32 %92 to i64
  %94 = tail call ptr @plus_constant(ptr noundef %91, i64 noundef %93) #23
  tail call void @set_mem_offset(ptr noundef nonnull %47, ptr noundef %94) #23
  br label %95

95:                                               ; preds = %77, %90, %52, %55, %61, %73, %70, %43
  %96 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !968
  %98 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 4
  %99 = load i32, ptr %98, align 8, !tbaa !980
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %116, !prof !513

101:                                              ; preds = %95
  %102 = load ptr, ptr %3, align 8, !tbaa !743
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, ptr %37, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 30
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !425
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %111, 3
  %113 = or i32 %112, %97
  %114 = sub i32 0, %113
  %115 = and i32 %113, %114
  br label %116

116:                                              ; preds = %95, %101, %104, %108
  %117 = phi i32 [ %115, %108 ], [ 8, %104 ], [ %97, %101 ], [ %97, %95 ]
  tail call void @set_mem_align(ptr noundef %47, i32 noundef %117) #23
  %118 = load ptr, ptr %3, align 8, !tbaa !743
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120, !prof !562

120:                                              ; preds = %116
  tail call void @set_reg_attrs_for_parm(ptr noundef nonnull %118, ptr noundef %47) #23
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 3
  store ptr %47, ptr %122, align 8, !tbaa !962
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_adjust_entry_rtl(ptr nocapture noundef %0) unnamed_addr #0 !prof !512 !PGOFuncName !981 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !743
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !962
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !966
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !562

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = tail call ptr @validize_mem(ptr noundef %5) #23
  %15 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !636
  %17 = tail call i64 @int_size_in_bytes(ptr noundef %16) #23
  %18 = trunc i64 %17 to i32
  tail call void @emit_group_store(ptr noundef %14, ptr noundef nonnull %3, ptr noundef %16, i32 noundef %18) #23
  br label %72

19:                                               ; preds = %9
  %20 = and i32 %7, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2530, ptr noundef nonnull @.str.2) #23
  br label %23

23:                                               ; preds = %19, %22
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #22
  %25 = tail call ptr @validize_mem(ptr noundef %5) #23
  %26 = load i32, ptr %6, align 8, !tbaa !966
  %27 = sdiv i32 %26, 4
  tail call void @move_block_from_reg(i32 noundef %24, ptr noundef %25, i32 noundef %27) #23
  br label %72

28:                                               ; preds = %1
  %29 = icmp eq ptr %3, null
  br i1 %29, label %72, label %30, !prof !562

30:                                               ; preds = %28
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 15
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !662
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %72, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !631
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %72, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !425
  %45 = load i32, ptr %44, align 8, !tbaa !765
  %46 = sext i32 %45 to i64
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %42, %69
  %49 = phi i64 [ %70, %69 ], [ 0, %42 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !419
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !425
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %53, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = lshr i32 %56, 16
  %61 = and i32 %60, 255
  %62 = icmp eq i32 %61, %40
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !425
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !425
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %48, %55, %59, %63
  %70 = add nuw i64 %49, 1
  %71 = icmp eq i64 %70, %46
  br i1 %71, label %72, label %48, !llvm.loop !982

72:                                               ; preds = %63, %69, %42, %28, %13, %23, %38, %34, %30
  %73 = phi ptr [ %3, %38 ], [ %3, %34 ], [ %3, %30 ], [ %5, %23 ], [ %5, %13 ], [ %5, %28 ], [ %3, %42 ], [ %53, %63 ], [ %3, %69 ]
  store ptr %73, ptr %2, align 8, !tbaa !743
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_parm_adjust_stack_rtl(ptr nocapture noundef %0) unnamed_addr #19 !prof !512 !PGOFuncName !983 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !962
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !513

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !661
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8, !prof !513

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !425
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !425
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !513

14:                                               ; preds = %8
  %15 = icmp ugt i32 %10, 8
  br i1 %15, label %20, label %24, !prof !513

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !984
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %20, label %24, !prof !513

20:                                               ; preds = %16, %14
  %21 = phi i32 [ 8, %14 ], [ %18, %16 ]
  %22 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !441
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %16, %20, %14, %5, %1
  %25 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !743
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %28, label %36, !prof !562

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !662
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %36, label %32, !prof !513

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !631
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %52, !prof !562

36:                                               ; preds = %32, %28, %24
  %37 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !726
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39, !prof !562

39:                                               ; preds = %36
  %40 = load i32, ptr @flag_stack_protect, align 4, !tbaa !441
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 9
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load ptr, ptr %0, align 8, !tbaa !661
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %52 [
    i16 10, label %51
    i16 12, label %51
  ]

51:                                               ; preds = %47, %47, %42, %39
  br label %52

52:                                               ; preds = %47, %32, %20, %51, %36
  %53 = phi ptr [ null, %51 ], [ %3, %36 ], [ null, %20 ], [ null, %32 ], [ %3, %47 ]
  store ptr %53, ptr %2, align 8, !tbaa !962
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @assign_parm_setup_block_p(ptr nocapture noundef readonly %0) unnamed_addr #18 !prof !512 !PGOFuncName !985 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !662
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %12, label %5, !prof !513

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !743
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 65536
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i8 [ 1, %1 ], [ %11, %5 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_setup_block(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !418 !PGOFuncName !986 {
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !743
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !962
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call ptr @emit_group_move_into_temps(ptr noundef nonnull %5) #23
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %5, %3 ]
  %15 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !636
  %17 = tail call i64 @int_size_in_bytes(ptr noundef %16) #23
  %18 = add nsw i64 %17, 3
  %19 = icmp eq ptr %7, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = and i64 %18, -4
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !425
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 32)
  store i32 %24, ptr %22, align 8, !tbaa !425
  %25 = tail call ptr @assign_stack_local(i32 noundef 1, i64 noundef %21, i32 noundef %24) #22
  %26 = load i32, ptr %14, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !425
  %32 = zext i8 %31 to i64
  %33 = icmp eq i64 %17, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, ptr %25, align 8
  %36 = shl nuw nsw i32 %28, 16
  %37 = and i32 %35, -16711681
  %38 = or disjoint i32 %37, %36
  store i32 %38, ptr %25, align 8
  br label %39

39:                                               ; preds = %34, %20
  tail call void @set_mem_attributes(ptr noundef %25, ptr noundef nonnull %1, i32 noundef 1) #23
  br label %40

40:                                               ; preds = %39, %13
  %41 = phi ptr [ %25, %39 ], [ %7, %13 ]
  %42 = load i32, ptr %14, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %79 [
    i16 37, label %44
    i16 15, label %44
  ]

44:                                               ; preds = %40, %40
  %45 = tail call ptr @validize_mem(ptr noundef %41) #23
  %46 = load i32, ptr %14, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 15
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !746
  %52 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !987
  tail call void @push_to_sequence2(ptr noundef %51, ptr noundef %53) #23
  %54 = load ptr, ptr %15, align 8, !tbaa !636
  %55 = trunc i64 %17 to i32
  tail call void @emit_group_store(ptr noundef %45, ptr noundef nonnull %14, ptr noundef %54, i32 noundef %55) #23
  %56 = tail call ptr @get_insns() #23
  store ptr %56, ptr %50, align 8, !tbaa !746
  %57 = tail call ptr @get_last_insn() #23
  store ptr %57, ptr %52, align 8, !tbaa !987
  tail call void @end_sequence() #23
  br label %92

58:                                               ; preds = %44
  %59 = icmp eq i64 %17, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %58
  %61 = icmp slt i64 %17, 5
  br i1 %61, label %62, label %75

62:                                               ; preds = %60
  %63 = trunc i64 %17 to i32
  %64 = shl i32 %63, 3
  %65 = tail call i32 @mode_for_size(i32 noundef %64, i32 noundef 2, i32 noundef 0) #23
  %66 = icmp eq i32 %65, 1
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #22
  br i1 %66, label %72, label %68

68:                                               ; preds = %62
  %69 = tail call ptr @gen_rtx_REG(i32 noundef %65, i32 noundef %67) #23
  %70 = tail call ptr @change_address(ptr noundef %45, i32 noundef %65, ptr noundef null) #23
  %71 = tail call ptr @emit_move_insn(ptr noundef %70, ptr noundef %69) #23
  br label %92

72:                                               ; preds = %62
  %73 = lshr i64 %18, 2
  %74 = trunc i64 %73 to i32
  tail call void @move_block_from_reg(i32 noundef %67, ptr noundef %45, i32 noundef %74) #23
  br label %92

75:                                               ; preds = %60
  %76 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #22
  %77 = lshr i64 %18, 2
  %78 = trunc i64 %77 to i32
  tail call void @move_block_from_reg(i32 noundef %76, ptr noundef %45, i32 noundef %78) #23
  br label %92

79:                                               ; preds = %40
  %80 = load ptr, ptr %6, align 8, !tbaa !962
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !746
  %85 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !987
  tail call void @push_to_sequence2(ptr noundef %84, ptr noundef %86) #23
  %87 = load ptr, ptr %4, align 8, !tbaa !743
  %88 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #23
  %89 = tail call ptr @emit_block_move(ptr noundef %41, ptr noundef %87, ptr noundef %88, i32 noundef 0) #23
  %90 = tail call ptr @get_insns() #23
  store ptr %90, ptr %83, align 8, !tbaa !746
  %91 = tail call ptr @get_last_insn() #23
  store ptr %91, ptr %85, align 8, !tbaa !987
  tail call void @end_sequence() #23
  br label %92

92:                                               ; preds = %49, %75, %58, %72, %68, %79, %82
  store ptr %41, ptr %6, align 8, !tbaa !962
  tail call void @set_decl_rtl(ptr noundef %1, ptr noundef %41) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_setup_reg(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !512 !PGOFuncName !988 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !425
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 21
  %10 = and i32 %9, 1
  store i32 %10, ptr %4, align 4, !tbaa !441
  %11 = load ptr, ptr %2, align 8, !tbaa !661
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !662
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !419
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !425
  %17 = call i32 @promote_function_mode(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %4, ptr noundef %16, i32 noundef 2) #23
  %18 = call ptr @gen_reg_rtx(i32 noundef %17) #23
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 4096
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24, !prof !562

23:                                               ; preds = %3
  call void @mark_user_reg(ptr noundef %18) #23
  br label %24

24:                                               ; preds = %23, %3
  %25 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29, !prof !562

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !636
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !425
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @vector_type_mode(ptr noundef nonnull %33) #23
  br label %44

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = call ptr @gen_rtx_MEM(i32 noundef %45, ptr noundef %18) #23
  call void @set_mem_attributes(ptr noundef %46, ptr noundef nonnull %1, i32 noundef 1) #23
  br label %47

47:                                               ; preds = %24, %44
  %48 = phi ptr [ %46, %44 ], [ %18, %24 ]
  call void @set_decl_rtl(ptr noundef nonnull %1, ptr noundef %48) #23
  call fastcc void @assign_parm_remove_parallels(ptr noundef nonnull %2) #22
  %49 = load i32, ptr %12, align 8, !tbaa !662
  %50 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !631
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57, !prof !562

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !635
  %56 = icmp eq i32 %17, %55
  br i1 %56, label %132, label %57, !prof !562

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !743
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = call ptr @gen_reg_rtx(i32 noundef %62) #23
  %64 = load ptr, ptr %58, align 8, !tbaa !743
  %65 = call ptr @validize_mem(ptr noundef %64) #23
  %66 = call ptr @emit_move_insn(ptr noundef %63, ptr noundef %65) #23
  %67 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !746
  %69 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !987
  call void @push_to_sequence2(ptr noundef %68, ptr noundef %70) #23
  %71 = load i32, ptr %12, align 8, !tbaa !662
  %72 = load i32, ptr %4, align 4, !tbaa !441
  %73 = call ptr @convert_to_mode(i32 noundef %71, ptr noundef %63, i32 noundef %72) #23
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %122

77:                                               ; preds = %57
  %78 = lshr i32 %74, 16
  %79 = and i32 %78, 255
  %80 = load i32, ptr %12, align 8, !tbaa !662
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !425
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %122

88:                                               ; preds = %82
  %89 = load i32, ptr %50, align 4, !tbaa !631
  %90 = icmp eq i32 %79, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %88
  %92 = lshr i32 %85, 16
  %93 = and i32 %92, 255
  %94 = load ptr, ptr %58, align 8, !tbaa !743
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %91
  %100 = zext nneg i32 %79 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !425
  %103 = zext nneg i32 %93 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !425
  %106 = icmp ult i8 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %99
  %108 = or i32 %74, 268435456
  store i32 %108, ptr %73, align 8
  %109 = load i32, ptr %4, align 4, !tbaa !441
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = or i32 %74, 402653184
  br label %120

113:                                              ; preds = %107
  %114 = and i32 %108, -134283225
  store i32 %114, ptr %73, align 8
  %115 = load i32, ptr %4, align 4, !tbaa !441
  %116 = shl i32 %115, 26
  %117 = and i32 %116, 67108864
  %118 = and i32 %108, -201392089
  %119 = or disjoint i32 %117, %118
  br label %120

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %119, %113 ], [ %112, %111 ]
  store i32 %121, ptr %73, align 8
  br label %122

122:                                              ; preds = %120, %99, %91, %88, %82, %77, %57
  %123 = load i64, ptr %1, align 8
  %124 = and i64 %123, 16777216
  %125 = load ptr, ptr %2, align 8, !tbaa !661
  %126 = call ptr @make_tree(ptr noundef %125, ptr noundef nonnull %73) #23
  call void @expand_assignment(ptr noundef nonnull %1, ptr noundef %126, i8 noundef zeroext 0) #23
  %127 = load i64, ptr %1, align 8
  %128 = and i64 %127, -16777217
  %129 = or disjoint i64 %128, %124
  store i64 %129, ptr %1, align 8
  %130 = call ptr @get_insns() #23
  store ptr %130, ptr %67, align 8, !tbaa !746
  %131 = call ptr @get_last_insn() #23
  store ptr %131, ptr %69, align 8, !tbaa !987
  call void @end_sequence() #23
  br label %137

132:                                              ; preds = %53
  %133 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !743
  %135 = call ptr @validize_mem(ptr noundef %134) #23
  %136 = call ptr @emit_move_insn(ptr noundef %18, ptr noundef %135) #23
  br label %137

137:                                              ; preds = %132, %122
  %138 = phi i8 [ 1, %122 ], [ 0, %132 ]
  %139 = load i8, ptr %25, align 4
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %243, label %142, !prof !562

142:                                              ; preds = %137
  %143 = load ptr, ptr %5, align 8, !tbaa !425
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 @vector_type_mode(ptr noundef nonnull %143) #23
  br label %154

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %153, %149 ]
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %243, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %5, align 8, !tbaa !425
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 14
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 @vector_type_mode(ptr noundef nonnull %158) #23
  br label %169

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.tree_type, ptr %158, i64 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  br label %169

169:                                              ; preds = %164, %162
  %170 = phi i32 [ %163, %162 ], [ %168, %164 ]
  %171 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !425
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %175 = load ptr, ptr %171, align 8, !tbaa !425
  br label %176

176:                                              ; preds = %169, %174
  %177 = phi ptr [ %175, %174 ], [ %172, %169 ]
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = icmp eq i32 %170, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = call zeroext i8 @use_register_for_decl(ptr noundef nonnull %1) #22, !range !471
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %243, label %185

185:                                              ; preds = %182, %176
  %186 = load ptr, ptr %5, align 8, !tbaa !425
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 14
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = call i32 @vector_type_mode(ptr noundef nonnull %186) #23
  br label %197

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %197

197:                                              ; preds = %192, %190
  %198 = phi i32 [ %191, %190 ], [ %196, %192 ]
  %199 = call ptr @gen_reg_rtx(i32 noundef %198) #23
  call void @mark_user_reg(ptr noundef %199) #23
  %200 = load i32, ptr %199, align 8
  %201 = load ptr, ptr %171, align 8, !tbaa !425
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %204 = load ptr, ptr %171, align 8, !tbaa !425
  br label %205

205:                                              ; preds = %197, %203
  %206 = phi ptr [ %204, %203 ], [ %201, %197 ]
  %207 = load i32, ptr %206, align 8
  %208 = xor i32 %207, %200
  %209 = and i32 %208, 16711680
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %238, label %211

211:                                              ; preds = %205
  %212 = lshr i32 %207, 16
  %213 = and i32 %212, 255
  %214 = call ptr @gen_reg_rtx(i32 noundef %213) #23
  %215 = load ptr, ptr %5, align 8, !tbaa !425
  %216 = load i64, ptr %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = lshr i32 %217, 21
  %219 = and i32 %218, 1
  %220 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !746
  %222 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %223 = load ptr, ptr %222, align 8, !tbaa !987
  call void @push_to_sequence2(ptr noundef %221, ptr noundef %223) #23
  %224 = load ptr, ptr %171, align 8, !tbaa !425
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %211
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %227 = load ptr, ptr %171, align 8, !tbaa !425
  br label %228

228:                                              ; preds = %211, %226
  %229 = phi ptr [ %227, %226 ], [ %224, %211 ]
  %230 = call ptr @emit_move_insn(ptr noundef %214, ptr noundef %229) #23
  %231 = load i32, ptr %199, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = call ptr @convert_to_mode(i32 noundef %233, ptr noundef %214, i32 noundef %219) #23
  %235 = call ptr @emit_move_insn(ptr noundef nonnull %199, ptr noundef %234) #23
  %236 = call ptr @get_insns() #23
  store ptr %236, ptr %220, align 8, !tbaa !746
  %237 = call ptr @get_last_insn() #23
  store ptr %237, ptr %222, align 8, !tbaa !987
  call void @end_sequence() #23
  br label %240

238:                                              ; preds = %205
  %239 = call ptr @emit_move_insn(ptr noundef nonnull %199, ptr noundef nonnull %206) #23
  br label %240

240:                                              ; preds = %238, %228
  %241 = phi i8 [ 1, %228 ], [ %138, %238 ]
  call void @set_decl_rtl(ptr noundef nonnull %1, ptr noundef nonnull %199) #23
  %242 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  store ptr null, ptr %242, align 8, !tbaa !962
  br label %243

243:                                              ; preds = %240, %182, %154, %137
  %244 = phi i8 [ %241, %240 ], [ %138, %182 ], [ %138, %154 ], [ %138, %137 ]
  %245 = phi ptr [ %199, %240 ], [ %18, %182 ], [ %18, %154 ], [ %18, %137 ]
  %246 = load i32, ptr %12, align 8, !tbaa !662
  %247 = load i32, ptr %50, align 4, !tbaa !631
  %248 = icmp ne i32 %246, %247
  %249 = icmp ne i8 %244, 0
  %250 = or i1 %249, %248
  br i1 %250, label %354, label %251, !prof !514

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !962
  %254 = icmp eq ptr %253, null
  br i1 %254, label %354, label %255, !prof !513

255:                                              ; preds = %251
  %256 = load i32, ptr %253, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 43
  br i1 %258, label %259, label %354, !prof !562

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 7, i32 1, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !976
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %354, !prof !562

263:                                              ; preds = %259
  %264 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !419
  %265 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !425
  %267 = call i32 @reg_mentioned_p(ptr noundef %264, ptr noundef %266) #23
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %354, label %269, !prof !513

269:                                              ; preds = %263
  %270 = call ptr @get_last_insn() #23
  %271 = load i32, ptr %245, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 41
  br i1 %273, label %274, label %332, !prof !513

274:                                              ; preds = %269
  %275 = lshr i32 %271, 16
  %276 = and i32 %275, 255
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !425
  %280 = zext i8 %279 to i32
  %281 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !425
  %283 = call fastcc i32 @rhs_regno(ptr noundef %282) #22
  %284 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1, i32 0, i32 0, i64 1
  %285 = load ptr, ptr %284, align 8, !tbaa !425
  %286 = call fastcc i32 @rhs_regno(ptr noundef %285) #22
  %287 = load ptr, ptr %252, align 8, !tbaa !962
  %288 = call ptr @adjust_address_1(ptr noundef %287, i32 noundef %280, i64 noundef 0, i32 noundef 0, i32 noundef 1) #23
  %289 = load ptr, ptr %252, align 8, !tbaa !962
  %290 = zext i8 %279 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !425
  %293 = zext i8 %292 to i64
  %294 = call ptr @adjust_address_1(ptr noundef %289, i32 noundef %280, i64 noundef %293, i32 noundef 0, i32 noundef 1) #23
  %295 = icmp eq ptr %270, null
  br i1 %295, label %354, label %296

296:                                              ; preds = %274
  %297 = sext i32 %286 to i64
  %298 = sext i32 %283 to i64
  br label %299

299:                                              ; preds = %296, %329
  %300 = phi ptr [ %270, %296 ], [ %330, %329 ]
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 65535
  %303 = add nsw i32 %302, -7
  %304 = icmp ult i32 %303, 4
  br i1 %304, label %305, label %329

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.rtx_def, ptr %300, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !425
  %308 = load i32, ptr %307, align 8
  %309 = and i32 %308, 65535
  %310 = icmp eq i32 %309, 23
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = call ptr @single_set_2(ptr noundef nonnull %300, ptr noundef nonnull %307) #23
  %313 = icmp eq ptr %312, null
  br i1 %313, label %329, label %314

314:                                              ; preds = %305, %311
  %315 = phi ptr [ %312, %311 ], [ %307, %305 ]
  %316 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !425
  %318 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !419
  %319 = getelementptr inbounds ptr, ptr %318, i64 %297
  %320 = load ptr, ptr %319, align 8, !tbaa !419
  %321 = icmp eq ptr %317, %320
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = getelementptr inbounds ptr, ptr %318, i64 %298
  %324 = load ptr, ptr %323, align 8, !tbaa !419
  %325 = icmp eq ptr %317, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322, %314
  %327 = phi ptr [ %294, %314 ], [ %288, %322 ]
  %328 = call ptr @set_unique_reg_note(ptr noundef nonnull %300, i32 noundef 3, ptr noundef %327) #23
  br label %329

329:                                              ; preds = %326, %299, %322, %311
  %330 = call ptr @prev_nonnote_insn(ptr noundef nonnull %300) #23
  %331 = icmp eq ptr %330, null
  br i1 %331, label %354, label %299, !llvm.loop !989

332:                                              ; preds = %269
  %333 = load i32, ptr %270, align 8
  %334 = and i32 %333, 65535
  %335 = add nsw i32 %334, -7
  %336 = icmp ult i32 %335, 4
  br i1 %336, label %337, label %354, !prof !990

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !425
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 23
  br i1 %342, label %346, label %343, !prof !562

343:                                              ; preds = %337
  %344 = call ptr @single_set_2(ptr noundef nonnull %270, ptr noundef nonnull %339) #23
  %345 = icmp eq ptr %344, null
  br i1 %345, label %354, label %346, !prof !991

346:                                              ; preds = %337, %343
  %347 = phi ptr [ %344, %343 ], [ %339, %337 ]
  %348 = getelementptr inbounds %struct.rtx_def, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !425
  %350 = icmp eq ptr %349, %245
  br i1 %350, label %351, label %354, !prof !562

351:                                              ; preds = %346
  %352 = load ptr, ptr %252, align 8, !tbaa !962
  %353 = call ptr @set_unique_reg_note(ptr noundef nonnull %270, i32 noundef 3, ptr noundef %352) #23
  br label %354

354:                                              ; preds = %329, %274, %332, %351, %346, %343, %263, %259, %255, %251, %243
  %355 = load ptr, ptr %5, align 8, !tbaa !425
  %356 = load i64, ptr %355, align 8
  %357 = trunc i64 %356 to i16
  switch i16 %357, label %363 [
    i16 10, label %358
    i16 12, label %358
  ], !prof !733

358:                                              ; preds = %354, %354
  %359 = getelementptr inbounds %struct.tree_common, ptr %355, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !425
  %361 = getelementptr inbounds %struct.tree_type, ptr %360, i64 0, i32 7
  %362 = load i32, ptr %361, align 8, !tbaa !425
  call void @mark_reg_pointer(ptr noundef %245, i32 noundef %362) #23
  br label %363

363:                                              ; preds = %354, %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_setup_stack(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !418 !PGOFuncName !992 {
  tail call fastcc void @assign_parm_remove_parallels(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !635
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !662
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %55, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !743
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #23
  %16 = load ptr, ptr %10, align 8, !tbaa !743
  %17 = tail call ptr @validize_mem(ptr noundef %16) #23
  %18 = tail call ptr @emit_move_insn(ptr noundef %15, ptr noundef %17) #23
  %19 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !746
  %21 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !987
  tail call void @push_to_sequence2(ptr noundef %20, ptr noundef %22) #23
  %23 = load i32, ptr %6, align 8, !tbaa !662
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !425
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 21
  %29 = and i32 %28, 1
  %30 = tail call ptr @convert_to_mode(i32 noundef %23, ptr noundef %15, i32 noundef %29) #23
  store ptr %30, ptr %10, align 8, !tbaa !743
  %31 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !962
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %9
  %35 = load i32, ptr %6, align 8, !tbaa !662
  %36 = load i32, ptr %32, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = tail call i32 @subreg_lowpart_offset(i32 noundef %35, i32 noundef %38) #23
  %40 = load ptr, ptr %31, align 8, !tbaa !962
  %41 = load i32, ptr %6, align 8, !tbaa !662
  %42 = tail call ptr @adjust_address_1(ptr noundef %40, i32 noundef %41, i64 noundef 0, i32 noundef 1, i32 noundef 1) #23
  store ptr %42, ptr %31, align 8, !tbaa !962
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !425
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mem_attrs, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !979
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = sext i32 %39 to i64
  %54 = tail call ptr @plus_constant(ptr noundef nonnull %50, i64 noundef %53) #23
  tail call void @set_mem_offset(ptr noundef nonnull %42, ptr noundef %54) #23
  br label %55

55:                                               ; preds = %9, %44, %52, %48, %34, %3
  %56 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !743
  %58 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !962
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %104, label %61

61:                                               ; preds = %55
  %62 = icmp eq ptr %59, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !636
  %66 = load i32, ptr %57, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !425
  %71 = tail call i32 @ix86_local_alignment(ptr noundef %65, i32 noundef %68, i32 noundef %70) #23
  %72 = load ptr, ptr %56, align 8, !tbaa !743
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !425
  %79 = zext i8 %78 to i64
  %80 = tail call ptr @assign_stack_local(i32 noundef %75, i64 noundef %79, i32 noundef %71) #22
  store ptr %80, ptr %58, align 8, !tbaa !962
  tail call void @set_mem_attributes(ptr noundef %80, ptr noundef %1, i32 noundef 1) #23
  %81 = load ptr, ptr %58, align 8, !tbaa !962
  br label %82

82:                                               ; preds = %63, %61
  %83 = phi ptr [ %81, %63 ], [ %59, %61 ]
  %84 = tail call ptr @validize_mem(ptr noundef %83) #23
  %85 = load ptr, ptr %56, align 8, !tbaa !743
  %86 = tail call ptr @validize_mem(ptr noundef %85) #23
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 43
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  br i1 %8, label %91, label %96

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !746
  %94 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !987
  tail call void @push_to_sequence2(ptr noundef %93, ptr noundef %95) #23
  br label %96

96:                                               ; preds = %90, %91
  %97 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !636
  %99 = tail call i64 @int_size_in_bytes(ptr noundef %98) #23
  %100 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %99) #23
  %101 = tail call ptr @emit_block_move(ptr noundef %84, ptr noundef nonnull %86, ptr noundef %100, i32 noundef 0) #23
  br label %105

102:                                              ; preds = %82
  %103 = tail call ptr @emit_move_insn(ptr noundef %84, ptr noundef nonnull %86) #23
  br label %104

104:                                              ; preds = %102, %55
  br i1 %8, label %110, label %105

105:                                              ; preds = %96, %104
  %106 = tail call ptr @get_insns() #23
  %107 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !746
  %108 = tail call ptr @get_last_insn() #23
  %109 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  store ptr %108, ptr %109, align 8, !tbaa !987
  tail call void @end_sequence() #23
  br label %110

110:                                              ; preds = %105, %104
  %111 = load ptr, ptr %58, align 8, !tbaa !962
  tail call void @set_decl_rtl(ptr noundef %1, ptr noundef %111) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_unsplit_complex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !418 !PGOFuncName !993 {
  %3 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = icmp eq ptr %4, null
  br i1 %5, label %121, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %6, %115
  %10 = phi ptr [ %4, %6 ], [ %119, %115 ]
  %11 = phi i32 [ 0, %6 ], [ %118, %115 ]
  %12 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !425
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 13
  br i1 %16, label %17, label %115

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !651
  %19 = tail call zeroext i8 %18(ptr noundef nonnull %13) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %115, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 255
  %25 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !425
  %27 = zext i8 %26 to i32
  %28 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %11) #22
  %29 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !425
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  tail call void @make_decl_rtl(ptr noundef nonnull %28) #23
  %33 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %11) #22
  %34 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !425
  br label %36

36:                                               ; preds = %21, %32
  %37 = phi ptr [ %35, %32 ], [ %30, %21 ]
  %38 = add i32 %11, 1
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %40 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !425
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  tail call void @make_decl_rtl(ptr noundef nonnull %39) #23
  %44 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %45 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !425
  br label %47

47:                                               ; preds = %36, %43
  %48 = phi ptr [ %46, %43 ], [ %41, %36 ]
  %49 = load i32, ptr %37, align 8
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i8
  %52 = icmp eq i8 %26, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %27, ptr noundef nonnull %37) #23
  %55 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %27, ptr noundef %48) #23
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %55, %53 ], [ %48, %47 ]
  %58 = phi ptr [ %54, %53 ], [ %37, %47 ]
  %59 = load i64, ptr %10, align 8
  %60 = and i64 %59, 262144
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %12, align 8, !tbaa !425
  %64 = tail call i64 @int_size_in_bytes(ptr noundef %63) #23
  %65 = load ptr, ptr %12, align 8, !tbaa !425
  %66 = load i64, ptr %22, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !425
  %71 = tail call i32 @ix86_local_alignment(ptr noundef %65, i32 noundef %68, i32 noundef %70) #23
  %72 = load i64, ptr %22, align 8
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call ptr @assign_stack_local(i32 noundef %74, i64 noundef %64, i32 noundef %71) #22
  tail call void @set_mem_attributes(ptr noundef %75, ptr noundef nonnull %10, i32 noundef 1) #23
  %76 = tail call ptr @adjust_address_1(ptr noundef %75, i32 noundef %27, i64 noundef 0, i32 noundef 0, i32 noundef 1) #23
  %77 = zext i8 %26 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !425
  %80 = zext i8 %79 to i64
  %81 = tail call ptr @adjust_address_1(ptr noundef %75, i32 noundef %27, i64 noundef %80, i32 noundef 0, i32 noundef 1) #23
  %82 = load ptr, ptr %7, align 8, !tbaa !746
  %83 = load ptr, ptr %8, align 8, !tbaa !987
  tail call void @push_to_sequence2(ptr noundef %82, ptr noundef %83) #23
  %84 = tail call ptr @emit_move_insn(ptr noundef %76, ptr noundef %58) #23
  %85 = tail call ptr @emit_move_insn(ptr noundef %81, ptr noundef %57) #23
  %86 = tail call ptr @get_insns() #23
  store ptr %86, ptr %7, align 8, !tbaa !746
  %87 = tail call ptr @get_last_insn() #23
  store ptr %87, ptr %8, align 8, !tbaa !987
  tail call void @end_sequence() #23
  br label %93

88:                                               ; preds = %56
  %89 = load i64, ptr %22, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 255
  %92 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %91, ptr noundef %58, ptr noundef %57) #23
  br label %93

93:                                               ; preds = %88, %62
  %94 = phi ptr [ %75, %62 ], [ %92, %88 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %10, ptr noundef %94) #23
  %95 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %11) #22
  %96 = getelementptr inbounds %struct.tree_parm_decl, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !425
  %98 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %99 = getelementptr inbounds %struct.tree_parm_decl, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !425
  %101 = load i32, ptr %97, align 8
  %102 = lshr i32 %101, 16
  %103 = trunc i32 %102 to i8
  %104 = icmp eq i8 %26, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %93
  %106 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %27, ptr noundef nonnull %97) #23
  %107 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %27, ptr noundef %100) #23
  br label %108

108:                                              ; preds = %105, %93
  %109 = phi ptr [ %107, %105 ], [ %100, %93 ]
  %110 = phi ptr [ %106, %105 ], [ %97, %93 ]
  %111 = load i64, ptr %22, align 8
  %112 = trunc i64 %111 to i32
  %113 = and i32 %112, 255
  %114 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %113, ptr noundef %110, ptr noundef %109) #23
  tail call void @set_decl_incoming_rtl(ptr noundef nonnull %10, ptr noundef %114, i8 noundef zeroext 0) #23
  br label %115

115:                                              ; preds = %9, %17, %108
  %116 = phi i32 [ %38, %108 ], [ %11, %17 ], [ %11, %9 ]
  %117 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %118 = add i32 %116, 1
  %119 = load ptr, ptr %117, align 8, !tbaa !425
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %9, !llvm.loop !994

121:                                              ; preds = %115, %2
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_return_pops_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_reg_attrs_for_parm(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @emit_group_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @move_block_from_reg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_group_move_into_temps(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @push_to_sequence2(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @change_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mark_user_reg(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_remove_parallels(ptr nocapture noundef %0) unnamed_addr #0 !prof !512 !PGOFuncName !995 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !743
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %22, !prof !513

7:                                                ; preds = %1
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %9) #23
  %13 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !636
  %15 = load i32, ptr %3, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !425
  %21 = zext i8 %20 to i32
  tail call void @emit_group_store(ptr noundef %12, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %21) #23
  br label %22

22:                                               ; preds = %11, %7, %1
  %23 = phi ptr [ %12, %11 ], [ %3, %7 ], [ %3, %1 ]
  store ptr %23, ptr %2, align 8, !tbaa !743
  ret void
}

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !418 !PGOFuncName !996 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !419
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_use_return_reg(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !512 !PGOFuncName !997 {
  %3 = tail call ptr @emit_use(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare ptr @emit_use(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !998 !PGOFuncName !999 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1000

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #22
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1001 !PGOFuncName !1002 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1003

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #11 !prof !1004 !PGOFuncName !1005 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1006

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1007
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1009 !PGOFuncName !1010 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1011

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 687, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !419
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !1012 !PGOFuncName !1013 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !419
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @thread_prologue_and_epilogue_insns() unnamed_addr #0 !prof !512 !PGOFuncName !1014 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %4 = load ptr, ptr @cfun, align 8, !tbaa !419
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !683
  %7 = load ptr, ptr %6, align 8, !tbaa !846
  tail call void @rtl_profile_for_bb(ptr noundef %7) #23
  tail call void @start_sequence() #23
  %8 = tail call ptr @gen_prologue() #23
  %9 = tail call ptr @emit_insn(ptr noundef %8) #23
  %10 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !729
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %18, !prof !659

15:                                               ; preds = %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !419
  %17 = tail call ptr @emit_use(ptr noundef %16) #23
  br label %18

18:                                               ; preds = %15, %0
  tail call fastcc void @record_insns(ptr noundef %8, ptr noundef null, ptr noundef nonnull @prologue_insn_hash) #22
  %19 = tail call ptr @emit_note(i32 noundef 5) #23
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !729
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !562

22:                                               ; preds = %18
  %23 = tail call ptr @gen_blockage() #23
  %24 = tail call ptr @emit_insn(ptr noundef %23) #23
  br label %25

25:                                               ; preds = %22, %18
  %26 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %27 = load i32, ptr @prologue_locator, align 4, !tbaa !441
  tail call fastcc void @set_insn_locators(ptr noundef %26, i32 noundef %27) #22
  %28 = load ptr, ptr @cfun, align 8, !tbaa !419
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !683
  %31 = load ptr, ptr %30, align 8, !tbaa !846
  %32 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %31) #22, !range !471
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39, !prof !513

34:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5052, ptr noundef nonnull @.str.2) #23
  %35 = load ptr, ptr @cfun, align 8, !tbaa !419
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !683
  %38 = load ptr, ptr %37, align 8, !tbaa !846
  br label %39

39:                                               ; preds = %25, %34
  %40 = phi ptr [ %31, %25 ], [ %38, %34 ]
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef %40) #22
  tail call void @insert_insn_on_edge(ptr noundef %26, ptr noundef %41) #23
  %42 = load ptr, ptr @cfun, align 8, !tbaa !419
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !683
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !797
  %47 = tail call fastcc ptr @ei_start_1(ptr noundef %46) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  %48 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %47, ptr %48, align 8, !tbaa.struct !799
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %47, ptr noundef nonnull %1) #22, !range !471
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %62, label %51, !prof !558

51:                                               ; preds = %39, %57
  %52 = load ptr, ptr %1, align 8, !tbaa !419
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !1015
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !prof !562

57:                                               ; preds = %51
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %58 = load i32, ptr %2, align 8
  %59 = load ptr, ptr %48, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %1) #22, !range !471
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %51, !prof !1016, !llvm.loop !1017

62:                                               ; preds = %57, %39
  %63 = load ptr, ptr %1, align 8, !tbaa !419
  %64 = icmp eq ptr %63, null
  br i1 %64, label %269, label %65, !prof !1018

65:                                               ; preds = %51, %62
  %66 = load ptr, ptr @cfun, align 8, !tbaa !419
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !683
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !797
  tail call void @rtl_profile_for_bb(ptr noundef %70) #23
  %71 = load i32, ptr @optimize, align 4, !tbaa !441
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %198, label %73, !prof !513

73:                                               ; preds = %65
  %74 = tail call i32 @ix86_can_use_return_insn_p() #23
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %198, label %76, !prof !562

76:                                               ; preds = %73
  %77 = load ptr, ptr @cfun, align 8, !tbaa !419
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !683
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !797
  %82 = tail call fastcc ptr @ei_start_1(ptr noundef %81) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  store ptr %82, ptr %48, align 8, !tbaa.struct !799
  %83 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %82, ptr noundef nonnull %1) #22, !range !471
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %76, %91
  %86 = load ptr, ptr %1, align 8, !tbaa !419
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !1015
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %92 = load i32, ptr %2, align 8
  %93 = load ptr, ptr %48, align 8
  %94 = call fastcc zeroext i8 @ei_cond(i32 %92, ptr %93, ptr noundef nonnull %1) #22, !range !471
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %85, !llvm.loop !1019

96:                                               ; preds = %91, %76
  %97 = load ptr, ptr %1, align 8, !tbaa !419
  %98 = icmp eq ptr %97, null
  br i1 %98, label %269, label %99

99:                                               ; preds = %85, %96
  %100 = phi ptr [ %97, %96 ], [ %86, %85 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !800
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !425
  %104 = getelementptr inbounds %struct.rtl_bb_info, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !425
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %99, %115
  %108 = phi ptr [ %117, %115 ], [ %105, %99 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 12
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = tail call i32 @active_insn_p(ptr noundef nonnull %108) #23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !425
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %107, !llvm.loop !1020

119:                                              ; preds = %115, %112, %107
  %120 = phi ptr [ %108, %107 ], [ %108, %112 ], [ null, %115 ]
  %121 = load ptr, ptr %102, align 8, !tbaa !425
  br label %122

122:                                              ; preds = %119, %99
  %123 = phi ptr [ %103, %99 ], [ %121, %119 ]
  %124 = phi ptr [ null, %99 ], [ %120, %119 ]
  %125 = load ptr, ptr %123, align 8, !tbaa !1021
  %126 = icmp eq ptr %125, %124
  br i1 %126, label %127, label %198

127:                                              ; preds = %122
  %128 = load i32, ptr %124, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 12
  br i1 %130, label %131, label %198

131:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %132 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %101) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !798
  %133 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %132, ptr %133, align 8, !tbaa.struct !799
  %134 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %132) #22
  %135 = icmp eq ptr %134, null
  br i1 %135, label %186, label %136

136:                                              ; preds = %131, %181
  %137 = phi ptr [ %184, %181 ], [ %134, %131 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !800
  %139 = load ptr, ptr @cfun, align 8, !tbaa !419
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !683
  %142 = load ptr, ptr %141, align 8, !tbaa !846
  %143 = icmp eq ptr %138, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1022

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !425
  %148 = getelementptr inbounds %struct.rtl_bb_info, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !802
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !425
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %145
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1022

158:                                              ; preds = %153
  %159 = tail call i32 @simplejump_p(ptr noundef nonnull %149) #23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  tail call fastcc void @emit_return_into_block(ptr noundef nonnull %138) #22
  %162 = tail call ptr @delete_insn(ptr noundef nonnull %149) #23
  br label %175

163:                                              ; preds = %158
  %164 = tail call i32 @condjump_p(ptr noundef nonnull %149) #23
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @redirect_jump(ptr noundef nonnull %149, ptr noundef null, i32 noundef 0) #23
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1022

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %138) #22, !range !471
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1022

174:                                              ; preds = %163
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1022

175:                                              ; preds = %170, %161
  %176 = load ptr, ptr @cfun, align 8, !tbaa !419
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !683
  %179 = getelementptr inbounds %struct.control_flow_graph, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !797
  tail call void @redirect_edge_succ(ptr noundef nonnull %137, ptr noundef %180) #23
  br label %181

181:                                              ; preds = %175, %174, %173, %169, %157, %144
  %182 = load i32, ptr %3, align 8
  %183 = load ptr, ptr %133, align 8
  %184 = tail call fastcc ptr @ei_safe_edge(i32 %182, ptr %183) #22
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %136

186:                                              ; preds = %181, %131
  store ptr null, ptr %1, align 8, !tbaa !419
  %187 = load ptr, ptr %102, align 8, !tbaa !425
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !802
  %190 = tail call ptr @emit_barrier_after(ptr noundef %189) #23
  tail call fastcc void @emit_return_into_block(ptr noundef %101) #22
  %191 = load ptr, ptr %102, align 8, !tbaa !425
  %192 = getelementptr inbounds %struct.rtl_bb_info, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !802
  %194 = tail call fastcc ptr @single_succ_edge(ptr noundef %101) #22
  %195 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !1015
  %197 = and i32 %196, -2
  store i32 %197, ptr %195, align 8, !tbaa !1015
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %269

198:                                              ; preds = %122, %127, %73, %65
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !441
  %199 = load ptr, ptr @cfun, align 8, !tbaa !419
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !683
  %202 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !797
  %204 = tail call fastcc ptr @ei_start_1(ptr noundef %203) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  store ptr %204, ptr %48, align 8, !tbaa.struct !799
  %205 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %204, ptr noundef nonnull %1) #22, !range !471
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %239, label %207, !prof !577

207:                                              ; preds = %198, %234
  %208 = load ptr, ptr %1, align 8, !tbaa !419
  %209 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 7
  %210 = load i32, ptr %209, align 8, !tbaa !1015
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %234, !prof !1023

213:                                              ; preds = %207
  %214 = load ptr, ptr %208, align 8, !tbaa !800
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %214, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !425
  %217 = getelementptr inbounds %struct.rtl_bb_info, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !802
  %219 = tail call i32 @eh_returnjump_p(ptr noundef %218) #23
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %234, label %221, !prof !1024

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !425
  %224 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !425
  %226 = tail call ptr @try_split(ptr noundef %225, ptr noundef %218, i32 noundef 1) #23
  %227 = icmp eq ptr %226, %218
  br i1 %227, label %234, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %230 = load ptr, ptr %229, align 8, !tbaa !425
  %231 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1, i32 0, i32 0, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !425
  tail call fastcc void @record_insns(ptr noundef %230, ptr noundef %232, ptr noundef nonnull @epilogue_insn_hash) #22
  %233 = tail call ptr @emit_note_after(i32 noundef 6, ptr noundef %223) #23
  br label %234

234:                                              ; preds = %221, %213, %207, %228
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %235 = load i32, ptr %2, align 8
  %236 = load ptr, ptr %48, align 8
  %237 = call fastcc zeroext i8 @ei_cond(i32 %235, ptr %236, ptr noundef nonnull %1) #22, !range !471
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %207, !prof !1025, !llvm.loop !1026

239:                                              ; preds = %234, %198
  %240 = load ptr, ptr @cfun, align 8, !tbaa !419
  %241 = getelementptr inbounds %struct.function, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !683
  %243 = getelementptr inbounds %struct.control_flow_graph, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !797
  %245 = tail call fastcc ptr @ei_start_1(ptr noundef %244) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  store ptr %245, ptr %48, align 8, !tbaa.struct !799
  %246 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %245, ptr noundef nonnull %1) #22, !range !471
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %259, label %248, !prof !558

248:                                              ; preds = %239, %254
  %249 = load ptr, ptr %1, align 8, !tbaa !419
  %250 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 7
  %251 = load i32, ptr %250, align 8, !tbaa !1015
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %262, !prof !1023

254:                                              ; preds = %248
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %255 = load i32, ptr %2, align 8
  %256 = load ptr, ptr %48, align 8
  %257 = call fastcc zeroext i8 @ei_cond(i32 %255, ptr %256, ptr noundef nonnull %1) #22, !range !471
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %248, !prof !1027, !llvm.loop !1028

259:                                              ; preds = %254, %239
  %260 = load ptr, ptr %1, align 8, !tbaa !419
  %261 = icmp eq ptr %260, null
  br i1 %261, label %269, label %262, !prof !1029

262:                                              ; preds = %248, %259
  %263 = phi ptr [ %260, %259 ], [ %249, %248 ]
  tail call void @start_sequence() #23
  %264 = tail call ptr @emit_note(i32 noundef 6) #23
  %265 = tail call ptr @gen_epilogue() #23
  %266 = tail call ptr @emit_jump_insn(ptr noundef %265) #23
  tail call fastcc void @record_insns(ptr noundef %265, ptr noundef null, ptr noundef nonnull @epilogue_insn_hash) #22
  %267 = load i32, ptr @epilogue_locator, align 4, !tbaa !441
  tail call fastcc void @set_insn_locators(ptr noundef %265, i32 noundef %267) #22
  %268 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  tail call void @insert_insn_on_edge(ptr noundef %268, ptr noundef nonnull %263) #23
  br label %269

269:                                              ; preds = %186, %96, %259, %62, %262
  %270 = phi ptr [ null, %62 ], [ null, %259 ], [ %264, %262 ], [ %193, %186 ], [ null, %96 ]
  tail call void @default_rtl_profile() #23
  tail call void @commit_edge_insertions() #23
  %271 = load ptr, ptr @cfun, align 8, !tbaa !419
  %272 = getelementptr inbounds %struct.function, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !683
  %274 = getelementptr inbounds %struct.control_flow_graph, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !797
  %276 = tail call fastcc ptr @ei_start_1(ptr noundef %275) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  store ptr %276, ptr %48, align 8, !tbaa.struct !799
  %277 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %276, ptr noundef nonnull %1) #22, !range !471
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %301, label %279, !prof !577

279:                                              ; preds = %269, %296
  %280 = load ptr, ptr %1, align 8, !tbaa !419
  %281 = getelementptr inbounds %struct.edge_def, ptr %280, i64 0, i32 7
  %282 = load i32, ptr %281, align 8, !tbaa !1015
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %296, label %285, !prof !1030

285:                                              ; preds = %279
  %286 = load ptr, ptr %280, align 8, !tbaa !800
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !425
  %289 = getelementptr inbounds %struct.rtl_bb_info, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !802
  %291 = tail call i32 @returnjump_p(ptr noundef %290) #23
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %285
  %294 = load i32, ptr %281, align 8, !tbaa !1015
  %295 = and i32 %294, -2
  store i32 %295, ptr %281, align 8, !tbaa !1015
  br label %296

296:                                              ; preds = %279, %285, %293
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %297 = load i32, ptr %2, align 8
  %298 = load ptr, ptr %48, align 8
  %299 = call fastcc zeroext i8 @ei_cond(i32 %297, ptr %298, ptr noundef nonnull %1) #22, !range !471
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %279, !prof !1025, !llvm.loop !1031

301:                                              ; preds = %296, %269
  %302 = load ptr, ptr @cfun, align 8, !tbaa !419
  %303 = getelementptr inbounds %struct.function, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !683
  %305 = getelementptr inbounds %struct.control_flow_graph, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !797
  %307 = tail call fastcc ptr @ei_start_1(ptr noundef %306) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !798
  store ptr %307, ptr %48, align 8, !tbaa.struct !799
  %308 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %307) #22
  %309 = icmp eq ptr %308, null
  br i1 %309, label %332, label %310, !prof !577

310:                                              ; preds = %301, %327
  %311 = phi ptr [ %330, %327 ], [ %308, %301 ]
  %312 = load ptr, ptr %311, align 8, !tbaa !800
  %313 = getelementptr inbounds %struct.basic_block_def, ptr %312, i64 0, i32 7
  %314 = load ptr, ptr %313, align 8, !tbaa !425
  %315 = getelementptr inbounds %struct.rtl_bb_info, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !802
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 16842751
  %319 = icmp eq i32 %318, 16777226
  br i1 %319, label %320, label %327, !prof !1032, !llvm.loop !1033

320:                                              ; preds = %310
  tail call void @start_sequence() #23
  %321 = tail call ptr @emit_note(i32 noundef 6) #23
  %322 = tail call ptr @gen_sibcall_epilogue() #23
  %323 = tail call ptr @emit_insn(ptr noundef %322) #23
  %324 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  tail call fastcc void @record_insns(ptr noundef %324, ptr noundef null, ptr noundef nonnull @epilogue_insn_hash) #22
  %325 = load i32, ptr @epilogue_locator, align 4, !tbaa !441
  tail call fastcc void @set_insn_locators(ptr noundef %324, i32 noundef %325) #22
  %326 = tail call ptr @emit_insn_before(ptr noundef %324, ptr noundef nonnull %316) #23
  br label %327

327:                                              ; preds = %310, %320
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %328 = load i32, ptr %2, align 8
  %329 = load ptr, ptr %48, align 8
  %330 = tail call fastcc ptr @ei_safe_edge(i32 %328, ptr %329) #22
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %310, !prof !1025

332:                                              ; preds = %327, %301
  store ptr null, ptr %1, align 8, !tbaa !419
  %333 = icmp eq ptr %270, null
  br i1 %333, label %350, label %334, !prof !513

334:                                              ; preds = %332, %348
  %335 = phi ptr [ %337, %348 ], [ %270, %332 ]
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 2
  %337 = load ptr, ptr %336, align 8, !tbaa !425
  %338 = load i32, ptr %335, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 13
  br i1 %340, label %341, label %348, !prof !1034

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 1
  %343 = load i32, ptr %342, align 8, !tbaa !425
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %348, !prof !1035

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !425
  tail call void @reorder_insns(ptr noundef nonnull %335, ptr noundef nonnull %335, ptr noundef %347) #23
  br label %348

348:                                              ; preds = %334, %341, %345
  %349 = icmp eq ptr %337, null
  br i1 %349, label %350, label %334, !prof !1036, !llvm.loop !1037

350:                                              ; preds = %348, %332
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !441
  tail call void @df_update_entry_exit_and_calls() #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_prologue() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_insns(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1038 !PGOFuncName !1039 {
  %4 = load ptr, ptr %2, align 8, !tbaa !419
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !1040

6:                                                ; preds = %3
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !419
  %8 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !419
  %9 = tail call ptr @htab_create_alloc(i64 noundef 17, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %9, ptr %2, align 8, !tbaa !419
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %12 = icmp eq ptr %0, %1
  br i1 %12, label %23, label %13, !prof !1041

13:                                               ; preds = %10, %19
  %14 = phi ptr [ %21, %19 ], [ %0, %10 ]
  %15 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %14, i32 noundef 1) #23
  %16 = load ptr, ptr %15, align 8, !tbaa !419
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !1042

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4927, ptr noundef nonnull @.str.2) #23
  br label %19

19:                                               ; preds = %13, %18
  store ptr %14, ptr %15, align 8, !tbaa !419
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %13, !prof !1043, !llvm.loop !1044

23:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_insn_locators(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !1038 !PGOFuncName !1045 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4, !prof !1041

4:                                                ; preds = %2, %12
  %5 = phi ptr [ %14, %12 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %12, !prof !1046

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !425
  br label %12

12:                                               ; preds = %4, %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !425
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !prof !1047, !llvm.loop !1048

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #18 !prof !768 !PGOFuncName !1049 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1050
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !512 !PGOFuncName !1051 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !471
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !513

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 645, ptr noundef nonnull @.str.2) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1050
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #22
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @ix86_can_use_return_insn_p() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1038 !PGOFuncName !1052 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !471
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !1053

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_return_into_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !418 !PGOFuncName !1054 {
  %2 = tail call ptr @gen_return() #23
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !425
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !802
  %7 = tail call ptr @emit_jump_insn_after(ptr noundef %2, ptr noundef %6) #23
  ret void
}

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @eh_returnjump_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_epilogue() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_sibcall_epilogue() local_unnamed_addr #6

; Function Attrs: optsize
declare void @df_update_entry_exit_and_calls() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gen_return() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @match_asm_constraints_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !418 !PGOFuncName !1055 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !419
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !425
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !425
  %10 = load i32, ptr %9, align 8, !tbaa !765
  %11 = sext i32 %2 to i64
  %12 = alloca i8, i64 %11, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %12, i8 0, i64 %11, i1 false)
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %153

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %16 = icmp sgt i32 %2, 0
  %17 = zext nneg i32 %10 to i64
  %18 = zext nneg i32 %2 to i64
  br label %19

19:                                               ; preds = %147, %14
  %20 = phi i64 [ %148, %147 ], [ 0, %14 ]
  %21 = phi i1 [ false, %147 ], [ true, %14 ]
  br label %22

22:                                               ; preds = %19, %144
  %23 = phi i64 [ %145, %144 ], [ %20, %19 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !425
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !419
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %29 = load i8, ptr %28, align 1, !tbaa !425
  %30 = icmp eq i8 %29, 37
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = call i64 @strtoul(ptr noundef nonnull %32, ptr noundef nonnull %4, i32 noundef 10) #22
  %34 = load ptr, ptr %4, align 8, !tbaa !419
  %35 = icmp eq ptr %34, %32
  br i1 %35, label %144, label %36

36:                                               ; preds = %22
  %37 = trunc i64 %33 to i32
  %38 = icmp slt i32 %37, %2
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5680, ptr noundef nonnull @.str.2) #23
  br label %40

40:                                               ; preds = %36, %39
  %41 = shl i64 %33, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !419
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !425
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %23
  %48 = load ptr, ptr %47, align 8, !tbaa !419
  %49 = load i32, ptr %46, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %144

52:                                               ; preds = %40
  %53 = tail call i32 @rtx_equal_p(ptr noundef nonnull %46, ptr noundef %48) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %144

55:                                               ; preds = %52
  %56 = load i32, ptr %48, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %46, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %144

65:                                               ; preds = %55, %60
  br label %66

66:                                               ; preds = %65, %72
  %67 = phi i64 [ %73, %72 ], [ 0, %65 ]
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !419
  %70 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %46, ptr noundef %69) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = add nuw nsw i64 %67, 1
  %74 = icmp eq i64 %73, %17
  br i1 %74, label %78, label %66, !llvm.loop !1056

75:                                               ; preds = %66
  %76 = trunc i64 %67 to i32
  %77 = icmp eq i32 %10, %76
  br i1 %77, label %78, label %144

78:                                               ; preds = %72, %75
  %79 = icmp eq i64 %23, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %78
  br i1 %16, label %81, label %97

81:                                               ; preds = %80, %92
  %82 = phi i64 [ %93, %92 ], [ 0, %80 ]
  %83 = getelementptr inbounds i8, ptr %12, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !425
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds ptr, ptr %1, i64 %82
  %88 = load ptr, ptr %87, align 8, !tbaa !419
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !425
  %91 = icmp eq ptr %48, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %81, %86
  %93 = add nuw nsw i64 %82, 1
  %94 = icmp eq i64 %93, %18
  br i1 %94, label %100, label %81, !llvm.loop !1057

95:                                               ; preds = %86
  %96 = trunc i64 %82 to i32
  br label %97

97:                                               ; preds = %95, %80
  %98 = phi i32 [ 0, %80 ], [ %96, %95 ]
  %99 = icmp eq i32 %98, %2
  br i1 %99, label %100, label %144

100:                                              ; preds = %97, %78, %92
  %101 = getelementptr inbounds i8, ptr %12, i64 %42
  store i8 1, ptr %101, align 1, !tbaa !425
  tail call void @start_sequence() #23
  %102 = tail call ptr @emit_move_insn(ptr noundef nonnull %46, ptr noundef nonnull %48) #23
  %103 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %104 = tail call ptr @emit_insn_before(ptr noundef %103, ptr noundef %0) #23
  br i1 %16, label %105, label %131

105:                                              ; preds = %100
  %106 = zext nneg i32 %2 to i64
  br label %107

107:                                              ; preds = %105, %128
  %108 = phi i64 [ %129, %128 ], [ 0, %105 ]
  %109 = getelementptr inbounds ptr, ptr %1, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !419
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !425
  %113 = tail call i32 @rtx_equal_p(ptr noundef %112, ptr noundef nonnull %48) #23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load ptr, ptr %109, align 8, !tbaa !419
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !425
  %119 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %48, ptr noundef %118) #23
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = load ptr, ptr %109, align 8, !tbaa !419
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !425
  %125 = tail call ptr @replace_rtx(ptr noundef %124, ptr noundef nonnull %48, ptr noundef nonnull %46) #23
  %126 = load ptr, ptr %109, align 8, !tbaa !419
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  store ptr %125, ptr %127, align 8, !tbaa !425
  br label %128

128:                                              ; preds = %107, %115, %121
  %129 = add nuw nsw i64 %108, 1
  %130 = icmp eq i64 %129, %106
  br i1 %130, label %131, label %107, !llvm.loop !1058

131:                                              ; preds = %128, %100
  br label %132

132:                                              ; preds = %131, %141
  %133 = phi i64 [ %142, %141 ], [ 0, %131 ]
  %134 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !419
  %136 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %48, ptr noundef %135) #23
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %134, align 8, !tbaa !419
  %140 = tail call ptr @replace_rtx(ptr noundef %139, ptr noundef nonnull %48, ptr noundef nonnull %46) #23
  store ptr %140, ptr %134, align 8, !tbaa !419
  br label %141

141:                                              ; preds = %132, %138
  %142 = add nuw nsw i64 %133, 1
  %143 = icmp eq i64 %142, %17
  br i1 %143, label %147, label %132, !llvm.loop !1059

144:                                              ; preds = %97, %75, %40, %52, %60, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %145 = add nuw nsw i64 %23, 1
  %146 = icmp eq i64 %145, %17
  br i1 %146, label %150, label %22, !llvm.loop !1060

147:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %148 = add nuw nsw i64 %23, 1
  %149 = icmp eq i64 %148, %17
  br i1 %149, label %151, label %19, !llvm.loop !1060

150:                                              ; preds = %144
  br i1 %21, label %153, label %151

151:                                              ; preds = %147, %150
  %152 = tail call zeroext i8 @df_insn_rescan(ptr noundef %0) #23
  br label %153

153:                                              ; preds = %3, %151, %150
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!417}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!35 = !{ptr @allocate_struct_function, ptr @ggc_alloc_cleared_stat, i64 658}
!36 = !{ptr @allocate_struct_function, ptr @init_eh_for_function, i64 658}
!37 = !{ptr @allocate_struct_function, ptr @ix86_call_abi_override, i64 658}
!38 = !{ptr @allocate_struct_function, ptr @invoke_set_current_function_hook, i64 658}
!39 = !{ptr @allocate_struct_function, ptr @get_next_funcdef_no, i64 655}
!40 = !{ptr @allocate_struct_function, ptr @aggregate_value_p, i64 654}
!41 = !{ptr @allocate_struct_function, ptr @tree_last, i64 653}
!42 = !{ptr @VEC_function_p_heap_safe_push, ptr @VEC_function_p_heap_reserve, i64 209767}
!43 = !{ptr @VEC_function_p_heap_safe_push, ptr @VEC_function_p_base_quick_push, i64 209767}
!44 = !{ptr @set_cfun, ptr @invoke_set_current_function_hook, i64 5051}
!45 = !{ptr @free_after_compilation, ptr @free, i64 39}
!46 = !{ptr @free_after_compilation, ptr @insn_locators_free, i64 40}
!47 = !{ptr @frame_offset_overflow, ptr @error_at, i64 1}
!48 = !{ptr @assign_stack_local_1, ptr @get_stack_local_alignment, i64 12}
!49 = !{ptr @assign_stack_local_1, ptr @trunc_int_for_mode, i64 20}
!50 = !{ptr @assign_stack_local_1, ptr @plus_constant, i64 20}
!51 = !{ptr @assign_stack_local_1, ptr @gen_rtx_MEM, i64 20}
!52 = !{ptr @assign_stack_local_1, ptr @set_mem_align, i64 20}
!53 = !{ptr @assign_stack_local_1, ptr @gen_rtx_fmt_ee_stat, i64 20}
!54 = !{ptr @assign_stack_local_1, ptr @frame_offset_overflow, i64 20}
!55 = !{ptr @get_stack_local_alignment, ptr @get_mode_alignment, i64 11}
!56 = !{ptr @get_stack_local_alignment, ptr @ix86_local_alignment, i64 12}
!57 = !{ptr @assign_stack_local, ptr @assign_stack_local_1, i64 16}
!58 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_base_length, i64 570132}
!59 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_gc_safe_grow_cleared, i64 70}
!60 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_base_address, i64 570132}
!61 = !{ptr @assign_temp, ptr @vector_type_mode, i64 1}
!62 = !{ptr @assign_temp, ptr @int_size_in_bytes, i64 2}
!63 = !{ptr @assign_temp, ptr @max_int_size_in_bytes, i64 1}
!64 = !{ptr @assign_temp, ptr @assign_stack_temp_for_type, i64 2}
!65 = !{ptr @assign_temp, ptr @promote_mode, i64 1}
!66 = !{ptr @assign_temp, ptr @gen_reg_rtx, i64 36}
!67 = !{ptr @update_temp_slot_address, ptr @rtx_equal_p, i64 180256}
!68 = !{ptr @update_temp_slot_address, ptr @find_temp_slot_from_address, i64 122186}
!69 = !{ptr @update_temp_slot_address, ptr @update_temp_slot_address, i64 1}
!70 = !{ptr @update_temp_slot_address, ptr @insert_temp_slot_address, i64 1}
!71 = !{ptr @find_temp_slot_from_address, ptr @temp_slot_address_compute_hash, i64 121566}
!72 = !{ptr @find_temp_slot_from_address, ptr @htab_find_with_hash, i64 121566}
!73 = !{ptr @find_temp_slot_from_address, ptr @find_temp_slot_from_address, i64 12717}
!74 = !{ptr @find_temp_slot_from_address, ptr @temp_slots_at_level, i64 1}
!75 = !{ptr @preserve_temp_slots, ptr @temp_slots_at_level, i64 161300}
!76 = !{ptr @preserve_temp_slots, ptr @move_slot_to_level, i64 9}
!77 = !{ptr @free_temp_slots, ptr @temp_slots_at_level, i64 247492}
!78 = !{ptr @free_temp_slots, ptr @remove_unused_temp_slot_addresses, i64 1}
!79 = !{ptr @free_temp_slots, ptr @combine_temp_slots, i64 1}
!80 = !{ptr @pop_temp_slots, ptr @temp_slots_at_level, i64 161340}
!81 = !{ptr @pop_temp_slots, ptr @make_slot_available, i64 1}
!82 = !{ptr @pop_temp_slots, ptr @remove_unused_temp_slot_addresses, i64 1}
!83 = !{ptr @pop_temp_slots, ptr @combine_temp_slots, i64 1}
!84 = !{ptr @init_temp_slots, ptr @htab_create_alloc, i64 2}
!85 = !{ptr @init_temp_slots, ptr @htab_empty, i64 76}
!86 = !{ptr @instantiate_decl_rtl, ptr @instantiate_decl_rtl, i64 1}
!87 = !{ptr @instantiate_decl_rtl, ptr @rhs_regno, i64 37}
!88 = !{ptr @instantiate_decl_rtl, ptr @for_each_rtx, i64 36}
!89 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @instantiate_new_reg, i64 96810}
!90 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @plus_constant, i64 81781}
!91 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @simplify_gen_binary, i64 12710}
!92 = !{ptr @instantiate_virtual_regs, ptr @ix86_cfun_abi, i64 1}
!93 = !{ptr @instantiate_virtual_regs, ptr @ix86_function_type_abi, i64 38}
!94 = !{ptr @instantiate_virtual_regs, ptr @ix86_reg_parm_stack_space, i64 19}
!95 = !{ptr @instantiate_virtual_regs, ptr @init_recog, i64 38}
!96 = !{ptr @instantiate_virtual_regs, ptr @get_insns, i64 38}
!97 = !{ptr @instantiate_virtual_regs, ptr @for_each_rtx, i64 815697}
!98 = !{ptr @instantiate_virtual_regs, ptr @instantiate_virtual_regs_in_insn, i64 748505}
!99 = !{ptr @instantiate_virtual_regs, ptr @instantiate_decls, i64 38}
!100 = !{ptr @aggregate_value_p, ptr @get_callee_fndecl, i64 200775}
!101 = !{ptr @aggregate_value_p, ptr @fancy_abort, i64 1}
!102 = !{ptr @aggregate_value_p, ptr @first_field, i64 1}
!103 = !{ptr @aggregate_value_p, ptr @hard_function_value, i64 445395}
!104 = !{ptr @aggregate_value_p, ptr @rhs_regno, i64 445394}
!105 = !{ptr @aggregate_value_p, ptr @vector_type_mode, i64 1}
!106 = !{ptr @gimplify_parameters, ptr @assign_parms_initialize_all, i64 40}
!107 = !{ptr @gimplify_parameters, ptr @assign_parms_augmented_arg_list, i64 40}
!108 = !{ptr @gimplify_parameters, ptr @VEC_tree_base_iterate, i64 80}
!109 = !{ptr @gimplify_parameters, ptr @assign_parm_find_data_types, i64 40}
!110 = !{ptr @gimplify_parameters, ptr @function_arg_advance, i64 38}
!111 = !{ptr @gimplify_parameters, ptr @walk_tree_without_duplicates_1, i64 38}
!112 = !{ptr @gimplify_parameters, ptr @gimplify_one_sizepos, i64 2}
!113 = !{ptr @gimplify_parameters, ptr @reference_callee_copied, i64 1}
!114 = !{ptr @gimplify_parameters, ptr @gimplify_assign, i64 1}
!115 = !{ptr @gimplify_parameters, ptr @decl_value_expr_insert, i64 1}
!116 = !{ptr @gimplify_parameters, ptr @VEC_tree_heap_free, i64 40}
!117 = !{ptr @assign_parms_initialize_all, ptr @init_cumulative_args, i64 78}
!118 = !{ptr @assign_parms_initialize_all, ptr @ix86_reg_parm_stack_space, i64 78}
!119 = !{ptr @assign_parms_augmented_arg_list, ptr @VEC_tree_heap_safe_push, i64 78}
!120 = !{ptr @assign_parms_augmented_arg_list, ptr @aggregate_value_p, i64 78}
!121 = !{ptr @assign_parms_augmented_arg_list, ptr @split_complex_args, i64 1}
!122 = !{ptr @assign_parm_find_data_types, ptr @vector_type_mode, i64 2}
!123 = !{ptr @assign_parm_find_data_types, ptr @first_field, i64 1}
!124 = !{ptr @assign_parm_find_data_types, ptr @pass_by_reference, i64 74}
!125 = !{ptr @assign_parm_find_data_types, ptr @build_pointer_type, i64 1}
!126 = !{ptr @assign_parm_find_data_types, ptr @promote_function_mode, i64 74}
!127 = !{ptr @VEC_tree_heap_free, ptr @free, i64 77}
!128 = !{ptr @locate_and_pad_parm, ptr @ix86_reg_parm_stack_space, i64 81707}
!129 = !{ptr @locate_and_pad_parm, ptr @fold_convert_loc, i64 2}
!130 = !{ptr @locate_and_pad_parm, ptr @size_int_kind, i64 81708}
!131 = !{ptr @locate_and_pad_parm, ptr @size_binop_loc, i64 3}
!132 = !{ptr @locate_and_pad_parm, ptr @size_in_bytes, i64 81705}
!133 = !{ptr @locate_and_pad_parm, ptr @ix86_function_arg_boundary, i64 81706}
!134 = !{ptr @locate_and_pad_parm, ptr @pad_to_arg_alignment, i64 81706}
!135 = !{ptr @locate_and_pad_parm, ptr @host_integerp, i64 163412}
!136 = !{ptr @locate_and_pad_parm, ptr @tree_low_cst, i64 163410}
!137 = !{ptr @locate_and_pad_parm, ptr @round_up_loc, i64 2}
!138 = !{ptr @pad_to_arg_alignment, ptr @size_int_kind, i64 2}
!139 = !{ptr @pad_to_arg_alignment, ptr @fold_convert_loc, i64 1}
!140 = !{ptr @pad_to_arg_alignment, ptr @size_binop_loc, i64 3}
!141 = !{ptr @pad_to_arg_alignment, ptr @round_up_loc, i64 1}
!142 = !{ptr @clear_block_marks, ptr @clear_block_marks, i64 40}
!143 = !{ptr @number_blocks, ptr @get_block_vector, i64 41}
!144 = !{ptr @number_blocks, ptr @free, i64 41}
!145 = !{ptr @get_block_vector, ptr @all_blocks, i64 82}
!146 = !{ptr @get_block_vector, ptr @xmalloc, i64 41}
!147 = !{ptr @invoke_set_current_function_hook, ptr @cl_optimization_restore, i64 1}
!148 = !{ptr @push_cfun, ptr @VEC_function_p_heap_safe_push, i64 209764}
!149 = !{ptr @push_cfun, ptr @set_cfun, i64 209764}
!150 = !{ptr @pop_cfun, ptr @VEC_function_p_base_pop, i64 209767}
!151 = !{ptr @pop_cfun, ptr @set_cfun, i64 209767}
!152 = !{ptr @push_struct_function, ptr @VEC_function_p_heap_safe_push, i64 3}
!153 = !{ptr @push_struct_function, ptr @allocate_struct_function, i64 3}
!154 = !{ptr @init_dummy_function_start, ptr @fancy_abort, i64 1}
!155 = !{ptr @init_dummy_function_start, ptr @push_struct_function, i64 2}
!156 = !{ptr @init_dummy_function_start, ptr @prepare_function_start, i64 2}
!157 = !{ptr @prepare_function_start, ptr @fancy_abort, i64 1}
!158 = !{ptr @prepare_function_start, ptr @init_temp_slots, i64 40}
!159 = !{ptr @prepare_function_start, ptr @init_emit, i64 40}
!160 = !{ptr @prepare_function_start, ptr @init_varasm_status, i64 40}
!161 = !{ptr @prepare_function_start, ptr @init_expr, i64 40}
!162 = !{ptr @prepare_function_start, ptr @default_rtl_profile, i64 40}
!163 = !{ptr @init_function_start, ptr @set_cfun, i64 36}
!164 = !{ptr @init_function_start, ptr @allocate_struct_function, i64 2}
!165 = !{ptr @init_function_start, ptr @prepare_function_start, i64 38}
!166 = !{ptr @init_function_start, ptr @warning, i64 4}
!167 = !{ptr @expand_function_start, ptr @init_recog_no_volatile, i64 38}
!168 = !{ptr @expand_function_start, ptr @gen_label_rtx, i64 38}
!169 = !{ptr @expand_function_start, ptr @aggregate_value_p, i64 38}
!170 = !{ptr @expand_function_start, ptr @gen_reg_rtx, i64 37}
!171 = !{ptr @expand_function_start, ptr @emit_move_insn, i64 3}
!172 = !{ptr @expand_function_start, ptr @set_decl_rtl, i64 38}
!173 = !{ptr @expand_function_start, ptr @vector_type_mode, i64 1}
!174 = !{ptr @expand_function_start, ptr @hard_function_value, i64 35}
!175 = !{ptr @expand_function_start, ptr @gen_group_rtx, i64 1}
!176 = !{ptr @expand_function_start, ptr @assign_parms, i64 38}
!177 = !{ptr @expand_function_start, ptr @set_decl_incoming_rtl, i64 1}
!178 = !{ptr @expand_function_start, ptr @mark_reg_pointer, i64 1}
!179 = !{ptr @expand_function_start, ptr @expand_decl, i64 1}
!180 = !{ptr @expand_function_start, ptr @build4_stat, i64 1}
!181 = !{ptr @expand_function_start, ptr @expand_expr, i64 1}
!182 = !{ptr @expand_function_start, ptr @convert_memory_address_addr_space, i64 1}
!183 = !{ptr @expand_function_start, ptr @update_nonlocal_goto_save_area, i64 1}
!184 = !{ptr @expand_function_start, ptr @emit_note, i64 39}
!185 = !{ptr @expand_function_start, ptr @get_last_insn, i64 76}
!186 = !{ptr @expand_function_start, ptr @fancy_abort, i64 1}
!187 = !{ptr @expand_function_start, ptr @force_next_line_note, i64 38}
!188 = !{ptr @assign_parms, ptr @assign_parms_initialize_all, i64 38}
!189 = !{ptr @assign_parms, ptr @assign_parms_augmented_arg_list, i64 38}
!190 = !{ptr @assign_parms, ptr @VEC_tree_base_iterate, i64 76}
!191 = !{ptr @assign_parms, ptr @assign_parm_find_data_types, i64 38}
!192 = !{ptr @assign_parms, ptr @set_decl_rtl, i64 2}
!193 = !{ptr @assign_parms, ptr @ix86_function_arg_boundary, i64 37}
!194 = !{ptr @assign_parms, ptr @ix86_minimum_alignment, i64 38}
!195 = !{ptr @assign_parms, ptr @fancy_abort, i64 1}
!196 = !{ptr @assign_parms, ptr @assign_parm_find_entry_rtl, i64 37}
!197 = !{ptr @assign_parms, ptr @assign_parm_is_stack_parm, i64 37}
!198 = !{ptr @assign_parms, ptr @assign_parm_find_stack_rtl, i64 36}
!199 = !{ptr @assign_parms, ptr @assign_parm_adjust_entry_rtl, i64 36}
!200 = !{ptr @assign_parms, ptr @set_decl_incoming_rtl, i64 37}
!201 = !{ptr @assign_parms, ptr @function_arg_advance, i64 37}
!202 = !{ptr @assign_parms, ptr @assign_parm_adjust_stack_rtl, i64 37}
!203 = !{ptr @assign_parms, ptr @assign_parm_setup_block_p, i64 37}
!204 = !{ptr @assign_parms, ptr @assign_parm_setup_block, i64 1}
!205 = !{ptr @assign_parms, ptr @use_register_for_decl, i64 35}
!206 = !{ptr @assign_parms, ptr @assign_parm_setup_reg, i64 35}
!207 = !{ptr @assign_parms, ptr @assign_parm_setup_stack, i64 1}
!208 = !{ptr @assign_parms, ptr @assign_parms_unsplit_complex, i64 1}
!209 = !{ptr @assign_parms, ptr @VEC_tree_heap_free, i64 38}
!210 = !{ptr @assign_parms, ptr @emit_insn, i64 38}
!211 = !{ptr @assign_parms, ptr @vector_type_mode, i64 1}
!212 = !{ptr @assign_parms, ptr @get_mode_alignment, i64 32}
!213 = !{ptr @assign_parms, ptr @ix86_reg_parm_stack_space, i64 39}
!214 = !{ptr @assign_parms, ptr @gen_rtx_CONST_INT, i64 37}
!215 = !{ptr @assign_parms, ptr @fold_convert_loc, i64 1}
!216 = !{ptr @assign_parms, ptr @size_int_kind, i64 1}
!217 = !{ptr @assign_parms, ptr @size_binop_loc, i64 1}
!218 = !{ptr @assign_parms, ptr @expand_normal, i64 1}
!219 = !{ptr @assign_parms, ptr @ix86_return_pops_args, i64 38}
!220 = !{ptr @assign_parms, ptr @rhs_regno, i64 1}
!221 = !{ptr @expand_dummy_function_end, ptr @fancy_abort, i64 1}
!222 = !{ptr @expand_dummy_function_end, ptr @in_sequence_p, i64 3}
!223 = !{ptr @expand_dummy_function_end, ptr @end_sequence, i64 1}
!224 = !{ptr @expand_dummy_function_end, ptr @free_after_parsing, i64 2}
!225 = !{ptr @expand_dummy_function_end, ptr @free_after_compilation, i64 2}
!226 = !{ptr @expand_dummy_function_end, ptr @pop_cfun, i64 2}
!227 = !{ptr @diddle_return_value, ptr @rhs_regno, i64 5}
!228 = !{ptr @clobber_return_register, ptr @diddle_return_value, i64 38}
!229 = !{ptr @clobber_return_register, ptr @rhs_regno, i64 35}
!230 = !{ptr @clobber_return_register, ptr @do_clobber_return_reg, i64 34}
!231 = !{ptr @do_clobber_return_reg, ptr @emit_clobber, i64 76}
!232 = !{ptr @expand_function_end, ptr @get_insns, i64 39}
!233 = !{ptr @expand_function_end, ptr @in_sequence_p, i64 39}
!234 = !{ptr @expand_function_end, ptr @end_sequence, i64 39}
!235 = !{ptr @expand_function_end, ptr @clear_pending_stack_adjust, i64 38}
!236 = !{ptr @expand_function_end, ptr @do_pending_stack_adjust, i64 38}
!237 = !{ptr @expand_function_end, ptr @force_next_line_note, i64 38}
!238 = !{ptr @expand_function_end, ptr @set_curr_insn_source_location, i64 38}
!239 = !{ptr @expand_function_end, ptr @get_last_insn, i64 38}
!240 = !{ptr @expand_function_end, ptr @emit_label, i64 39}
!241 = !{ptr @expand_function_end, ptr @gen_blockage, i64 2}
!242 = !{ptr @expand_function_end, ptr @emit_insn, i64 2}
!243 = !{ptr @expand_function_end, ptr @expand_eh_return, i64 38}
!244 = !{ptr @expand_function_end, ptr @rhs_regno, i64 2}
!245 = !{ptr @expand_function_end, ptr @fancy_abort, i64 1}
!246 = !{ptr @expand_function_end, ptr @vector_type_mode, i64 1}
!247 = !{ptr @expand_function_end, ptr @gen_rtx_REG, i64 1}
!248 = !{ptr @expand_function_end, ptr @emit_move_insn, i64 35}
!249 = !{ptr @expand_function_end, ptr @shift_return_value, i64 1}
!250 = !{ptr @expand_function_end, ptr @promote_function_mode, i64 1}
!251 = !{ptr @expand_function_end, ptr @convert_move, i64 1}
!252 = !{ptr @expand_function_end, ptr @make_decl_rtl, i64 1}
!253 = !{ptr @expand_function_end, ptr @build_pointer_type, i64 2}
!254 = !{ptr @expand_function_end, ptr @convert_memory_address_addr_space, i64 2}
!255 = !{ptr @expand_function_end, ptr @start_sequence, i64 38}
!256 = !{ptr @expand_function_end, ptr @clobber_return_register, i64 38}
!257 = !{ptr @expand_function_end, ptr @emit_insn_after, i64 38}
!258 = !{ptr @expand_function_end, ptr @stack_protect_epilogue, i64 1}
!259 = !{ptr @expand_function_end, ptr @use_return_register, i64 38}
!260 = !{ptr @use_return_register, ptr @diddle_return_value, i64 38}
!261 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find, i64 403}
!262 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find_slot, i64 131}
!263 = !{ptr @maybe_copy_epilogue_insn, ptr @fancy_abort, i64 1}
!264 = !{ptr @prologue_epilogue_contains, ptr @contains, i64 12335512}
!265 = !{ptr @contains, ptr @htab_find, i64 5642841}
!266 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @htab_elements, i64 37}
!267 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @get_insns, i64 37}
!268 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @contains, i64 443}
!269 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @reorder_insns, i64 40}
!270 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_start_1, i64 37}
!271 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_cond, i64 103}
!272 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_next, i64 66}
!273 = !{ptr @ei_cond, ptr @ei_end_p, i64 392}
!274 = !{ptr @ei_cond, ptr @ei_edge, i64 278}
!275 = !{ptr @ei_next, ptr @ei_container, i64 517}
!276 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 259}
!277 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!278 = !{ptr @used_types_insert, ptr @used_types_insert_helper, i64 1}
!279 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @cleanup_cfg, i64 37}
!280 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @thread_prologue_and_epilogue_insns, i64 38}
!281 = !{ptr @rest_of_match_asm_constraints, ptr @df_set_flags, i64 1}
!282 = !{ptr @rest_of_match_asm_constraints, ptr @match_asm_constraints_1, i64 16}
!283 = !{ptr @VEC_function_p_heap_reserve, ptr @VEC_function_p_base_space, i64 209767}
!284 = !{ptr @VEC_function_p_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!285 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_base_length, i64 69}
!286 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_gc_safe_grow, i64 69}
!287 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_base_address, i64 69}
!288 = !{ptr @VEC_temp_slot_p_gc_safe_grow, ptr @VEC_temp_slot_p_gc_reserve_exact, i64 69}
!289 = !{ptr @VEC_temp_slot_p_gc_reserve_exact, ptr @VEC_temp_slot_p_base_space, i64 69}
!290 = !{ptr @VEC_temp_slot_p_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 68}
!291 = !{ptr @temp_slot_address_compute_hash, ptr @hash_rtx, i64 121566}
!292 = !{ptr @instantiate_virtual_regs_in_insn, ptr @single_set_2, i64 1}
!293 = !{ptr @instantiate_virtual_regs_in_insn, ptr @instantiate_new_reg, i64 2120149}
!294 = !{ptr @instantiate_virtual_regs_in_insn, ptr @start_sequence, i64 81710}
!295 = !{ptr @instantiate_virtual_regs_in_insn, ptr @for_each_rtx, i64 159582}
!296 = !{ptr @instantiate_virtual_regs_in_insn, ptr @gen_rtx_CONST_INT, i64 3}
!297 = !{ptr @instantiate_virtual_regs_in_insn, ptr @simplify_gen_binary, i64 1}
!298 = !{ptr @instantiate_virtual_regs_in_insn, ptr @force_operand, i64 1}
!299 = !{ptr @instantiate_virtual_regs_in_insn, ptr @emit_move_insn, i64 1}
!300 = !{ptr @instantiate_virtual_regs_in_insn, ptr @get_insns, i64 81710}
!301 = !{ptr @instantiate_virtual_regs_in_insn, ptr @end_sequence, i64 81710}
!302 = !{ptr @instantiate_virtual_regs_in_insn, ptr @emit_insn_before, i64 5}
!303 = !{ptr @instantiate_virtual_regs_in_insn, ptr @delete_insn, i64 1}
!304 = !{ptr @instantiate_virtual_regs_in_insn, ptr @extract_insn, i64 768202}
!305 = !{ptr @instantiate_virtual_regs_in_insn, ptr @gen_int_mode, i64 1}
!306 = !{ptr @instantiate_virtual_regs_in_insn, ptr @safe_insn_predicate, i64 163416}
!307 = !{ptr @instantiate_virtual_regs_in_insn, ptr @replace_equiv_address, i64 81707}
!308 = !{ptr @instantiate_virtual_regs_in_insn, ptr @force_reg, i64 1}
!309 = !{ptr @instantiate_virtual_regs_in_insn, ptr @expand_simple_binop, i64 2}
!310 = !{ptr @instantiate_virtual_regs_in_insn, ptr @simplify_gen_subreg, i64 1}
!311 = !{ptr @instantiate_virtual_regs_in_insn, ptr @copy_rtx, i64 1}
!312 = !{ptr @instantiate_virtual_regs_in_insn, ptr @asm_noperands, i64 768202}
!313 = !{ptr @instantiate_virtual_regs_in_insn, ptr @check_asm_operands, i64 1}
!314 = !{ptr @instantiate_virtual_regs_in_insn, ptr @recog_memoized, i64 768201}
!315 = !{ptr @instantiate_virtual_regs_in_insn, ptr @_fatal_insn_not_found, i64 1}
!316 = !{ptr @instantiate_decls, ptr @make_decl_rtl, i64 1}
!317 = !{ptr @instantiate_decls, ptr @instantiate_decl_rtl, i64 77}
!318 = !{ptr @instantiate_decls, ptr @decl_value_expr_lookup, i64 1}
!319 = !{ptr @instantiate_decls, ptr @walk_tree_1, i64 1}
!320 = !{ptr @instantiate_decls, ptr @instantiate_decls_1, i64 38}
!321 = !{ptr @instantiate_decls, ptr @ggc_free, i64 2}
!322 = !{ptr @recog_memoized, ptr @recog, i64 81707}
!323 = !{ptr @instantiate_decls_1, ptr @instantiate_decl_rtl, i64 37}
!324 = !{ptr @instantiate_decls_1, ptr @decl_value_expr_lookup, i64 1}
!325 = !{ptr @instantiate_decls_1, ptr @walk_tree_1, i64 1}
!326 = !{ptr @instantiate_decls_1, ptr @instantiate_decls_1, i64 42}
!327 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 78}
!328 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 78}
!329 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 78}
!330 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 77}
!331 = !{ptr @all_blocks, ptr @all_blocks, i64 286}
!332 = !{ptr @assign_parm_find_entry_rtl, ptr @function_arg, i64 38}
!333 = !{ptr @assign_parm_find_entry_rtl, ptr @locate_and_pad_parm, i64 37}
!334 = !{ptr @assign_parm_is_stack_parm, ptr @host_integerp, i64 1}
!335 = !{ptr @assign_parm_is_stack_parm, ptr @tree_low_cst, i64 1}
!336 = !{ptr @assign_parm_find_stack_rtl, ptr @fold_convert_loc, i64 2}
!337 = !{ptr @assign_parm_find_stack_rtl, ptr @size_int_kind, i64 2}
!338 = !{ptr @assign_parm_find_stack_rtl, ptr @size_binop_loc, i64 2}
!339 = !{ptr @assign_parm_find_stack_rtl, ptr @expand_normal, i64 2}
!340 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_CONST_INT, i64 37}
!341 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_fmt_ee_stat, i64 1}
!342 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_MEM, i64 38}
!343 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_attributes, i64 37}
!344 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_size, i64 1}
!345 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_align, i64 38}
!346 = !{ptr @assign_parm_find_stack_rtl, ptr @set_reg_attrs_for_parm, i64 1}
!347 = !{ptr @assign_parm_setup_reg, ptr @promote_function_mode, i64 38}
!348 = !{ptr @assign_parm_setup_reg, ptr @gen_reg_rtx, i64 40}
!349 = !{ptr @assign_parm_setup_reg, ptr @mark_user_reg, i64 37}
!350 = !{ptr @assign_parm_setup_reg, ptr @gen_rtx_MEM, i64 1}
!351 = !{ptr @assign_parm_setup_reg, ptr @set_mem_attributes, i64 1}
!352 = !{ptr @assign_parm_setup_reg, ptr @set_decl_rtl, i64 38}
!353 = !{ptr @assign_parm_setup_reg, ptr @assign_parm_remove_parallels, i64 38}
!354 = !{ptr @assign_parm_setup_reg, ptr @validize_mem, i64 38}
!355 = !{ptr @assign_parm_setup_reg, ptr @emit_move_insn, i64 38}
!356 = !{ptr @assign_parm_setup_reg, ptr @push_to_sequence2, i64 2}
!357 = !{ptr @assign_parm_setup_reg, ptr @convert_to_mode, i64 2}
!358 = !{ptr @assign_parm_setup_reg, ptr @make_tree, i64 2}
!359 = !{ptr @assign_parm_setup_reg, ptr @expand_assignment, i64 2}
!360 = !{ptr @assign_parm_setup_reg, ptr @get_insns, i64 2}
!361 = !{ptr @assign_parm_setup_reg, ptr @get_last_insn, i64 35}
!362 = !{ptr @assign_parm_setup_reg, ptr @end_sequence, i64 2}
!363 = !{ptr @assign_parm_setup_reg, ptr @reg_mentioned_p, i64 33}
!364 = !{ptr @assign_parm_setup_reg, ptr @rhs_regno, i64 2}
!365 = !{ptr @assign_parm_setup_reg, ptr @adjust_address_1, i64 2}
!366 = !{ptr @assign_parm_setup_reg, ptr @single_set_2, i64 5}
!367 = !{ptr @assign_parm_setup_reg, ptr @set_unique_reg_note, i64 34}
!368 = !{ptr @assign_parm_setup_reg, ptr @prev_nonnote_insn, i64 16}
!369 = !{ptr @assign_parm_setup_reg, ptr @mark_reg_pointer, i64 38}
!370 = !{ptr @do_use_return_reg, ptr @emit_use, i64 38}
!371 = !{ptr @ei_end_p, ptr @ei_container, i64 973}
!372 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 487}
!373 = !{ptr @ei_edge, ptr @ei_container, i64 669}
!374 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 335}
!375 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!376 = !{ptr @thread_prologue_and_epilogue_insns, ptr @rtl_profile_for_bb, i64 76}
!377 = !{ptr @thread_prologue_and_epilogue_insns, ptr @start_sequence, i64 93}
!378 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_prologue, i64 38}
!379 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_insn, i64 57}
!380 = !{ptr @thread_prologue_and_epilogue_insns, ptr @record_insns, i64 94}
!381 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_note, i64 93}
!382 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_blockage, i64 1}
!383 = !{ptr @thread_prologue_and_epilogue_insns, ptr @get_insns, i64 93}
!384 = !{ptr @thread_prologue_and_epilogue_insns, ptr @end_sequence, i64 93}
!385 = !{ptr @thread_prologue_and_epilogue_insns, ptr @set_insn_locators, i64 93}
!386 = !{ptr @thread_prologue_and_epilogue_insns, ptr @single_succ_p, i64 38}
!387 = !{ptr @thread_prologue_and_epilogue_insns, ptr @fancy_abort, i64 1}
!388 = !{ptr @thread_prologue_and_epilogue_insns, ptr @single_succ_edge, i64 38}
!389 = !{ptr @thread_prologue_and_epilogue_insns, ptr @insert_insn_on_edge, i64 75}
!390 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_start_1, i64 189}
!391 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_cond, i64 293}
!392 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_next, i64 201}
!393 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ix86_can_use_return_insn_p, i64 37}
!394 = !{ptr @thread_prologue_and_epilogue_insns, ptr @active_insn_p, i64 5}
!395 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_safe_edge, i64 98}
!396 = !{ptr @thread_prologue_and_epilogue_insns, ptr @eh_returnjump_p, i64 19}
!397 = !{ptr @thread_prologue_and_epilogue_insns, ptr @try_split, i64 1}
!398 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_note_after, i64 1}
!399 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_epilogue, i64 37}
!400 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_jump_insn, i64 37}
!401 = !{ptr @thread_prologue_and_epilogue_insns, ptr @default_rtl_profile, i64 38}
!402 = !{ptr @thread_prologue_and_epilogue_insns, ptr @commit_edge_insertions, i64 38}
!403 = !{ptr @thread_prologue_and_epilogue_insns, ptr @returnjump_p, i64 1}
!404 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_sibcall_epilogue, i64 18}
!405 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_insn_before, i64 18}
!406 = !{ptr @thread_prologue_and_epilogue_insns, ptr @reorder_insns, i64 1}
!407 = !{ptr @thread_prologue_and_epilogue_insns, ptr @df_update_entry_exit_and_calls, i64 38}
!408 = !{ptr @record_insns, ptr @htab_create_alloc, i64 75}
!409 = !{ptr @record_insns, ptr @htab_find_slot, i64 469}
!410 = !{ptr @record_insns, ptr @fancy_abort, i64 1}
!411 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 76}
!412 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 38}
!413 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!414 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 38}
!415 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 95}
!416 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 57}
!417 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!418 = !{!"function_entry_count", i64 0}
!419 = !{!420, !420, i64 0}
!420 = !{!"any pointer", !421, i64 0}
!421 = !{!"omnipotent char", !422, i64 0}
!422 = !{!"Simple C/C++ TBAA"}
!423 = !{!"function_entry_count", i64 658}
!424 = !{!"branch_weights", i32 3, i32 657}
!425 = !{!421, !421, i64 0}
!426 = !{!"branch_weights", i32 1, i32 659}
!427 = !{!428, !420, i64 80}
!428 = !{!"function", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !429, i64 104, !429, i64 108, !429, i64 112, !429, i64 116, !429, i64 120, !429, i64 124, !420, i64 128, !429, i64 136, !429, i64 137, !429, i64 138, !429, i64 138, !429, i64 138, !429, i64 138, !429, i64 138, !429, i64 138, !429, i64 138, !429, i64 139, !429, i64 139, !429, i64 139, !429, i64 139, !429, i64 139, !429, i64 139, !429, i64 139}
!429 = !{!"int", !421, i64 0}
!430 = !{!428, !420, i64 48}
!431 = !{!428, !429, i64 108}
!432 = !{!"branch_weights", i32 657, i32 1}
!433 = !{i32 0, i32 2}
!434 = !{!"branch_weights", i32 653, i32 5}
!435 = !{!"branch_weights", i32 1, i32 657}
!436 = !{!"function_entry_count", i64 209767}
!437 = !{!"function.c:VEC_function_p_heap_safe_push"}
!438 = !{!"function_entry_count", i64 420264}
!439 = !{!"branch_weights", i32 415215, i32 5051}
!440 = !{!"branch_weights", i32 2850, i32 2202}
!441 = !{!429, !429, i64 0}
!442 = !{!"function.c:VEC_function_p_base_pop"}
!443 = !{!444, !429, i64 0}
!444 = !{!"VEC_function_p_base", !429, i64 0, !429, i64 4, !421, i64 8}
!445 = !{!"function_entry_count", i64 40}
!446 = !{!428, !420, i64 88}
!447 = !{!448, !420, i64 88}
!448 = !{!"rtl_data", !449, i64 0, !450, i64 40, !451, i64 96, !452, i64 112, !454, i64 208, !455, i64 248, !429, i64 312, !420, i64 320, !420, i64 328, !420, i64 336, !420, i64 344, !420, i64 352, !420, i64 360, !420, i64 368, !420, i64 376, !420, i64 384, !420, i64 392, !456, i64 400, !420, i64 408, !420, i64 416, !420, i64 424, !429, i64 432, !429, i64 436, !429, i64 440, !429, i64 444, !429, i64 448, !429, i64 452, !420, i64 456, !421, i64 464, !421, i64 465, !421, i64 466, !421, i64 467, !421, i64 468, !421, i64 469, !421, i64 470, !421, i64 471, !421, i64 472, !421, i64 473, !421, i64 474, !421, i64 475, !421, i64 476, !421, i64 477, !421, i64 478, !421, i64 479, !421, i64 480, !421, i64 481, !421, i64 482, !421, i64 483, !421, i64 484, !421, i64 485}
!449 = !{!"expr_status", !429, i64 0, !429, i64 4, !429, i64 8, !420, i64 16, !420, i64 24, !420, i64 32}
!450 = !{!"emit_status", !429, i64 0, !429, i64 4, !420, i64 8, !420, i64 16, !420, i64 24, !429, i64 32, !429, i64 36, !429, i64 40, !429, i64 44, !420, i64 48}
!451 = !{!"varasm_status", !420, i64 0, !429, i64 8}
!452 = !{!"incoming_args", !429, i64 0, !429, i64 4, !429, i64 8, !420, i64 16, !453, i64 24, !420, i64 88}
!453 = !{!"ix86_args", !429, i64 0, !429, i64 4, !429, i64 8, !429, i64 12, !429, i64 16, !429, i64 20, !429, i64 24, !429, i64 28, !429, i64 32, !429, i64 36, !429, i64 40, !429, i64 44, !429, i64 48, !429, i64 52, !429, i64 56, !429, i64 60}
!454 = !{!"function_subsections", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32}
!455 = !{!"rtl_eh", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !421, i64 48}
!456 = !{!"long", !421, i64 0}
!457 = !{!"branch_weights", i32 1, i32 41}
!458 = !{!"function_entry_count", i64 1025}
!459 = !{!448, !456, i64 400}
!460 = !{!"function_entry_count", i64 20}
!461 = !{!"branch_weights", i32 1, i32 21}
!462 = !{!"branch_weights", i32 729, i32 1300, i32 90, i32 81}
!463 = !{!448, !429, i64 452}
!464 = !{!448, !421, i64 482}
!465 = !{!448, !421, i64 483}
!466 = !{!448, !421, i64 479}
!467 = !{!448, !429, i64 436}
!468 = !{!448, !429, i64 448}
!469 = !{!"branch_weights", i32 5, i32 17}
!470 = !{!448, !420, i64 368}
!471 = !{i8 0, i8 2}
!472 = !{!"branch_weights", i32 21, i32 1}
!473 = !{!"function_entry_count", i64 12}
!474 = !{!"function.c:get_stack_local_alignment"}
!475 = !{!"branch_weights", i32 1, i32 13}
!476 = !{!"branch_weights", i32 13, i32 1}
!477 = !{!478, !420, i64 448}
!478 = !{!"lang_hooks", !420, i64 0, !456, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !420, i64 168, !420, i64 176, !420, i64 184, !420, i64 192, !420, i64 200, !420, i64 208, !420, i64 216, !420, i64 224, !420, i64 232, !479, i64 240, !480, i64 248, !481, i64 256, !482, i64 272, !483, i64 432, !484, i64 560, !420, i64 584, !420, i64 592, !420, i64 600, !420, i64 608, !420, i64 616, !420, i64 624, !420, i64 632, !420, i64 640, !420, i64 648, !420, i64 656, !420, i64 664, !421, i64 672}
!479 = !{!"lang_hooks_for_tree_inlining", !420, i64 0}
!480 = !{!"lang_hooks_for_callgraph", !420, i64 0}
!481 = !{!"lang_hooks_for_tree_dump", !420, i64 0, !420, i64 8}
!482 = !{!"lang_hooks_for_decls", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152}
!483 = !{!"lang_hooks_for_types", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !421, i64 120}
!484 = !{!"lang_hooks_for_lto", !420, i64 0, !420, i64 8, !420, i64 16}
!485 = !{!"function_entry_count", i64 16}
!486 = !{!487, !429, i64 40}
!487 = !{!"temp_slot", !420, i64 0, !420, i64 8, !420, i64 16, !456, i64 24, !420, i64 32, !429, i64 40, !421, i64 44, !421, i64 45, !429, i64 48, !429, i64 52, !456, i64 56, !456, i64 64}
!488 = !{!487, !456, i64 24}
!489 = !{!487, !420, i64 16}
!490 = !{!487, !420, i64 32}
!491 = distinct !{!491, !492}
!492 = !{!"llvm.loop.mustprogress"}
!493 = !{!487, !421, i64 45}
!494 = !{!487, !421, i64 44}
!495 = !{!487, !456, i64 56}
!496 = !{!487, !456, i64 64}
!497 = !{!448, !429, i64 432}
!498 = !{!487, !429, i64 48}
!499 = !{!487, !429, i64 52}
!500 = !{!"function.c:cut_slot_from_list"}
!501 = !{!487, !420, i64 0}
!502 = !{!487, !420, i64 8}
!503 = !{!"function.c:insert_slot_to_list"}
!504 = !{!"function_entry_count", i64 570132}
!505 = !{!"function.c:temp_slots_at_level"}
!506 = !{!"branch_weights", i32 570064, i32 70}
!507 = !{!"function.c:insert_temp_slot_address"}
!508 = !{!509, !420, i64 8}
!509 = !{!"temp_slot_address_entry", !429, i64 0, !420, i64 8, !420, i64 16}
!510 = !{!509, !420, i64 16}
!511 = !{!509, !429, i64 0}
!512 = !{!"function_entry_count", i64 38}
!513 = !{!"branch_weights", i32 1, i32 39}
!514 = !{!"branch_weights", i32 79, i32 1521}
!515 = !{!"function_entry_count", i64 108850}
!516 = !{!"branch_weights", i32 127, i32 1}
!517 = !{!"branch_weights", i32 108851, i32 1}
!518 = !{!"branch_weights", i32 12740, i32 96112}
!519 = !{!"branch_weights", i32 12740, i32 12741, i32 162307600}
!520 = !{!"branch_weights", i32 13932801, i32 127}
!521 = !{!"branch_weights", i32 12717, i32 24}
!522 = !{!"branch_weights", i32 16129, i32 127}
!523 = !{!"branch_weights", i32 12717, i32 1}
!524 = !{!"branch_weights", i32 1, i32 12717}
!525 = !{!"function_entry_count", i64 121566}
!526 = !{!"function.c:find_temp_slot_from_address"}
!527 = !{!"branch_weights", i32 121567, i32 1}
!528 = !{!"branch_weights", i32 12740, i32 108828}
!529 = !{!"branch_weights", i32 1, i32 12740}
!530 = distinct !{!530, !492}
!531 = distinct !{!531, !492}
!532 = !{!"function_entry_count", i64 161300}
!533 = !{!"branch_weights", i32 161301, i32 1}
!534 = !{!"branch_weights", i32 161300, i32 1}
!535 = !{!"branch_weights", i32 1, i32 0}
!536 = distinct !{!536, !492}
!537 = distinct !{!537, !492}
!538 = distinct !{!538, !492}
!539 = distinct !{!539, !492}
!540 = !{!"function.c:move_slot_to_level"}
!541 = !{!"function_entry_count", i64 247492}
!542 = !{!"branch_weights", i32 247492, i32 1}
!543 = distinct !{!543, !492}
!544 = !{!"branch_weights", i32 0, i32 -2147483648}
!545 = !{!"function.c:make_slot_available"}
!546 = !{!"function.c:remove_unused_temp_slot_addresses"}
!547 = !{!"function.c:combine_temp_slots"}
!548 = distinct !{!548, !492}
!549 = distinct !{!549, !492}
!550 = !{!"function_entry_count", i64 161340}
!551 = !{!"branch_weights", i32 161340, i32 1}
!552 = distinct !{!552, !492}
!553 = !{!"function_entry_count", i64 78}
!554 = !{!"branch_weights", i32 2, i32 78}
!555 = !{!"function.c:temp_slot_address_hash"}
!556 = !{!"function.c:temp_slot_address_eq"}
!557 = !{!"function_entry_count", i64 115}
!558 = !{!"branch_weights", i32 1, i32 127}
!559 = !{!"branch_weights", i32 4524, i32 117, i32 9048}
!560 = !{!"branch_weights", i32 127, i32 14721}
!561 = !{!"branch_weights", i32 40, i32 39}
!562 = !{!"branch_weights", i32 39, i32 1}
!563 = !{!"function_entry_count", i64 445594}
!564 = !{!"function.c:rhs_regno"}
!565 = !{!"function_entry_count", i64 1408932}
!566 = !{!"function.c:instantiate_virtual_regs_in_rtx"}
!567 = !{!"branch_weights", i32 837162, i32 571772}
!568 = !{!"branch_weights", i32 474964, i32 83738, i32 13072}
!569 = !{!"branch_weights", i32 14667, i32 69072}
!570 = !{!456, !456, i64 0}
!571 = !{!"branch_weights", i32 76, i32 68997}
!572 = !{!"branch_weights", i32 362, i32 12711}
!573 = !{!"branch_weights", i32 1, i32 12711}
!574 = !{!"function.c:instantiate_virtual_regs"}
!575 = !{!448, !429, i64 312}
!576 = !{!448, !429, i64 120}
!577 = !{!"branch_weights", i32 1, i32 155}
!578 = !{!"branch_weights", i32 -1358062299, i32 1672068806}
!579 = !{!"branch_weights", i32 -668597623, i32 184102, i32 363485, i32 113293, i32 4719, i32 4720}
!580 = !{!"branch_weights", i32 1, i32 768204}
!581 = !{!"branch_weights", i32 768204, i32 1}
!582 = !{!"branch_weights", i32 68959, i32 699246}
!583 = !{!"branch_weights", i32 155, i32 4822977}
!584 = distinct !{!584, !492}
!585 = !{!586, !420, i64 1744}
!586 = !{!"gcc_target", !587, i64 0, !589, i64 368, !590, i64 664, !429, i64 744, !420, i64 752, !420, i64 760, !420, i64 768, !420, i64 776, !420, i64 784, !420, i64 792, !420, i64 800, !420, i64 808, !420, i64 816, !420, i64 824, !420, i64 832, !420, i64 840, !420, i64 848, !420, i64 856, !420, i64 864, !420, i64 872, !420, i64 880, !420, i64 888, !420, i64 896, !420, i64 904, !420, i64 912, !420, i64 920, !420, i64 928, !420, i64 936, !420, i64 944, !420, i64 952, !420, i64 960, !420, i64 968, !420, i64 976, !420, i64 984, !420, i64 992, !420, i64 1000, !420, i64 1008, !420, i64 1016, !420, i64 1024, !420, i64 1032, !420, i64 1040, !420, i64 1048, !420, i64 1056, !456, i64 1064, !456, i64 1072, !420, i64 1080, !420, i64 1088, !420, i64 1096, !420, i64 1104, !420, i64 1112, !420, i64 1120, !420, i64 1128, !420, i64 1136, !420, i64 1144, !420, i64 1152, !420, i64 1160, !420, i64 1168, !591, i64 1176, !420, i64 1232, !420, i64 1240, !420, i64 1248, !420, i64 1256, !420, i64 1264, !420, i64 1272, !420, i64 1280, !420, i64 1288, !420, i64 1296, !420, i64 1304, !420, i64 1312, !420, i64 1320, !420, i64 1328, !420, i64 1336, !420, i64 1344, !420, i64 1352, !420, i64 1360, !420, i64 1368, !420, i64 1376, !420, i64 1384, !420, i64 1392, !420, i64 1400, !420, i64 1408, !420, i64 1416, !420, i64 1424, !420, i64 1432, !420, i64 1440, !420, i64 1448, !420, i64 1456, !456, i64 1464, !592, i64 1472, !420, i64 1664, !420, i64 1672, !420, i64 1680, !420, i64 1688, !420, i64 1696, !420, i64 1704, !420, i64 1712, !420, i64 1720, !420, i64 1728, !420, i64 1736, !420, i64 1744, !420, i64 1752, !420, i64 1760, !420, i64 1768, !420, i64 1776, !593, i64 1784, !594, i64 1792, !595, i64 1896, !596, i64 1968, !420, i64 2016, !421, i64 2024, !421, i64 2025, !421, i64 2026, !421, i64 2027, !421, i64 2028, !421, i64 2029, !421, i64 2030, !421, i64 2031, !421, i64 2032, !421, i64 2033, !421, i64 2034, !421, i64 2035}
!587 = !{!"asm_out", !420, i64 0, !420, i64 8, !420, i64 16, !588, i64 24, !588, i64 56, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !420, i64 168, !420, i64 176, !420, i64 184, !420, i64 192, !420, i64 200, !420, i64 208, !420, i64 216, !420, i64 224, !420, i64 232, !420, i64 240, !420, i64 248, !420, i64 256, !420, i64 264, !420, i64 272, !420, i64 280, !420, i64 288, !420, i64 296, !420, i64 304, !420, i64 312, !420, i64 320, !420, i64 328, !420, i64 336, !420, i64 344, !420, i64 352, !420, i64 360}
!588 = !{!"asm_int_op", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24}
!589 = !{!"sched", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !420, i64 168, !420, i64 176, !420, i64 184, !420, i64 192, !420, i64 200, !420, i64 208, !420, i64 216, !420, i64 224, !420, i64 232, !420, i64 240, !420, i64 248, !420, i64 256, !420, i64 264, !420, i64 272, !420, i64 280, !420, i64 288}
!590 = !{!"vectorize", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72}
!591 = !{!"addr_space", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48}
!592 = !{!"calls", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !420, i64 168, !420, i64 176, !420, i64 184}
!593 = !{!"c", !420, i64 0}
!594 = !{!"cxx", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96}
!595 = !{!"emutls", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !421, i64 64, !421, i64 65}
!596 = !{!"target_option_hooks", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40}
!597 = !{!"function_entry_count", i64 449943}
!598 = !{!"branch_weights", i32 135891, i32 314054}
!599 = !{!"branch_weights", i32 1, i32 449944}
!600 = !{!"branch_weights", i32 1, i32 200778, i32 205659, i32 43509, i32 1, i32 1}
!601 = !{!"branch_weights", i32 1, i32 200778}
!602 = !{!"branch_weights", i32 -1195164240, i32 31568433, i32 34797}
!603 = !{!"branch_weights", i32 5, i32 1}
!604 = !{!"branch_weights", i32 -1502628680, i32 6959, i32 307499238}
!605 = !{!"branch_weights", i32 44184, i32 1}
!606 = !{!"branch_weights", i32 -2058232568, i32 1487129496}
!607 = !{!"branch_weights", i32 56790, i32 210747}
!608 = !{!"branch_weights", i32 210747, i32 1}
!609 = !{!586, !420, i64 1496}
!610 = !{!"branch_weights", i32 445409, i32 1}
!611 = !{!"branch_weights", i32 1, i32 445409}
!612 = !{!"branch_weights", i32 40178, i32 -2057769192}
!613 = !{!"branch_weights", i32 445405, i32 1}
!614 = !{!"branch_weights", i32 1, i32 445405}
!615 = !{!"branch_weights", i32 1, i32 445404}
!616 = !{!"branch_weights", i32 445404, i32 3}
!617 = distinct !{!617, !492}
!618 = !{!"branch_weights", i32 1, i32 445407}
!619 = !{!"function_entry_count", i64 522546}
!620 = !{!586, !420, i64 1632}
!621 = !{!"branch_weights", i32 1, i32 522547}
!622 = !{!"branch_weights", i32 -28477184, i32 16329}
!623 = !{!"branch_weights", i32 522547, i32 1}
!624 = !{!"branch_weights", i32 39, i32 522509}
!625 = !{!"function_entry_count", i64 81746}
!626 = !{!"branch_weights", i32 1, i32 81747}
!627 = !{!"branch_weights", i32 81747, i32 1}
!628 = !{!586, !420, i64 1512}
!629 = !{!586, !420, i64 1568}
!630 = !{!"branch_weights", i32 1, i32 163}
!631 = !{!632, !429, i64 36}
!632 = !{!"assign_parm_data_one", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !429, i64 32, !429, i64 36, !429, i64 40, !633, i64 48, !429, i64 120, !429, i64 124, !429, i64 124, !429, i64 124, !429, i64 124}
!633 = !{!"locate_and_pad_arg_data", !634, i64 0, !634, i64 16, !634, i64 32, !634, i64 48, !429, i64 64, !429, i64 68}
!634 = !{!"args_size", !456, i64 0, !420, i64 8}
!635 = !{!632, !429, i64 40}
!636 = !{!632, !420, i64 8}
!637 = !{!"branch_weights", i32 41, i32 1}
!638 = !{!"branch_weights", i32 163, i32 1}
!639 = distinct !{!639, !492}
!640 = !{!"function.c:assign_parms_initialize_all"}
!641 = !{!642, !429, i64 128}
!642 = !{!"assign_parm_data_all", !453, i64 0, !634, i64 64, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !456, i64 112, !456, i64 120, !429, i64 128}
!643 = !{!"function.c:assign_parms_augmented_arg_list"}
!644 = !{!"branch_weights", i32 1, i32 157}
!645 = !{!"branch_weights", i32 157, i32 1}
!646 = distinct !{!646, !492}
!647 = !{!642, !420, i64 88}
!648 = !{!"branch_weights", i32 79, i32 1}
!649 = !{!586, !420, i64 1488}
!650 = !{!642, !420, i64 80}
!651 = !{!586, !420, i64 1552}
!652 = !{!"function_entry_count", i64 156}
!653 = !{!"function.c:VEC_tree_base_iterate"}
!654 = !{!655, !429, i64 0}
!655 = !{!"VEC_tree_base", !429, i64 0, !429, i64 4, !421, i64 8}
!656 = !{!"branch_weights", i32 79, i32 79}
!657 = !{!"function.c:assign_parm_find_data_types"}
!658 = !{!586, !420, i64 1536}
!659 = !{!"branch_weights", i32 1, i32 79}
!660 = !{!"branch_weights", i32 159, i32 6241}
!661 = !{!632, !420, i64 0}
!662 = !{!632, !429, i64 32}
!663 = !{!"function_entry_count", i64 80}
!664 = !{!"function.c:gimplify_parm_type"}
!665 = !{!"branch_weights", i32 81, i32 1}
!666 = !{!"branch_weights", i32 1681, i32 1722, i32 41}
!667 = !{!"branch_weights", i32 1, i32 83}
!668 = !{!"function.c:VEC_tree_heap_free"}
!669 = !{!"function_entry_count", i64 81706}
!670 = !{!"branch_weights", i32 40853, i32 -956909518}
!671 = !{!634, !420, i64 8}
!672 = !{!634, !456, i64 0}
!673 = !{!"branch_weights", i32 1, i32 81707}
!674 = !{!633, !429, i64 64}
!675 = !{!633, !429, i64 68}
!676 = !{!448, !429, i64 440}
!677 = !{!"branch_weights", i32 81707, i32 1}
!678 = !{i64 0, i64 8, !570, i64 8, i64 8, !419}
!679 = !{!633, !456, i64 0}
!680 = !{!633, !420, i64 8}
!681 = !{!"function.c:pad_to_arg_alignment"}
!682 = !{!"branch_weights", i32 2147457365, i32 26283}
!683 = !{!428, !420, i64 8}
!684 = !{!685, !429, i64 24}
!685 = !{!"control_flow_graph", !420, i64 0, !420, i64 8, !420, i64 16, !429, i64 24, !429, i64 28, !429, i64 32, !420, i64 40, !429, i64 48, !421, i64 52, !421, i64 60, !429, i64 68, !429, i64 72}
!686 = !{!687, !420, i64 0}
!687 = !{!"bitmap_head_def", !420, i64 0, !420, i64 8, !429, i64 16, !420, i64 24}
!688 = !{!"function.c:setjmp_vars_warning"}
!689 = distinct !{!689, !492}
!690 = distinct !{!690, !492}
!691 = !{!"function.c:setjmp_args_warning"}
!692 = distinct !{!692, !492}
!693 = !{!"function.c:VEC_tree_heap_alloc"}
!694 = !{!"branch_weights", i32 40, i32 41}
!695 = !{!"branch_weights", i32 41, i32 0}
!696 = distinct !{!696, !492}
!697 = !{!"function.c:reorder_blocks_1"}
!698 = distinct !{!698, !492}
!699 = !{!"function_entry_count", i64 89}
!700 = !{!"branch_weights", i32 89, i32 1}
!701 = distinct !{!701, !492}
!702 = !{!"function_entry_count", i64 41}
!703 = !{!"branch_weights", i32 167, i32 1}
!704 = !{!"branch_weights", i32 167, i32 245}
!705 = distinct !{!705, !492}
!706 = !{!"function.c:get_block_vector"}
!707 = distinct !{!707, !492}
!708 = distinct !{!708, !492}
!709 = !{!"function_entry_count", i64 5708}
!710 = !{!"function.c:invoke_set_current_function_hook"}
!711 = !{!"branch_weights", i32 5, i32 5705}
!712 = !{!"branch_weights", i32 2848, i32 2858}
!713 = !{!"branch_weights", i32 2858, i32 2848}
!714 = !{!"branch_weights", i32 5705, i32 1}
!715 = !{!586, !420, i64 1096}
!716 = !{!"function_entry_count", i64 209764}
!717 = !{!"function_entry_count", i64 656}
!718 = !{!"function_entry_count", i64 3}
!719 = !{!"function_entry_count", i64 2}
!720 = !{!"branch_weights", i32 1, i32 3}
!721 = !{!"function.c:prepare_function_start"}
!722 = !{!448, !420, i64 56}
!723 = !{!448, !421, i64 477}
!724 = !{!"branch_weights", i32 246559, i32 2313441}
!725 = !{!586, !420, i64 1432}
!726 = !{!448, !420, i64 336}
!727 = !{!"function.c:expand_normal"}
!728 = !{!586, !420, i64 1440}
!729 = !{!448, !421, i64 471}
!730 = !{!448, !421, i64 470}
!731 = !{!448, !420, i64 352}
!732 = !{!586, !420, i64 1504}
!733 = !{!"branch_weights", i32 1, i32 78, i32 1}
!734 = !{!428, !420, i64 56}
!735 = !{!586, !420, i64 1640}
!736 = !{!428, !420, i64 64}
!737 = !{!586, !420, i64 1392}
!738 = !{!448, !420, i64 408}
!739 = !{!448, !420, i64 376}
!740 = !{!"function.c:assign_parms"}
!741 = !{!586, !420, i64 1608}
!742 = !{!448, !420, i64 200}
!743 = !{!632, !420, i64 16}
!744 = !{!"branch_weights", i32 155, i32 1}
!745 = distinct !{!745, !492}
!746 = !{!642, !420, i64 96}
!747 = !{!"branch_weights", i32 1521, i32 79}
!748 = !{!642, !456, i64 112}
!749 = !{!642, !456, i64 120}
!750 = !{!642, !456, i64 64}
!751 = !{!448, !429, i64 116}
!752 = !{!642, !420, i64 72}
!753 = !{!448, !420, i64 128}
!754 = !{!448, !429, i64 112}
!755 = !{i64 0, i64 4, !441, i64 4, i64 4, !441, i64 8, i64 4, !441, i64 12, i64 4, !441, i64 16, i64 4, !441, i64 20, i64 4, !441, i64 24, i64 4, !441, i64 28, i64 4, !441, i64 32, i64 4, !441, i64 36, i64 4, !441, i64 40, i64 4, !441, i64 44, i64 4, !441, i64 48, i64 4, !441, i64 52, i64 4, !441, i64 56, i64 4, !441, i64 60, i64 4, !441}
!756 = !{!448, !420, i64 320}
!757 = !{!586, !420, i64 1592}
!758 = !{!"function.c:expand_expr"}
!759 = !{!"branch_weights", i32 3, i32 1}
!760 = !{!"branch_weights", i32 2, i32 1}
!761 = distinct !{!761, !492}
!762 = !{!"function_entry_count", i64 344}
!763 = !{!"branch_weights", i32 1, i32 345}
!764 = !{!"branch_weights", i32 1, i32 690, i32 1}
!765 = !{!766, !429, i64 0}
!766 = !{!"rtvec_def", !429, i64 0, !421, i64 8}
!767 = distinct !{!767, !492}
!768 = !{!"function_entry_count", i64 76}
!769 = !{!"function.c:do_clobber_return_reg"}
!770 = distinct !{!770, !492}
!771 = !{!448, !420, i64 384}
!772 = distinct !{!772, !492}
!773 = !{!"branch_weights", i32 38, i32 1}
!774 = distinct !{!774, !492}
!775 = !{!448, !420, i64 360}
!776 = !{!448, !421, i64 476}
!777 = !{!"function.c:use_return_register"}
!778 = !{!"function_entry_count", i64 404}
!779 = !{!"branch_weights", i32 1, i32 405}
!780 = !{!"branch_weights", i32 274, i32 132}
!781 = !{!"branch_weights", i32 132, i32 1}
!782 = !{!"function_entry_count", i64 6168229}
!783 = !{!"branch_weights", i32 6167285, i32 946}
!784 = !{!"function_entry_count", i64 12335990}
!785 = !{!"function.c:contains"}
!786 = !{!"branch_weights", i32 6693165, i32 5642827}
!787 = !{!"branch_weights", i32 3349946, i32 2292882}
!788 = !{!"branch_weights", i32 1, i32 3349946}
!789 = distinct !{!789, !492}
!790 = !{!"branch_weights", i32 153, i32 201}
!791 = !{!"branch_weights", i32 39, i32 115}
!792 = !{!"branch_weights", i32 12, i32 190}
!793 = !{!"branch_weights", i32 39, i32 152}
!794 = !{!"branch_weights", i32 127, i32 45057}
!795 = distinct !{!795, !492}
!796 = !{!"branch_weights", i32 2110840303, i32 36643345}
!797 = !{!685, !420, i64 8}
!798 = !{i64 0, i64 4, !441, i64 8, i64 8, !419}
!799 = !{i64 0, i64 8, !419}
!800 = !{!801, !420, i64 0}
!801 = !{!"edge_def", !420, i64 0, !420, i64 8, !421, i64 16, !420, i64 24, !420, i64 32, !429, i64 40, !429, i64 44, !429, i64 48, !429, i64 52, !456, i64 56}
!802 = !{!803, !420, i64 8}
!803 = !{!"rtl_bb_info", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !429, i64 32}
!804 = !{!"branch_weights", i32 1, i32 436}
!805 = !{!"branch_weights", i32 142, i32 295}
!806 = !{!"branch_weights", i32 70, i32 73}
!807 = !{!"branch_weights", i32 67, i32 4}
!808 = !{!"branch_weights", i32 278, i32 18}
!809 = !{!"branch_weights", i32 209, i32 70}
!810 = !{!"branch_weights", i32 4, i32 67}
!811 = !{!"branch_weights", i32 127, i32 55681}
!812 = distinct !{!812, !492}
!813 = !{!"branch_weights", i32 751055624, i32 1396428024}
!814 = !{!"branch_weights", i32 2133689613, i32 13794035}
!815 = !{!"branch_weights", i32 155, i32 125}
!816 = distinct !{!816, !492}
!817 = !{!"function_entry_count", i64 228}
!818 = !{!"function.c:ei_start_1"}
!819 = !{!"function_entry_count", i64 392}
!820 = !{!"function.c:ei_cond"}
!821 = !{!"branch_weights", i32 279, i32 115}
!822 = !{!"function_entry_count", i64 259}
!823 = !{!"function.c:ei_next"}
!824 = !{!"branch_weights", i32 1, i32 260}
!825 = !{!"branch_weights", i32 260, i32 1}
!826 = !{!827, !429, i64 0}
!827 = !{!"", !429, i64 0, !420, i64 8}
!828 = !{!478, !420, i64 176}
!829 = !{!"function_entry_count", i64 132588}
!830 = !{!"branch_weights", i32 -2072958963, i32 318504, i32 16762, i32 318456}
!831 = !{!"branch_weights", i32 1, i32 19}
!832 = distinct !{!832, !492}
!833 = !{!"branch_weights", i32 16200, i32 2147467448}
!834 = !{!"branch_weights", i32 132484, i32 106}
!835 = !{!"branch_weights", i32 132589, i32 1}
!836 = !{!"function.c:used_types_insert_helper"}
!837 = !{!428, !420, i64 96}
!838 = !{!"function.c:hash_types_used_by_vars_entry"}
!839 = !{!840, !420, i64 8}
!840 = !{!"types_used_by_vars_entry", !420, i64 0, !420, i64 8}
!841 = !{!840, !420, i64 0}
!842 = !{!"function.c:rest_of_handle_check_leaf_regs"}
!843 = !{!"function.c:rest_of_handle_thread_prologue_and_epilogue"}
!844 = !{!"function.c:rest_of_match_asm_constraints"}
!845 = !{!448, !421, i64 468}
!846 = !{!685, !420, i64 0}
!847 = !{!848, !420, i64 56}
!848 = !{!"basic_block_def", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !421, i64 32, !420, i64 48, !420, i64 56, !421, i64 64, !456, i64 72, !429, i64 80, !429, i64 84, !429, i64 88, !429, i64 92, !429, i64 96}
!849 = distinct !{!849, !492}
!850 = distinct !{!850, !492}
!851 = !{!852, !420, i64 24}
!852 = !{!"htab", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !456, i64 32, !456, i64 40, !456, i64 48, !429, i64 56, !429, i64 60, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !429, i64 104}
!853 = !{!852, !456, i64 32}
!854 = distinct !{!854, !492}
!855 = distinct !{!855, !492}
!856 = distinct !{!856, !492}
!857 = !{!"function.c:VEC_function_p_heap_reserve"}
!858 = !{!"branch_weights", i32 2, i32 209767}
!859 = !{!"function.c:VEC_function_p_base_quick_push"}
!860 = !{!"function.c:VEC_function_p_base_space"}
!861 = !{!444, !429, i64 4}
!862 = !{!"function_entry_count", i64 570270}
!863 = !{!"function.c:VEC_temp_slot_p_base_length"}
!864 = !{!"branch_weights", i32 115, i32 570157}
!865 = !{!866, !429, i64 0}
!866 = !{!"VEC_temp_slot_p_base", !429, i64 0, !429, i64 4, !421, i64 8}
!867 = !{!"function_entry_count", i64 69}
!868 = !{!"function.c:VEC_temp_slot_p_gc_safe_grow_cleared"}
!869 = !{!"function_entry_count", i64 570201}
!870 = !{!"function.c:VEC_temp_slot_p_base_address"}
!871 = !{!"branch_weights", i32 1, i32 570202}
!872 = !{!"function.c:VEC_temp_slot_p_gc_safe_grow"}
!873 = !{!"branch_weights", i32 39, i32 32}
!874 = !{}
!875 = !{!"function.c:VEC_temp_slot_p_gc_reserve_exact"}
!876 = !{!"branch_weights", i32 70, i32 1}
!877 = !{!"function.c:VEC_temp_slot_p_base_space"}
!878 = !{!866, !429, i64 4}
!879 = !{!"function.c:temp_slot_address_compute_hash"}
!880 = !{!"function.c:max_slot_level"}
!881 = !{!"function.c:remove_unused_temp_slot_addresses_1"}
!882 = !{!"function_entry_count", i64 2212557}
!883 = !{!"function.c:instantiate_new_reg"}
!884 = !{!"branch_weights", i32 133, i32 2212426}
!885 = !{!"branch_weights", i32 133, i32 1}
!886 = !{!448, !421, i64 481}
!887 = !{!"branch_weights", i32 1, i32 2212426}
!888 = !{!"branch_weights", i32 81650, i32 2130777}
!889 = !{!"branch_weights", i32 1, i32 2130777}
!890 = !{!"function_entry_count", i64 768203}
!891 = !{!"function.c:instantiate_virtual_regs_in_insn"}
!892 = !{!"branch_weights", i32 -205513765, i32 5323}
!893 = !{!"branch_weights", i32 746281, i32 1}
!894 = !{!"branch_weights", i32 -2147483648, i32 0}
!895 = !{!"branch_weights", i32 766004, i32 1}
!896 = !{!"branch_weights", i32 3431, i32 762574}
!897 = !{!898, !421, i64 1086}
!898 = !{!"recog_data", !421, i64 0, !421, i64 240, !421, i64 480, !421, i64 720, !421, i64 840, !421, i64 960, !421, i64 1072, !421, i64 1086, !421, i64 1087, !421, i64 1088, !421, i64 1089, !420, i64 1120}
!899 = !{!"branch_weights", i32 -1770660297, i32 2207848}
!900 = !{!"branch_weights", i32 2801, i32 631}
!901 = !{!"branch_weights", i32 2801, i32 1}
!902 = !{!"branch_weights", i32 768203, i32 1}
!903 = !{!"branch_weights", i32 809280, i32 159582, i32 573901, i32 7044}
!904 = !{!"branch_weights", i32 77876, i32 81707}
!905 = !{!"branch_weights", i32 573901, i32 1}
!906 = !{!"branch_weights", i32 7044, i32 1}
!907 = !{!908, !420, i64 24}
!908 = !{!"insn_data", !420, i64 0, !421, i64 8, !420, i64 16, !420, i64 24, !421, i64 32, !421, i64 33, !421, i64 34, !421, i64 35}
!909 = !{!"branch_weights", i32 781601, i32 768203}
!910 = distinct !{!910, !492}
!911 = !{!"branch_weights", i32 686498, i32 81707}
!912 = !{!898, !421, i64 1087}
!913 = !{!"branch_weights", i32 1, i32 81706}
!914 = !{!"branch_weights", i32 0, i32 1}
!915 = distinct !{!915, !492}
!916 = !{!"function.c:instantiate_decls"}
!917 = distinct !{!917, !492}
!918 = !{!428, !420, i64 72}
!919 = !{!"branch_weights", i32 37, i32 2}
!920 = !{!"branch_weights", i32 1, i32 2}
!921 = !{!"branch_weights", i32 2, i32 0}
!922 = distinct !{!922, !492}
!923 = !{!"function_entry_count", i64 163412}
!924 = !{!"function.c:safe_insn_predicate"}
!925 = !{!"branch_weights", i32 1, i32 163413}
!926 = !{!927, !420, i64 0}
!927 = !{!"insn_operand_data", !420, i64 0, !420, i64 8, !429, i64 16, !421, i64 18, !421, i64 19}
!928 = !{!"function.c:recog_memoized"}
!929 = !{!"branch_weights", i32 81707, i32 686498}
!930 = !{!"function.c:instantiate_expr"}
!931 = !{!"function.c:instantiate_decls_1"}
!932 = !{!"branch_weights", i32 42, i32 39}
!933 = !{!"branch_weights", i32 39, i32 0}
!934 = distinct !{!934, !492}
!935 = !{!"branch_weights", i32 38, i32 43}
!936 = !{!"branch_weights", i32 43, i32 0}
!937 = distinct !{!937, !492}
!938 = !{!"function.c:VEC_tree_heap_safe_push"}
!939 = !{!"function.c:VEC_tree_heap_safe_insert"}
!940 = !{!"function.c:split_complex_args"}
!941 = distinct !{!941, !492}
!942 = !{!"function.c:VEC_tree_heap_reserve"}
!943 = !{!"function.c:VEC_tree_base_quick_push"}
!944 = !{!"function.c:VEC_tree_base_space"}
!945 = !{!655, !429, i64 4}
!946 = !{!"function.c:VEC_tree_base_quick_insert"}
!947 = !{!"function.c:VEC_tree_base_replace"}
!948 = !{!"function.c:regno_clobbered_at_setjmp"}
!949 = !{!"function.c:REG_N_SETS"}
!950 = !{!951, !429, i64 0}
!951 = !{!"regstat_n_sets_and_refs_t", !429, i64 0, !429, i64 4}
!952 = !{!"function.c:VEC_tree_base_pop"}
!953 = !{!"function_entry_count", i64 368}
!954 = !{!"function.c:all_blocks"}
!955 = !{!"branch_weights", i32 82, i32 287}
!956 = !{!"branch_weights", i32 144, i32 144}
!957 = !{!"branch_weights", i32 287, i32 0}
!958 = distinct !{!958, !492}
!959 = !{!"function.c:assign_parms_setup_varargs"}
!960 = !{!586, !420, i64 1528}
!961 = !{!"function.c:assign_parm_find_entry_rtl"}
!962 = !{!632, !420, i64 24}
!963 = !{!586, !420, i64 1544}
!964 = !{!586, !420, i64 1560}
!965 = !{!586, !420, i64 1576}
!966 = !{!632, !429, i64 120}
!967 = !{!448, !429, i64 444}
!968 = !{!632, !429, i64 116}
!969 = !{!632, !456, i64 80}
!970 = !{!632, !456, i64 64}
!971 = !{!"function.c:assign_parm_is_stack_parm"}
!972 = !{!632, !456, i64 48}
!973 = !{!632, !420, i64 56}
!974 = !{!"function.c:assign_parm_find_stack_rtl"}
!975 = !{!632, !420, i64 88}
!976 = !{!632, !420, i64 72}
!977 = !{!978, !420, i64 0}
!978 = !{!"mem_attrs", !420, i64 0, !420, i64 8, !420, i64 16, !429, i64 24, !429, i64 28, !421, i64 32}
!979 = !{!978, !420, i64 8}
!980 = !{!632, !429, i64 112}
!981 = !{!"function.c:assign_parm_adjust_entry_rtl"}
!982 = distinct !{!982, !492}
!983 = !{!"function.c:assign_parm_adjust_stack_rtl"}
!984 = !{!978, !429, i64 28}
!985 = !{!"function.c:assign_parm_setup_block_p"}
!986 = !{!"function.c:assign_parm_setup_block"}
!987 = !{!642, !420, i64 104}
!988 = !{!"function.c:assign_parm_setup_reg"}
!989 = distinct !{!989, !492}
!990 = !{!"branch_weights", i32 319, i32 1}
!991 = !{!"branch_weights", i32 1884938647, i32 262545001}
!992 = !{!"function.c:assign_parm_setup_stack"}
!993 = !{!"function.c:assign_parms_unsplit_complex"}
!994 = distinct !{!994, !492}
!995 = !{!"function.c:assign_parm_remove_parallels"}
!996 = !{!"function.c:VEC_tree_base_index"}
!997 = !{!"function.c:do_use_return_reg"}
!998 = !{!"function_entry_count", i64 487}
!999 = !{!"function.c:ei_end_p"}
!1000 = !{!"branch_weights", i32 1, i32 488}
!1001 = !{!"function_entry_count", i64 335}
!1002 = !{!"function.c:ei_edge"}
!1003 = !{!"branch_weights", i32 1, i32 336}
!1004 = !{!"function_entry_count", i64 822}
!1005 = !{!"function.c:VEC_edge_base_length"}
!1006 = !{!"branch_weights", i32 1, i32 823}
!1007 = !{!1008, !429, i64 0}
!1008 = !{!"VEC_edge_base", !429, i64 0, !429, i64 4, !421, i64 8}
!1009 = !{!"function_entry_count", i64 2162}
!1010 = !{!"function.c:ei_container"}
!1011 = !{!"branch_weights", i32 1, i32 2163}
!1012 = !{!"function_entry_count", i64 373}
!1013 = !{!"function.c:VEC_edge_base_index"}
!1014 = !{!"function.c:thread_prologue_and_epilogue_insns"}
!1015 = !{!801, !429, i64 48}
!1016 = !{!"branch_weights", i32 127, i32 4865}
!1017 = distinct !{!1017, !492}
!1018 = !{!"branch_weights", i32 2095138735, i32 52344913}
!1019 = distinct !{!1019, !492}
!1020 = distinct !{!1020, !492}
!1021 = !{!803, !420, i64 0}
!1022 = distinct !{!1022, !492}
!1023 = !{!"branch_weights", i32 20, i32 39}
!1024 = !{!"branch_weights", i32 20, i32 1}
!1025 = !{!"branch_weights", i32 155, i32 77}
!1026 = distinct !{!1026, !492}
!1027 = !{!"branch_weights", i32 127, i32 7297}
!1028 = distinct !{!1028, !492}
!1029 = !{!"branch_weights", i32 2111995559, i32 35488089}
!1030 = !{!"branch_weights", i32 58, i32 1}
!1031 = distinct !{!1031, !492}
!1032 = !{!"branch_weights", i32 400, i32 839}
!1033 = distinct !{!1033, !492}
!1034 = !{!"branch_weights", i32 1412, i32 5825}
!1035 = !{!"branch_weights", i32 1, i32 1412}
!1036 = !{!"branch_weights", i32 39, i32 7197}
!1037 = distinct !{!1037, !492}
!1038 = !{!"function_entry_count", i64 95}
!1039 = !{!"function.c:record_insns"}
!1040 = !{!"branch_weights", i32 77, i32 20}
!1041 = !{!"branch_weights", i32 1, i32 191}
!1042 = !{!"branch_weights", i32 474, i32 1}
!1043 = !{!"branch_weights", i32 191, i32 757}
!1044 = distinct !{!1044, !492}
!1045 = !{!"function.c:set_insn_locators"}
!1046 = !{!"branch_weights", i32 253779579, i32 31002624}
!1047 = !{!"branch_weights", i32 191, i32 833}
!1048 = distinct !{!1048, !492}
!1049 = !{!"function.c:single_succ_p"}
!1050 = !{!848, !420, i64 8}
!1051 = !{!"function.c:single_succ_edge"}
!1052 = !{!"function.c:ei_safe_edge"}
!1053 = !{!"branch_weights", i32 58, i32 39}
!1054 = !{!"function.c:emit_return_into_block"}
!1055 = !{!"function.c:match_asm_constraints_1"}
!1056 = distinct !{!1056, !492}
!1057 = distinct !{!1057, !492}
!1058 = distinct !{!1058, !492}
!1059 = distinct !{!1059, !492}
!1060 = distinct !{!1060, !492}
