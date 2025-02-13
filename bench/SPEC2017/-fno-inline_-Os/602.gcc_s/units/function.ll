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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
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
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x ptr] }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.assign_parm_data_all = type { %struct.ix86_args, %struct.args_size, ptr, ptr, ptr, ptr, i64, i64, i32 }
%struct.args_size = type { i64, ptr }
%struct.assign_parm_data_one = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.locate_and_pad_arg_data, i32, i8 }
%struct.locate_and_pad_arg_data = type { %struct.args_size, %struct.args_size, %struct.args_size, %struct.args_size, i32, i32 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.types_used_by_vars_entry = type { ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@current_function_is_leaf = dso_local local_unnamed_addr global i32 0, align 4
@current_function_sp_is_unchanging = dso_local local_unnamed_addr global i32 0, align 4
@current_function_uses_only_leaf_regs = dso_local local_unnamed_addr global i32 0, align 4
@virtuals_instantiated = dso_local local_unnamed_addr global i32 0, align 4
@init_machine_status = dso_local local_unnamed_addr global ptr null, align 8
@cfun = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_vars_hash = dso_local local_unnamed_addr global ptr null, align 8
@types_used_by_cur_var_decl = dso_local local_unnamed_addr global ptr null, align 8
@function_context_stack = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
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
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@temp_slot_address_table = internal global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"size of variable %q+D is too large\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@dynamic_offset = internal unnamed_addr global i32 0, align 4
@cfa_offset = internal unnamed_addr global i32 0, align 4
@pass_instantiate_virtual_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @instantiate_virtual_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"vregs\00", align 1
@target_flags = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"impossible constraint in %<asm%>\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_pcc_struct_return = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@flag_float_store = external local_unnamed_addr global i32, align 4
@flag_stack_check = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.6 = private unnamed_addr constant [61 x i8] c"variable %q+D might be clobbered by %<longjmp%> or %<vfork%>\00", align 1
@regstat_n_sets_and_refs = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"argument %q+D might be clobbered by %<longjmp%> or %<vfork%>\00", align 1
@next_block_index = internal global i32 2, align 4
@in_dummy_function = internal unnamed_addr global i1 false, align 1
@cfun_stack = internal global ptr null, align 8
@funcdef_no = internal global i32 0, align 4
@cse_not_expected = external local_unnamed_addr global i32, align 4
@caller_save_needed = external local_unnamed_addr global i32, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"function returns an aggregate\00", align 1
@pass_init_function = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.9, ptr null, ptr @init_function_for_compilation, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"*init_function\00", align 1
@ptr_mode = external local_unnamed_addr global i32, align 4
@profile_flag = external local_unnamed_addr global i32, align 4
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.10 = private unnamed_addr constant [22 x i8] c"unused parameter %q+D\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@htab_eq_pointer = external local_unnamed_addr global ptr, align 8
@pass_leaf_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.13, ptr null, ptr @rest_of_handle_check_leaf_regs, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"*leaf_regs\00", align 1
@pass_thread_prologue_and_epilogue = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.14, ptr null, ptr @rest_of_handle_thread_prologue_and_epilogue, ptr null, ptr null, i32 0, i32 153, i32 0, i32 0, i32 0, i32 8, i32 394243 } }, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"pro_and_epilogue\00", align 1
@prologue_locator = external local_unnamed_addr global i32, align 4
@epilogue_completed = external local_unnamed_addr global i32, align 4
@epilogue_locator = external local_unnamed_addr global i32, align 4
@pass_match_asm_constraints = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.15, ptr null, ptr @rest_of_match_asm_constraints, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"asmcons\00", align 1
@gt_ggc_r_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @initial_trampoline, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @temp_slot_address_table, i64 1, i64 8, ptr @gt_ggc_m_P23temp_slot_address_entry4htab, ptr @gt_pch_n_P23temp_slot_address_entry4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@initial_trampoline = internal global ptr null, align 8
@gt_ggc_rc_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @epilogue_insn_hash, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @prologue_insn_hash, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @epilogue_insn_hash, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @prologue_insn_hash, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_function_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @next_block_index, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @funcdef_no, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_function_context() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !507
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @allocate_struct_function(ptr noundef null, i8 noundef zeroext 0) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !507
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @function_context_stack, ptr noundef %6) #22
  tail call void @set_cfun(ptr noundef null) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !511 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4, !prof !512

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !513
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 144) #23
  store ptr %9, ptr @cfun, align 8, !tbaa !507
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, -196609
  %13 = or disjoint i32 %12, 65536
  store i32 %13, ptr %10, align 8
  tail call void @init_eh_for_function() #23
  %14 = load ptr, ptr @init_machine_status, align 8, !tbaa !507
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !514

16:                                               ; preds = %7
  %17 = tail call ptr %14() #23
  %18 = load ptr, ptr @cfun, align 8, !tbaa !507
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 10
  store ptr %17, ptr %19, align 8, !tbaa !515
  br label %20

20:                                               ; preds = %16, %7
  tail call void @ix86_call_abi_override(ptr noundef %0) #23
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %0) #22
  br i1 %3, label %59, label %21, !prof !512

21:                                               ; preds = %20
  %22 = load ptr, ptr @cfun, align 8, !tbaa !507
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !513
  %24 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 6
  store ptr %0, ptr %24, align 8, !tbaa !518
  %25 = tail call i32 @get_next_funcdef_no() #22
  %26 = load ptr, ptr @cfun, align 8, !tbaa !507
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 14
  store i32 %25, ptr %27, align 4, !tbaa !519
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %29, label %39, !prof !520

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !513
  %32 = tail call i32 @aggregate_value_p(ptr noundef %31, ptr noundef nonnull %0) #22, !range !521
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !522

34:                                               ; preds = %29
  %35 = load ptr, ptr @cfun, align 8, !tbaa !507
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 20
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 67108864
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %34, %29, %21
  %40 = icmp eq ptr %8, null
  br i1 %40, label %52, label %41, !prof !523

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !513
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45, !prof !524

45:                                               ; preds = %41
  %46 = tail call ptr @tree_last(ptr noundef nonnull %43) #23
  %47 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !507
  %50 = icmp eq ptr %48, %49
  %51 = select i1 %50, i32 65535, i32 4259839
  br label %52

52:                                               ; preds = %45, %41, %39
  %53 = phi i32 [ 65535, %41 ], [ 65535, %39 ], [ %51, %45 ]
  %54 = load ptr, ptr @cfun, align 8, !tbaa !507
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
define internal fastcc void @VEC_function_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !525 !PGOFuncName !526 {
  tail call fastcc void @VEC_function_p_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !507
  tail call fastcc void @VEC_function_p_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_cfun(ptr noundef %0) local_unnamed_addr #0 !prof !527 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !507
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4, !prof !528

4:                                                ; preds = %1
  store ptr %0, ptr @cfun, align 8, !tbaa !507
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6, !prof !529

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !518
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %8, %6 ], [ null, %4 ]
  tail call fastcc void @invoke_set_current_function_hook(ptr noundef %10) #22
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_function_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !525 !PGOFuncName !530 {
  %2 = load ptr, ptr %0, align 8, !tbaa !507
  %3 = tail call fastcc i32 @VEC_function_p_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !531

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !507
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_function_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !525 !PGOFuncName !532 {
  %3 = load i32, ptr %0, align 8, !tbaa !533
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !533
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_function_p_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !525 !PGOFuncName !535 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !531

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !536
  %6 = load i32, ptr %0, align 8, !tbaa !533
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_function_context() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr @function_context_stack, align 8
  %2 = tail call fastcc ptr @VEC_function_p_base_pop(ptr noundef %1) #22
  tail call void @set_cfun(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !518
  store ptr %4, ptr @current_function_decl, align 8, !tbaa !507
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !537
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !537
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_function_p_base_pop(ptr nocapture noundef %0) unnamed_addr #1 !prof !525 !PGOFuncName !538 {
  %2 = load i32, ptr %0, align 8, !tbaa !533
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !533
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_function_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !507
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @free_after_parsing(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 !prof !539 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  store ptr null, ptr %2, align 8, !tbaa !540
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_after_compilation(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !539 {
  store ptr null, ptr @prologue_insn_hash, align 8, !tbaa !507
  store ptr null, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !541
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !551

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) @x_rtl, i8 0, i64 488, i1 false)
  %6 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  store ptr null, ptr %6, align 8, !tbaa !515
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr @regno_reg_rtx, align 8, !tbaa !507
  tail call void @insn_locators_free() #23
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @insn_locators_free() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @get_frame_size() local_unnamed_addr #8 !prof !552 {
  %1 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %2 = sub nsw i64 0, %1
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @frame_offset_overflow(i64 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !554 {
  %3 = sub nsw i64 0, %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !513
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = shl nuw i64 1, %8
  %10 = add i64 %9, -256
  %11 = icmp ult i64 %10, %3
  br i1 %11, label %12, label %15, !prof !555

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !513
  tail call void (i32, ptr, ...) @error_at(i32 noundef %14, ptr noundef nonnull @.str) #23
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi i8 [ 1, %12 ], [ 0, %2 ]
  ret i8 %16
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !556 {
  switch i32 %2, label %21 [
    i32 0, label %8
    i32 -1, label %11
    i32 -2, label %5
  ], !prof !557

5:                                                ; preds = %4
  %6 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %7 = sub nsw i64 %6, %1
  store i64 %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  br label %31

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef null, i32 noundef %0) #22
  %10 = lshr i32 %9, 3
  br label %23

11:                                               ; preds = %4
  %12 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !537
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i64 4294967280, i64 4294967264
  %16 = select i1 %14, i32 16, i32 32
  %17 = zext nneg i32 %16 to i64
  %18 = add i64 %1, 4294967295
  %19 = add i64 %18, %17
  %20 = and i64 %19, %15
  br label %23

21:                                               ; preds = %4
  %22 = sdiv i32 %2, 8
  br label %23

23:                                               ; preds = %11, %21, %8
  %24 = phi i32 [ %10, %8 ], [ %16, %11 ], [ %22, %21 ]
  %25 = phi i64 [ %1, %8 ], [ %20, %11 ], [ %1, %21 ]
  %26 = shl i32 %24, 3
  %27 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %28 = sub nsw i64 %27, %25
  store i64 %28, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %29 = icmp ugt i32 %26, -2147483648
  br i1 %29, label %30, label %31, !prof !558

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %5, %30, %23
  %32 = phi i64 [ %25, %30 ], [ %25, %23 ], [ %1, %5 ]
  %33 = phi i32 [ -2147483648, %30 ], [ %26, %23 ], [ 8, %5 ]
  %34 = phi i32 [ 268435456, %30 ], [ %24, %23 ], [ 1, %5 ]
  %35 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %36 = icmp ult i32 %35, %33
  br i1 %36, label %37, label %60, !prof !560

37:                                               ; preds = %31
  %38 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !561
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41, !prof !562

40:                                               ; preds = %37
  store i32 %33, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  br label %60

41:                                               ; preds = %37
  %42 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !563
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 344, ptr noundef nonnull @.str.2) #23
  br label %45

45:                                               ; preds = %41, %44
  %46 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !564
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = icmp ne i8 %3, 0
  %50 = icmp eq i64 %32, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %54 = tail call i32 @get_mode_alignment(i32 noundef %0) #23
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @.str.2) #23
  br label %57

57:                                               ; preds = %48, %52, %56
  %58 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %59 = lshr i32 %58, 3
  br label %60

60:                                               ; preds = %40, %57, %45, %31
  %61 = phi i32 [ %33, %45 ], [ %58, %57 ], [ %33, %40 ], [ %33, %31 ]
  %62 = phi i32 [ %34, %45 ], [ %59, %57 ], [ %34, %40 ], [ %34, %31 ]
  %63 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !565
  %64 = icmp ult i32 %63, %61
  br i1 %64, label %65, label %66, !prof !566

65:                                               ; preds = %60
  store i32 %61, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !565
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !567
  %68 = icmp ult i32 %67, %61
  br i1 %68, label %69, label %70, !prof !568

69:                                               ; preds = %66
  store i32 %61, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !567
  br label %70

70:                                               ; preds = %66, %69
  %71 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %72 = zext i32 %62 to i64
  %73 = sub nsw i64 0, %72
  %74 = and i64 %71, %73
  store i64 %74, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %75 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !537
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8
  %78 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %79 = select i1 %76, ptr %77, ptr %78
  %80 = tail call i64 @trunc_int_for_mode(i64 noundef %74, i32 noundef 16) #23
  %81 = tail call ptr @plus_constant(ptr noundef %79, i64 noundef %80) #23
  %82 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %81) #23
  tail call void @set_mem_align(ptr noundef %82, i32 noundef %61) #23
  %83 = load i32, ptr %82, align 8
  %84 = or i32 %83, 33554432
  store i32 %84, ptr %82, align 8
  %85 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  %86 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef nonnull %82, ptr noundef %85) #23
  store ptr %86, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  %87 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %89 = tail call zeroext i8 @frame_offset_overflow(i64 noundef %87, ptr noundef %88) #22, !range !570
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91, !prof !571

91:                                               ; preds = %70
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  br label %92

92:                                               ; preds = %91, %70
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_stack_local_alignment(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !572 !PGOFuncName !573 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %9, !prof !574

4:                                                ; preds = %2
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !537
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
  br i1 %13, label %14, label %17, !prof !575

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !576
  %16 = tail call ptr %15(i32 noundef %1, i32 noundef 0) #23
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %0, %11 ], [ %16, %14 ]
  %19 = tail call i32 @ix86_local_alignment(ptr noundef %18, i32 noundef %1, i32 noundef %12) #23
  ret i32 %19
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ix86_local_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_local(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !584 {
  %4 = tail call ptr @assign_stack_local_1(i32 noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext 0) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !585 {
  %5 = icmp eq i64 %1, -1
  br i1 %5, label %6, label %7, !prof !586

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 703, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %4, %6
  %8 = icmp slt i32 %2, 2
  br i1 %8, label %10, label %9, !prof !587

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 706, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %7, %9
  %11 = tail call fastcc i32 @get_stack_local_alignment(ptr noundef %3, i32 noundef %0) #22
  %12 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !537
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %112, label %17, !prof !588

17:                                               ; preds = %10, %59
  %18 = phi ptr [ %61, %59 ], [ %14, %10 ]
  %19 = phi ptr [ %60, %59 ], [ null, %10 ]
  %20 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !589
  %22 = icmp ult i32 %21, %11
  br i1 %22, label %59, label %23, !prof !591

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !592
  %26 = icmp slt i64 %25, %1
  br i1 %26, label %59, label %27, !prof !591

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !593
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %59, !prof !594

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.temp_slot, ptr %18, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !595
  %37 = tail call i32 @objects_must_conflict_p(ptr noundef %36, ptr noundef %3) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39, !prof !591

39:                                               ; preds = %34
  %40 = icmp eq ptr %19, null
  br i1 %40, label %53, label %41, !prof !594

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !592
  %44 = load i64, ptr %24, align 8, !tbaa !592
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = icmp eq i64 %43, %44
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.temp_slot, ptr %19, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !589
  %51 = load i32, ptr %20, align 8, !tbaa !589
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %41, %39
  %54 = load i32, ptr %20, align 8, !tbaa !589
  %55 = icmp eq i32 %54, %11
  br i1 %55, label %56, label %59, !prof !594

56:                                               ; preds = %53
  %57 = load i64, ptr %24, align 8, !tbaa !592
  %58 = icmp eq i64 %57, %1
  br i1 %58, label %111, label %59, !prof !596

59:                                               ; preds = %53, %56, %17, %23, %27, %34, %46, %48
  %60 = phi ptr [ %19, %48 ], [ %19, %46 ], [ %19, %34 ], [ %19, %27 ], [ %19, %23 ], [ %19, %17 ], [ %18, %56 ], [ %18, %53 ]
  %61 = load ptr, ptr %18, align 8, !tbaa !507
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %17, !prof !597, !llvm.loop !598

63:                                               ; preds = %59
  %64 = icmp eq ptr %60, null
  br i1 %64, label %112, label %65, !prof !600

65:                                               ; preds = %63
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %60, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %66 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !593
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 16711680
  %70 = icmp eq i32 %69, 65536
  br i1 %70, label %71, label %141, !prof !601

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !589
  %74 = lshr i32 %73, 3
  %75 = zext nneg i32 %74 to i64
  %76 = add i64 %1, -1
  %77 = add i64 %76, %75
  %78 = sub nsw i32 0, %74
  %79 = sext i32 %78 to i64
  %80 = and i64 %77, %79
  %81 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !592
  %83 = sub nsw i64 %82, %80
  %84 = icmp slt i64 %83, %75
  br i1 %84, label %141, label %85, !prof !601

85:                                               ; preds = %71
  %86 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #23
  %87 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 7
  store i8 0, ptr %87, align 1, !tbaa !602
  %88 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 6
  store i8 0, ptr %88, align 4, !tbaa !603
  %89 = load i64, ptr %81, align 8, !tbaa !592
  %90 = sub nsw i64 %89, %80
  %91 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 3
  store i64 %90, ptr %91, align 8, !tbaa !592
  %92 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 10
  %93 = load i64, ptr %92, align 8, !tbaa !604
  %94 = add nsw i64 %93, %80
  %95 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 10
  store i64 %94, ptr %95, align 8, !tbaa !604
  %96 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 11
  %97 = load i64, ptr %96, align 8, !tbaa !605
  %98 = sub nsw i64 %97, %80
  %99 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 11
  store i64 %98, ptr %99, align 8, !tbaa !605
  %100 = load ptr, ptr %66, align 8, !tbaa !593
  %101 = tail call ptr @adjust_address_1(ptr noundef %100, i32 noundef 1, i64 noundef %80, i32 noundef 0, i32 noundef 1) #23
  %102 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !593
  %103 = load i32, ptr %72, align 8, !tbaa !589
  %104 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 5
  store i32 %103, ptr %104, align 8, !tbaa !589
  %105 = getelementptr inbounds %struct.temp_slot, ptr %60, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !595
  %107 = getelementptr inbounds %struct.temp_slot, ptr %86, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !595
  tail call fastcc void @insert_slot_to_list(ptr noundef %86, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %108 = load ptr, ptr %102, align 8, !tbaa !593
  %109 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  %110 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %108, ptr noundef %109) #23
  store ptr %110, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  store i64 %80, ptr %81, align 8, !tbaa !592
  store i64 %80, ptr %96, align 8, !tbaa !605
  br label %141

111:                                              ; preds = %56
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %18, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %141

112:                                              ; preds = %63, %10
  %113 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %114 = tail call ptr @ggc_alloc_stat(i64 noundef 72) #23
  %115 = icmp eq i32 %0, 1
  br i1 %115, label %116, label %131, !prof !606

116:                                              ; preds = %112
  %117 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !537
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 128, i32 256
  %121 = icmp eq i32 %11, %120
  br i1 %121, label %123, label %122, !prof !601

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
  store ptr %133, ptr %134, align 8, !tbaa !593
  %135 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 5
  store i32 %11, ptr %135, align 8, !tbaa !589
  %136 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !553
  %137 = sub nsw i64 %113, %136
  %138 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 3
  store i64 %137, ptr %138, align 8, !tbaa !592
  %139 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 10
  store i64 %136, ptr %139, align 8, !tbaa !604
  %140 = getelementptr inbounds %struct.temp_slot, ptr %114, i64 0, i32 11
  store i64 %137, ptr %140, align 8, !tbaa !605
  br label %141

141:                                              ; preds = %71, %85, %65, %111, %131
  %142 = phi ptr [ %114, %131 ], [ %18, %111 ], [ %60, %65 ], [ %60, %85 ], [ %60, %71 ]
  %143 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 6
  store i8 1, ptr %143, align 4, !tbaa !603
  %144 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 7
  store i8 0, ptr %144, align 1, !tbaa !602
  %145 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 4
  store ptr %3, ptr %145, align 8, !tbaa !595
  %146 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %147 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 8
  store i32 %146, ptr %147, align 8, !tbaa !608
  %148 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 9
  store i32 %2, ptr %148, align 4, !tbaa !609
  %149 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %146) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef nonnull %142, ptr noundef %149) #22
  %150 = getelementptr inbounds %struct.temp_slot, ptr %142, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !593
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !513
  tail call fastcc void @insert_temp_slot_address(ptr noundef %153, ptr noundef nonnull %142) #22
  %154 = load ptr, ptr %150, align 8, !tbaa !593
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !513
  %157 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %156) #23
  %158 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  %159 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %157, ptr noundef %158) #23
  store ptr %159, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !569
  %160 = icmp eq ptr %3, null
  br i1 %160, label %178, label %161, !prof !586

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
  ], !prof !610

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
declare i32 @objects_must_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cut_slot_from_list(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !prof !611 !PGOFuncName !612 {
  %3 = load ptr, ptr %0, align 8, !tbaa !613
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !614
  br i1 %4, label %9, label %7, !prof !615

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.temp_slot, ptr %3, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !614
  br label %9

9:                                                ; preds = %2, %7
  %10 = icmp eq ptr %6, null
  %11 = select i1 %10, ptr %1, ptr %6, !prof !615
  store ptr %3, ptr %11, align 8, !tbaa !507
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_slot_to_list(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !616 !PGOFuncName !617 {
  %3 = load ptr, ptr %1, align 8, !tbaa !507
  store ptr %3, ptr %0, align 8, !tbaa !613
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !618

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.temp_slot, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !614
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !614
  store ptr %0, ptr %1, align 8, !tbaa !507
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @temp_slots_at_level(i32 noundef %0) unnamed_addr #0 !prof !619 !PGOFuncName !620 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef %2) #22
  %4 = icmp sgt i32 %3, %0
  br i1 %4, label %8, label %5, !prof !621

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
define internal fastcc void @insert_temp_slot_address(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !585 !PGOFuncName !622 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #23
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !623
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !625
  %6 = tail call fastcc i32 @temp_slot_address_compute_hash(ptr noundef %3) #22
  store i32 %6, ptr %3, align 8, !tbaa !626
  %7 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !507
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %6, i32 noundef 1) #23
  store ptr %3, ptr %8, align 8, !tbaa !507
  ret void
}

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !627 !PGOFuncName !628 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !629

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !630
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !632 !PGOFuncName !633 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef %2) #22
  tail call fastcc void @VEC_temp_slot_p_gc_safe_grow(i32 noundef %0) #22
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507
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
define internal fastcc ptr @VEC_temp_slot_p_base_address(ptr noundef readnone %0) unnamed_addr #10 !prof !634 !PGOFuncName !635 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !636
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !632 !PGOFuncName !637 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !638

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !630
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_temp_slot_p_gc_reserve_exact(i32 noundef %8) #22
  %9 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507, !nonnull !639, !noundef !639
  store i32 %0, ptr %9, align 8, !tbaa !630
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_temp_slot_p_gc_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !632 !PGOFuncName !640 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507
  %3 = tail call fastcc i32 @VEC_temp_slot_p_base_space(ptr noundef %2, i32 noundef %0) #22, !range !521
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !641

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %2, i32 noundef %0) #23
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8, !tbaa !507
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_temp_slot_p_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !632 !PGOFuncName !642 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !638

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !643
  %7 = load i32, ptr %0, align 8, !tbaa !630
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
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @temp_slot_address_compute_hash(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !644 !PGOFuncName !645 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !tbaa !537
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !623
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = call i32 @hash_rtx(ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @assign_stack_temp(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !506 {
  %4 = tail call ptr @assign_stack_temp_for_type(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef null) #22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @assign_temp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !646 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !537
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %15, !prof !647

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  %14 = load i64, ptr %13, align 8
  br label %15

15:                                               ; preds = %4, %11
  %16 = phi i64 [ %14, %11 ], [ %6, %4 ]
  %17 = phi ptr [ %13, %11 ], [ %0, %4 ]
  %18 = phi ptr [ %0, %11 ], [ null, %4 ]
  %19 = and i64 %16, 65535
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %24, !prof !647

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
  store i32 %34, ptr %5, align 4, !tbaa !537
  %35 = icmp eq i32 %31, 1
  %36 = icmp ne i32 %2, 0
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %56, !prof !648

38:                                               ; preds = %29
  %39 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %17) #23
  switch i64 %39, label %40 [
    i64 0, label %53
    i64 -1, label %41
  ], !prof !649

40:                                               ; preds = %38
  br label %53

41:                                               ; preds = %38
  %42 = tail call i64 @max_int_size_in_bytes(ptr noundef nonnull %17) #23
  %43 = icmp ne ptr %18, null
  %44 = icmp eq i64 %42, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %53, !prof !650

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !513
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
  br i1 %57, label %58, label %60, !prof !651

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
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @update_temp_slot_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !652 {
  %3 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %1) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %62, !prof !653

5:                                                ; preds = %2, %36
  %6 = phi ptr [ %39, %36 ], [ %1, %2 ]
  %7 = phi ptr [ %40, %36 ], [ %0, %2 ]
  br label %8

8:                                                ; preds = %5, %19
  %9 = phi ptr [ %7, %5 ], [ %23, %19 ]
  %10 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %61, !prof !654

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 49
  br i1 %15, label %16, label %62, !prof !655

16:                                               ; preds = %12
  %17 = load i32, ptr %6, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %62 [
    i16 37, label %19
    i16 49, label %26
  ], !prof !656

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  tail call void @update_temp_slot_address(ptr noundef %21, ptr noundef nonnull %6) #22
  %22 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !513
  %24 = tail call i32 @rtx_equal_p(ptr noundef %23, ptr noundef nonnull %6) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %8, label %62, !prof !657

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !513
  %29 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = tail call i32 @rtx_equal_p(ptr noundef %28, ptr noundef %30) #23
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %32, label %43, label %34, !prof !658

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

36:                                               ; preds = %56, %50, %34, %48
  %37 = phi ptr [ %27, %48 ], [ %33, %34 ], [ %33, %50 ], [ %27, %56 ]
  %38 = phi ptr [ %49, %48 ], [ %35, %34 ], [ %29, %50 ], [ %29, %56 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !513
  %40 = load ptr, ptr %37, align 8, !tbaa !513
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %39) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %5, label %62, !prof !659

43:                                               ; preds = %26
  %44 = load ptr, ptr %33, align 8, !tbaa !513
  %45 = load ptr, ptr %29, align 8, !tbaa !513
  %46 = tail call i32 @rtx_equal_p(ptr noundef %44, ptr noundef %45) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !660

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

50:                                               ; preds = %43
  %51 = load ptr, ptr %27, align 8, !tbaa !513
  %52 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !513
  %54 = tail call i32 @rtx_equal_p(ptr noundef %51, ptr noundef %53) #23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %36, !prof !661

56:                                               ; preds = %50
  %57 = load ptr, ptr %33, align 8, !tbaa !513
  %58 = load ptr, ptr %52, align 8, !tbaa !513
  %59 = tail call i32 @rtx_equal_p(ptr noundef %57, ptr noundef %58) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %36, !prof !662

61:                                               ; preds = %8
  tail call fastcc void @insert_temp_slot_address(ptr noundef %6, ptr noundef nonnull %10) #22
  br label %62

62:                                               ; preds = %36, %56, %19, %12, %16, %2, %61
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_temp_slot_from_address(ptr noundef %0) unnamed_addr #0 !prof !663 !PGOFuncName !664 {
  %2 = alloca %struct.temp_slot_address_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !623
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %2, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !625
  %5 = call fastcc i32 @temp_slot_address_compute_hash(ptr noundef nonnull %2) #22
  store i32 %5, ptr %2, align 8, !tbaa !626
  %6 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !507
  %7 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %5) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !665

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !625
  br label %85

12:                                               ; preds = %1
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 49
  br i1 %15, label %16, label %27, !prof !666

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !513
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %27, !prof !667

22:                                               ; preds = %16
  %23 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %18) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %85, !prof !668

25:                                               ; preds = %22
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %25, %16, %12
  %28 = phi i32 [ %26, %25 ], [ %13, %16 ], [ %13, %12 ]
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 49
  br i1 %30, label %31, label %42, !prof !666

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !513
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %42, !prof !669

37:                                               ; preds = %31
  %38 = call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %33) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %85, !prof !670

40:                                               ; preds = %37
  %41 = load i32, ptr %0, align 8
  br label %42

42:                                               ; preds = %40, %27, %31
  %43 = phi i32 [ %41, %40 ], [ %28, %27 ], [ %28, %31 ]
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %85, !prof !666

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !507
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %85, !prof !671

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !513
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 30
  br i1 %56, label %57, label %85, !prof !672

57:                                               ; preds = %51
  %58 = call fastcc i32 @max_slot_level() #22
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %85, label %60, !prof !673

60:                                               ; preds = %57, %82
  %61 = phi i32 [ %83, %82 ], [ %58, %57 ]
  %62 = call fastcc ptr @temp_slots_at_level(i32 noundef %61) #22
  %63 = load ptr, ptr %62, align 8, !tbaa !507
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65, !prof !674

65:                                               ; preds = %60
  %66 = load ptr, ptr %52, align 8, !tbaa !513
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !513
  br label %69

69:                                               ; preds = %65, %79
  %70 = phi ptr [ %63, %65 ], [ %80, %79 ]
  %71 = getelementptr inbounds %struct.temp_slot, ptr %70, i64 0, i32 10
  %72 = load i64, ptr %71, align 8, !tbaa !604
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.temp_slot, ptr %70, i64 0, i32 11
  %76 = load i64, ptr %75, align 8, !tbaa !605
  %77 = add nsw i64 %76, %72
  %78 = icmp slt i64 %68, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %69, %74
  %80 = load ptr, ptr %70, align 8, !tbaa !507
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %69, !prof !675, !llvm.loop !676

82:                                               ; preds = %79, %60
  %83 = add nsw i32 %61, -1
  %84 = icmp slt i32 %61, 1
  br i1 %84, label %85, label %60, !prof !677, !llvm.loop !678

85:                                               ; preds = %82, %74, %42, %46, %51, %57, %37, %22, %9
  %86 = phi ptr [ %11, %9 ], [ %23, %22 ], [ %38, %37 ], [ null, %57 ], [ null, %51 ], [ null, %46 ], [ null, %42 ], [ %70, %74 ], [ null, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  ret ptr %86
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @max_slot_level() unnamed_addr #11 !prof !679 !PGOFuncName !680 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3, !prof !681

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @VEC_temp_slot_p_base_length(ptr noundef nonnull %1) #22
  %5 = add i32 %4, -1
  br label %6

6:                                                ; preds = %0, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %0 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_temp_addr_taken(ptr noundef readonly %0) local_unnamed_addr #0 !prof !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3, !prof !586

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %21, !prof !587

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !513
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !537
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %21, label %16, !prof !586

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %9) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !586

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.temp_slot, ptr %17, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !602
  br label %21

21:                                               ; preds = %16, %19, %3, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @preserve_temp_slots(ptr noundef %0) local_unnamed_addr #0 !prof !682 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %19, !prof !683

3:                                                ; preds = %1
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %5 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %4) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !507
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8, !prof !684

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %10, %17 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !613
  %11 = getelementptr inbounds %struct.temp_slot, ptr %9, i64 0, i32 7
  %12 = load i8, ptr %11, align 1, !tbaa !602
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !685

14:                                               ; preds = %8
  %15 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %16 = add nsw i32 %15, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %9, i32 noundef %16) #22
  br label %17

17:                                               ; preds = %8, %14
  %18 = icmp eq ptr %10, null
  br i1 %18, label %103, label %8, !prof !686, !llvm.loop !687

19:                                               ; preds = %1
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 1073807359
  %22 = icmp eq i32 %21, 1073741861
  br i1 %22, label %23, label %28, !prof !688

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %60, !prof !689

26:                                               ; preds = %23
  %27 = load i32, ptr %0, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ %20, %19 ]
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %41, !prof !690

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !513
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !537
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %57, !prof !691

41:                                               ; preds = %32, %28
  %42 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %43 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %42) #22
  %44 = load ptr, ptr %43, align 8, !tbaa !507
  %45 = icmp eq ptr %44, null
  br i1 %45, label %103, label %46, !prof !692

46:                                               ; preds = %41, %55
  %47 = phi ptr [ %48, %55 ], [ %44, %41 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !613
  %49 = getelementptr inbounds %struct.temp_slot, ptr %47, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !tbaa !602
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %54 = add nsw i32 %53, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %47, i32 noundef %54) #22
  br label %55

55:                                               ; preds = %46, %52
  %56 = icmp eq ptr %48, null
  br i1 %56, label %103, label %46, !prof !675, !llvm.loop !693

57:                                               ; preds = %32
  %58 = tail call fastcc ptr @find_temp_slot_from_address(ptr noundef nonnull %34) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %87, label %60, !prof !694

60:                                               ; preds = %23, %57
  %61 = phi ptr [ %58, %57 ], [ %24, %23 ]
  %62 = getelementptr inbounds %struct.temp_slot, ptr %61, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !608
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %63) #22
  %68 = load ptr, ptr %67, align 8, !tbaa !507
  %69 = icmp eq ptr %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %66, %81
  %71 = phi ptr [ %72, %81 ], [ %68, %66 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !613
  %73 = icmp eq ptr %61, %71
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.temp_slot, ptr %71, i64 0, i32 7
  %76 = load i8, ptr %75, align 1, !tbaa !602
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %80 = add nsw i32 %79, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %71, i32 noundef %80) #22
  br label %81

81:                                               ; preds = %70, %74, %78
  %82 = icmp eq ptr %72, null
  br i1 %82, label %83, label %70, !llvm.loop !695

83:                                               ; preds = %81, %66
  %84 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %85 = add nsw i32 %84, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %61, i32 noundef %85) #22
  %86 = getelementptr inbounds %struct.temp_slot, ptr %61, i64 0, i32 7
  store i8 0, ptr %86, align 1, !tbaa !602
  br label %103

87:                                               ; preds = %57
  %88 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %89 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %88) #22
  %90 = load ptr, ptr %89, align 8, !tbaa !507
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92, !prof !696

92:                                               ; preds = %87, %101
  %93 = phi ptr [ %94, %101 ], [ %90, %87 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !613
  %95 = getelementptr inbounds %struct.temp_slot, ptr %93, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !609
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %100 = add nsw i32 %99, -1
  tail call fastcc void @move_slot_to_level(ptr noundef nonnull %93, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %92, %98
  %102 = icmp eq ptr %94, null
  br i1 %102, label %103, label %92, !prof !675, !llvm.loop !697

103:                                              ; preds = %101, %55, %17, %87, %41, %3, %60, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_slot_to_level(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !698 !PGOFuncName !699 {
  %3 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !608
  %5 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %4) #22
  tail call fastcc void @cut_slot_from_list(ptr noundef %0, ptr noundef %5) #22
  %6 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef %0, ptr noundef %6) #22
  store i32 %1, ptr %3, align 8, !tbaa !608
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_temp_slots() local_unnamed_addr #0 !prof !700 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %2 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !507
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !701

5:                                                ; preds = %0, %16
  %6 = phi i1 [ false, %16 ], [ true, %0 ]
  %7 = phi ptr [ %10, %16 ], [ %3, %0 ]
  br label %8

8:                                                ; preds = %5, %14
  %9 = phi ptr [ %10, %14 ], [ %7, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !613
  %11 = getelementptr inbounds %struct.temp_slot, ptr %9, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !609
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !587

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, null
  br i1 %15, label %18, label %8, !prof !702, !llvm.loop !703

16:                                               ; preds = %8
  tail call fastcc void @make_slot_available(ptr noundef nonnull %9) #22
  %17 = icmp eq ptr %10, null
  br i1 %17, label %19, label %5, !prof !702, !llvm.loop !703

18:                                               ; preds = %14
  br i1 %6, label %20, label %19, !prof !704

19:                                               ; preds = %16, %18
  tail call fastcc void @remove_unused_temp_slot_addresses() #22
  tail call fastcc void @combine_temp_slots() #22
  br label %20

20:                                               ; preds = %0, %19, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_slot_available(ptr noundef %0) unnamed_addr #0 !prof !585 !PGOFuncName !705 {
  %2 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !608
  %4 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %3) #22
  tail call fastcc void @cut_slot_from_list(ptr noundef %0, ptr noundef %4) #22
  tail call fastcc void @insert_slot_to_list(ptr noundef %0, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  %5 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 6
  store i8 0, ptr %5, align 4, !tbaa !603
  store i32 -1, ptr %2, align 8, !tbaa !608
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_unused_temp_slot_addresses() unnamed_addr #0 !prof !585 !PGOFuncName !706 {
  %1 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !507
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @remove_unused_temp_slot_addresses_1, ptr noundef null) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @combine_temp_slots() unnamed_addr #12 !prof !585 !PGOFuncName !707 {
  %1 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !537
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %78, !prof !586

3:                                                ; preds = %0
  %4 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !537
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20), align 8, !tbaa !507
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
  %14 = load ptr, ptr %17, align 8, !tbaa !507
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !llvm.loop !708

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
  %27 = load ptr, ptr %26, align 8, !tbaa !613
  %28 = getelementptr inbounds %struct.temp_slot, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !593
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
  %41 = load ptr, ptr %40, align 8, !tbaa !613
  %42 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !593
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 16711680
  %46 = icmp eq i32 %45, 65536
  br i1 %46, label %47, label %74

47:                                               ; preds = %39
  %48 = load i64, ptr %36, align 8, !tbaa !604
  %49 = load i64, ptr %37, align 8, !tbaa !605
  %50 = add nsw i64 %49, %48
  %51 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 10
  %52 = load i64, ptr %51, align 8, !tbaa !604
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %56 = load i64, ptr %55, align 8, !tbaa !605
  %57 = add nsw i64 %56, %52
  %58 = icmp eq i64 %57, %48
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %61 = load i64, ptr %38, align 8, !tbaa !592
  %62 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !592
  %64 = add nsw i64 %63, %61
  store i64 %64, ptr %62, align 8, !tbaa !592
  %65 = add nsw i64 %56, %49
  store i64 %65, ptr %60, align 8, !tbaa !605
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %26, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %76

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !592
  %69 = load i64, ptr %38, align 8, !tbaa !592
  %70 = add nsw i64 %69, %68
  store i64 %70, ptr %38, align 8, !tbaa !592
  %71 = getelementptr inbounds %struct.temp_slot, ptr %40, i64 0, i32 11
  %72 = load i64, ptr %71, align 8, !tbaa !605
  %73 = add nsw i64 %72, %49
  store i64 %73, ptr %37, align 8, !tbaa !605
  tail call fastcc void @cut_slot_from_list(ptr noundef nonnull %40, ptr noundef nonnull getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 20)) #22
  br label %74

74:                                               ; preds = %54, %66, %39
  %75 = icmp eq ptr %41, null
  br i1 %75, label %76, label %39

76:                                               ; preds = %74, %59, %25
  %77 = icmp eq ptr %27, null
  br i1 %77, label %78, label %25, !llvm.loop !709

78:                                               ; preds = %16, %33, %76, %7, %23, %0
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @remove_unused_temp_slot_addresses_1(ptr nocapture noundef %0, ptr nocapture readnone %1) #13 !prof !585 !PGOFuncName !710 {
  %3 = load ptr, ptr %0, align 8, !tbaa !507
  %4 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !625
  %6 = getelementptr inbounds %struct.temp_slot, ptr %5, i64 0, i32 6
  %7 = load i8, ptr %6, align 4, !tbaa !603
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !587

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !507
  br label %10

10:                                               ; preds = %9, %2
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @push_temp_slots() local_unnamed_addr #14 !prof !711 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_temp_slots() local_unnamed_addr #0 !prof !711 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %2 = tail call fastcc ptr @temp_slots_at_level(i32 noundef %1) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !507
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !712

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !613
  tail call fastcc void @make_slot_available(ptr noundef nonnull %6) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !675, !llvm.loop !713

9:                                                ; preds = %5
  tail call fastcc void @remove_unused_temp_slot_addresses() #22
  tail call fastcc void @combine_temp_slots() #22
  br label %10

10:                                               ; preds = %0, %9
  %11 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 21), align 8, !tbaa !607
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_temp_slots() local_unnamed_addr #0 !prof !714 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 19), i8 0, i64 20, i1 false)
  %1 = load ptr, ptr @temp_slot_address_table, align 8, !tbaa !507
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !715

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 32, ptr noundef nonnull @temp_slot_address_hash, ptr noundef nonnull @temp_slot_address_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %4, ptr @temp_slot_address_table, align 8, !tbaa !507
  br label %6

5:                                                ; preds = %0
  tail call void @htab_empty(ptr noundef nonnull %1) #23
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @temp_slot_address_hash(ptr nocapture noundef readonly %0) #3 !prof !716 !PGOFuncName !717 {
  %2 = load i32, ptr %0, align 8, !tbaa !626
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @temp_slot_address_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !718 !PGOFuncName !719 {
  %3 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !623
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !623
  %7 = tail call i32 @exp_equiv_p(ptr noundef %4, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1) #23
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #4

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #4

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @instantiate_decl_rtl(ptr noundef %0) local_unnamed_addr #0 !prof !720 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3, !prof !721

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %11, %7 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %30 [
    i16 41, label %7
    i16 43, label %13
  ], !prof !722

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !513
  tail call void @instantiate_decl_rtl(ptr noundef %9) #22
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !513
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %3, !prof !723

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !513
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !537
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %30, label %22, !prof !724

22:                                               ; preds = %13
  %23 = icmp eq i32 %17, 37
  br i1 %23, label %24, label %28, !prof !725

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #22
  %26 = add i32 %25, -58
  %27 = icmp ult i32 %26, -5
  br i1 %27, label %30, label %28, !prof !726

28:                                               ; preds = %24, %22
  %29 = tail call i32 @for_each_rtx(ptr noundef nonnull %14, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  br label %30

30:                                               ; preds = %7, %3, %1, %13, %24, %28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !727 !PGOFuncName !728 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !513
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @instantiate_virtual_regs_in_rtx(ptr nocapture noundef %0, ptr noundef writeonly %1) #0 !prof !729 !PGOFuncName !730 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load ptr, ptr %0, align 8, !tbaa !507
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6, !prof !731

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %32 [
    i16 37, label %9
    i16 49, label %16
  ], !prof !732

9:                                                ; preds = %6
  %10 = call fastcc ptr @instantiate_new_reg(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12, !prof !733

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !734
  %14 = tail call ptr @plus_constant(ptr noundef nonnull %10, i64 noundef %13) #23
  store ptr %14, ptr %0, align 8, !tbaa !507
  %15 = icmp eq ptr %1, null
  br i1 %15, label %32, label %31, !prof !735

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !513
  %19 = call fastcc ptr @instantiate_new_reg(ptr noundef %18, ptr noundef nonnull %3) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21, !prof !736

21:                                               ; preds = %16
  %22 = load i64, ptr %3, align 8, !tbaa !734
  %23 = tail call ptr @plus_constant(ptr noundef nonnull %19, i64 noundef %22) #23
  %24 = load i32, ptr %4, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !513
  %29 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %26, ptr noundef %23, ptr noundef %28) #23
  store ptr %29, ptr %0, align 8, !tbaa !507
  %30 = icmp eq ptr %1, null
  br i1 %30, label %32, label %31, !prof !737

31:                                               ; preds = %21, %12
  store i8 1, ptr %1, align 1, !tbaa !513
  br label %32

32:                                               ; preds = %31, %16, %6, %21, %9, %12, %2
  %33 = phi i32 [ 0, %2 ], [ -1, %12 ], [ -1, %9 ], [ -1, %21 ], [ 0, %6 ], [ 0, %16 ], [ -1, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @instantiate_new_reg(ptr noundef readnone %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 !prof !738 !PGOFuncName !739 {
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !507
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %12, !prof !740

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !564
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8, !prof !741

8:                                                ; preds = %5
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !742
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30, !prof !562

11:                                               ; preds = %8, %5
  br label %30

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !507
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %30, label %15, !prof !743

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !507
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %21, !prof !744

18:                                               ; preds = %15
  %19 = load i32, ptr @dynamic_offset, align 4, !tbaa !537
  %20 = sext i32 %19 to i64
  br label %30

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !507
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %30, label %24, !prof !745

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !507
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %34, !prof !746

27:                                               ; preds = %24
  %28 = load i32, ptr @cfa_offset, align 4, !tbaa !537
  %29 = sext i32 %28 to i64
  br label %30

30:                                               ; preds = %21, %12, %8, %27, %18, %11
  %31 = phi ptr [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %11 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %18 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), %27 ], [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), %8 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), %12 ], [ getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), %21 ]
  %32 = phi i64 [ 0, %11 ], [ %20, %18 ], [ %29, %27 ], [ 0, %8 ], [ 0, %12 ], [ 0, %21 ]
  %33 = load ptr, ptr %31, align 8, !tbaa !507
  store i64 %32, ptr %1, align 8, !tbaa !734
  br label %34

34:                                               ; preds = %24, %30
  %35 = phi ptr [ %33, %30 ], [ null, %24 ]
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @instantiate_virtual_regs() #0 !prof !747 !PGOFuncName !748 {
  %1 = load i32, ptr @target_flags, align 4, !tbaa !537
  %2 = and i32 %1, 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7, !prof !749

4:                                                ; preds = %0
  %5 = tail call i32 @ix86_cfun_abi() #23
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %4, %0
  %8 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !750
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = tail call i32 @ix86_function_type_abi(ptr noundef %15) #23
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %20 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %19) #23
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ]
  %23 = add nsw i32 %22, %8
  br label %24

24:                                               ; preds = %4, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %4 ]
  store i32 %25, ptr @dynamic_offset, align 4, !tbaa !537
  %26 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !751
  store i32 %26, ptr @cfa_offset, align 4, !tbaa !537
  tail call void @init_recog() #23
  %27 = tail call ptr @get_insns() #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29, !prof !752

29:                                               ; preds = %24, %58
  %30 = phi ptr [ %60, %58 ], [ %27, %24 ]
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %58, !prof !753

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !513
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i16
  switch i16 %39, label %40 [
    i16 24, label %58
    i16 25, label %58
    i16 20, label %58
    i16 21, label %58
    i16 16, label %58
  ], !prof !754

40:                                               ; preds = %35
  %41 = icmp eq i32 %32, 7
  br i1 %41, label %42, label %44, !prof !755

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
  br i1 %48, label %49, label %58, !prof !756

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 1
  %51 = tail call i32 @for_each_rtx(ptr noundef nonnull %50, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  %52 = load i32, ptr %30, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %58, !prof !757

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 2
  %57 = tail call i32 @for_each_rtx(ptr noundef nonnull %56, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  br label %58

58:                                               ; preds = %29, %35, %35, %35, %35, %35, %55, %49, %45
  %59 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !513
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !prof !758, !llvm.loop !759

62:                                               ; preds = %58, %24
  %63 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  tail call fastcc void @instantiate_decls(ptr noundef %63) #22
  %64 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 99), align 8, !tbaa !760
  tail call void %64() #23
  store i32 1, ptr @virtuals_instantiated, align 4, !tbaa !537
  ret i32 0
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_virtual_regs_in_insn(ptr noundef %0) unnamed_addr #0 !prof !772 !PGOFuncName !773 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %133, !prof !774

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !513
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %18, label %15, !prof !775

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %11) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %133, label %18, !prof !694

18:                                               ; preds = %9, %15
  %19 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  %22 = call fastcc ptr @instantiate_new_reg(ptr noundef %21, ptr noundef nonnull %2) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24, !prof !776

24:                                               ; preds = %18
  tail call void @start_sequence() #23
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = tail call i32 @for_each_rtx(ptr noundef nonnull %25, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef null) #23
  %27 = load i32, ptr %22, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load ptr, ptr %25, align 8, !tbaa !513
  %31 = load i64, ptr %2, align 8, !tbaa !734
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
  %45 = load ptr, ptr %44, align 8, !tbaa !513
  %46 = call fastcc ptr @instantiate_new_reg(ptr noundef %45, ptr noundef nonnull %2) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48, !prof !777

48:                                               ; preds = %43
  %49 = load i64, ptr %2, align 8, !tbaa !734
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %75, label %51, !prof !778

51:                                               ; preds = %48
  %52 = load ptr, ptr %20, align 8, !tbaa !513
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
  %60 = load ptr, ptr %20, align 8, !tbaa !513
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #23
  %65 = load ptr, ptr %20, align 8, !tbaa !513
  %66 = tail call ptr @expand_simple_binop(i32 noundef %63, i32 noundef 49, ptr noundef nonnull %46, ptr noundef %64, ptr noundef %65, i32 noundef 1, i32 noundef 3) #23
  %67 = load ptr, ptr %20, align 8, !tbaa !513
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
  %77 = load i32, ptr %76, align 8, !tbaa !513
  %78 = load ptr, ptr %44, align 8, !tbaa !513
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 49
  %82 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %83 = icmp sgt i8 %82, 2
  %84 = select i1 %81, i1 %83, i1 false
  %85 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = icmp eq ptr %85, %86
  %88 = select i1 %84, i1 %87, i1 false
  %89 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8
  %90 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = icmp eq ptr %89, %90
  %92 = select i1 %88, i1 %91, i1 false
  br i1 %92, label %93, label %136, !prof !779

93:                                               ; preds = %75
  %94 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !507
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 30
  br i1 %97, label %98, label %136, !prof !780

98:                                               ; preds = %93
  %99 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !507
  %100 = call fastcc ptr @instantiate_new_reg(ptr noundef %99, ptr noundef nonnull %2) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %136, label %102, !prof !781

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !513
  %105 = load i64, ptr %2, align 8, !tbaa !734
  %106 = add nsw i64 %105, %104
  store i64 %106, ptr %2, align 8, !tbaa !734
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %122, !prof !782

108:                                              ; preds = %102
  %109 = load ptr, ptr %20, align 8, !tbaa !513
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
  %117 = load ptr, ptr %20, align 8, !tbaa !513
  %118 = tail call ptr @emit_move_insn(ptr noundef %117, ptr noundef nonnull %100) #23
  %119 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %120 = tail call ptr @emit_insn_before(ptr noundef %119, ptr noundef nonnull %0) #23
  %121 = tail call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

122:                                              ; preds = %113, %108, %102
  %123 = load i32, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 2), align 8, !tbaa !537
  %124 = tail call ptr @gen_int_mode(i64 noundef %106, i32 noundef %123) #23
  %125 = tail call fastcc i32 @safe_insn_predicate(i32 noundef %77, i32 noundef 1, ptr noundef nonnull %100) #22
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127, !prof !782

127:                                              ; preds = %122
  %128 = tail call fastcc i32 @safe_insn_predicate(i32 noundef %77, i32 noundef 2, ptr noundef %124) #22
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130, !prof !782

130:                                              ; preds = %127
  store ptr %100, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !507
  %131 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 1), align 8, !tbaa !507
  store ptr %100, ptr %131, align 8, !tbaa !507
  store ptr %124, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 2), align 8, !tbaa !507
  %132 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 2), align 8, !tbaa !507
  store ptr %124, ptr %132, align 8, !tbaa !507
  br label %136

133:                                              ; preds = %1, %15
  tail call void @extract_insn(ptr noundef nonnull %0) #23
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !513
  br label %136

136:                                              ; preds = %75, %93, %98, %130, %127, %122, %133
  %137 = phi i8 [ 1, %130 ], [ 0, %127 ], [ 0, %122 ], [ 0, %98 ], [ 0, %93 ], [ 0, %75 ], [ 0, %133 ]
  %138 = phi i32 [ %77, %130 ], [ %77, %127 ], [ %77, %122 ], [ %77, %98 ], [ %77, %93 ], [ %77, %75 ], [ %135, %133 ]
  %139 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !783
  %140 = icmp sgt i8 %139, 0
  br i1 %140, label %141, label %256, !prof !785

141:                                              ; preds = %136, %250
  %142 = phi i64 [ %252, %250 ], [ 0, %136 ]
  %143 = phi i8 [ %251, %250 ], [ %137, %136 ]
  %144 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !507
  %146 = load i32, ptr %145, align 8
  %147 = trunc i32 %146 to i16
  switch i16 %147, label %250 [
    i16 43, label %148
    i16 37, label %175
    i16 39, label %189
  ], !prof !786

148:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %149 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !513
  store ptr %150, ptr %3, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #24
  store i8 0, ptr %4, align 1, !tbaa !513
  %151 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @instantiate_virtual_regs_in_rtx, ptr noundef nonnull %4) #23
  %152 = load i8, ptr %4, align 1, !tbaa !513
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %174, label %154, !prof !787

154:                                              ; preds = %148
  call void @start_sequence() #23
  %155 = load ptr, ptr %3, align 8, !tbaa !507
  %156 = call ptr @replace_equiv_address(ptr noundef nonnull %145, ptr noundef %155) #23
  %157 = trunc i64 %142 to i32
  %158 = call fastcc i32 @safe_insn_predicate(i32 noundef %138, i32 noundef %157, ptr noundef %156) #22
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167, !prof !788

160:                                              ; preds = %154
  %161 = load ptr, ptr %3, align 8, !tbaa !507
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = call ptr @force_reg(i32 noundef %164, ptr noundef nonnull %161) #23
  store ptr %165, ptr %3, align 8, !tbaa !507
  %166 = call ptr @replace_equiv_address(ptr noundef %156, ptr noundef %165) #23
  br label %167

167:                                              ; preds = %160, %154
  %168 = phi ptr [ %156, %154 ], [ %166, %160 ]
  %169 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !789

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
  br i1 %177, label %250, label %178, !prof !790

178:                                              ; preds = %175
  %179 = load i64, ptr %2, align 8, !tbaa !734
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %217, label %181, !prof !791

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
  %191 = load ptr, ptr %190, align 8, !tbaa !513
  %192 = call fastcc ptr @instantiate_new_reg(ptr noundef %191, ptr noundef nonnull %2) #22
  %193 = icmp eq ptr %192, null
  br i1 %193, label %250, label %194, !prof !792

194:                                              ; preds = %189
  %195 = load i64, ptr %2, align 8, !tbaa !734
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
  %208 = load i32, ptr %207, align 4, !tbaa !537
  %209 = load i32, ptr %206, align 8
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  %212 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load i32, ptr %212, align 8, !tbaa !513
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
  br i1 %221, label %222, label %246, !prof !793

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
  %235 = load ptr, ptr %234, align 8, !tbaa !794
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
  store ptr %247, ptr %144, align 8, !tbaa !507
  %248 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %142
  %249 = load ptr, ptr %248, align 8, !tbaa !507
  store ptr %247, ptr %249, align 8, !tbaa !507
  br label %250

250:                                              ; preds = %174, %141, %189, %175, %246
  %251 = phi i8 [ %143, %141 ], [ %143, %189 ], [ 1, %246 ], [ %143, %175 ], [ %143, %174 ]
  %252 = add nuw nsw i64 %142, 1
  %253 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !783
  %254 = sext i8 %253 to i64
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %141, label %256, !prof !796, !llvm.loop !797

256:                                              ; preds = %250, %136
  %257 = phi i8 [ %137, %136 ], [ %251, %250 ]
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %279, label %259, !prof !798

259:                                              ; preds = %256
  %260 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !799
  %261 = icmp sgt i8 %260, 0
  br i1 %261, label %262, label %277, !prof !800

262:                                              ; preds = %259, %262
  %263 = phi i64 [ %273, %262 ], [ 0, %259 ]
  %264 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !513
  %266 = sext i8 %265 to i64
  %267 = and i64 %266, 4294967295
  %268 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !507
  %270 = call ptr @copy_rtx(ptr noundef %269) #23
  %271 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %263
  %272 = load ptr, ptr %271, align 8, !tbaa !507
  store ptr %270, ptr %272, align 8, !tbaa !507
  %273 = add nuw nsw i64 %263, 1
  %274 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !799
  %275 = sext i8 %274 to i64
  %276 = icmp slt i64 %273, %275
  br i1 %276, label %262, label %277, !prof !801, !llvm.loop !802

277:                                              ; preds = %262, %259
  %278 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %278, align 8, !tbaa !513
  br label %279

279:                                              ; preds = %277, %256
  %280 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !513
  %282 = call i32 @asm_noperands(ptr noundef %281) #23
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %284, label %290, !prof !755

284:                                              ; preds = %279
  %285 = load ptr, ptr %280, align 8, !tbaa !513
  %286 = call i32 @check_asm_operands(ptr noundef %285) #23
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #23
  %289 = call ptr @delete_insn(ptr noundef nonnull %0) #23
  br label %294

290:                                              ; preds = %279
  %291 = call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #22
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294, !prof !755

293:                                              ; preds = %290
  call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 1652, ptr noundef nonnull @.str.2) #23
  br label %294

294:                                              ; preds = %288, %284, %293, %290, %116, %71, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_decls(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !747 !PGOFuncName !803 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6, !prof !752

6:                                                ; preds = %1, %24
  %7 = phi ptr [ %26, %24 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !513
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !804

11:                                               ; preds = %6
  call void @make_decl_rtl(ptr noundef nonnull %7) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !513
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  call void @instantiate_decl_rtl(ptr noundef %14) #22
  %15 = getelementptr inbounds %struct.tree_parm_decl, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  call void @instantiate_decl_rtl(ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 67108864
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21, !prof !805

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %22 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %7) #23
  store ptr %22, ptr %2, align 8, !tbaa !507
  %23 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %24

24:                                               ; preds = %13, %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !513
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %6, !prof !806, !llvm.loop !807

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  call fastcc void @instantiate_decls_1(ptr noundef %30) #22
  %31 = load ptr, ptr @cfun, align 8, !tbaa !507
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !808
  store ptr null, ptr %32, align 8, !tbaa !808
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35, !prof !809

35:                                               ; preds = %28, %51
  %36 = phi ptr [ %38, %51 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !513
  %39 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !513
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %42, i64 11
  %44 = load i8, ptr %43, align 1, !tbaa !513
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46, !prof !810

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %40, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !811

50:                                               ; preds = %46
  call void @instantiate_decl_rtl(ptr noundef nonnull %48) #22
  br label %51

51:                                               ; preds = %50, %46, %35
  call void @ggc_free(ptr noundef nonnull %36) #23
  %52 = icmp eq ptr %38, null
  br i1 %52, label %53, label %35, !prof !812, !llvm.loop !813

53:                                               ; preds = %51, %28
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @safe_insn_predicate(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %18, label %5, !prof !816

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !794
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !817
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !816

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
declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @check_asm_operands(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !772 !PGOFuncName !819 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !513
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !820

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !513
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @instantiate_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 !prof !821 !PGOFuncName !822 {
  %4 = load ptr, ptr %0, align 8, !tbaa !507
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !537
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %26, label %11, !prof !823

11:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !537
  %12 = load i64, ptr %4, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !537
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %26, !prof !824

17:                                               ; preds = %11
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %13, i64 11
  %19 = load i8, ptr %18, align 1, !tbaa !513
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21, !prof !825

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !513
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !825

25:                                               ; preds = %21
  tail call void @instantiate_decl_rtl(ptr noundef nonnull %23) #22
  br label %26

26:                                               ; preds = %3, %11, %17, %21, %25
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @instantiate_decls_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !826 !PGOFuncName !827 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !828

6:                                                ; preds = %1, %31
  %7 = phi ptr [ %33, %31 ], [ %4, %1 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !513
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13, !prof !829

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !513
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !830

17:                                               ; preds = %13
  call void @instantiate_decl_rtl(ptr noundef nonnull %15) #22
  %18 = load i64, ptr %7, align 8
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = phi i64 [ %18, %17 ], [ %8, %13 ], [ %8, %6 ]
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %23, label %31, !prof !831

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28, !prof !832

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %29 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %7) #23
  store ptr %29, ptr %2, align 8, !tbaa !507
  %30 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @instantiate_expr, ptr noundef null, ptr noundef null, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %31

31:                                               ; preds = %19, %23, %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !513
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %6, !prof !833, !llvm.loop !834

35:                                               ; preds = %31, %1
  %36 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !513
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !835

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %42, %39 ], [ %37, %35 ]
  call fastcc void @instantiate_decls_1(ptr noundef nonnull %40) #22
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !513
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39, !prof !836, !llvm.loop !837

44:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @aggregate_value_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !838 {
  br label %3

3:                                                ; preds = %47, %2
  %4 = phi ptr [ %0, %2 ], [ %48, %47 ]
  %5 = phi ptr [ %1, %2 ], [ %38, %47 ]
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !537
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11, !prof !839

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ %4, %3 ]
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17, !prof !840

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %36 [
    i16 59, label %20
    i16 29, label %32
    i16 20, label %37
    i16 21, label %37
    i16 1, label %35
  ], !prof !841

20:                                               ; preds = %17
  %21 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %5) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28, !prof !842

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi ptr [ %27, %23 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !513
  br label %37

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !513
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
  ], !prof !843

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !844

47:                                               ; preds = %42
  %48 = tail call ptr @first_field(ptr noundef nonnull %15) #23
  br label %3

49:                                               ; preds = %37, %42
  %50 = load i64, ptr %4, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %57 [
    i16 34, label %52
    i16 36, label %52
  ], !prof !845

52:                                               ; preds = %49, %49
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 268435456
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %122, !prof !846

57:                                               ; preds = %49, %52
  %58 = and i64 %50, 65535
  %59 = icmp eq i64 %58, 59
  %60 = icmp ne ptr %39, null
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %71, !prof !847

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_decl_non_common, ptr %39, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !513
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66, !prof !848

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 268435456
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %122, !prof !849

71:                                               ; preds = %66, %62, %57
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 3), align 8, !tbaa !850
  %73 = tail call zeroext i8 %72(ptr noundef nonnull %15, ptr noundef %38) #23
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %122, !prof !851

75:                                               ; preds = %71
  %76 = load i64, ptr %15, align 8
  %77 = and i64 %76, 262144
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %122, !prof !852

79:                                               ; preds = %75
  %80 = load i32, ptr @flag_pcc_struct_return, align 4, !tbaa !537
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82, !prof !853

82:                                               ; preds = %79
  %83 = trunc i64 %76 to i32
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -15
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %122, label %87, !prof !854

87:                                               ; preds = %82, %79
  %88 = tail call ptr @hard_function_value(ptr noundef nonnull %15, ptr noundef null, ptr noundef %38, i32 noundef 0) #23
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %92, label %122, !prof !855

92:                                               ; preds = %87
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %88) #22
  %94 = sext i32 %93 to i64
  %95 = load i64, ptr %15, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 14
  br i1 %97, label %98, label %100, !prof !856

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
  %109 = load i8, ptr %108, align 1, !tbaa !513
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111, !prof !857

111:                                              ; preds = %105
  %112 = zext i8 %109 to i64
  br label %116

113:                                              ; preds = %116
  %114 = add nuw nsw i64 %117, 1
  %115 = icmp eq i64 %114, %112
  br i1 %115, label %122, label %116, !prof !858, !llvm.loop !859

116:                                              ; preds = %111, %113
  %117 = phi i64 [ 0, %111 ], [ %114, %113 ]
  %118 = add nsw i64 %117, %94
  %119 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !513
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %113, !prof !860

122:                                              ; preds = %37, %116, %113, %105, %82, %87, %75, %71, %66, %52
  %123 = phi i32 [ 1, %52 ], [ 1, %66 ], [ 1, %71 ], [ 1, %75 ], [ 1, %82 ], [ 0, %87 ], [ 0, %105 ], [ 1, %116 ], [ 0, %113 ], [ 0, %37 ]
  ret i32 %123
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @first_field(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @hard_function_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @use_register_for_decl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !861 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 20), align 8, !tbaa !862
  %3 = tail call zeroext i8 %2() #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %49, label %5, !prof !863

5:                                                ; preds = %1
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 327680
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %49, !prof !864

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 255
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %49, label %14, !prof !865

14:                                               ; preds = %9
  %15 = load i32, ptr @flag_float_store, align 4, !tbaa !537
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17, !prof !866

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !513
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %28 [
    i16 9, label %49
    i16 13, label %22
    i16 14, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !513
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 9
  br i1 %27, label %49, label %28

28:                                               ; preds = %17, %22, %14
  %29 = and i64 %11, 1024
  %30 = icmp eq i64 %29, 0
  %31 = load i32, ptr @optimize, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %49, !prof !867

34:                                               ; preds = %28
  %35 = and i64 %11, 16777216
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !513
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = add i16 %41, -16
  %43 = icmp ult i16 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !513
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37, %44
  br label %49

49:                                               ; preds = %44, %34, %28, %22, %17, %9, %5, %1, %48
  %50 = phi i8 [ 1, %48 ], [ 1, %1 ], [ 0, %5 ], [ 0, %9 ], [ 0, %17 ], [ 0, %22 ], [ 1, %28 ], [ 0, %34 ], [ 0, %44 ]
  ret i8 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pass_by_reference(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !868 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %40, label %6, !prof !869

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %45, !prof !870

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !513
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14, !prof !871

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %45, !prof !870

18:                                               ; preds = %14
  %19 = and i64 %7, 65535
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %21, label %40, !prof !872

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !873

26:                                               ; preds = %21
  %27 = tail call ptr @first_field(ptr noundef nonnull %2) #23
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !513
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
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 5), align 8, !tbaa !874
  %44 = tail call zeroext i8 %43(ptr noundef %0, i32 noundef %41, ptr noundef %42, i8 noundef zeroext %3) #23
  br label %45

45:                                               ; preds = %10, %14, %6, %40
  %46 = phi i8 [ %44, %40 ], [ 1, %6 ], [ 1, %14 ], [ 1, %10 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @reference_callee_copied(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !506 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 262144
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 12), align 8, !tbaa !875
  %12 = tail call zeroext i8 %11(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) #23
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i8 [ %12, %10 ], [ 0, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_parameters() local_unnamed_addr #0 !prof !876 {
  %1 = alloca %struct.assign_parm_data_all, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.assign_parm_data_one, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call fastcc void @assign_parms_initialize_all(ptr noundef nonnull %1) #22
  %6 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %1) #22
  store ptr %6, ptr %4, align 8, !tbaa !507
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #22, !range !521
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %110, label %9, !prof !877

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 5
  %11 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 6
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  br label %14

14:                                               ; preds = %9, %106
  %15 = phi i32 [ 0, %9 ], [ %107, %106 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #24
  %16 = load ptr, ptr %2, align 8, !tbaa !507
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %1, ptr noundef %16, ptr noundef nonnull %5) #22
  %17 = load i32, ptr %10, align 4, !tbaa !878
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %106, label %19, !prof !882

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  %22 = icmp eq ptr %21, null
  br i1 %22, label %106, label %23, !prof !882

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 8, !tbaa !883
  %25 = load ptr, ptr %12, align 8, !tbaa !884
  %26 = load i8, ptr %13, align 4
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  call void @function_arg_advance(ptr noundef nonnull %1, i32 noundef %24, ptr noundef %25, i32 noundef %28) #23
  %29 = call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %12, ptr noundef nonnull @gimplify_parm_type, ptr noundef nonnull %3, ptr noundef null) #23
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !513
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %36, label %35, !prof !885

35:                                               ; preds = %23
  call void @gimplify_one_sizepos(ptr noundef nonnull %20, ptr noundef nonnull %3) #23
  call void @gimplify_one_sizepos(ptr noundef nonnull %30, ptr noundef nonnull %3) #23
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i8, ptr %13, align 4
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %106, label %40, !prof !885

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 8, !tbaa !884
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !513
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @vector_type_mode(ptr noundef nonnull %43) #23
  %49 = load i8, ptr %13, align 4
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
  %62 = load ptr, ptr %30, align 8, !tbaa !513
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 23
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load i32, ptr @flag_stack_check, align 4, !tbaa !537
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 @compare_tree_int(ptr noundef nonnull %62, i64 noundef 40) #23
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69, %66
  %73 = call ptr @get_name(ptr noundef nonnull %16) #23
  %74 = call ptr @create_tmp_var(ptr noundef nonnull %43, ptr noundef %73) #23
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %74, i64 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, -1025
  store i64 %77, ptr %75, align 8
  %78 = load i64, ptr %16, align 8
  %79 = and i64 %78, 262144
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %72
  %82 = and i64 %78, -262145
  store i64 %82, ptr %16, align 8
  %83 = load i64, ptr %74, align 8
  %84 = or i64 %83, 262144
  store i64 %84, ptr %74, align 8
  br label %100

85:                                               ; preds = %69, %61
  %86 = call ptr @build_pointer_type(ptr noundef nonnull %43) #23
  %87 = call ptr @get_name(ptr noundef nonnull %16) #23
  %88 = call ptr @create_tmp_var(ptr noundef %86, ptr noundef %87) #23
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, -1025
  store i64 %91, ptr %89, align 8
  %92 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %88) #23
  %93 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !507
  %94 = load ptr, ptr %30, align 8, !tbaa !513
  %95 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %93, i32 noundef 1, ptr noundef %94) #23
  %96 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %86, ptr noundef %95) #23
  %97 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !513
  %99 = call ptr @build2_stat(i32 noundef 53, ptr noundef %98, ptr noundef %88, ptr noundef %96) #23
  call void @gimplify_and_add(ptr noundef %99, ptr noundef nonnull %3) #23
  br label %100

100:                                              ; preds = %72, %81, %85
  %101 = phi ptr [ %92, %85 ], [ %74, %81 ], [ %74, %72 ]
  %102 = call ptr @gimplify_assign(ptr noundef %101, ptr noundef nonnull %16, ptr noundef nonnull %3) #23
  call void @decl_value_expr_insert(ptr noundef nonnull %16, ptr noundef %101) #23
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = or i64 %104, 67108864
  store i64 %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %36, %100, %55, %14, %19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #24
  %107 = add i32 %15, 1
  %108 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %6, i32 noundef %107, ptr noundef nonnull %2) #22, !range !521
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %14, !prof !886, !llvm.loop !887

110:                                              ; preds = %106, %0
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #22
  %111 = load ptr, ptr %3, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %1) #24
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_initialize_all(ptr noundef %0) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  tail call void @init_cumulative_args(ptr noundef %0, ptr noundef %4, ptr noundef null, ptr noundef %2) #23
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %6 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 8, !tbaa !890
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @assign_parms_augmented_arg_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !888 !PGOFuncName !892 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !507
  %6 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !893

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %1 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %10) #22
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !513
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !prof !894, !llvm.loop !895

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !tbaa !513
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ null, %1 ]
  %18 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !896
  %19 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !513
  %21 = tail call i32 @aggregate_value_p(ptr noundef %20, ptr noundef nonnull %3) #22, !range !521
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %48, label %23, !prof !897

23:                                               ; preds = %16
  %24 = load ptr, ptr @cfun, align 8, !tbaa !507
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48, !prof !898

29:                                               ; preds = %23
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !899
  %31 = load ptr, ptr %4, align 8, !tbaa !513
  %32 = tail call ptr %30(ptr noundef %31, i32 noundef 1) #23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %48, !prof !898

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !513
  %37 = tail call ptr @build_pointer_type(ptr noundef %36) #23
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !513
  %40 = tail call ptr @build_decl_stat(i32 noundef %39, i32 noundef 34, ptr noundef null, ptr noundef %37) #23
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 5
  store ptr %37, ptr %41, align 8, !tbaa !513
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = or i64 %43, 5120
  store i64 %44, ptr %42, align 8
  %45 = load ptr, ptr %18, align 8, !tbaa !896
  %46 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !513
  store ptr %40, ptr %18, align 8, !tbaa !896
  call fastcc void @VEC_tree_heap_safe_insert(ptr noundef nonnull %2, i32 noundef 0, ptr noundef %40) #22
  %47 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 2
  store ptr %40, ptr %47, align 8, !tbaa !900
  br label %48

48:                                               ; preds = %34, %29, %23, %16
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !901
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !902

51:                                               ; preds = %48
  call fastcc void @split_complex_args(ptr noundef nonnull %2) #22
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %2, align 8, !tbaa !507
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !903 !PGOFuncName !904 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !905

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !906
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !908

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !507
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !507
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_data_types(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !909 !PGOFuncName !910 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %5 = load ptr, ptr @cfun, align 8, !tbaa !507
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 4194304
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !911

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  store i8 1, ptr %11, align 4
  br label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !513
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !912

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  store i8 1, ptr %17, align 4
  br label %28

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !913
  %20 = tail call zeroext i8 %19(ptr noundef %0) #23
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %23 = load i8, ptr %22, align 4
  br i1 %21, label %26, label %24, !prof !914

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
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !513
  %33 = load ptr, ptr @global_trees, align 16, !tbaa !507
  %34 = icmp eq ptr %30, %33
  br i1 %34, label %45, label %35, !prof !915

35:                                               ; preds = %28
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 65535
  %38 = icmp ne i64 %37, 34
  %39 = icmp eq ptr %32, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %45, label %41, !prof !916

41:                                               ; preds = %35
  %42 = load i64, ptr %30, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 19
  br i1 %44, label %45, label %47, !prof !915

45:                                               ; preds = %41, %35, %28
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !507
  br label %109

47:                                               ; preds = %41
  %48 = load i64, ptr %32, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %54, !prof !915

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
  br i1 %63, label %64, label %66, !prof !915

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
  br i1 %75, label %76, label %85, !prof !917

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !918

81:                                               ; preds = %76
  %82 = tail call ptr @first_field(ptr noundef nonnull %32) #23
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !513
  br label %85

85:                                               ; preds = %71, %81, %76
  %86 = phi ptr [ %84, %81 ], [ %32, %76 ], [ %32, %71 ]
  %87 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %88 = load i8, ptr %87, align 4
  %89 = and i8 %88, 1
  %90 = tail call zeroext i8 @pass_by_reference(ptr noundef %0, i32 noundef %61, ptr noundef %86, i8 noundef zeroext %89) #22
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %92, !prof !919

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
  store i32 %104, ptr %4, align 4, !tbaa !537
  %105 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %106 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !513
  %108 = call i32 @promote_function_mode(ptr noundef nonnull %98, i32 noundef %100, ptr noundef nonnull %4, ptr noundef %107, i32 noundef 0) #23
  br label %109

109:                                              ; preds = %96, %45
  %110 = phi ptr [ %46, %45 ], [ %97, %96 ]
  %111 = phi ptr [ %46, %45 ], [ %98, %96 ]
  %112 = phi i32 [ 0, %45 ], [ %99, %96 ]
  %113 = phi i32 [ 0, %45 ], [ %100, %96 ]
  %114 = phi i32 [ 0, %45 ], [ %108, %96 ]
  store ptr %110, ptr %2, align 8, !tbaa !920
  %115 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  store ptr %111, ptr %115, align 8, !tbaa !884
  %116 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  store i32 %112, ptr %116, align 8, !tbaa !921
  %117 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 5
  store i32 %113, ptr %117, align 4, !tbaa !878
  %118 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  store i32 %114, ptr %118, align 8, !tbaa !883
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @walk_tree_without_duplicates_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @gimplify_parm_type(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !922 !PGOFuncName !923 {
  %4 = load ptr, ptr %0, align 8, !tbaa !507
  store i32 0, ptr %1, align 4, !tbaa !537
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !537
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %25, !prof !924

10:                                               ; preds = %3
  %11 = trunc i64 %5 to i16
  switch i16 %11, label %12 [
    i16 10, label %24
    i16 12, label %24
  ], !prof !925

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !513
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !926

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 131072
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25, !prof !927

20:                                               ; preds = %16
  %21 = and i64 %5, 131072
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void @gimplify_type_sizes(ptr noundef nonnull %4, ptr noundef %2) #23
  br label %24

24:                                               ; preds = %10, %10, %23
  store i32 1, ptr %1, align 4, !tbaa !537
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %3
  ret ptr null
}

; Function Attrs: optsize
declare void @gimplify_one_sizepos(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #15 !prof !888 !PGOFuncName !928 {
  %2 = load ptr, ptr %0, align 8, !tbaa !507
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !929

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !507
  ret void
}

; Function Attrs: optsize
declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !930 !PGOFuncName !931 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !507
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !932 !PGOFuncName !933 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !507
  tail call fastcc void @VEC_tree_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_complex_args(ptr nocapture noundef %0) unnamed_addr #0 !prof !506 !PGOFuncName !934 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !507
  %4 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !521
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %1, %62
  %7 = phi i32 [ %64, %62 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !507
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 13
  br i1 %13, label %14, label %62

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !901
  %16 = tail call zeroext i8 %15(ptr noundef nonnull %10) #23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !513
  %21 = load i64, ptr %8, align 8
  %22 = lshr i64 %21, 18
  %23 = and i64 %22, 1
  %24 = tail call ptr @copy_node_stat(ptr noundef nonnull %8) #23
  store ptr %24, ptr %2, align 8, !tbaa !507
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  store ptr %20, ptr %25, align 8, !tbaa !513
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !513
  store ptr %29, ptr %26, align 8, !tbaa !513
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !513
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 4
  store ptr null, ptr %33, align 8, !tbaa !513
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
  %41 = load ptr, ptr %0, align 8, !tbaa !507
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %41, i32 noundef %7, ptr noundef nonnull %24) #22
  %42 = load i64, ptr %24, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !537
  %46 = add i32 %45, -4
  %47 = icmp ult i32 %46, 7
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !513
  br label %51

51:                                               ; preds = %18, %48
  %52 = phi i32 [ %50, %48 ], [ 0, %18 ]
  %53 = tail call ptr @build_decl_stat(i32 noundef %52, i32 noundef 34, ptr noundef null, ptr noundef %20) #23
  %54 = load ptr, ptr %26, align 8, !tbaa !513
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 5
  store ptr %54, ptr %55, align 8, !tbaa !513
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
  %65 = load ptr, ptr %0, align 8, !tbaa !507
  %66 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %65, i32 noundef %64, ptr noundef nonnull %2) #22, !range !521
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %6, !llvm.loop !935

68:                                               ; preds = %62, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !909 !PGOFuncName !936 {
  %2 = load ptr, ptr %0, align 8, !tbaa !507
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !937

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !507
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !930 !PGOFuncName !938 {
  %3 = load i32, ptr %0, align 8, !tbaa !906
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !906
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !909 !PGOFuncName !939 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !940

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !941
  %6 = load i32, ptr %0, align 8, !tbaa !906
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !932 !PGOFuncName !942 {
  %4 = load i32, ptr %0, align 8, !tbaa !906
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !906
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !506 !PGOFuncName !943 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !507
  ret void
}

; Function Attrs: optsize
declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gimplify_type_sizes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @locate_and_pad_parm(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 !prof !944 {
  %8 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #23
  %9 = icmp eq i32 %2, 0
  %10 = icmp sgt i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %31, !prof !945

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !946
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %14) #23
  %19 = load i64, ptr %5, align 8, !tbaa !947
  %20 = tail call ptr @size_int_kind(i64 noundef %19, i32 noundef 1) #23
  %21 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %18, ptr noundef %20) #23
  %22 = zext nneg i32 %8 to i64
  %23 = tail call ptr @size_int_kind(i64 noundef %22, i32 noundef 1) #23
  %24 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %21, ptr noundef %23) #23
  store ptr %24, ptr %13, align 8, !tbaa !946
  br label %29

25:                                               ; preds = %12
  %26 = load i64, ptr %5, align 8, !tbaa !947
  %27 = zext nneg i32 %8 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %16
  %30 = phi i64 [ 0, %16 ], [ %27, %25 ]
  store i64 %30, ptr %5, align 8, !tbaa !947
  br label %31

31:                                               ; preds = %29, %25, %7
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33, !prof !948

33:                                               ; preds = %31
  %34 = tail call ptr @size_in_bytes(ptr noundef nonnull %1) #23
  br label %41

35:                                               ; preds = %31
  %36 = zext i32 %0 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !513
  %39 = zext i8 %38 to i64
  %40 = tail call ptr @size_int_kind(i64 noundef %39, i32 noundef 0) #23
  br label %41

41:                                               ; preds = %35, %33
  %42 = phi ptr [ %34, %33 ], [ %40, %35 ]
  %43 = tail call i32 @ix86_function_arg_boundary(i32 noundef %0, ptr noundef %1) #23
  %44 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 4
  store i32 1, ptr %44, align 8, !tbaa !949
  %45 = icmp ugt i32 %43, -2147483648
  br i1 %45, label %46, label %47, !prof !950

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ -2147483648, %46 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 5
  store i32 %48, ptr %49, align 4, !tbaa !951
  %50 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %52, label %63, !prof !952

52:                                               ; preds = %47
  %53 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !561
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56, !prof !824

55:                                               ; preds = %52
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  br label %63

56:                                               ; preds = %52
  %57 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 47), align 1, !tbaa !563
  %58 = icmp eq i8 %57, 0
  %59 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1
  %60 = icmp ne i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3558, ptr noundef nonnull @.str.2) #23
  br label %63

63:                                               ; preds = %62, %56, %55, %47
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !565
  %65 = icmp ult i32 %64, %48
  br i1 %65, label %66, label %67, !prof !950

66:                                               ; preds = %63
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !565
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !953
  %69 = icmp ult i32 %68, %48
  br i1 %69, label %70, label %71, !prof !950

70:                                               ; preds = %67
  store i32 %48, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !953
  br label %71

71:                                               ; preds = %70, %67
  br i1 %9, label %75, label %72, !prof !954

72:                                               ; preds = %71
  %73 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %4) #23
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %77, !prof !955

75:                                               ; preds = %72, %71
  %76 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 3
  tail call fastcc void @pad_to_arg_alignment(ptr noundef %5, i32 noundef %48, ptr noundef nonnull %76) #22
  br label %77

77:                                               ; preds = %75, %72
  %78 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !956
  %79 = icmp eq i32 %0, 1
  br i1 %79, label %86, label %80, !prof !957

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %42, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !513
  %83 = add i64 %82, 3
  %84 = and i64 %83, -4
  %85 = tail call ptr @size_int_kind(i64 noundef %84, i32 noundef 0) #23
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi ptr [ %85, %80 ], [ %42, %77 ]
  %88 = getelementptr inbounds %struct.locate_and_pad_arg_data, ptr %6, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %78, i64 16, i1 false), !tbaa.struct !956
  %89 = tail call i32 @host_integerp(ptr noundef %87, i32 noundef 1) #23
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !950

91:                                               ; preds = %86
  %92 = tail call i64 @tree_low_cst(ptr noundef %87, i32 noundef 1) #23
  %93 = and i64 %92, 3
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %97, label %95, !prof !958

95:                                               ; preds = %91, %86
  %96 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %87, i32 noundef 4) #23
  br label %97

97:                                               ; preds = %91, %95
  %98 = phi ptr [ %96, %95 ], [ %87, %91 ]
  %99 = tail call i32 @host_integerp(ptr noundef %98, i32 noundef 0) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101, !prof !950

101:                                              ; preds = %97
  %102 = tail call i64 @tree_low_cst(ptr noundef %98, i32 noundef 0) #23
  %103 = load i64, ptr %6, align 8, !tbaa !959
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %6, align 8, !tbaa !959
  br label %114

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !960
  %108 = icmp eq ptr %107, null
  %109 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %110 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %109, ptr noundef %98) #23
  br i1 %108, label %111, label %112

111:                                              ; preds = %105
  store ptr %110, ptr %106, align 8, !tbaa !960
  br label %114

112:                                              ; preds = %105
  %113 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %107, ptr noundef %110) #23
  store ptr %113, ptr %106, align 8, !tbaa !960
  br label %114

114:                                              ; preds = %111, %112, %101
  %115 = icmp eq i32 %8, 0
  %116 = select i1 %115, i32 %3, i32 0, !prof !958
  %117 = sext i32 %116 to i64
  %118 = load i64, ptr %6, align 8, !tbaa !959
  %119 = sub nsw i64 %118, %117
  store i64 %119, ptr %6, align 8, !tbaa !959
  ret void
}

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ix86_function_arg_boundary(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pad_to_arg_alignment(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !961 !PGOFuncName !962 {
  %4 = sdiv i32 %1, 8
  %5 = icmp sgt i32 %1, 32
  br i1 %5, label %6, label %10, !prof !963

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.args_size, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !946
  %9 = load i64, ptr %0, align 8, !tbaa !947
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %12

10:                                               ; preds = %3
  %11 = icmp sgt i32 %1, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %11, label %12, label %49, !prof !964

12:                                               ; preds = %6, %10
  %13 = phi ptr [ %8, %6 ], [ null, %10 ]
  %14 = phi i64 [ %9, %6 ], [ 0, %10 ]
  %15 = getelementptr inbounds %struct.args_size, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.args_size, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !946
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19, !prof !965

19:                                               ; preds = %12
  %20 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #23
  %21 = load ptr, ptr %16, align 8, !tbaa !946
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, ptr %0, align 8, !tbaa !947
  %25 = tail call ptr @size_int_kind(i64 noundef %24, i32 noundef 1) #23
  br label %32

26:                                               ; preds = %19
  %27 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %27, ptr noundef nonnull %21) #23
  %29 = load i64, ptr %0, align 8, !tbaa !947
  %30 = tail call ptr @size_int_kind(i64 noundef %29, i32 noundef 1) #23
  %31 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %28, ptr noundef %30) #23
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi ptr [ %25, %23 ], [ %31, %26 ]
  %34 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %33, ptr noundef %20) #23
  %35 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %34, i32 noundef %4) #23
  %36 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %35, ptr noundef %20) #23
  store ptr %36, ptr %16, align 8, !tbaa !946
  store i64 0, ptr %0, align 8, !tbaa !947
  br i1 %5, label %37, label %49

37:                                               ; preds = %32
  %38 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %36, ptr noundef %13) #23
  store ptr %38, ptr %15, align 8, !tbaa !946
  br label %49

39:                                               ; preds = %12
  %40 = load i64, ptr %0, align 8, !tbaa !947
  %41 = zext nneg i32 %4 to i64
  %42 = add nsw i64 %41, -1
  %43 = add i64 %42, %40
  %44 = sub nsw i32 0, %4
  %45 = sext i32 %44 to i64
  %46 = and i64 %43, %45
  store i64 %46, ptr %0, align 8, !tbaa !947
  br i1 %5, label %47, label %49, !prof !963

47:                                               ; preds = %39
  %48 = sub nsw i64 %46, %14
  store i64 %48, ptr %2, align 8, !tbaa !947
  br label %49

49:                                               ; preds = %32, %37, %47, %39, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @generate_setjmp_warnings() local_unnamed_addr #0 !prof !506 {
  %1 = tail call ptr @regstat_get_setjmp_crosses() #23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !507
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !966
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !967
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %15, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8, !tbaa !969
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !513
  tail call fastcc void @setjmp_vars_warning(ptr noundef nonnull %1, ptr noundef %14) #22
  tail call fastcc void @setjmp_args_warning(ptr noundef nonnull %1) #22
  br label %15

15:                                               ; preds = %0, %8, %11
  ret void
}

; Function Attrs: optsize
declare ptr @regstat_get_setjmp_crosses() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setjmp_vars_warning(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !506 !PGOFuncName !971 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !513
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
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #22
  %24 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %23) #22, !range !570
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #23
  br label %28

28:                                               ; preds = %6, %14, %18, %22, %26
  %29 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !llvm.loop !972

32:                                               ; preds = %28, %2
  %33 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !513
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @setjmp_vars_warning(ptr noundef %0, ptr noundef nonnull %37) #22
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !513
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !973

41:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setjmp_args_warning(ptr noundef %0) unnamed_addr #0 !prof !506 !PGOFuncName !974 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %25
  %7 = phi ptr [ %27, %25 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !513
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #23
  %12 = load ptr, ptr %8, align 8, !tbaa !513
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
  %21 = tail call fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %20) #22, !range !570
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 56, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #23
  br label %25

25:                                               ; preds = %11, %14, %19, %23
  %26 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !975

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @regno_clobbered_at_setjmp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !506 !PGOFuncName !976 {
  %3 = tail call i32 @max_reg_num() #23
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @REG_N_SETS(i32 noundef %1) #22
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !507
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !966
  %12 = load ptr, ptr %11, align 8, !tbaa !977
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
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @REG_N_SETS(i32 noundef %0) unnamed_addr #11 !prof !506 !PGOFuncName !978 {
  %2 = load ptr, ptr @regstat_n_sets_and_refs, align 8, !tbaa !507
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !979
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_get_live_out(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_blocks() local_unnamed_addr #0 !prof !506 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = tail call fastcc ptr @VEC_tree_heap_alloc() #22
  store ptr %7, ptr %1, align 8, !tbaa !507
  tail call void @clear_block_marks(ptr noundef nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !513
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !513
  %10 = tail call ptr @get_insns() #23
  call fastcc void @reorder_blocks_1(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %1) #22
  %11 = load ptr, ptr %8, align 8, !tbaa !513
  %12 = tail call ptr @blocks_nreverse(ptr noundef %11) #22
  store ptr %12, ptr %8, align 8, !tbaa !513
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #22
  br label %13

13:                                               ; preds = %0, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !506 !PGOFuncName !981 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #23
  ret ptr %1
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_block_marks(ptr noundef %0) local_unnamed_addr #17 !prof !982 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !983

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %10, %3 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -4194305
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.tree_block, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !513
  tail call void @clear_block_marks(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !984, !llvm.loop !985

12:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reorder_blocks_1(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !506 !PGOFuncName !986 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !513
  switch i32 %13, label %60 [
    i32 2, label %14
    i32 3, label %51
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !513
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr %16, ptr %18
  %21 = load i64, ptr %16, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @copy_node_stat(ptr noundef nonnull %16) #23
  %26 = getelementptr inbounds %struct.tree_block, ptr %25, i64 0, i32 8
  store ptr %20, ptr %26, align 8, !tbaa !513
  %27 = getelementptr inbounds %struct.tree_block, ptr %20, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !513
  %29 = getelementptr inbounds %struct.tree_block, ptr %25, i64 0, i32 9
  store ptr %28, ptr %29, align 8, !tbaa !513
  store ptr %25, ptr %27, align 8, !tbaa !513
  store ptr %25, ptr %15, align 8, !tbaa !513
  %30 = load i64, ptr %25, align 8
  br label %31

31:                                               ; preds = %24, %14
  %32 = phi i64 [ %30, %24 ], [ %21, %14 ]
  %33 = phi ptr [ %25, %24 ], [ %16, %14 ]
  %34 = getelementptr inbounds %struct.tree_block, ptr %33, i64 0, i32 5
  store ptr null, ptr %34, align 8, !tbaa !513
  %35 = or i64 %32, 4194304
  store i64 %35, ptr %33, align 8
  %36 = icmp eq ptr %33, %6
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = icmp eq ptr %33, %20
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.tree_block, ptr %20, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !513
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3896, ptr noundef nonnull @.str.2) #23
  br label %44

44:                                               ; preds = %43, %39, %37
  %45 = getelementptr inbounds %struct.tree_block, ptr %33, i64 0, i32 6
  store ptr %6, ptr %45, align 8, !tbaa !513
  %46 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !513
  %48 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !513
  store ptr %33, ptr %46, align 8, !tbaa !513
  br label %49

49:                                               ; preds = %44, %31
  %50 = phi ptr [ %20, %44 ], [ %6, %31 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef %2, ptr noundef nonnull %33) #22
  br label %60

51:                                               ; preds = %11
  %52 = load ptr, ptr %2, align 8, !tbaa !507
  %53 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %52) #22
  %54 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !513
  %55 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !513
  %57 = tail call ptr @blocks_nreverse(ptr noundef %56) #22
  store ptr %57, ptr %55, align 8, !tbaa !513
  %58 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !513
  br label %60

60:                                               ; preds = %11, %5, %51, %49
  %61 = phi ptr [ %50, %49 ], [ %59, %51 ], [ %6, %5 ], [ %6, %11 ]
  %62 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !513
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %5, !llvm.loop !987

65:                                               ; preds = %60, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @blocks_nreverse(ptr noundef %0) local_unnamed_addr #12 !prof !988 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !989

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ null, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  store ptr %4, ptr %6, align 8, !tbaa !513
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !prof !990, !llvm.loop !991

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %5, %3 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #1 !prof !506 !PGOFuncName !992 {
  %2 = load i32, ptr %0, align 8, !tbaa !906
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !906
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !507
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @number_blocks(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !993 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = call fastcc ptr @get_block_vector(ptr noundef %4, ptr noundef nonnull %2) #22
  %6 = load i32, ptr %2, align 4, !tbaa !537
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %25, !prof !994

8:                                                ; preds = %1
  %9 = load i32, ptr @next_block_index, align 4, !tbaa !537
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 1, %8 ], [ %22, %11 ]
  %13 = phi i32 [ %9, %8 ], [ %14, %11 ]
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds ptr, ptr %5, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !507
  %17 = getelementptr inbounds %struct.tree_block, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %13, 1
  %20 = and i32 %18, 1
  %21 = or disjoint i32 %20, %19
  store i32 %21, ptr %17, align 8
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11, !prof !995, !llvm.loop !996

24:                                               ; preds = %11
  store i32 %14, ptr @next_block_index, align 4, !tbaa !537
  br label %25

25:                                               ; preds = %24, %1
  tail call void @free(ptr noundef %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_block_vector(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !993 !PGOFuncName !997 {
  %3 = tail call fastcc i32 @all_blocks(ptr noundef %0, ptr noundef null) #22
  store i32 %3, ptr %1, align 4, !tbaa !537
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #23
  %7 = tail call fastcc i32 @all_blocks(ptr noundef %0, ptr noundef %6) #22
  ret ptr %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @all_blocks(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !998 !PGOFuncName !999 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4, !prof !1000

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi i32 [ 0, %4 ], [ %22, %14 ]
  %8 = phi ptr [ %0, %4 ], [ %24, %14 ]
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -4194305
  store i64 %10, ptr %8, align 8
  br i1 %5, label %14, label %11, !prof !1001

11:                                               ; preds = %6
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  store ptr %8, ptr %13, align 8, !tbaa !507
  br label %14

14:                                               ; preds = %11, %6
  %15 = add nsw i32 %7, 1
  %16 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !513
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %1, i64 %18
  %20 = select i1 %5, ptr null, ptr %19, !prof !1001
  %21 = tail call fastcc i32 @all_blocks(ptr noundef %17, ptr noundef %20) #22
  %22 = add nsw i32 %21, %15
  %23 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !513
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !prof !1002, !llvm.loop !1003

26:                                               ; preds = %14, %2
  %27 = phi i32 [ 0, %2 ], [ %22, %14 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @debug_find_var_in_block_tree(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #18 !prof !506 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !513
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !llvm.loop !1004

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %25, label %6

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !513
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !513
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !llvm.loop !1005

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
define internal fastcc void @invoke_set_current_function_hook(ptr noundef %0) unnamed_addr #0 !prof !1006 !PGOFuncName !1007 {
  %2 = load i1, ptr @in_dummy_function, align 1
  br i1 %2, label %17, label %3, !prof !1008

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 4
  %6 = select i1 %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), ptr %5, !prof !1009
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8
  %10 = select i1 %8, ptr %9, ptr %7, !prof !1010
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !507
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %15, label %13, !prof !1011

13:                                               ; preds = %3
  store ptr %10, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !507
  %14 = getelementptr inbounds %struct.tree_optimization_option, ptr %10, i64 0, i32 1
  tail call void @cl_optimization_restore(ptr noundef nonnull %14) #23
  br label %15

15:                                               ; preds = %13, %3
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 47), align 8, !tbaa !1012
  tail call void %16(ptr noundef %0) #23
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare void @cl_optimization_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_cfun(ptr noundef %0) local_unnamed_addr #0 !prof !1013 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !507
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @cfun_stack, ptr noundef %2) #22
  tail call void @set_cfun(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_cfun() local_unnamed_addr #0 !prof !525 {
  %1 = load ptr, ptr @cfun_stack, align 8
  %2 = tail call fastcc ptr @VEC_function_p_base_pop(ptr noundef %1) #22
  tail call void @set_cfun(ptr noundef %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_next_funcdef_no() local_unnamed_addr #14 !prof !1014 {
  %1 = load i32, ptr @funcdef_no, align 4, !tbaa !537
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @funcdef_no, align 4, !tbaa !537
  ret i32 %1
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_eh_for_function() local_unnamed_addr #4

; Function Attrs: optsize
declare void @ix86_call_abi_override(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @tree_last(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_struct_function(ptr noundef %0) local_unnamed_addr #0 !prof !1015 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !507
  tail call fastcc void @VEC_function_p_heap_safe_push(ptr noundef nonnull @cfun_stack, ptr noundef %2) #22
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dummy_function_start() local_unnamed_addr #0 !prof !1016 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %2, label %3, !prof !1017

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
define internal fastcc void @prepare_function_start() unnamed_addr #0 !prof !539 !PGOFuncName !1018 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !1019
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1020

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4181, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %0, %3
  tail call void @init_temp_slots() #22
  tail call void @init_emit() #23
  tail call void @init_varasm_status() #23
  tail call void @init_expr() #23
  tail call void @default_rtl_profile() #23
  %5 = load i32, ptr @optimize, align 4, !tbaa !537
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, ptr @cse_not_expected, align 4, !tbaa !537
  store i32 0, ptr @caller_save_needed, align 4, !tbaa !537
  store ptr null, ptr @reg_renumber, align 8, !tbaa !507
  store i32 0, ptr @virtuals_instantiated, align 4, !tbaa !537
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !537
  store i8 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !1021
  ret void
}

; Function Attrs: optsize
declare void @init_emit() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_varasm_status() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_expr() local_unnamed_addr #4

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_function_start(ptr noundef %0) local_unnamed_addr #0 !prof !747 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !749

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !513
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !749

7:                                                ; preds = %3
  tail call void @set_cfun(ptr noundef nonnull %5) #22
  br label %9

8:                                                ; preds = %3, %1
  tail call void @allocate_struct_function(ptr noundef %0, i8 noundef zeroext 0) #22
  br label %9

9:                                                ; preds = %8, %7
  tail call fastcc void @prepare_function_start() #22
  %10 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !513
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -15
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %21, !prof !1022

19:                                               ; preds = %9
  %20 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.8) #23
  br label %21

21:                                               ; preds = %9, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @init_function_for_compilation() #19 !prof !747 {
  store ptr null, ptr @reg_renumber, align 8, !tbaa !507
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @expand_main_function() local_unnamed_addr #10 !prof !716 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stack_protect_prologue() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !1023
  %2 = tail call ptr %1() #23
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !1024
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
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !506 !PGOFuncName !1025 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gen_stack_protect_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stack_protect_epilogue() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 83), align 8, !tbaa !1023
  %2 = tail call ptr %1() #23
  %3 = tail call ptr @gen_label_rtx() #23
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !1024
  %5 = tail call fastcc ptr @expand_normal(ptr noundef %4) #22
  %6 = tail call fastcc ptr @expand_normal(ptr noundef %2) #22
  %7 = tail call ptr @gen_stack_protect_test(ptr noundef %5, ptr noundef %6, ptr noundef %3) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = tail call ptr @emit_insn(ptr noundef nonnull %7) #23
  br label %13

11:                                               ; preds = %0
  %12 = load i32, ptr @ptr_mode, align 4, !tbaa !537
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
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 84), align 8, !tbaa !1026
  %21 = tail call ptr %20() #23
  tail call void @expand_expr_stmt(ptr noundef %21) #23
  %22 = tail call ptr @emit_label(ptr noundef %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_stack_protect_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #4

; Function Attrs: optsize
declare void @predict_insn_def(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_expr_stmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_function_start(ptr noundef %0) local_unnamed_addr #0 !prof !747 {
  tail call void @init_recog_no_volatile() #23
  %2 = load i32, ptr @profile_flag, align 4, !tbaa !537
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4, !prof !1027

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  %11 = zext i1 %10 to i8
  store i8 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !1028
  %12 = load ptr, ptr @stack_limit_rtx, align 8, !tbaa !507
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !1027

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 33554432
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  %21 = zext i1 %20 to i8
  store i8 %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 34), align 2, !tbaa !1029
  %22 = tail call ptr @gen_label_rtx() #23
  store ptr %22, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !1030
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !513
  %25 = tail call i32 @aggregate_value_p(ptr noundef %24, ptr noundef %0) #22, !range !521
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %27, !prof !1031

27:                                               ; preds = %19
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !899
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = tail call ptr %28(ptr noundef %30, i32 noundef 2) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %112, label %33, !prof !1032

33:                                               ; preds = %27
  %34 = tail call ptr @gen_reg_rtx(i32 noundef 16) #23
  %35 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef nonnull %31) #23
  %36 = icmp eq ptr %34, null
  br i1 %36, label %112, label %37, !prof !704

37:                                               ; preds = %33
  %38 = load ptr, ptr %23, align 8, !tbaa !513
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 268435456
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = trunc i64 %40 to i32
  %45 = and i32 %44, 255
  %46 = tail call ptr @gen_rtx_MEM(i32 noundef %45, ptr noundef nonnull %34) #23
  %47 = load ptr, ptr %23, align 8, !tbaa !513
  tail call void @set_mem_attributes(ptr noundef %46, ptr noundef %47, i32 noundef 1) #23
  %48 = load ptr, ptr %23, align 8, !tbaa !513
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi ptr [ %38, %37 ], [ %48, %43 ]
  %51 = phi ptr [ %34, %37 ], [ %46, %43 ]
  tail call void @set_decl_rtl(ptr noundef %50, ptr noundef %51) #23
  br label %112

52:                                               ; preds = %19
  %53 = load ptr, ptr %23, align 8, !tbaa !513
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 255
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59, !prof !1033

58:                                               ; preds = %52
  tail call void @set_decl_rtl(ptr noundef nonnull %53, ptr noundef null) #23
  br label %112

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !513
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 14
  br i1 %64, label %65, label %67, !prof !1034

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
  br i1 %74, label %94, label %75, !prof !1034

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !1035
  %77 = tail call zeroext i8 %76(ptr noundef nonnull %61) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %94, label %79, !prof !1036

79:                                               ; preds = %75
  %80 = load ptr, ptr %23, align 8, !tbaa !513
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
  ], !prof !1037

98:                                               ; preds = %94
  %99 = load ptr, ptr %23, align 8, !tbaa !513
  %100 = lshr i32 %96, 16
  %101 = and i32 %100, 255
  %102 = tail call ptr @gen_reg_rtx(i32 noundef %101) #23
  tail call void @set_decl_rtl(ptr noundef %99, ptr noundef %102) #23
  br label %107

103:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4454, ptr noundef nonnull @.str.2) #23
  br label %104

104:                                              ; preds = %94, %103
  %105 = load ptr, ptr %23, align 8, !tbaa !513
  %106 = tail call ptr @gen_group_rtx(ptr noundef nonnull %95) #23
  tail call void @set_decl_rtl(ptr noundef %105, ptr noundef %106) #23
  br label %107

107:                                              ; preds = %98, %104, %91
  %108 = load ptr, ptr %23, align 8, !tbaa !513
  %109 = getelementptr inbounds %struct.tree_decl_common, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = or i64 %110, 16777216
  store i64 %111, ptr %109, align 8
  br label %112

112:                                              ; preds = %27, %33, %49, %58, %107
  tail call fastcc void @assign_parms(ptr noundef nonnull %0) #22
  %113 = load ptr, ptr @cfun, align 8, !tbaa !507
  %114 = getelementptr inbounds %struct.function, ptr %113, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !1038
  %116 = icmp eq ptr %115, null
  br i1 %116, label %140, label %117, !prof !1027

117:                                              ; preds = %112
  %118 = tail call ptr @gen_reg_rtx(i32 noundef 16) #23
  %119 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !1039
  %120 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %121 = tail call ptr %119(ptr noundef %120, i8 noundef zeroext 1) #23
  tail call void @set_decl_incoming_rtl(ptr noundef nonnull %115, ptr noundef %121, i8 noundef zeroext 0) #23
  tail call void @set_decl_rtl(ptr noundef nonnull %115, ptr noundef %118) #23
  %122 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !513
  %124 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !513
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !513
  tail call void @mark_reg_pointer(ptr noundef %118, i32 noundef %127) #23
  %128 = tail call ptr @emit_move_insn(ptr noundef %118, ptr noundef %121) #23
  %129 = load i32, ptr %121, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 43
  br i1 %131, label %132, label %140

132:                                              ; preds = %117
  %133 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !507
  %134 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !513
  %136 = tail call i32 @reg_mentioned_p(ptr noundef %133, ptr noundef %135) #23
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = tail call ptr @set_unique_reg_note(ptr noundef %128, i32 noundef 3, ptr noundef nonnull %121) #23
  br label %140

140:                                              ; preds = %117, %132, %138, %112
  %141 = load ptr, ptr @cfun, align 8, !tbaa !507
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !1040
  %144 = icmp eq ptr %143, null
  br i1 %144, label %171, label %145, !prof !1027

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.tree_exp, ptr %143, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !513
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %149, i64 11
  %151 = load i8, ptr %150, align 1, !tbaa !513
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %147, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !513
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153, %145
  tail call void @expand_decl(ptr noundef nonnull %147) #23
  %158 = load ptr, ptr @cfun, align 8, !tbaa !507
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !1040
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi ptr [ %160, %157 ], [ %143, %153 ]
  %163 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !507
  %164 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !507
  %165 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %163, ptr noundef %162, ptr noundef %164, ptr noundef null, ptr noundef null) #23
  %166 = tail call fastcc ptr @expand_expr(ptr noundef %165) #22
  %167 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %166, i8 noundef zeroext 0) #23
  %168 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 78), align 8, !tbaa !1041
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
  br i1 %176, label %178, label %177, !prof !1027

177:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4518, ptr noundef nonnull @.str.2) #23
  br label %178

178:                                              ; preds = %171, %177
  %179 = tail call ptr @get_last_insn() #23
  store ptr %179, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 18), align 8, !tbaa !1042
  %180 = load i32, ptr @flag_stack_check, align 4, !tbaa !537
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182, !prof !1027

182:                                              ; preds = %178
  %183 = tail call ptr @emit_note(i32 noundef 0) #23
  store ptr %183, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !1043
  br label %184

184:                                              ; preds = %182, %178
  tail call void @force_next_line_note() #23
  ret void
}

; Function Attrs: optsize
declare void @init_recog_no_volatile() local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_group_rtx(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms(ptr noundef %0) unnamed_addr #0 !prof !747 !PGOFuncName !1044 {
  %2 = alloca %struct.assign_parm_data_all, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.assign_parm_data_one, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 17), align 8, !tbaa !1045
  %7 = tail call ptr %6() #23
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !1046
  call fastcc void @assign_parms_initialize_all(ptr noundef nonnull %2) #22
  %8 = call fastcc ptr @assign_parms_augmented_arg_list(ptr noundef nonnull %2) #22
  store ptr %8, ptr %4, align 8, !tbaa !507
  %9 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #22, !range !521
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %106, label %11, !prof !752

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 5
  %13 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 6
  %14 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.assign_parm_data_one, ptr %5, i64 0, i32 9
  br label %17

17:                                               ; preds = %11, %102
  %18 = phi i32 [ 0, %11 ], [ %103, %102 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #24
  %19 = load ptr, ptr %3, align 8, !tbaa !507
  call fastcc void @assign_parm_find_data_types(ptr noundef nonnull %2, ptr noundef %19, ptr noundef nonnull %5) #22
  %20 = load i32, ptr %12, align 4, !tbaa !878
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32, !prof !1047

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !507
  call void @set_decl_rtl(ptr noundef %19, ptr noundef %23) #23
  %24 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  call void @make_decl_rtl(ptr noundef nonnull %19) #23
  %28 = load ptr, ptr %24, align 8, !tbaa !513
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi ptr [ %28, %27 ], [ %25, %22 ]
  %31 = getelementptr inbounds %struct.tree_parm_decl, ptr %19, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !513
  br label %102

32:                                               ; preds = %17
  %33 = load i32, ptr %13, align 8, !tbaa !883
  %34 = load ptr, ptr %14, align 8, !tbaa !884
  %35 = call i32 @ix86_function_arg_boundary(i32 noundef %33, ptr noundef %34) #23
  %36 = call i32 @ix86_minimum_alignment(ptr noundef %34, i32 noundef %33, i32 noundef %35) #23
  %37 = load ptr, ptr %5, align 8, !tbaa !920
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !513
  %40 = icmp ugt i32 %39, %36
  br i1 %40, label %41, label %57, !prof !1047

41:                                               ; preds = %32
  %42 = load i64, ptr %37, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 14
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 @vector_type_mode(ptr noundef nonnull %37) #23
  %47 = load i32, ptr %38, align 8, !tbaa !513
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i32 [ %47, %45 ], [ %39, %48 ]
  %55 = phi i32 [ %46, %45 ], [ %52, %48 ]
  %56 = call i32 @ix86_minimum_alignment(ptr noundef nonnull %37, i32 noundef %55, i32 noundef %54) #23
  br label %57

57:                                               ; preds = %53, %32
  %58 = phi i32 [ %56, %53 ], [ %36, %32 ]
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %61, label %66, !prof !1048

61:                                               ; preds = %57
  %62 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !561
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64, !prof !1049

64:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3180, ptr noundef nonnull @.str.2) #23
  br label %65

65:                                               ; preds = %61, %64
  store i32 %58, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  br label %66

66:                                               ; preds = %65, %57
  %67 = load ptr, ptr @cfun, align 8, !tbaa !507
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 20
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 4194304
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72, !prof !1050

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !513
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77, !prof !1051

76:                                               ; preds = %72
  call fastcc void @assign_parms_setup_varargs(ptr noundef nonnull %2, ptr noundef nonnull %5) #22
  br label %77

77:                                               ; preds = %76, %72, %66
  call fastcc void @assign_parm_find_entry_rtl(ptr noundef nonnull %2, ptr noundef nonnull %5) #22
  %78 = call fastcc zeroext i8 @assign_parm_is_stack_parm(ptr noundef nonnull %2, ptr noundef nonnull %5) #22, !range !570
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80, !prof !1052

80:                                               ; preds = %77
  call fastcc void @assign_parm_find_stack_rtl(ptr noundef %19, ptr noundef nonnull %5) #22
  call fastcc void @assign_parm_adjust_entry_rtl(ptr noundef nonnull %5) #22
  br label %81

81:                                               ; preds = %80, %77
  %82 = load ptr, ptr %15, align 8, !tbaa !1053
  %83 = load i8, ptr %16, align 4
  %84 = lshr i8 %83, 1
  %85 = and i8 %84, 1
  call void @set_decl_incoming_rtl(ptr noundef %19, ptr noundef %82, i8 noundef zeroext %85) #23
  %86 = load i32, ptr %13, align 8, !tbaa !883
  %87 = load ptr, ptr %14, align 8, !tbaa !884
  %88 = and i8 %83, 1
  %89 = zext nneg i8 %88 to i32
  call void @function_arg_advance(ptr noundef nonnull %2, i32 noundef %86, ptr noundef %87, i32 noundef %89) #23
  call fastcc void @assign_parm_adjust_stack_rtl(ptr noundef nonnull %5) #22
  %90 = call fastcc zeroext i8 @assign_parm_setup_block_p(ptr noundef nonnull %5) #22, !range !570
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92, !prof !1054

92:                                               ; preds = %81
  call fastcc void @assign_parm_setup_block(ptr noundef nonnull %2, ptr noundef %19, ptr noundef nonnull %5) #22
  br label %102

93:                                               ; preds = %81
  %94 = load i8, ptr %16, align 4
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100, !prof !1055

97:                                               ; preds = %93
  %98 = call zeroext i8 @use_register_for_decl(ptr noundef %19) #22, !range !570
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100, !prof !1056

100:                                              ; preds = %97, %93
  call fastcc void @assign_parm_setup_reg(ptr noundef nonnull %2, ptr noundef %19, ptr noundef nonnull %5) #22
  br label %102

101:                                              ; preds = %97
  call fastcc void @assign_parm_setup_stack(ptr noundef nonnull %2, ptr noundef %19, ptr noundef nonnull %5) #22
  br label %102

102:                                              ; preds = %92, %101, %100, %29
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #24
  %103 = add i32 %18, 1
  %104 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %8, i32 noundef %103, ptr noundef nonnull %3) #22, !range !521
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %17, !prof !1057, !llvm.loop !1058

106:                                              ; preds = %102, %1
  %107 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !901
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !1027

109:                                              ; preds = %106
  call fastcc void @assign_parms_unsplit_complex(ptr noundef nonnull %2, ptr noundef %8) #22
  br label %110

110:                                              ; preds = %109, %106
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #22
  %111 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !1059
  %113 = call ptr @emit_insn(ptr noundef %112) #23
  %114 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !513
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117, !prof !749

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !513
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 14
  br i1 %122, label %123, label %125, !prof !749

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
  br i1 %132, label %133, label %148, !prof !1060

133:                                              ; preds = %130
  %134 = load i64, ptr %119, align 8
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 65535
  %137 = add nsw i32 %136, -15
  %138 = icmp ult i32 %137, 4
  br i1 %138, label %148, label %139, !prof !1061

139:                                              ; preds = %133
  %140 = call i32 @get_mode_alignment(i32 noundef %131) #23
  %141 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  %142 = icmp ult i32 %141, %140
  br i1 %142, label %143, label %148, !prof !1034

143:                                              ; preds = %139
  %144 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !561
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3239, ptr noundef nonnull @.str.2) #23
  br label %147

147:                                              ; preds = %143, %146
  store i32 %140, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !559
  br label %148

148:                                              ; preds = %133, %130, %147, %139, %110
  %149 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !900
  %151 = icmp eq ptr %150, null
  br i1 %151, label %177, label %152, !prof !1031

152:                                              ; preds = %148
  %153 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %154 = getelementptr inbounds %struct.tree_decl_non_common, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !513
  %156 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %150, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !513
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163, !prof !1062

159:                                              ; preds = %152
  call void @make_decl_rtl(ptr noundef nonnull %150) #23
  %160 = load ptr, ptr %149, align 8, !tbaa !900
  %161 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !513
  br label %163

163:                                              ; preds = %152, %159
  %164 = phi ptr [ %162, %159 ], [ %157, %152 ]
  %165 = getelementptr inbounds %struct.tree_decl_common, ptr %155, i64 0, i32 2
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 268435456
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %175, !prof !1032

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
  %179 = load i64, ptr %178, align 8, !tbaa !1063
  %180 = trunc i64 %179 to i32
  store i32 %180, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !751
  %181 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 7
  %182 = load i64, ptr %181, align 8, !tbaa !1064
  %183 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !1065
  %185 = add nsw i64 %184, %182
  store i64 %185, ptr %183, align 8, !tbaa !1065
  %186 = trunc i64 %185 to i32
  store i32 %186, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !1066
  %187 = call i32 @ix86_reg_parm_stack_space(ptr noundef nonnull %0) #23
  %188 = icmp slt i32 %187, %186
  br i1 %188, label %189, label %191, !prof !1067

189:                                              ; preds = %177
  %190 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !1066
  br label %193

191:                                              ; preds = %177
  %192 = call i32 @ix86_reg_parm_stack_space(ptr noundef nonnull %0) #23
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = add nsw i32 %194, 3
  %196 = and i32 %195, -4
  store i32 %196, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !1066
  %197 = getelementptr inbounds %struct.assign_parm_data_all, ptr %2, i64 0, i32 1, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !1068
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %203, !prof !1027

200:                                              ; preds = %193
  %201 = load i64, ptr %183, align 8, !tbaa !1065
  %202 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %201) #23
  br label %210

203:                                              ; preds = %193
  %204 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %205 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %204, ptr noundef nonnull %198) #23
  %206 = load i64, ptr %183, align 8, !tbaa !1065
  %207 = call ptr @size_int_kind(i64 noundef %206, i32 noundef 1) #23
  %208 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %205, ptr noundef %207) #23
  %209 = call fastcc ptr @expand_normal(ptr noundef %208) #22
  br label %210

210:                                              ; preds = %203, %200
  %211 = phi ptr [ %202, %200 ], [ %209, %203 ]
  store ptr %211, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 3), align 8, !tbaa !1069
  %212 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !513
  %214 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !1066
  %215 = call i32 @ix86_return_pops_args(ptr noundef nonnull %0, ptr noundef %213, i32 noundef %214) #23
  store i32 %215, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3), align 8, !tbaa !1070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 4), ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !1071
  %216 = load ptr, ptr %114, align 8, !tbaa !513
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 65535
  %219 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %218, i64 11
  %220 = load i8, ptr %219, align 1, !tbaa !513
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222, !prof !749

222:                                              ; preds = %210
  %223 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %216, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !513
  br label %225

225:                                              ; preds = %222, %210
  %226 = phi ptr [ null, %210 ], [ %224, %222 ]
  store ptr %226, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1072
  %227 = load ptr, ptr %114, align 8, !tbaa !513
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %229, i64 11
  %231 = load i8, ptr %230, align 1, !tbaa !513
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %256, label %233, !prof !749

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %227, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !513
  %236 = icmp eq ptr %235, null
  br i1 %236, label %256, label %237, !prof !1073

237:                                              ; preds = %233
  %238 = load i32, ptr %235, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %244, !prof !1074

241:                                              ; preds = %237
  %242 = call fastcc i32 @rhs_regno(ptr noundef nonnull %235) #22
  %243 = icmp ugt i32 %242, 52
  br i1 %243, label %249, label %256, !prof !1034

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.tree_decl_common, ptr %227, i64 0, i32 2
  %246 = load i64, ptr %245, align 8
  %247 = and i64 %246, 16777216
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %256, label %249, !prof !1034

249:                                              ; preds = %244, %241
  %250 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !1075
  %251 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !513
  %253 = call ptr %250(ptr noundef %252, ptr noundef nonnull %0, i8 noundef zeroext 1) #23
  %254 = load i32, ptr %253, align 8
  %255 = or i32 %254, -2147483648
  store i32 %255, ptr %253, align 8
  store ptr %253, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1072
  br label %256

256:                                              ; preds = %241, %244, %249, %233, %225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @set_decl_incoming_rtl(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_decl(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0) unnamed_addr #0 !prof !506 !PGOFuncName !1076 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @update_nonlocal_goto_save_area() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @force_next_line_note() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_setup_varargs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1077 !PGOFuncName !1078 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !537
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 7), align 8, !tbaa !1079
  %5 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !883
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !884
  call void %4(ptr noundef %0, i32 noundef %6, ptr noundef %8, ptr noundef nonnull %3, i32 noundef 0) #23
  %9 = load i32, ptr %3, align 4, !tbaa !537
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !1080

11:                                               ; preds = %2
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  store i64 %12, ptr %13, align 8, !tbaa !1063
  br label %14

14:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_entry_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1081 !PGOFuncName !1082 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !883
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9, !prof !1047

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !507
  %8 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !1083
  br label %98

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !884
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = zext nneg i8 %14 to i32
  %16 = tail call ptr @function_arg(ptr noundef %0, i32 noundef %4, ptr noundef %11, i32 noundef %15) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %34, !prof !1084

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !878
  store i32 %20, ptr %3, align 8, !tbaa !883
  %21 = load i8, ptr %12, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %34, !prof !1085

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !1086
  %26 = tail call zeroext i8 %25(ptr noundef %0) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 8, !tbaa !883
  %30 = load ptr, ptr %10, align 8, !tbaa !884
  %31 = tail call ptr @function_arg(ptr noundef %0, i32 noundef %29, ptr noundef %30, i32 noundef 1) #23
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %9, %24, %28, %18
  %35 = phi i8 [ 0, %18 ], [ %33, %28 ], [ 0, %24 ], [ 1, %9 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !1087
  %37 = load i32, ptr %3, align 8, !tbaa !883
  %38 = load ptr, ptr %10, align 8, !tbaa !884
  %39 = tail call zeroext i8 %36(i32 noundef %37, ptr noundef %38) #23
  %40 = icmp ne i8 %39, 0
  %41 = or i1 %17, %40
  br i1 %41, label %71, label %42, !prof !1088

42:                                               ; preds = %34
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !1089
  %44 = load i32, ptr %3, align 8, !tbaa !883
  %45 = load ptr, ptr %10, align 8, !tbaa !884
  %46 = load i8, ptr %12, align 4
  %47 = and i8 %46, 1
  %48 = tail call i32 %43(ptr noundef %0, i32 noundef %44, ptr noundef %45, i8 noundef zeroext %47) #23
  %49 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 8
  store i32 %48, ptr %49, align 8, !tbaa !1090
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %71, label %51, !prof !1091

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !890
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !1064
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  %61 = load i64, ptr %60, align 8, !tbaa !1063
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2379, ptr noundef nonnull @.str.2) #23
  %64 = load i32, ptr %49, align 8, !tbaa !1090
  br label %65

65:                                               ; preds = %59, %63
  %66 = phi i32 [ %48, %59 ], [ %64, %63 ]
  %67 = sext i32 %48 to i64
  %68 = add nsw i64 %67, 3
  %69 = and i64 %68, -4
  %70 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 6
  store i64 %69, ptr %70, align 8, !tbaa !1063
  store i64 %69, ptr %56, align 8, !tbaa !1064
  br label %71

71:                                               ; preds = %42, %51, %65, %34
  %72 = phi i64 [ 0, %34 ], [ 0, %42 ], [ 0, %51 ], [ %67, %65 ]
  %73 = phi ptr [ null, %34 ], [ %16, %42 ], [ %16, %51 ], [ %16, %65 ]
  %74 = phi i32 [ 0, %34 ], [ 0, %42 ], [ %48, %51 ], [ %66, %65 ]
  %75 = load i32, ptr %3, align 8, !tbaa !883
  %76 = load ptr, ptr %10, align 8, !tbaa !884
  %77 = zext nneg i8 %35 to i32
  %78 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %79 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1
  %80 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7
  tail call void @locate_and_pad_parm(i32 noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %74, ptr noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %80) #22
  %81 = icmp eq i8 %35, 0
  br i1 %81, label %82, label %88, !prof !1092

82:                                               ; preds = %71
  %83 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !1093
  %84 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !1094
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %87, label %88, !prof !1095

87:                                               ; preds = %82
  store i32 %85, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !1093
  br label %88

88:                                               ; preds = %87, %82, %71
  %89 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 7
  %90 = load i64, ptr %89, align 8, !tbaa !1064
  %91 = sub nsw i64 %90, %72
  %92 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !1096
  %94 = add nsw i64 %93, %91
  store i64 %94, ptr %92, align 8, !tbaa !1096
  %95 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !1097
  %97 = add nsw i64 %96, %91
  store i64 %97, ptr %95, align 8, !tbaa !1097
  br label %98

98:                                               ; preds = %88, %6
  %99 = phi ptr [ %73, %88 ], [ %7, %6 ]
  %100 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  store ptr %99, ptr %100, align 8, !tbaa !1053
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @assign_parm_is_stack_parm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1081 !PGOFuncName !1098 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1053
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !1092

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !1090
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26, !prof !1091

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %22, !prof !955

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !507
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !513
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !890
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %51, !prof !955

26:                                               ; preds = %6, %22, %14, %2
  %27 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !1099
  %29 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !1065
  %31 = add nsw i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !1065
  %32 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !1100
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35, !prof !1101

35:                                               ; preds = %26
  %36 = tail call i32 @host_integerp(ptr noundef nonnull %33, i32 noundef 0) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call i64 @tree_low_cst(ptr noundef nonnull %33, i32 noundef 0) #23
  %40 = load i64, ptr %29, align 8, !tbaa !1065
  %41 = add nsw i64 %40, %39
  store i64 %41, ptr %29, align 8, !tbaa !1065
  br label %51

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !1068
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %46, ptr noundef nonnull %33) #23
  br i1 %45, label %48, label %49

48:                                               ; preds = %42
  store ptr %47, ptr %43, align 8, !tbaa !1068
  br label %51

49:                                               ; preds = %42
  %50 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %44, ptr noundef %47) #23
  store ptr %50, ptr %43, align 8, !tbaa !1068
  br label %51

51:                                               ; preds = %26, %48, %49, %38, %22
  %52 = phi i8 [ 0, %22 ], [ 1, %38 ], [ 1, %49 ], [ 1, %48 ], [ 1, %26 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_find_stack_rtl(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1102 !PGOFuncName !1103 {
  %3 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1053
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6, !prof !1101

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2
  %8 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !tbaa !1096
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #23
  br label %36

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %16 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %15, ptr noundef nonnull %9) #23
  %17 = load i64, ptr %7, align 8, !tbaa !1096
  %18 = tail call ptr @size_int_kind(i64 noundef %17, i32 noundef 1) #23
  %19 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %16, ptr noundef %18) #23
  %20 = tail call fastcc ptr @expand_normal(ptr noundef %19) #22
  br label %36

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1
  %23 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1105
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29, !prof !1101

26:                                               ; preds = %21
  %27 = load i64, ptr %22, align 8, !tbaa !1097
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %27) #23
  br label %36

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !507
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %30, ptr noundef nonnull %24) #23
  %32 = load i64, ptr %22, align 8, !tbaa !1097
  %33 = tail call ptr @size_int_kind(i64 noundef %32, i32 noundef 1) #23
  %34 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %31, ptr noundef %33) #23
  %35 = tail call fastcc ptr @expand_normal(ptr noundef %34) #22
  br label %36

36:                                               ; preds = %26, %29, %11, %14
  %37 = phi ptr [ %13, %11 ], [ %20, %14 ], [ %28, %26 ], [ %35, %29 ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !1046
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !507
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %43, label %41, !prof !1095

41:                                               ; preds = %36
  %42 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %38, ptr noundef %37) #23
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %38, %36 ]
  %45 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !883
  %47 = tail call ptr @gen_rtx_MEM(i32 noundef %46, ptr noundef %44) #23
  %48 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 9
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %95, !prof !1101

52:                                               ; preds = %43
  tail call void @set_mem_attributes(ptr noundef %47, ptr noundef %0, i32 noundef 1) #23
  %53 = load i32, ptr %45, align 8, !tbaa !883
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %95, label %55, !prof !1106

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %95, label %61, !prof !1107

61:                                               ; preds = %55
  %62 = zext i32 %53 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !513
  %65 = zext i8 %64 to i64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %65) #23
  tail call void @set_mem_size(ptr noundef %47, ptr noundef %66) #23
  %67 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !513
  %69 = icmp eq ptr %68, null
  br i1 %69, label %95, label %70, !prof !1108

70:                                               ; preds = %61
  %71 = load ptr, ptr %68, align 8, !tbaa !1109
  %72 = icmp eq ptr %71, null
  br i1 %72, label %95, label %73, !prof !1108

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %68, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !1111
  %76 = icmp eq ptr %75, null
  br i1 %76, label %95, label %77, !prof !1108

77:                                               ; preds = %73
  %78 = load i64, ptr %56, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 255
  %81 = load i32, ptr %45, align 8, !tbaa !883
  %82 = tail call i32 @subreg_lowpart_offset(i32 noundef %80, i32 noundef %81) #23
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84, !prof !1112

84:                                               ; preds = %77
  %85 = load ptr, ptr %67, align 8, !tbaa !513
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.mem_attrs, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !1111
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
  %97 = load i32, ptr %96, align 4, !tbaa !1094
  %98 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 7, i32 4
  %99 = load i32, ptr %98, align 8, !tbaa !1113
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %116, !prof !1085

101:                                              ; preds = %95
  %102 = load ptr, ptr %3, align 8, !tbaa !1053
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, ptr %37, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 30
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !513
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %111, 3
  %113 = or i32 %112, %97
  %114 = sub i32 0, %113
  %115 = and i32 %113, %114
  br label %116

116:                                              ; preds = %95, %101, %104, %108
  %117 = phi i32 [ %115, %108 ], [ 8, %104 ], [ %97, %101 ], [ %97, %95 ]
  tail call void @set_mem_align(ptr noundef %47, i32 noundef %117) #23
  %118 = load ptr, ptr %3, align 8, !tbaa !1053
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120, !prof !1101

120:                                              ; preds = %116
  tail call void @set_reg_attrs_for_parm(ptr noundef nonnull %118, ptr noundef %47) #23
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.assign_parm_data_one, ptr %1, i64 0, i32 3
  store ptr %47, ptr %122, align 8, !tbaa !1083
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_adjust_entry_rtl(ptr nocapture noundef %0) unnamed_addr #0 !prof !1102 !PGOFuncName !1114 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1053
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1083
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !1090
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !1101

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = tail call ptr @validize_mem(ptr noundef %5) #23
  %15 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !884
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
  %26 = load i32, ptr %6, align 8, !tbaa !1090
  %27 = sdiv i32 %26, 4
  tail call void @move_block_from_reg(i32 noundef %24, ptr noundef %25, i32 noundef %27) #23
  br label %72

28:                                               ; preds = %1
  %29 = icmp eq ptr %3, null
  br i1 %29, label %72, label %30, !prof !1101

30:                                               ; preds = %28
  %31 = load i32, ptr %3, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 15
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !921
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %72, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !878
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %72, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !513
  %45 = load i32, ptr %44, align 8, !tbaa !1115
  %46 = sext i32 %45 to i64
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %72, label %48

48:                                               ; preds = %42, %69
  %49 = phi i64 [ %70, %69 ], [ 0, %42 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !507
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !513
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
  %65 = load ptr, ptr %64, align 8, !tbaa !513
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !513
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %48, %55, %59, %63
  %70 = add nuw i64 %49, 1
  %71 = icmp eq i64 %70, %46
  br i1 %71, label %72, label %48, !llvm.loop !1117

72:                                               ; preds = %63, %69, %42, %28, %13, %23, %38, %34, %30
  %73 = phi ptr [ %3, %38 ], [ %3, %34 ], [ %3, %30 ], [ %5, %23 ], [ %5, %13 ], [ %5, %28 ], [ %3, %42 ], [ %53, %63 ], [ %3, %69 ]
  store ptr %73, ptr %2, align 8, !tbaa !1053
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_parm_adjust_stack_rtl(ptr nocapture noundef %0) unnamed_addr #13 !prof !1081 !PGOFuncName !1118 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1083
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !1052

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !920
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8, !prof !1085

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !513
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !513
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !1085

14:                                               ; preds = %8
  %15 = icmp ugt i32 %10, 8
  br i1 %15, label %20, label %24, !prof !1085

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !1119
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %20, label %24, !prof !1085

20:                                               ; preds = %16, %14
  %21 = phi i32 [ 8, %14 ], [ %18, %16 ]
  %22 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !537
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %16, %20, %14, %5, %1
  %25 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !1053
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %28, label %36, !prof !1092

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !921
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %36, label %32, !prof !1106

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !878
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %52, !prof !1107

36:                                               ; preds = %32, %28, %24
  %37 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !1024
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39, !prof !1120

39:                                               ; preds = %36
  %40 = load i32, ptr @flag_stack_protect, align 4, !tbaa !537
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 9
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load ptr, ptr %0, align 8, !tbaa !920
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
  store ptr %53, ptr %2, align 8, !tbaa !1083
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @assign_parm_setup_block_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1081 !PGOFuncName !1121 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !921
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %12, label %5, !prof !1122

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1053
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
define internal fastcc void @assign_parm_setup_block(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !585 !PGOFuncName !1123 {
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1053
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1083
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %13, !prof !586

11:                                               ; preds = %3
  %12 = tail call ptr @emit_group_move_into_temps(ptr noundef nonnull %5) #23
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %5, %3 ]
  %15 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !884
  %17 = tail call i64 @int_size_in_bytes(ptr noundef %16) #23
  %18 = add nsw i64 %17, 3
  %19 = icmp eq ptr %7, null
  br i1 %19, label %20, label %40, !prof !1124

20:                                               ; preds = %13
  %21 = and i64 %18, -4
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !513
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 32)
  store i32 %24, ptr %22, align 8, !tbaa !513
  %25 = tail call ptr @assign_stack_local(i32 noundef 1, i64 noundef %21, i32 noundef %24) #22
  %26 = load i32, ptr %14, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !513
  %32 = zext i8 %31 to i64
  %33 = icmp eq i64 %17, %32
  br i1 %33, label %34, label %39, !prof !1125

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
  ], !prof !1126

44:                                               ; preds = %40, %40
  %45 = tail call ptr @validize_mem(ptr noundef %41) #23
  %46 = load i32, ptr %14, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 15
  br i1 %48, label %49, label %58, !prof !1125

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !1059
  %52 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !1127
  tail call void @push_to_sequence2(ptr noundef %51, ptr noundef %53) #23
  %54 = load ptr, ptr %15, align 8, !tbaa !884
  %55 = trunc i64 %17 to i32
  tail call void @emit_group_store(ptr noundef %45, ptr noundef nonnull %14, ptr noundef %54, i32 noundef %55) #23
  %56 = tail call ptr @get_insns() #23
  store ptr %56, ptr %50, align 8, !tbaa !1059
  %57 = tail call ptr @get_last_insn() #23
  store ptr %57, ptr %52, align 8, !tbaa !1127
  tail call void @end_sequence() #23
  br label %92

58:                                               ; preds = %44
  %59 = icmp eq i64 %17, 0
  br i1 %59, label %92, label %60, !prof !1125

60:                                               ; preds = %58
  %61 = icmp slt i64 %17, 5
  br i1 %61, label %62, label %75, !prof !1125

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
  %80 = load ptr, ptr %6, align 8, !tbaa !1083
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %92, !prof !1128

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !1059
  %85 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !1127
  tail call void @push_to_sequence2(ptr noundef %84, ptr noundef %86) #23
  %87 = load ptr, ptr %4, align 8, !tbaa !1053
  %88 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #23
  %89 = tail call ptr @emit_block_move(ptr noundef %41, ptr noundef %87, ptr noundef %88, i32 noundef 0) #23
  %90 = tail call ptr @get_insns() #23
  store ptr %90, ptr %83, align 8, !tbaa !1059
  %91 = tail call ptr @get_last_insn() #23
  store ptr %91, ptr %85, align 8, !tbaa !1127
  tail call void @end_sequence() #23
  br label %92

92:                                               ; preds = %49, %75, %58, %72, %68, %79, %82
  store ptr %41, ptr %6, align 8, !tbaa !1083
  tail call void @set_decl_rtl(ptr noundef %1, ptr noundef %41) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_setup_reg(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1129 !PGOFuncName !1130 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !513
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 21
  %10 = and i32 %9, 1
  store i32 %10, ptr %4, align 4, !tbaa !537
  %11 = load ptr, ptr %2, align 8, !tbaa !920
  %12 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !921
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = call i32 @promote_function_mode(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %4, ptr noundef %16, i32 noundef 2) #23
  %18 = call ptr @gen_reg_rtx(i32 noundef %17) #23
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 4096
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24, !prof !1131

23:                                               ; preds = %3
  call void @mark_user_reg(ptr noundef %18) #23
  br label %24

24:                                               ; preds = %23, %3
  %25 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 9
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29, !prof !1132

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !884
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !513
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
  %49 = load i32, ptr %12, align 8, !tbaa !921
  %50 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !878
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57, !prof !1133

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !883
  %56 = icmp eq i32 %17, %55
  br i1 %56, label %132, label %57, !prof !1134

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !1053
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = call ptr @gen_reg_rtx(i32 noundef %62) #23
  %64 = load ptr, ptr %58, align 8, !tbaa !1053
  %65 = call ptr @validize_mem(ptr noundef %64) #23
  %66 = call ptr @emit_move_insn(ptr noundef %63, ptr noundef %65) #23
  %67 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !1059
  %69 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !1127
  call void @push_to_sequence2(ptr noundef %68, ptr noundef %70) #23
  %71 = load i32, ptr %12, align 8, !tbaa !921
  %72 = load i32, ptr %4, align 4, !tbaa !537
  %73 = call ptr @convert_to_mode(i32 noundef %71, ptr noundef %63, i32 noundef %72) #23
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %122, !prof !1135

77:                                               ; preds = %57
  %78 = lshr i32 %74, 16
  %79 = and i32 %78, 255
  %80 = load i32, ptr %12, align 8, !tbaa !921
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %122, !prof !1135

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !513
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %122, !prof !1135

88:                                               ; preds = %82
  %89 = load i32, ptr %50, align 4, !tbaa !878
  %90 = icmp eq i32 %79, %89
  br i1 %90, label %91, label %122, !prof !1136

91:                                               ; preds = %88
  %92 = lshr i32 %85, 16
  %93 = and i32 %92, 255
  %94 = load ptr, ptr %58, align 8, !tbaa !1053
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %93, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %91
  %100 = zext nneg i32 %79 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !513
  %103 = zext nneg i32 %93 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !513
  %106 = icmp ult i8 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %99
  %108 = or i32 %74, 268435456
  store i32 %108, ptr %73, align 8
  %109 = load i32, ptr %4, align 4, !tbaa !537
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = or i32 %74, 402653184
  br label %120

113:                                              ; preds = %107
  %114 = and i32 %108, -134283225
  store i32 %114, ptr %73, align 8
  %115 = load i32, ptr %4, align 4, !tbaa !537
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
  %125 = load ptr, ptr %2, align 8, !tbaa !920
  %126 = call ptr @make_tree(ptr noundef %125, ptr noundef nonnull %73) #23
  call void @expand_assignment(ptr noundef nonnull %1, ptr noundef %126, i8 noundef zeroext 0) #23
  %127 = load i64, ptr %1, align 8
  %128 = and i64 %127, -16777217
  %129 = or disjoint i64 %128, %124
  store i64 %129, ptr %1, align 8
  %130 = call ptr @get_insns() #23
  store ptr %130, ptr %67, align 8, !tbaa !1059
  %131 = call ptr @get_last_insn() #23
  store ptr %131, ptr %69, align 8, !tbaa !1127
  call void @end_sequence() #23
  br label %137

132:                                              ; preds = %53
  %133 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !1053
  %135 = call ptr @validize_mem(ptr noundef %134) #23
  %136 = call ptr @emit_move_insn(ptr noundef %18, ptr noundef %135) #23
  br label %137

137:                                              ; preds = %132, %122
  %138 = phi i8 [ 1, %122 ], [ 0, %132 ]
  %139 = load i8, ptr %25, align 4
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %243, label %142, !prof !1132

142:                                              ; preds = %137
  %143 = load ptr, ptr %5, align 8, !tbaa !513
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
  %158 = load ptr, ptr %5, align 8, !tbaa !513
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
  %172 = load ptr, ptr %171, align 8, !tbaa !513
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %175 = load ptr, ptr %171, align 8, !tbaa !513
  br label %176

176:                                              ; preds = %169, %174
  %177 = phi ptr [ %175, %174 ], [ %172, %169 ]
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = icmp eq i32 %170, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = call zeroext i8 @use_register_for_decl(ptr noundef nonnull %1) #22, !range !570
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %243, label %185

185:                                              ; preds = %182, %176
  %186 = load ptr, ptr %5, align 8, !tbaa !513
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
  %201 = load ptr, ptr %171, align 8, !tbaa !513
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %204 = load ptr, ptr %171, align 8, !tbaa !513
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
  %215 = load ptr, ptr %5, align 8, !tbaa !513
  %216 = load i64, ptr %215, align 8
  %217 = trunc i64 %216 to i32
  %218 = lshr i32 %217, 21
  %219 = and i32 %218, 1
  %220 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !1059
  %222 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %223 = load ptr, ptr %222, align 8, !tbaa !1127
  call void @push_to_sequence2(ptr noundef %221, ptr noundef %223) #23
  %224 = load ptr, ptr %171, align 8, !tbaa !513
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %211
  call void @make_decl_rtl(ptr noundef nonnull %1) #23
  %227 = load ptr, ptr %171, align 8, !tbaa !513
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
  store ptr %236, ptr %220, align 8, !tbaa !1059
  %237 = call ptr @get_last_insn() #23
  store ptr %237, ptr %222, align 8, !tbaa !1127
  call void @end_sequence() #23
  br label %240

238:                                              ; preds = %205
  %239 = call ptr @emit_move_insn(ptr noundef nonnull %199, ptr noundef nonnull %206) #23
  br label %240

240:                                              ; preds = %238, %228
  %241 = phi i8 [ 1, %228 ], [ %138, %238 ]
  call void @set_decl_rtl(ptr noundef nonnull %1, ptr noundef nonnull %199) #23
  %242 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  store ptr null, ptr %242, align 8, !tbaa !1083
  br label %243

243:                                              ; preds = %240, %182, %154, %137
  %244 = phi i8 [ %241, %240 ], [ %138, %182 ], [ %138, %154 ], [ %138, %137 ]
  %245 = phi ptr [ %199, %240 ], [ %18, %182 ], [ %18, %154 ], [ %18, %137 ]
  %246 = load i32, ptr %12, align 8, !tbaa !921
  %247 = load i32, ptr %50, align 4, !tbaa !878
  %248 = icmp ne i32 %246, %247
  %249 = icmp ne i8 %244, 0
  %250 = or i1 %249, %248
  br i1 %250, label %354, label %251, !prof !1137

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !1083
  %254 = icmp eq ptr %253, null
  br i1 %254, label %354, label %255, !prof !1138

255:                                              ; preds = %251
  %256 = load i32, ptr %253, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 43
  br i1 %258, label %259, label %354, !prof !1139

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 7, i32 1, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !1105
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %354, !prof !1139

263:                                              ; preds = %259
  %264 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !507
  %265 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !513
  %267 = call i32 @reg_mentioned_p(ptr noundef %264, ptr noundef %266) #23
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %354, label %269, !prof !1140

269:                                              ; preds = %263
  %270 = call ptr @get_last_insn() #23
  %271 = load i32, ptr %245, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 41
  br i1 %273, label %274, label %332, !prof !1140

274:                                              ; preds = %269
  %275 = lshr i32 %271, 16
  %276 = and i32 %275, 255
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !513
  %280 = zext i8 %279 to i32
  %281 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !513
  %283 = call fastcc i32 @rhs_regno(ptr noundef %282) #22
  %284 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1, i32 0, i32 0, i64 1
  %285 = load ptr, ptr %284, align 8, !tbaa !513
  %286 = call fastcc i32 @rhs_regno(ptr noundef %285) #22
  %287 = load ptr, ptr %252, align 8, !tbaa !1083
  %288 = call ptr @adjust_address_1(ptr noundef %287, i32 noundef %280, i64 noundef 0, i32 noundef 0, i32 noundef 1) #23
  %289 = load ptr, ptr %252, align 8, !tbaa !1083
  %290 = zext i8 %279 to i64
  %291 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !513
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
  %307 = load ptr, ptr %306, align 8, !tbaa !513
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
  %317 = load ptr, ptr %316, align 8, !tbaa !513
  %318 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !507
  %319 = getelementptr inbounds ptr, ptr %318, i64 %297
  %320 = load ptr, ptr %319, align 8, !tbaa !507
  %321 = icmp eq ptr %317, %320
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = getelementptr inbounds ptr, ptr %318, i64 %298
  %324 = load ptr, ptr %323, align 8, !tbaa !507
  %325 = icmp eq ptr %317, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322, %314
  %327 = phi ptr [ %294, %314 ], [ %288, %322 ]
  %328 = call ptr @set_unique_reg_note(ptr noundef nonnull %300, i32 noundef 3, ptr noundef %327) #23
  br label %329

329:                                              ; preds = %326, %299, %322, %311
  %330 = call ptr @prev_nonnote_insn(ptr noundef nonnull %300) #23
  %331 = icmp eq ptr %330, null
  br i1 %331, label %354, label %299, !llvm.loop !1141

332:                                              ; preds = %269
  %333 = load i32, ptr %270, align 8
  %334 = and i32 %333, 65535
  %335 = add nsw i32 %334, -7
  %336 = icmp ult i32 %335, 4
  br i1 %336, label %337, label %354, !prof !1142

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !513
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 23
  br i1 %342, label %346, label %343, !prof !1139

343:                                              ; preds = %337
  %344 = call ptr @single_set_2(ptr noundef nonnull %270, ptr noundef nonnull %339) #23
  %345 = icmp eq ptr %344, null
  br i1 %345, label %354, label %346, !prof !1143

346:                                              ; preds = %337, %343
  %347 = phi ptr [ %344, %343 ], [ %339, %337 ]
  %348 = getelementptr inbounds %struct.rtx_def, ptr %347, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !513
  %350 = icmp eq ptr %349, %245
  br i1 %350, label %351, label %354, !prof !1139

351:                                              ; preds = %346
  %352 = load ptr, ptr %252, align 8, !tbaa !1083
  %353 = call ptr @set_unique_reg_note(ptr noundef nonnull %270, i32 noundef 3, ptr noundef %352) #23
  br label %354

354:                                              ; preds = %329, %274, %332, %351, %346, %343, %263, %259, %255, %251, %243
  %355 = load ptr, ptr %5, align 8, !tbaa !513
  %356 = load i64, ptr %355, align 8
  %357 = trunc i64 %356 to i16
  switch i16 %357, label %363 [
    i16 10, label %358
    i16 12, label %358
  ], !prof !1144

358:                                              ; preds = %354, %354
  %359 = getelementptr inbounds %struct.tree_common, ptr %355, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !513
  %361 = getelementptr inbounds %struct.tree_type, ptr %360, i64 0, i32 7
  %362 = load i32, ptr %361, align 8, !tbaa !513
  call void @mark_reg_pointer(ptr noundef %245, i32 noundef %362) #23
  br label %363

363:                                              ; preds = %354, %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_setup_stack(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1145 !PGOFuncName !1146 {
  tail call fastcc void @assign_parm_remove_parallels(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !883
  %6 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !921
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %55, label %9, !prof !1147

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1053
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #23
  %16 = load ptr, ptr %10, align 8, !tbaa !1053
  %17 = tail call ptr @validize_mem(ptr noundef %16) #23
  %18 = tail call ptr @emit_move_insn(ptr noundef %15, ptr noundef %17) #23
  %19 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !1059
  %21 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !1127
  tail call void @push_to_sequence2(ptr noundef %20, ptr noundef %22) #23
  %23 = load i32, ptr %6, align 8, !tbaa !921
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 21
  %29 = and i32 %28, 1
  %30 = tail call ptr @convert_to_mode(i32 noundef %23, ptr noundef %15, i32 noundef %29) #23
  store ptr %30, ptr %10, align 8, !tbaa !1053
  %31 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !1083
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %9
  %35 = load i32, ptr %6, align 8, !tbaa !921
  %36 = load i32, ptr %32, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = tail call i32 @subreg_lowpart_offset(i32 noundef %35, i32 noundef %38) #23
  %40 = load ptr, ptr %31, align 8, !tbaa !1083
  %41 = load i32, ptr %6, align 8, !tbaa !921
  %42 = tail call ptr @adjust_address_1(ptr noundef %40, i32 noundef %41, i64 noundef 0, i32 noundef 1, i32 noundef 1) #23
  store ptr %42, ptr %31, align 8, !tbaa !1083
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !513
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mem_attrs, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !1111
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = sext i32 %39 to i64
  %54 = tail call ptr @plus_constant(ptr noundef nonnull %50, i64 noundef %53) #23
  tail call void @set_mem_offset(ptr noundef nonnull %42, ptr noundef %54) #23
  br label %55

55:                                               ; preds = %9, %44, %52, %48, %34, %3
  %56 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !1053
  %58 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !1083
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %104, label %61, !prof !1148

61:                                               ; preds = %55
  %62 = icmp eq ptr %59, null
  br i1 %62, label %63, label %82, !prof !587

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !884
  %66 = load i32, ptr %57, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !513
  %71 = tail call i32 @ix86_local_alignment(ptr noundef %65, i32 noundef %68, i32 noundef %70) #23
  %72 = load ptr, ptr %56, align 8, !tbaa !1053
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !513
  %79 = zext i8 %78 to i64
  %80 = tail call ptr @assign_stack_local(i32 noundef %75, i64 noundef %79, i32 noundef %71) #22
  store ptr %80, ptr %58, align 8, !tbaa !1083
  tail call void @set_mem_attributes(ptr noundef %80, ptr noundef %1, i32 noundef 1) #23
  %81 = load ptr, ptr %58, align 8, !tbaa !1083
  br label %82

82:                                               ; preds = %63, %61
  %83 = phi ptr [ %81, %63 ], [ %59, %61 ]
  %84 = tail call ptr @validize_mem(ptr noundef %83) #23
  %85 = load ptr, ptr %56, align 8, !tbaa !1053
  %86 = tail call ptr @validize_mem(ptr noundef %85) #23
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 43
  br i1 %89, label %90, label %102, !prof !586

90:                                               ; preds = %82
  br i1 %8, label %91, label %96

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !1059
  %94 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !1127
  tail call void @push_to_sequence2(ptr noundef %93, ptr noundef %95) #23
  br label %96

96:                                               ; preds = %90, %91
  %97 = getelementptr inbounds %struct.assign_parm_data_one, ptr %2, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !884
  %99 = tail call i64 @int_size_in_bytes(ptr noundef %98) #23
  %100 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %99) #23
  %101 = tail call ptr @emit_block_move(ptr noundef %84, ptr noundef nonnull %86, ptr noundef %100, i32 noundef 0) #23
  br label %105

102:                                              ; preds = %82
  %103 = tail call ptr @emit_move_insn(ptr noundef %84, ptr noundef nonnull %86) #23
  br label %104

104:                                              ; preds = %102, %55
  br i1 %8, label %110, label %105, !prof !1149

105:                                              ; preds = %96, %104
  %106 = tail call ptr @get_insns() #23
  %107 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !1059
  %108 = tail call ptr @get_last_insn() #23
  %109 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 5
  store ptr %108, ptr %109, align 8, !tbaa !1127
  tail call void @end_sequence() #23
  br label %110

110:                                              ; preds = %105, %104
  %111 = load ptr, ptr %58, align 8, !tbaa !1083
  tail call void @set_decl_rtl(ptr noundef %1, ptr noundef %111) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parms_unsplit_complex(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !506 !PGOFuncName !1150 {
  %3 = getelementptr inbounds %struct.assign_parm_data_all, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !513
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
  %13 = load ptr, ptr %12, align 8, !tbaa !513
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 13
  br i1 %16, label %17, label %115

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !901
  %19 = tail call zeroext i8 %18(ptr noundef nonnull %13) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %115, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 255
  %25 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !513
  %27 = zext i8 %26 to i32
  %28 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %11) #22
  %29 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !513
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  tail call void @make_decl_rtl(ptr noundef nonnull %28) #23
  %33 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %11) #22
  %34 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !513
  br label %36

36:                                               ; preds = %21, %32
  %37 = phi ptr [ %35, %32 ], [ %30, %21 ]
  %38 = add i32 %11, 1
  %39 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %40 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !513
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  tail call void @make_decl_rtl(ptr noundef nonnull %39) #23
  %44 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %45 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !513
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
  %63 = load ptr, ptr %12, align 8, !tbaa !513
  %64 = tail call i64 @int_size_in_bytes(ptr noundef %63) #23
  %65 = load ptr, ptr %12, align 8, !tbaa !513
  %66 = load i64, ptr %22, align 8
  %67 = trunc i64 %66 to i32
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !513
  %71 = tail call i32 @ix86_local_alignment(ptr noundef %65, i32 noundef %68, i32 noundef %70) #23
  %72 = load i64, ptr %22, align 8
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 255
  %75 = tail call ptr @assign_stack_local(i32 noundef %74, i64 noundef %64, i32 noundef %71) #22
  tail call void @set_mem_attributes(ptr noundef %75, ptr noundef nonnull %10, i32 noundef 1) #23
  %76 = tail call ptr @adjust_address_1(ptr noundef %75, i32 noundef %27, i64 noundef 0, i32 noundef 0, i32 noundef 1) #23
  %77 = zext i8 %26 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !513
  %80 = zext i8 %79 to i64
  %81 = tail call ptr @adjust_address_1(ptr noundef %75, i32 noundef %27, i64 noundef %80, i32 noundef 0, i32 noundef 1) #23
  %82 = load ptr, ptr %7, align 8, !tbaa !1059
  %83 = load ptr, ptr %8, align 8, !tbaa !1127
  tail call void @push_to_sequence2(ptr noundef %82, ptr noundef %83) #23
  %84 = tail call ptr @emit_move_insn(ptr noundef %76, ptr noundef %58) #23
  %85 = tail call ptr @emit_move_insn(ptr noundef %81, ptr noundef %57) #23
  %86 = tail call ptr @get_insns() #23
  store ptr %86, ptr %7, align 8, !tbaa !1059
  %87 = tail call ptr @get_last_insn() #23
  store ptr %87, ptr %8, align 8, !tbaa !1127
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
  %97 = load ptr, ptr %96, align 8, !tbaa !513
  %98 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %38) #22
  %99 = getelementptr inbounds %struct.tree_parm_decl, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !513
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
  %119 = load ptr, ptr %117, align 8, !tbaa !513
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %9, !llvm.loop !1151

121:                                              ; preds = %115, %2
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_return_pops_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_reg_attrs_for_parm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_group_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @move_block_from_reg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_group_move_into_temps(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @push_to_sequence2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @change_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mark_user_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_parm_remove_parallels(ptr nocapture noundef %0) unnamed_addr #0 !prof !1152 !PGOFuncName !1153 {
  %2 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1053
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %22, !prof !1154

7:                                                ; preds = %1
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %9) #23
  %13 = getelementptr inbounds %struct.assign_parm_data_one, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !884
  %15 = load i32, ptr %3, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !513
  %21 = zext i8 %20 to i32
  tail call void @emit_group_store(ptr noundef %12, ptr noundef nonnull %3, ptr noundef %14, i32 noundef %21) #23
  br label %22

22:                                               ; preds = %11, %7, %1
  %23 = phi ptr [ %12, %11 ], [ %3, %7 ], [ %3, %1 ]
  store ptr %23, ptr %2, align 8, !tbaa !1053
  ret void
}

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !506 !PGOFuncName !1155 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !507
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_dummy_function_end() local_unnamed_addr #0 !prof !1016 {
  %1 = load i1, ptr @in_dummy_function, align 1
  br i1 %1, label %3, label %2, !prof !1156

2:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4542, ptr noundef nonnull @.str.2) #23
  br label %3

3:                                                ; preds = %0, %2
  %4 = tail call i32 @in_sequence_p() #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !1157

6:                                                ; preds = %3, %6
  tail call void @end_sequence() #23
  %7 = tail call i32 @in_sequence_p() #23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %6, !prof !675, !llvm.loop !1158

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @cfun, align 8, !tbaa !507
  tail call void @free_after_parsing(ptr noundef %10) #22
  %11 = load ptr, ptr @cfun, align 8, !tbaa !507
  tail call void @free_after_compilation(ptr noundef %11) #22
  tail call void @pop_cfun() #22
  store i1 false, ptr @in_dummy_function, align 1
  ret void
}

; Function Attrs: optsize
declare i32 @in_sequence_p() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @diddle_return_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1159 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1072
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5, !prof !1160

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %37 [
    i16 37, label %13
    i16 15, label %8
  ], !prof !1161

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = load i32, ptr %10, align 8, !tbaa !1115
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
  %19 = load ptr, ptr %18, align 8, !tbaa !507
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !513
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
  %29 = load ptr, ptr %9, align 8, !tbaa !513
  %30 = load i32, ptr %29, align 8, !tbaa !1115
  br label %31

31:                                               ; preds = %28, %25, %14
  %32 = phi i32 [ %30, %28 ], [ %15, %25 ], [ %15, %14 ]
  %33 = phi ptr [ %29, %28 ], [ %16, %25 ], [ %16, %14 ]
  %34 = add nuw nsw i64 %17, 1
  %35 = sext i32 %32 to i64
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %14, label %37, !llvm.loop !1162

37:                                               ; preds = %31, %8, %13, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clobber_return_register() local_unnamed_addr #0 !prof !1163 {
  tail call void @diddle_return_value(ptr noundef nonnull @do_clobber_return_reg, ptr noundef null) #22
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !513
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 11
  %7 = load i8, ptr %6, align 1, !tbaa !513
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9, !prof !1164

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !513
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !1165

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %21, !prof !1166

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #22
  %19 = icmp ugt i32 %18, 52
  br i1 %19, label %20, label %21, !prof !1036

20:                                               ; preds = %17
  tail call void @do_clobber_return_reg(ptr noundef nonnull %11, ptr poison) #22
  br label %21

21:                                               ; preds = %13, %17, %20, %9, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_clobber_return_reg(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !1167 !PGOFuncName !1168 {
  %3 = tail call ptr @emit_clobber(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_warn_unused_parameter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !506 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !513
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
  %12 = load ptr, ptr %11, align 8, !tbaa !513
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
  %22 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 225, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #23
  br label %23

23:                                               ; preds = %5, %10, %14, %21
  %24 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !1169

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_function_end() local_unnamed_addr #0 !prof !747 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !1170
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4, !prof !1027

4:                                                ; preds = %0
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4, !tbaa !1171
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @get_arg_pointer_save_area() #22
  br label %9

9:                                                ; preds = %7, %4, %0
  %10 = load i32, ptr @flag_stack_check, align 4, !tbaa !537
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %29, !prof !749

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
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 14), align 8, !tbaa !1043
  %24 = tail call ptr @emit_insn_before(ptr noundef %22, ptr noundef %23) #23
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !1172

29:                                               ; preds = %25, %12, %20, %9
  %30 = tail call i32 @in_sequence_p() #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !1173

32:                                               ; preds = %29, %32
  tail call void @end_sequence() #23
  %33 = tail call i32 @in_sequence_p() #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %32, !prof !675, !llvm.loop !1174

35:                                               ; preds = %32, %29
  tail call void @clear_pending_stack_adjust() #23
  tail call void @do_pending_stack_adjust() #23
  tail call void @force_next_line_note() #23
  %36 = load i32, ptr @input_location, align 4, !tbaa !537
  tail call void @set_curr_insn_source_location(i32 noundef %36) #23
  %37 = tail call ptr @get_last_insn() #23
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !1030
  %39 = tail call ptr @emit_label(ptr noundef %38) #23
  %40 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !537
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !1027

42:                                               ; preds = %35
  %43 = tail call ptr @gen_blockage() #23
  %44 = tail call ptr @emit_insn(ptr noundef %43) #23
  br label %45

45:                                               ; preds = %42, %35
  tail call void @expand_eh_return() #23
  %46 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %47 = getelementptr inbounds %struct.tree_decl_non_common, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !513
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %50, i64 11
  %52 = load i8, ptr %51, align 1, !tbaa !513
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %170, label %54, !prof !749

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %48, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !513
  %57 = icmp eq ptr %56, null
  br i1 %57, label %170, label %58, !prof !1073

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %65, !prof !1074

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #22
  %64 = icmp ugt i32 %63, 52
  br i1 %64, label %70, label %170, !prof !1034

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 16777216
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %170, label %70, !prof !1034

70:                                               ; preds = %65, %62
  %71 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1072
  %72 = load i32, ptr %71, align 8
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %76, !prof !1034

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4730, ptr noundef nonnull @.str.2) #23
  %75 = load i32, ptr %71, align 8
  br label %76

76:                                               ; preds = %70, %74
  %77 = phi i32 [ %72, %70 ], [ %75, %74 ]
  %78 = and i32 %77, 16711680
  %79 = icmp eq i32 %78, 65536
  br i1 %79, label %80, label %85, !prof !1034

80:                                               ; preds = %76
  %81 = load i32, ptr %56, align 8
  %82 = and i32 %81, 16711680
  %83 = and i32 %77, -16711681
  %84 = or disjoint i32 %82, %83
  store i32 %84, ptr %71, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !513
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93, !prof !1034

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
  br i1 %100, label %101, label %103, !prof !1034

101:                                              ; preds = %98
  %102 = load i32, ptr %56, align 8
  br label %119

103:                                              ; preds = %98
  %104 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !1035
  %105 = load ptr, ptr %86, align 8, !tbaa !513
  %106 = tail call zeroext i8 %104(ptr noundef %105) #23
  %107 = icmp eq i8 %106, 0
  %108 = load i32, ptr %56, align 8
  br i1 %107, label %119, label %109, !prof !1036

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
  br i1 %126, label %138, label %127, !prof !1036

127:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  %128 = load ptr, ptr %86, align 8, !tbaa !513
  %129 = load i64, ptr %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = lshr i32 %130, 21
  %132 = and i32 %131, 1
  store i32 %132, ptr %1, align 4, !tbaa !537
  %133 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %134 = getelementptr inbounds %struct.tree_common, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !513
  %136 = call i32 @promote_function_mode(ptr noundef nonnull %128, i32 noundef %125, ptr noundef nonnull %1, ptr noundef %135, i32 noundef 1) #23
  %137 = load i32, ptr %1, align 4, !tbaa !537
  call void @convert_move(ptr noundef nonnull %71, ptr noundef nonnull %56, i32 noundef %137) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  br label %170

138:                                              ; preds = %119
  %139 = and i32 %121, 65535
  %140 = icmp eq i32 %139, 15
  %141 = and i32 %120, 65535
  br i1 %140, label %142, label %149, !prof !1034

142:                                              ; preds = %138
  %143 = icmp eq i32 %141, 15
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  tail call void @emit_group_move(ptr noundef nonnull %71, ptr noundef nonnull %56) #23
  br label %170

145:                                              ; preds = %142
  %146 = load ptr, ptr %86, align 8, !tbaa !513
  %147 = tail call i64 @int_size_in_bytes(ptr noundef %146) #23
  %148 = trunc i64 %147 to i32
  tail call void @emit_group_load(ptr noundef nonnull %71, ptr noundef nonnull %56, ptr noundef %146, i32 noundef %148) #23
  br label %170

149:                                              ; preds = %138
  %150 = icmp eq i32 %141, 41
  br i1 %150, label %151, label %168, !prof !1034

151:                                              ; preds = %149
  %152 = zext nneg i32 %123 to i64
  %153 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !513
  %155 = icmp eq i8 %154, 10
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %152
  %158 = load i8, ptr %157, align 1, !tbaa !513
  %159 = icmp ult i8 %158, 5
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i32, ptr @generating_concat_p, align 4, !tbaa !537
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !537
  %162 = load i32, ptr %56, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = tail call ptr @gen_reg_rtx(i32 noundef %164) #23
  store i32 %161, ptr @generating_concat_p, align 4, !tbaa !537
  %166 = tail call ptr @emit_move_insn(ptr noundef %165, ptr noundef nonnull %56) #23
  %167 = tail call ptr @emit_move_insn(ptr noundef nonnull %71, ptr noundef %165) #23
  br label %170

168:                                              ; preds = %156, %151, %149
  %169 = tail call ptr @emit_move_insn(ptr noundef nonnull %71, ptr noundef nonnull %56) #23
  br label %170

170:                                              ; preds = %62, %65, %127, %160, %168, %144, %145, %109, %54, %45
  %171 = load ptr, ptr @cfun, align 8, !tbaa !507
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 20
  %173 = load i32, ptr %172, align 8
  %174 = and i32 %173, 201326592
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %217, label %176, !prof !1175

176:                                              ; preds = %170
  %177 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %178 = getelementptr inbounds %struct.tree_decl_non_common, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !513
  %180 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !513
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %189, !prof !1062

183:                                              ; preds = %176
  call void @make_decl_rtl(ptr noundef nonnull %179) #23
  %184 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %185 = getelementptr inbounds %struct.tree_decl_non_common, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !513
  %187 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !513
  br label %189

189:                                              ; preds = %176, %183
  %190 = phi ptr [ %186, %183 ], [ %179, %176 ]
  %191 = phi ptr [ %188, %183 ], [ %181, %176 ]
  %192 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !513
  %194 = getelementptr inbounds %struct.tree_decl_common, ptr %190, i64 0, i32 2
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 268435456
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %201, label %198, !prof !1032

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !513
  br label %204

201:                                              ; preds = %189
  %202 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !513
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi ptr [ %200, %198 ], [ %193, %201 ]
  %206 = phi ptr [ %191, %198 ], [ %203, %201 ]
  %207 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !1075
  %208 = call ptr @build_pointer_type(ptr noundef %205) #23
  %209 = load ptr, ptr @current_function_decl, align 8, !tbaa !507
  %210 = call ptr %207(ptr noundef %208, ptr noundef %209, i8 noundef zeroext 1) #23
  %211 = load i32, ptr %210, align 8
  %212 = or i32 %211, -2147483648
  store i32 %212, ptr %210, align 8
  %213 = lshr i32 %211, 16
  %214 = and i32 %213, 255
  %215 = call ptr @convert_memory_address_addr_space(i32 noundef %214, ptr noundef %206, i8 noundef zeroext 0) #23
  %216 = call ptr @emit_move_insn(ptr noundef nonnull %210, ptr noundef %215) #23
  store ptr %210, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1072
  br label %217

217:                                              ; preds = %170, %204
  call void @start_sequence() #23
  call void @clobber_return_register() #22
  %218 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %219 = call ptr @emit_insn_after(ptr noundef %218, ptr noundef %37) #23
  %220 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !1176
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222, !prof !1027

222:                                              ; preds = %217
  %223 = call ptr @emit_label(ptr noundef nonnull %220) #23
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !537
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227, !prof !1027

227:                                              ; preds = %224
  %228 = call ptr @gen_blockage() #23
  %229 = call ptr @emit_insn(ptr noundef %228) #23
  br label %230

230:                                              ; preds = %227, %224
  %231 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !1024
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233, !prof !1027

233:                                              ; preds = %230
  call void @stack_protect_epilogue() #22
  br label %234

234:                                              ; preds = %233, %230
  call fastcc void @use_return_register() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_arg_pointer_save_area() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !1170
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !513
  %5 = zext i8 %4 to i64
  %6 = tail call ptr @assign_stack_local(i32 noundef 16, i64 noundef %5, i32 noundef 0) #22
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 15), align 8, !tbaa !1170
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %1, %0 ], [ %6, %3 ]
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 40), align 4, !tbaa !1171
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  tail call void @start_sequence() #23
  %12 = tail call ptr @validize_mem(ptr noundef %8) #23
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !1046
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
declare void @anti_adjust_stack_and_probe(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @clear_pending_stack_adjust() local_unnamed_addr #4

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #4

; Function Attrs: optsize
declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_blockage() local_unnamed_addr #4

; Function Attrs: optsize
declare void @expand_eh_return() local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @shift_return_value(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_group_move(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @use_return_register() unnamed_addr #0 !prof !747 !PGOFuncName !1177 {
  tail call void @diddle_return_value(ptr noundef nonnull @do_use_return_reg, ptr noundef null) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_use_return_reg(ptr noundef %0, ptr nocapture readnone %1) #0 !prof !1178 !PGOFuncName !1179 {
  %3 = tail call ptr @emit_use(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare ptr @emit_use(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @push_topmost_sequence() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @entry_of_function() local_unnamed_addr #4

; Function Attrs: optsize
declare void @pop_topmost_sequence() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_copy_epilogue_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1180 {
  %3 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !1181

5:                                                ; preds = %2
  %6 = tail call ptr @htab_find(ptr noundef nonnull %3, ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !1182

8:                                                ; preds = %5
  %9 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %10 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %1, i32 noundef 1) #23
  %11 = load ptr, ptr %10, align 8, !tbaa !507
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !1183

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4945, ptr noundef nonnull @.str.2) #23
  br label %14

14:                                               ; preds = %8, %13
  store ptr %1, ptr %10, align 8, !tbaa !507
  br label %15

15:                                               ; preds = %2, %5, %14
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @prologue_epilogue_contains(ptr noundef %0) local_unnamed_addr #0 !prof !1184 {
  %2 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !507
  %3 = tail call fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %2) #22, !range !570
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !1185

5:                                                ; preds = %1
  %6 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %7 = tail call fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %6) #22, !range !570
  %8 = zext nneg i8 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @contains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1186 !PGOFuncName !1187 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %36, label %4, !prof !1188

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %32, !prof !1189

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !513
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %32, !prof !1190

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !513
  %17 = load i32, ptr %16, align 8, !tbaa !1115
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %23, %14
  %20 = phi i64 [ %24, %23 ], [ %18, %14 ]
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = add nsw i64 %20, -1
  %25 = load ptr, ptr %9, align 8, !tbaa !513
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !513
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !507
  %30 = tail call ptr @htab_find(ptr noundef nonnull %1, ptr noundef %29) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %19, label %36, !llvm.loop !1191

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
define dso_local void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #0 !prof !747 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !507
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5, !prof !749

5:                                                ; preds = %0
  %6 = tail call i64 @htab_elements(ptr noundef nonnull %3) #23
  %7 = tail call ptr @get_insns() #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9, !prof !721

9:                                                ; preds = %5, %29
  %10 = phi i64 [ %32, %29 ], [ %6, %5 ]
  %11 = phi ptr [ %34, %29 ], [ %7, %5 ]
  %12 = phi ptr [ %31, %29 ], [ null, %5 ]
  %13 = phi ptr [ %30, %29 ], [ null, %5 ]
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %22, !prof !1192

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !513
  %20 = icmp eq i32 %19, 5
  %21 = select i1 %20, ptr %11, ptr %13, !prof !1193
  br label %29

22:                                               ; preds = %9
  %23 = load ptr, ptr @prologue_insn_hash, align 8, !tbaa !507
  %24 = tail call fastcc zeroext i8 @contains(ptr noundef nonnull %11, ptr noundef %23) #22, !range !570
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26, !prof !1194

26:                                               ; preds = %22
  %27 = add i64 %10, -1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %29, !prof !1195

29:                                               ; preds = %17, %26, %22
  %30 = phi ptr [ %13, %26 ], [ %13, %22 ], [ %21, %17 ]
  %31 = phi ptr [ %11, %26 ], [ %12, %22 ], [ %12, %17 ]
  %32 = phi i64 [ %27, %26 ], [ %10, %22 ], [ %10, %17 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !513
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %9, !prof !1196, !llvm.loop !1197

36:                                               ; preds = %29
  %37 = icmp eq ptr %31, null
  br i1 %37, label %64, label %38, !prof !1198

38:                                               ; preds = %26, %36
  %39 = phi ptr [ %30, %36 ], [ %13, %26 ]
  %40 = phi ptr [ %31, %36 ], [ %11, %26 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %54, !prof !1199

42:                                               ; preds = %38, %49
  %43 = phi ptr [ %45, %49 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !513
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %50, label %49, !prof !1200

49:                                               ; preds = %42, %50
  br label %42

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !513
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %49, !prof !1201

54:                                               ; preds = %50, %38
  %55 = phi ptr [ %39, %38 ], [ %45, %50 ]
  %56 = load i32, ptr %40, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 12
  br i1 %58, label %59, label %62, !prof !749

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !513
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi ptr [ %61, %59 ], [ %40, %54 ]
  tail call void @reorder_insns(ptr noundef nonnull %55, ptr noundef nonnull %55, ptr noundef %63) #23
  br label %64

64:                                               ; preds = %5, %36, %62, %0
  %65 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %66 = icmp eq ptr %65, null
  br i1 %66, label %141, label %67, !prof !1202

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %68 = load ptr, ptr @cfun, align 8, !tbaa !507
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !966
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !1203
  %73 = tail call fastcc ptr @ei_start_1(ptr noundef %72) #22
  store i32 0, ptr %1, align 8, !tbaa.struct !1204
  %74 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %73, ptr %74, align 8, !tbaa.struct !1205
  %75 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %73, ptr noundef nonnull %2) #22, !range !570
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %140, label %77, !prof !1206

77:                                               ; preds = %67, %135
  %78 = load ptr, ptr %2, align 8, !tbaa !507
  %79 = load ptr, ptr %78, align 8, !tbaa !1207
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !513
  %82 = load ptr, ptr %81, align 8, !tbaa !513
  %83 = icmp eq ptr %82, null
  br i1 %83, label %135, label %84, !prof !721

84:                                               ; preds = %77, %112
  %85 = phi ptr [ %116, %112 ], [ %82, %77 ]
  %86 = phi ptr [ %114, %112 ], [ null, %77 ]
  %87 = phi ptr [ %113, %112 ], [ null, %77 ]
  %88 = load ptr, ptr %80, align 8, !tbaa !513
  %89 = getelementptr inbounds %struct.rtl_bb_info, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !1209
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !513
  %93 = icmp eq ptr %85, %92
  br i1 %93, label %118, label %94, !prof !1211

94:                                               ; preds = %84
  %95 = load i32, ptr %85, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %98, label %104, !prof !1212

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 1
  %100 = load i32, ptr %99, align 8, !tbaa !513
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %102, label %112, !prof !1213

102:                                              ; preds = %98
  %103 = icmp eq ptr %87, null
  br i1 %103, label %112, label %128, !prof !1214

104:                                              ; preds = %94
  %105 = icmp eq ptr %87, null
  br i1 %105, label %106, label %112, !prof !1215

106:                                              ; preds = %104
  %107 = load ptr, ptr @epilogue_insn_hash, align 8, !tbaa !507
  %108 = tail call fastcc zeroext i8 @contains(ptr noundef nonnull %85, ptr noundef %107) #22, !range !570
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %112, label %110, !prof !1216

110:                                              ; preds = %106
  %111 = icmp eq ptr %86, null
  br i1 %111, label %112, label %128, !prof !1217

112:                                              ; preds = %102, %98, %110, %106, %104
  %113 = phi ptr [ null, %102 ], [ %87, %98 ], [ %85, %110 ], [ null, %106 ], [ %87, %104 ]
  %114 = phi ptr [ %85, %102 ], [ %86, %98 ], [ null, %110 ], [ %86, %106 ], [ %86, %104 ]
  %115 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 2
  %116 = load ptr, ptr %115, align 8, !tbaa !513
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %84, !prof !1218, !llvm.loop !1219

118:                                              ; preds = %84, %112
  %119 = phi ptr [ %87, %84 ], [ %113, %112 ]
  %120 = phi ptr [ %86, %84 ], [ %114, %112 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122, !prof !704

122:                                              ; preds = %118
  %123 = icmp eq ptr %119, null
  br i1 %123, label %124, label %128, !prof !694

124:                                              ; preds = %122
  %125 = load ptr, ptr %80, align 8, !tbaa !513
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !1209
  br label %128

128:                                              ; preds = %102, %110, %124, %122
  %129 = phi ptr [ %120, %124 ], [ %120, %122 ], [ %85, %102 ], [ %86, %110 ]
  %130 = phi ptr [ %127, %124 ], [ %119, %122 ], [ %87, %102 ], [ %85, %110 ]
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !513
  %133 = icmp eq ptr %132, %129
  br i1 %133, label %135, label %134, !prof !1220

134:                                              ; preds = %128
  tail call void @reorder_insns(ptr noundef nonnull %129, ptr noundef nonnull %129, ptr noundef %132) #23
  br label %135

135:                                              ; preds = %77, %128, %134, %118
  call fastcc void @ei_next(ptr noundef nonnull %1) #22
  %136 = load i32, ptr %1, align 8
  %137 = load ptr, ptr %74, align 8
  %138 = call fastcc zeroext i8 @ei_cond(i32 %136, ptr %137, ptr noundef nonnull %2) #22, !range !570
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %77, !prof !1221, !llvm.loop !1222

140:                                              ; preds = %135, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #24
  br label %141

141:                                              ; preds = %140, %64
  ret void
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !1223 !PGOFuncName !1224 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1225 !PGOFuncName !1226 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !570
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1227

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !507
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1228 !PGOFuncName !1229 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1230

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1231

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.2) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1232
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1232
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1234 !PGOFuncName !1235 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1236

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1237 !PGOFuncName !1238 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1239

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1240 !PGOFuncName !1241 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1242

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1243
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1245 !PGOFuncName !1246 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1247

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !507
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1248 !PGOFuncName !1249 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !507
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @current_function_name() local_unnamed_addr #0 !prof !506 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !507
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !1250
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !518
  %7 = tail call ptr %4(ptr noundef %6, i32 noundef 2) #23
  br label %8

8:                                                ; preds = %0, %3
  %9 = phi ptr [ %7, %3 ], [ @.str.12, %0 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @used_types_insert(ptr noundef %0) local_unnamed_addr #0 !prof !1251 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %13 [
    i16 10, label %6
    i16 12, label %6
    i16 15, label %6
  ], !prof !1252

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !513
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !1253

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !513
  br label %2, !llvm.loop !1254

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !513
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !1255

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !513
  br label %28

20:                                               ; preds = %6, %13
  %21 = phi ptr [ %15, %13 ], [ %8, %6 ]
  %22 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !513
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !513
  %26 = icmp eq ptr %21, %25
  %27 = select i1 %26, ptr %23, ptr %3, !prof !1256
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi ptr [ %19, %17 ], [ %27, %20 ]
  %30 = load i32, ptr @debug_info_level, align 4, !tbaa !537
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32, !prof !1257

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !507
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call fastcc void @used_types_insert_helper(ptr noundef %29, ptr noundef nonnull %33) #22
  br label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @types_used_by_cur_var_decl, align 8, !tbaa !507
  %38 = tail call ptr @tree_cons_stat(ptr noundef %29, ptr noundef null, ptr noundef %37) #23
  store ptr %38, ptr @types_used_by_cur_var_decl, align 8, !tbaa !507
  br label %39

39:                                               ; preds = %35, %36, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @used_types_insert_helper(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !506 !PGOFuncName !1258 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !1259
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !507
  %10 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !507
  %11 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %11, ptr %5, align 8, !tbaa !1259
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ %6, %4 ]
  %14 = tail call ptr @htab_find_slot(ptr noundef %13, ptr noundef nonnull %0, i32 noundef 1) #23
  %15 = load ptr, ptr %14, align 8, !tbaa !507
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store ptr %0, ptr %14, align 8, !tbaa !507
  br label %18

18:                                               ; preds = %12, %17, %2
  ret void
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @types_used_by_vars_do_hash(ptr noundef %0) #0 !prof !506 {
  %2 = tail call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0) #22
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_types_used_by_vars_entry(ptr noundef %0) unnamed_addr #0 !prof !506 !PGOFuncName !1260 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1261
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !1263
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

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @types_used_by_vars_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !506 {
  %3 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1261
  %5 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1261
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !1263
  %10 = load ptr, ptr %1, align 8, !tbaa !1263
  %11 = icmp eq ptr %9, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @types_used_by_var_decl_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !506 {
  %3 = alloca %struct.types_used_by_vars_entry, align 8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %8 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %3, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !1261
  store ptr %0, ptr %3, align 8, !tbaa !1263
  %9 = load ptr, ptr @types_used_by_vars_hash, align 8, !tbaa !507
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @types_used_by_vars_do_hash, ptr noundef nonnull @types_used_by_vars_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %12, ptr @types_used_by_vars_hash, align 8, !tbaa !507
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = call fastcc i32 @hash_types_used_by_vars_entry(ptr noundef nonnull %3) #22
  %16 = call ptr @htab_find_slot_with_hash(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %15, i32 noundef 1) #23
  %17 = load ptr, ptr %16, align 8, !tbaa !507
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_stat(i64 noundef 16) #23
  store ptr %0, ptr %20, align 8, !tbaa !1263
  %21 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %20, i64 0, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !1261
  store ptr %20, ptr %16, align 8, !tbaa !507
  br label %22

22:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @rest_of_handle_check_leaf_regs() #10 !prof !747 !PGOFuncName !1264 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_thread_prologue_and_epilogue() #0 !prof !747 !PGOFuncName !1265 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !537
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3, !prof !749

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @cleanup_cfg(i32 noundef 1) #23
  br label %5

5:                                                ; preds = %3, %0
  tail call fastcc void @thread_prologue_and_epilogue_insns() #22
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @cleanup_cfg(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @thread_prologue_and_epilogue_insns() unnamed_addr #0 !prof !747 !PGOFuncName !1266 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %4 = load ptr, ptr @cfun, align 8, !tbaa !507
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !966
  %7 = load ptr, ptr %6, align 8, !tbaa !977
  tail call void @rtl_profile_for_bb(ptr noundef %7) #23
  tail call void @start_sequence() #23
  %8 = tail call ptr @gen_prologue() #23
  %9 = tail call ptr @emit_insn(ptr noundef %8) #23
  %10 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !1028
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12, !prof !1027

12:                                               ; preds = %0
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !1021
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !507
  %17 = tail call ptr @emit_use(ptr noundef %16) #23
  br label %18

18:                                               ; preds = %15, %12, %0
  tail call fastcc void @record_insns(ptr noundef %8, ptr noundef null, ptr noundef nonnull @prologue_insn_hash) #22
  %19 = tail call ptr @emit_note(i32 noundef 5) #23
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !1028
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !1027

22:                                               ; preds = %18
  %23 = tail call ptr @gen_blockage() #23
  %24 = tail call ptr @emit_insn(ptr noundef %23) #23
  br label %25

25:                                               ; preds = %22, %18
  %26 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  %27 = load i32, ptr @prologue_locator, align 4, !tbaa !537
  tail call fastcc void @set_insn_locators(ptr noundef %26, i32 noundef %27) #22
  %28 = load ptr, ptr @cfun, align 8, !tbaa !507
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !966
  %31 = load ptr, ptr %30, align 8, !tbaa !977
  %32 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %31) #22, !range !570
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39, !prof !749

34:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5052, ptr noundef nonnull @.str.2) #23
  %35 = load ptr, ptr @cfun, align 8, !tbaa !507
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !966
  %38 = load ptr, ptr %37, align 8, !tbaa !977
  br label %39

39:                                               ; preds = %25, %34
  %40 = phi ptr [ %31, %25 ], [ %38, %34 ]
  %41 = tail call fastcc ptr @single_succ_edge(ptr noundef %40) #22
  tail call void @insert_insn_on_edge(ptr noundef %26, ptr noundef %41) #23
  %42 = load ptr, ptr @cfun, align 8, !tbaa !507
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !966
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !1203
  %47 = tail call fastcc ptr @ei_start_1(ptr noundef %46) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  %48 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %47, ptr %48, align 8, !tbaa.struct !1205
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %47, ptr noundef nonnull %1) #22, !range !570
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %62, label %51, !prof !1267

51:                                               ; preds = %39, %57
  %52 = load ptr, ptr %1, align 8, !tbaa !507
  %53 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !1268
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !prof !1269

57:                                               ; preds = %51
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %58 = load i32, ptr %2, align 8
  %59 = load ptr, ptr %48, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %1) #22, !range !570
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %51, !prof !1270, !llvm.loop !1271

62:                                               ; preds = %57, %39
  %63 = load ptr, ptr %1, align 8, !tbaa !507
  %64 = icmp eq ptr %63, null
  br i1 %64, label %269, label %65, !prof !1272

65:                                               ; preds = %51, %62
  %66 = load ptr, ptr @cfun, align 8, !tbaa !507
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !966
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !1203
  tail call void @rtl_profile_for_bb(ptr noundef %70) #23
  %71 = load i32, ptr @optimize, align 4, !tbaa !537
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %198, label %73, !prof !1273

73:                                               ; preds = %65
  %74 = tail call i32 @ix86_can_use_return_insn_p() #23
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %198, label %76, !prof !1269

76:                                               ; preds = %73
  %77 = load ptr, ptr @cfun, align 8, !tbaa !507
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !966
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !1203
  %82 = tail call fastcc ptr @ei_start_1(ptr noundef %81) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  store ptr %82, ptr %48, align 8, !tbaa.struct !1205
  %83 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %82, ptr noundef nonnull %1) #22, !range !570
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %76, %91
  %86 = load ptr, ptr %1, align 8, !tbaa !507
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !1268
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %92 = load i32, ptr %2, align 8
  %93 = load ptr, ptr %48, align 8
  %94 = call fastcc zeroext i8 @ei_cond(i32 %92, ptr %93, ptr noundef nonnull %1) #22, !range !570
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %85, !llvm.loop !1274

96:                                               ; preds = %91, %76
  %97 = load ptr, ptr %1, align 8, !tbaa !507
  %98 = icmp eq ptr %97, null
  br i1 %98, label %269, label %99

99:                                               ; preds = %85, %96
  %100 = phi ptr [ %97, %96 ], [ %86, %85 ]
  %101 = load ptr, ptr %100, align 8, !tbaa !1207
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !513
  %104 = getelementptr inbounds %struct.rtl_bb_info, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !513
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
  %117 = load ptr, ptr %116, align 8, !tbaa !513
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %107, !llvm.loop !1275

119:                                              ; preds = %115, %112, %107
  %120 = phi ptr [ %108, %107 ], [ %108, %112 ], [ null, %115 ]
  %121 = load ptr, ptr %102, align 8, !tbaa !513
  br label %122

122:                                              ; preds = %119, %99
  %123 = phi ptr [ %103, %99 ], [ %121, %119 ]
  %124 = phi ptr [ null, %99 ], [ %120, %119 ]
  %125 = load ptr, ptr %123, align 8, !tbaa !1276
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
  store i32 0, ptr %3, align 8, !tbaa.struct !1204
  %133 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %132, ptr %133, align 8, !tbaa.struct !1205
  %134 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %132) #22
  %135 = icmp eq ptr %134, null
  br i1 %135, label %186, label %136

136:                                              ; preds = %131, %181
  %137 = phi ptr [ %184, %181 ], [ %134, %131 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !1207
  %139 = load ptr, ptr @cfun, align 8, !tbaa !507
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !966
  %142 = load ptr, ptr %141, align 8, !tbaa !977
  %143 = icmp eq ptr %138, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1277

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !513
  %148 = getelementptr inbounds %struct.rtl_bb_info, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !1209
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 1, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !513
  %156 = icmp eq ptr %155, %124
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %145
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1277

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
  br label %181, !llvm.loop !1277

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %138) #22, !range !570
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1277

174:                                              ; preds = %163
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  br label %181, !llvm.loop !1277

175:                                              ; preds = %170, %161
  %176 = load ptr, ptr @cfun, align 8, !tbaa !507
  %177 = getelementptr inbounds %struct.function, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !966
  %179 = getelementptr inbounds %struct.control_flow_graph, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !1203
  tail call void @redirect_edge_succ(ptr noundef nonnull %137, ptr noundef %180) #23
  br label %181

181:                                              ; preds = %175, %174, %173, %169, %157, %144
  %182 = load i32, ptr %3, align 8
  %183 = load ptr, ptr %133, align 8
  %184 = tail call fastcc ptr @ei_safe_edge(i32 %182, ptr %183) #22
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %136

186:                                              ; preds = %181, %131
  store ptr null, ptr %1, align 8, !tbaa !507
  %187 = load ptr, ptr %102, align 8, !tbaa !513
  %188 = getelementptr inbounds %struct.rtl_bb_info, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !1209
  %190 = tail call ptr @emit_barrier_after(ptr noundef %189) #23
  tail call fastcc void @emit_return_into_block(ptr noundef %101) #22
  %191 = load ptr, ptr %102, align 8, !tbaa !513
  %192 = getelementptr inbounds %struct.rtl_bb_info, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !1209
  %194 = tail call fastcc ptr @single_succ_edge(ptr noundef %101) #22
  %195 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !1268
  %197 = and i32 %196, -2
  store i32 %197, ptr %195, align 8, !tbaa !1268
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br label %269

198:                                              ; preds = %122, %127, %73, %65
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !537
  %199 = load ptr, ptr @cfun, align 8, !tbaa !507
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !966
  %202 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !1203
  %204 = tail call fastcc ptr @ei_start_1(ptr noundef %203) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  store ptr %204, ptr %48, align 8, !tbaa.struct !1205
  %205 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %204, ptr noundef nonnull %1) #22, !range !570
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %239, label %207, !prof !1206

207:                                              ; preds = %198, %234
  %208 = load ptr, ptr %1, align 8, !tbaa !507
  %209 = getelementptr inbounds %struct.edge_def, ptr %208, i64 0, i32 7
  %210 = load i32, ptr %209, align 8, !tbaa !1268
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %234, !prof !1278

213:                                              ; preds = %207
  %214 = load ptr, ptr %208, align 8, !tbaa !1207
  %215 = getelementptr inbounds %struct.basic_block_def, ptr %214, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !513
  %217 = getelementptr inbounds %struct.rtl_bb_info, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !1209
  %219 = tail call i32 @eh_returnjump_p(ptr noundef %218) #23
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %234, label %221, !prof !1279

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !513
  %224 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !513
  %226 = tail call ptr @try_split(ptr noundef %225, ptr noundef %218, i32 noundef 1) #23
  %227 = icmp eq ptr %226, %218
  br i1 %227, label %234, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %230 = load ptr, ptr %229, align 8, !tbaa !513
  %231 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1, i32 0, i32 0, i64 2
  %232 = load ptr, ptr %231, align 8, !tbaa !513
  tail call fastcc void @record_insns(ptr noundef %230, ptr noundef %232, ptr noundef nonnull @epilogue_insn_hash) #22
  %233 = tail call ptr @emit_note_after(i32 noundef 6, ptr noundef %223) #23
  br label %234

234:                                              ; preds = %221, %213, %207, %228
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %235 = load i32, ptr %2, align 8
  %236 = load ptr, ptr %48, align 8
  %237 = call fastcc zeroext i8 @ei_cond(i32 %235, ptr %236, ptr noundef nonnull %1) #22, !range !570
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %207, !prof !1280, !llvm.loop !1281

239:                                              ; preds = %234, %198
  %240 = load ptr, ptr @cfun, align 8, !tbaa !507
  %241 = getelementptr inbounds %struct.function, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !966
  %243 = getelementptr inbounds %struct.control_flow_graph, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !1203
  %245 = tail call fastcc ptr @ei_start_1(ptr noundef %244) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  store ptr %245, ptr %48, align 8, !tbaa.struct !1205
  %246 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %245, ptr noundef nonnull %1) #22, !range !570
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %259, label %248, !prof !1282

248:                                              ; preds = %239, %254
  %249 = load ptr, ptr %1, align 8, !tbaa !507
  %250 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 7
  %251 = load i32, ptr %250, align 8, !tbaa !1268
  %252 = and i32 %251, 1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %262, !prof !1278

254:                                              ; preds = %248
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %255 = load i32, ptr %2, align 8
  %256 = load ptr, ptr %48, align 8
  %257 = call fastcc zeroext i8 @ei_cond(i32 %255, ptr %256, ptr noundef nonnull %1) #22, !range !570
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %248, !prof !1283, !llvm.loop !1284

259:                                              ; preds = %254, %239
  %260 = load ptr, ptr %1, align 8, !tbaa !507
  %261 = icmp eq ptr %260, null
  br i1 %261, label %269, label %262, !prof !1285

262:                                              ; preds = %248, %259
  %263 = phi ptr [ %260, %259 ], [ %249, %248 ]
  tail call void @start_sequence() #23
  %264 = tail call ptr @emit_note(i32 noundef 6) #23
  %265 = tail call ptr @gen_epilogue() #23
  %266 = tail call ptr @emit_jump_insn(ptr noundef %265) #23
  tail call fastcc void @record_insns(ptr noundef %265, ptr noundef null, ptr noundef nonnull @epilogue_insn_hash) #22
  %267 = load i32, ptr @epilogue_locator, align 4, !tbaa !537
  tail call fastcc void @set_insn_locators(ptr noundef %265, i32 noundef %267) #22
  %268 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  tail call void @insert_insn_on_edge(ptr noundef %268, ptr noundef nonnull %263) #23
  br label %269

269:                                              ; preds = %186, %96, %259, %62, %262
  %270 = phi ptr [ null, %62 ], [ null, %259 ], [ %264, %262 ], [ %193, %186 ], [ null, %96 ]
  tail call void @default_rtl_profile() #23
  tail call void @commit_edge_insertions() #23
  %271 = load ptr, ptr @cfun, align 8, !tbaa !507
  %272 = getelementptr inbounds %struct.function, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !966
  %274 = getelementptr inbounds %struct.control_flow_graph, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !1203
  %276 = tail call fastcc ptr @ei_start_1(ptr noundef %275) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  store ptr %276, ptr %48, align 8, !tbaa.struct !1205
  %277 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %276, ptr noundef nonnull %1) #22, !range !570
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %301, label %279, !prof !752

279:                                              ; preds = %269, %296
  %280 = load ptr, ptr %1, align 8, !tbaa !507
  %281 = getelementptr inbounds %struct.edge_def, ptr %280, i64 0, i32 7
  %282 = load i32, ptr %281, align 8, !tbaa !1268
  %283 = and i32 %282, 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %296, label %285, !prof !1286

285:                                              ; preds = %279
  %286 = load ptr, ptr %280, align 8, !tbaa !1207
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 7
  %288 = load ptr, ptr %287, align 8, !tbaa !513
  %289 = getelementptr inbounds %struct.rtl_bb_info, ptr %288, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !1209
  %291 = tail call i32 @returnjump_p(ptr noundef %290) #23
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %285
  %294 = load i32, ptr %281, align 8, !tbaa !1268
  %295 = and i32 %294, -2
  store i32 %295, ptr %281, align 8, !tbaa !1268
  br label %296

296:                                              ; preds = %279, %285, %293
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %297 = load i32, ptr %2, align 8
  %298 = load ptr, ptr %48, align 8
  %299 = call fastcc zeroext i8 @ei_cond(i32 %297, ptr %298, ptr noundef nonnull %1) #22, !range !570
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %279, !prof !1287, !llvm.loop !1288

301:                                              ; preds = %296, %269
  %302 = load ptr, ptr @cfun, align 8, !tbaa !507
  %303 = getelementptr inbounds %struct.function, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !966
  %305 = getelementptr inbounds %struct.control_flow_graph, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !1203
  %307 = tail call fastcc ptr @ei_start_1(ptr noundef %306) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !1204
  store ptr %307, ptr %48, align 8, !tbaa.struct !1205
  %308 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %307) #22
  %309 = icmp eq ptr %308, null
  br i1 %309, label %332, label %310, !prof !752

310:                                              ; preds = %301, %327
  %311 = phi ptr [ %330, %327 ], [ %308, %301 ]
  %312 = load ptr, ptr %311, align 8, !tbaa !1207
  %313 = getelementptr inbounds %struct.basic_block_def, ptr %312, i64 0, i32 7
  %314 = load ptr, ptr %313, align 8, !tbaa !513
  %315 = getelementptr inbounds %struct.rtl_bb_info, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !1209
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 16842751
  %319 = icmp eq i32 %318, 16777226
  br i1 %319, label %320, label %327, !prof !1289, !llvm.loop !1290

320:                                              ; preds = %310
  tail call void @start_sequence() #23
  %321 = tail call ptr @emit_note(i32 noundef 6) #23
  %322 = tail call ptr @gen_sibcall_epilogue() #23
  %323 = tail call ptr @emit_insn(ptr noundef %322) #23
  %324 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  tail call fastcc void @record_insns(ptr noundef %324, ptr noundef null, ptr noundef nonnull @epilogue_insn_hash) #22
  %325 = load i32, ptr @epilogue_locator, align 4, !tbaa !537
  tail call fastcc void @set_insn_locators(ptr noundef %324, i32 noundef %325) #22
  %326 = tail call ptr @emit_insn_before(ptr noundef %324, ptr noundef nonnull %316) #23
  br label %327

327:                                              ; preds = %310, %320
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %328 = load i32, ptr %2, align 8
  %329 = load ptr, ptr %48, align 8
  %330 = tail call fastcc ptr @ei_safe_edge(i32 %328, ptr %329) #22
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %310, !prof !1287

332:                                              ; preds = %327, %301
  store ptr null, ptr %1, align 8, !tbaa !507
  %333 = icmp eq ptr %270, null
  br i1 %333, label %350, label %334, !prof !1291

334:                                              ; preds = %332, %348
  %335 = phi ptr [ %337, %348 ], [ %270, %332 ]
  %336 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 2
  %337 = load ptr, ptr %336, align 8, !tbaa !513
  %338 = load i32, ptr %335, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 13
  br i1 %340, label %341, label %348, !prof !1292

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 1
  %343 = load i32, ptr %342, align 8, !tbaa !513
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %348, !prof !1293

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.rtx_def, ptr %270, i64 0, i32 1, i32 0, i32 0, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !513
  tail call void @reorder_insns(ptr noundef nonnull %335, ptr noundef nonnull %335, ptr noundef %347) #23
  br label %348

348:                                              ; preds = %334, %341, %345
  %349 = icmp eq ptr %337, null
  br i1 %349, label %350, label %334, !prof !1294, !llvm.loop !1295

350:                                              ; preds = %348, %332
  store i32 1, ptr @epilogue_completed, align 4, !tbaa !537
  tail call void @df_update_entry_exit_and_calls() #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_prologue() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_insns(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1296 !PGOFuncName !1297 {
  %4 = load ptr, ptr %2, align 8, !tbaa !507
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !1298

6:                                                ; preds = %3
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !507
  %8 = load ptr, ptr @htab_eq_pointer, align 8, !tbaa !507
  %9 = tail call ptr @htab_create_alloc(i64 noundef 17, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %9, ptr %2, align 8, !tbaa !507
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %12 = icmp eq ptr %0, %1
  br i1 %12, label %23, label %13, !prof !1299

13:                                               ; preds = %10, %19
  %14 = phi ptr [ %21, %19 ], [ %0, %10 ]
  %15 = tail call ptr @htab_find_slot(ptr noundef %11, ptr noundef %14, i32 noundef 1) #23
  %16 = load ptr, ptr %15, align 8, !tbaa !507
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !1300

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4927, ptr noundef nonnull @.str.2) #23
  br label %19

19:                                               ; preds = %13, %18
  store ptr %14, ptr %15, align 8, !tbaa !507
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !513
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %13, !prof !1301, !llvm.loop !1302

23:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_insn_locators(ptr noundef %0, i32 noundef %1) unnamed_addr #12 !prof !1296 !PGOFuncName !1303 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4, !prof !1299

4:                                                ; preds = %2, %12
  %5 = phi ptr [ %14, %12 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %12, !prof !1304

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !513
  br label %12

12:                                               ; preds = %4, %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !513
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !prof !1305, !llvm.loop !1306

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !1307 !PGOFuncName !1308 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1309
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !747 !PGOFuncName !1311 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !570
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !749

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.2) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1309
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #22
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @ix86_can_use_return_insn_p() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @active_insn_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1296 !PGOFuncName !1312 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !570
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !1313

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_return_into_block(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !506 !PGOFuncName !1314 {
  %2 = tail call ptr @gen_return() #23
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1209
  %7 = tail call ptr @emit_jump_insn_after(ptr noundef %2, ptr noundef %6) #23
  ret void
}

; Function Attrs: optsize
declare i32 @condjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @eh_returnjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_epilogue() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @returnjump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_sibcall_epilogue() local_unnamed_addr #4

; Function Attrs: optsize
declare void @df_update_entry_exit_and_calls() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @gen_return() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_match_asm_constraints() #0 !prof !747 !PGOFuncName !1315 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 32), align 4, !tbaa !1316
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %75, label %3, !prof !1027

3:                                                ; preds = %0
  %4 = tail call i32 @df_set_flags(i32 noundef 32) #23
  %5 = load ptr, ptr @cfun, align 8, !tbaa !507
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !966
  %8 = load ptr, ptr %7, align 8, !tbaa !977
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !1317
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1203
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %75, label %14

14:                                               ; preds = %3, %66
  %15 = phi ptr [ %67, %66 ], [ %5, %3 ]
  %16 = phi ptr [ %69, %66 ], [ %10, %3 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !513
  %19 = load ptr, ptr %18, align 8, !tbaa !513
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21

21:                                               ; preds = %14, %60
  %22 = phi ptr [ %62, %60 ], [ %19, %14 ]
  %23 = load ptr, ptr %17, align 8, !tbaa !513
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !1209
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !513
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
  %36 = load ptr, ptr %35, align 8, !tbaa !513
  %37 = load i32, ptr %36, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %60 [
    i16 15, label %39
    i16 23, label %46
  ]

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !513
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %41, align 8, !tbaa !1115
  %44 = load ptr, ptr %42, align 8, !tbaa !507
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
  %55 = load ptr, ptr %54, align 8, !tbaa !513
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 17
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call fastcc void @match_asm_constraints_1(ptr noundef nonnull %22, ptr noundef nonnull %49, i32 noundef %50) #22
  br label %60

60:                                               ; preds = %29, %34, %46, %53, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !513
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21, !llvm.loop !1318

64:                                               ; preds = %21, %60
  %65 = load ptr, ptr @cfun, align 8, !tbaa !507
  br label %66

66:                                               ; preds = %64, %14
  %67 = phi ptr [ %65, %64 ], [ %15, %14 ]
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !1317
  %70 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !966
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !1203
  %74 = icmp eq ptr %69, %73
  br i1 %74, label %75, label %14, !llvm.loop !1319

75:                                               ; preds = %66, %3, %0
  %76 = phi i32 [ 0, %0 ], [ 131072, %3 ], [ 131072, %66 ]
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @match_asm_constraints_1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !506 !PGOFuncName !1320 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !507
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !513
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !513
  %10 = load i32, ptr %9, align 8, !tbaa !1115
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
  %24 = load ptr, ptr %15, align 8, !tbaa !513
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !507
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %29 = load i8, ptr %28, align 1, !tbaa !513
  %30 = icmp eq i8 %29, 37
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = call i64 @strtoul(ptr noundef nonnull %32, ptr noundef nonnull %4, i32 noundef 10) #22
  %34 = load ptr, ptr %4, align 8, !tbaa !507
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
  %44 = load ptr, ptr %43, align 8, !tbaa !507
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !513
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %23
  %48 = load ptr, ptr %47, align 8, !tbaa !507
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
  %69 = load ptr, ptr %68, align 8, !tbaa !507
  %70 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %46, ptr noundef %69) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = add nuw nsw i64 %67, 1
  %74 = icmp eq i64 %73, %17
  br i1 %74, label %78, label %66, !llvm.loop !1321

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
  %84 = load i8, ptr %83, align 1, !tbaa !513
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds ptr, ptr %1, i64 %82
  %88 = load ptr, ptr %87, align 8, !tbaa !507
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !513
  %91 = icmp eq ptr %48, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %81, %86
  %93 = add nuw nsw i64 %82, 1
  %94 = icmp eq i64 %93, %18
  br i1 %94, label %100, label %81, !llvm.loop !1322

95:                                               ; preds = %86
  %96 = trunc i64 %82 to i32
  br label %97

97:                                               ; preds = %95, %80
  %98 = phi i32 [ 0, %80 ], [ %96, %95 ]
  %99 = icmp eq i32 %98, %2
  br i1 %99, label %100, label %144

100:                                              ; preds = %97, %78, %92
  %101 = getelementptr inbounds i8, ptr %12, i64 %42
  store i8 1, ptr %101, align 1, !tbaa !513
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
  %110 = load ptr, ptr %109, align 8, !tbaa !507
  %111 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !513
  %113 = tail call i32 @rtx_equal_p(ptr noundef %112, ptr noundef nonnull %48) #23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load ptr, ptr %109, align 8, !tbaa !507
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !513
  %119 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %48, ptr noundef %118) #23
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %115
  %122 = load ptr, ptr %109, align 8, !tbaa !507
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !513
  %125 = tail call ptr @replace_rtx(ptr noundef %124, ptr noundef nonnull %48, ptr noundef nonnull %46) #23
  %126 = load ptr, ptr %109, align 8, !tbaa !507
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  store ptr %125, ptr %127, align 8, !tbaa !513
  br label %128

128:                                              ; preds = %107, %115, %121
  %129 = add nuw nsw i64 %108, 1
  %130 = icmp eq i64 %129, %106
  br i1 %130, label %131, label %107, !llvm.loop !1323

131:                                              ; preds = %128, %100
  br label %132

132:                                              ; preds = %131, %141
  %133 = phi i64 [ %142, %141 ], [ 0, %131 ]
  %134 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !507
  %136 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %48, ptr noundef %135) #23
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %134, align 8, !tbaa !507
  %140 = tail call ptr @replace_rtx(ptr noundef %139, ptr noundef nonnull %48, ptr noundef nonnull %46) #23
  store ptr %140, ptr %134, align 8, !tbaa !507
  br label %141

141:                                              ; preds = %132, %138
  %142 = add nuw nsw i64 %133, 1
  %143 = icmp eq i64 %142, %17
  br i1 %143, label %147, label %132, !llvm.loop !1324

144:                                              ; preds = %97, %75, %40, %52, %60, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %145 = add nuw nsw i64 %23, 1
  %146 = icmp eq i64 %145, %17
  br i1 %146, label %150, label %22, !llvm.loop !1325

147:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %148 = add nuw nsw i64 %23, 1
  %149 = icmp eq i64 %148, %17
  br i1 %149, label %151, label %19, !llvm.loop !1325

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
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #0 !prof !506 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !623
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %8) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !625
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %13) #22
  br label %16

16:                                               ; preds = %1, %11, %15, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_temp_slot(ptr noundef %0) local_unnamed_addr #0 !prof !506 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !613
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !614
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %12) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !593
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17) #23
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !595
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #23
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P23temp_slot_address_entry4htab(ptr noundef %0) #0 !prof !506 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1326
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !1328
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !1326
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !507
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_temp_slot_address_entry(ptr noundef nonnull %19) #22
  %22 = load i64, ptr %11, align 8, !tbaa !1328
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !1329

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !1326
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
define dso_local void @gt_pch_nx_temp_slot_address_entry(ptr noundef %0) local_unnamed_addr #0 !prof !506 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23temp_slot_address_entry, i32 noundef 63) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !623
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %6) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.temp_slot_address_entry, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !625
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %11) #22
  br label %14

14:                                               ; preds = %9, %13, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_23temp_slot_address_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !506 {
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
declare void @gt_pch_nx_rtx_def(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_temp_slot(ptr noundef %0) local_unnamed_addr #0 !prof !506 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9temp_slot, i32 noundef 124) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !613
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %5) #22
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !614
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %10) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !593
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15) #23
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.temp_slot, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !595
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #23
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9temp_slot(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !506 {
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
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P23temp_slot_address_entry4htab(ptr noundef %0) #0 !prof !506 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 199) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1326
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !1328
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !1326
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !507
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_temp_slot_address_entry(ptr noundef nonnull %17) #22
  %20 = load i64, ptr %9, align 8, !tbaa !1328
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !1330

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !1326
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P23temp_slot_address_entry4htab, i32 noundef 217) #23
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P23temp_slot_address_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !506 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1326
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !1328
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !1326
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #23
  %19 = load i64, ptr %9, align 8, !tbaa !1328
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !1331

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
declare i32 @ggc_marked_p(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_ggc_m_P7rtx_def4htab(ptr noundef) #4

; Function Attrs: optsize
declare void @gt_pch_n_P7rtx_def4htab(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!505}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!36 = !{ptr @allocate_struct_function, ptr @ggc_alloc_cleared_stat, i64 10856}
!37 = !{ptr @allocate_struct_function, ptr @init_eh_for_function, i64 10856}
!38 = !{ptr @allocate_struct_function, ptr @ix86_call_abi_override, i64 10856}
!39 = !{ptr @allocate_struct_function, ptr @invoke_set_current_function_hook, i64 10856}
!40 = !{ptr @allocate_struct_function, ptr @get_next_funcdef_no, i64 10853}
!41 = !{ptr @allocate_struct_function, ptr @aggregate_value_p, i64 10852}
!42 = !{ptr @allocate_struct_function, ptr @tree_last, i64 10847}
!43 = !{ptr @VEC_function_p_heap_safe_push, ptr @VEC_function_p_heap_reserve, i64 736423}
!44 = !{ptr @VEC_function_p_heap_safe_push, ptr @VEC_function_p_base_quick_push, i64 736423}
!45 = !{ptr @set_cfun, ptr @invoke_set_current_function_hook, i64 711568}
!46 = !{ptr @VEC_function_p_heap_reserve, ptr @VEC_function_p_base_space, i64 736423}
!47 = !{ptr @VEC_function_p_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!48 = !{ptr @free_after_compilation, ptr @free, i64 6653}
!49 = !{ptr @free_after_compilation, ptr @insn_locators_free, i64 6654}
!50 = !{ptr @frame_offset_overflow, ptr @error_at, i64 1}
!51 = !{ptr @assign_stack_local_1, ptr @get_stack_local_alignment, i64 14548}
!52 = !{ptr @assign_stack_local_1, ptr @fancy_abort, i64 1}
!53 = !{ptr @assign_stack_local_1, ptr @trunc_int_for_mode, i64 21507}
!54 = !{ptr @assign_stack_local_1, ptr @plus_constant, i64 21507}
!55 = !{ptr @assign_stack_local_1, ptr @gen_rtx_MEM, i64 21507}
!56 = !{ptr @assign_stack_local_1, ptr @set_mem_align, i64 21507}
!57 = !{ptr @assign_stack_local_1, ptr @gen_rtx_fmt_ee_stat, i64 21507}
!58 = !{ptr @assign_stack_local_1, ptr @frame_offset_overflow, i64 21507}
!59 = !{ptr @get_stack_local_alignment, ptr @get_mode_alignment, i64 14558}
!60 = !{ptr @get_stack_local_alignment, ptr @ix86_local_alignment, i64 14565}
!61 = !{ptr @assign_stack_local, ptr @assign_stack_local_1, i64 19167}
!62 = !{ptr @assign_stack_temp_for_type, ptr @fancy_abort, i64 3}
!63 = !{ptr @assign_stack_temp_for_type, ptr @get_stack_local_alignment, i64 17}
!64 = !{ptr @assign_stack_temp_for_type, ptr @objects_must_conflict_p, i64 8}
!65 = !{ptr @assign_stack_temp_for_type, ptr @cut_slot_from_list, i64 7}
!66 = !{ptr @assign_stack_temp_for_type, ptr @ggc_alloc_stat, i64 11}
!67 = !{ptr @assign_stack_temp_for_type, ptr @adjust_address_1, i64 1}
!68 = !{ptr @assign_stack_temp_for_type, ptr @insert_slot_to_list, i64 18}
!69 = !{ptr @assign_stack_temp_for_type, ptr @gen_rtx_fmt_ee_stat, i64 18}
!70 = !{ptr @assign_stack_temp_for_type, ptr @assign_stack_local, i64 10}
!71 = !{ptr @assign_stack_temp_for_type, ptr @temp_slots_at_level, i64 17}
!72 = !{ptr @assign_stack_temp_for_type, ptr @insert_temp_slot_address, i64 17}
!73 = !{ptr @assign_stack_temp_for_type, ptr @gen_rtx_MEM, i64 17}
!74 = !{ptr @assign_stack_temp_for_type, ptr @get_alias_set, i64 16}
!75 = !{ptr @assign_stack_temp_for_type, ptr @set_mem_alias_set, i64 17}
!76 = !{ptr @assign_stack_temp_for_type, ptr @set_mem_align, i64 17}
!77 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_base_length, i64 1502554}
!78 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_gc_safe_grow_cleared, i64 10716}
!79 = !{ptr @temp_slots_at_level, ptr @VEC_temp_slot_p_base_address, i64 1502554}
!80 = !{ptr @insert_temp_slot_address, ptr @ggc_alloc_stat, i64 17}
!81 = !{ptr @insert_temp_slot_address, ptr @temp_slot_address_compute_hash, i64 17}
!82 = !{ptr @insert_temp_slot_address, ptr @htab_find_slot_with_hash, i64 17}
!83 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_base_length, i64 10715}
!84 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_gc_safe_grow, i64 10715}
!85 = !{ptr @VEC_temp_slot_p_gc_safe_grow_cleared, ptr @VEC_temp_slot_p_base_address, i64 10715}
!86 = !{ptr @VEC_temp_slot_p_gc_safe_grow, ptr @VEC_temp_slot_p_gc_reserve_exact, i64 10715}
!87 = !{ptr @VEC_temp_slot_p_gc_reserve_exact, ptr @VEC_temp_slot_p_base_space, i64 10715}
!88 = !{ptr @VEC_temp_slot_p_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 10714}
!89 = !{ptr @temp_slot_address_compute_hash, ptr @hash_rtx, i64 532196}
!90 = !{ptr @assign_temp, ptr @vector_type_mode, i64 1}
!91 = !{ptr @assign_temp, ptr @int_size_in_bytes, i64 19}
!92 = !{ptr @assign_temp, ptr @max_int_size_in_bytes, i64 1}
!93 = !{ptr @assign_temp, ptr @assign_stack_temp_for_type, i64 19}
!94 = !{ptr @assign_temp, ptr @promote_mode, i64 1}
!95 = !{ptr @assign_temp, ptr @gen_reg_rtx, i64 3876}
!96 = !{ptr @update_temp_slot_address, ptr @rtx_equal_p, i64 1289398}
!97 = !{ptr @update_temp_slot_address, ptr @find_temp_slot_from_address, i64 580493}
!98 = !{ptr @update_temp_slot_address, ptr @update_temp_slot_address, i64 4582}
!99 = !{ptr @update_temp_slot_address, ptr @insert_temp_slot_address, i64 1}
!100 = !{ptr @find_temp_slot_from_address, ptr @temp_slot_address_compute_hash, i64 532179}
!101 = !{ptr @find_temp_slot_from_address, ptr @htab_find_with_hash, i64 532179}
!102 = !{ptr @find_temp_slot_from_address, ptr @find_temp_slot_from_address, i64 123424}
!103 = !{ptr @find_temp_slot_from_address, ptr @max_slot_level, i64 13766}
!104 = !{ptr @find_temp_slot_from_address, ptr @temp_slots_at_level, i64 40098}
!105 = !{ptr @max_slot_level, ptr @VEC_temp_slot_p_base_length, i64 13765}
!106 = !{ptr @mark_temp_addr_taken, ptr @find_temp_slot_from_address, i64 14}
!107 = !{ptr @preserve_temp_slots, ptr @temp_slots_at_level, i64 357857}
!108 = !{ptr @preserve_temp_slots, ptr @move_slot_to_level, i64 15}
!109 = !{ptr @preserve_temp_slots, ptr @find_temp_slot_from_address, i64 14109}
!110 = !{ptr @move_slot_to_level, ptr @temp_slots_at_level, i64 20}
!111 = !{ptr @move_slot_to_level, ptr @cut_slot_from_list, i64 10}
!112 = !{ptr @move_slot_to_level, ptr @insert_slot_to_list, i64 10}
!113 = !{ptr @free_temp_slots, ptr @temp_slots_at_level, i64 700453}
!114 = !{ptr @free_temp_slots, ptr @make_slot_available, i64 17}
!115 = !{ptr @free_temp_slots, ptr @remove_unused_temp_slot_addresses, i64 18}
!116 = !{ptr @free_temp_slots, ptr @combine_temp_slots, i64 18}
!117 = !{ptr @make_slot_available, ptr @temp_slots_at_level, i64 17}
!118 = !{ptr @make_slot_available, ptr @cut_slot_from_list, i64 17}
!119 = !{ptr @make_slot_available, ptr @insert_slot_to_list, i64 17}
!120 = !{ptr @remove_unused_temp_slot_addresses, ptr @htab_traverse, i64 17}
!121 = !{ptr @combine_temp_slots, ptr @cut_slot_from_list, i64 29}
!122 = !{ptr @pop_temp_slots, ptr @temp_slots_at_level, i64 404088}
!123 = !{ptr @pop_temp_slots, ptr @make_slot_available, i64 1}
!124 = !{ptr @pop_temp_slots, ptr @remove_unused_temp_slot_addresses, i64 1}
!125 = !{ptr @pop_temp_slots, ptr @combine_temp_slots, i64 1}
!126 = !{ptr @init_temp_slots, ptr @htab_create_alloc, i64 2}
!127 = !{ptr @init_temp_slots, ptr @htab_empty, i64 13304}
!128 = !{ptr @temp_slot_address_eq, ptr @exp_equiv_p, i64 22}
!129 = !{ptr @instantiate_decl_rtl, ptr @instantiate_decl_rtl, i64 1}
!130 = !{ptr @instantiate_decl_rtl, ptr @rhs_regno, i64 5212}
!131 = !{ptr @instantiate_decl_rtl, ptr @for_each_rtx, i64 13664}
!132 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @instantiate_new_reg, i64 726204}
!133 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @plus_constant, i64 232037}
!134 = !{ptr @instantiate_virtual_regs_in_rtx, ptr @simplify_gen_binary, i64 132484}
!135 = !{ptr @instantiate_virtual_regs, ptr @ix86_cfun_abi, i64 1}
!136 = !{ptr @instantiate_virtual_regs, ptr @ix86_function_type_abi, i64 6652}
!137 = !{ptr @instantiate_virtual_regs, ptr @ix86_reg_parm_stack_space, i64 3326}
!138 = !{ptr @instantiate_virtual_regs, ptr @init_recog, i64 6652}
!139 = !{ptr @instantiate_virtual_regs, ptr @get_insns, i64 6652}
!140 = !{ptr @instantiate_virtual_regs, ptr @for_each_rtx, i64 1326149}
!141 = !{ptr @instantiate_virtual_regs, ptr @instantiate_virtual_regs_in_insn, i64 1233298}
!142 = !{ptr @instantiate_virtual_regs, ptr @instantiate_decls, i64 6652}
!143 = !{ptr @instantiate_virtual_regs_in_insn, ptr @single_set_2, i64 1}
!144 = !{ptr @instantiate_virtual_regs_in_insn, ptr @instantiate_new_reg, i64 3608304}
!145 = !{ptr @instantiate_virtual_regs_in_insn, ptr @start_sequence, i64 197727}
!146 = !{ptr @instantiate_virtual_regs_in_insn, ptr @for_each_rtx, i64 468825}
!147 = !{ptr @instantiate_virtual_regs_in_insn, ptr @gen_rtx_CONST_INT, i64 3}
!148 = !{ptr @instantiate_virtual_regs_in_insn, ptr @simplify_gen_binary, i64 1}
!149 = !{ptr @instantiate_virtual_regs_in_insn, ptr @force_operand, i64 1}
!150 = !{ptr @instantiate_virtual_regs_in_insn, ptr @emit_move_insn, i64 1}
!151 = !{ptr @instantiate_virtual_regs_in_insn, ptr @get_insns, i64 197727}
!152 = !{ptr @instantiate_virtual_regs_in_insn, ptr @end_sequence, i64 197727}
!153 = !{ptr @instantiate_virtual_regs_in_insn, ptr @emit_insn_before, i64 5}
!154 = !{ptr @instantiate_virtual_regs_in_insn, ptr @delete_insn, i64 1}
!155 = !{ptr @instantiate_virtual_regs_in_insn, ptr @extract_insn, i64 1233486}
!156 = !{ptr @instantiate_virtual_regs_in_insn, ptr @rhs_regno, i64 2}
!157 = !{ptr @instantiate_virtual_regs_in_insn, ptr @gen_int_mode, i64 5136}
!158 = !{ptr @instantiate_virtual_regs_in_insn, ptr @safe_insn_predicate, i64 405812}
!159 = !{ptr @instantiate_virtual_regs_in_insn, ptr @replace_equiv_address, i64 197724}
!160 = !{ptr @instantiate_virtual_regs_in_insn, ptr @force_reg, i64 2}
!161 = !{ptr @instantiate_virtual_regs_in_insn, ptr @expand_simple_binop, i64 2}
!162 = !{ptr @instantiate_virtual_regs_in_insn, ptr @simplify_gen_subreg, i64 1}
!163 = !{ptr @instantiate_virtual_regs_in_insn, ptr @copy_to_reg, i64 1}
!164 = !{ptr @instantiate_virtual_regs_in_insn, ptr @copy_rtx, i64 1}
!165 = !{ptr @instantiate_virtual_regs_in_insn, ptr @asm_noperands, i64 1233485}
!166 = !{ptr @instantiate_virtual_regs_in_insn, ptr @check_asm_operands, i64 1}
!167 = !{ptr @instantiate_virtual_regs_in_insn, ptr @recog_memoized, i64 1233484}
!168 = !{ptr @instantiate_virtual_regs_in_insn, ptr @_fatal_insn_not_found, i64 1}
!169 = !{ptr @instantiate_decls, ptr @make_decl_rtl, i64 1}
!170 = !{ptr @instantiate_decls, ptr @instantiate_decl_rtl, i64 27849}
!171 = !{ptr @instantiate_decls, ptr @decl_value_expr_lookup, i64 1}
!172 = !{ptr @instantiate_decls, ptr @walk_tree_1, i64 1}
!173 = !{ptr @instantiate_decls, ptr @instantiate_decls_1, i64 6652}
!174 = !{ptr @instantiate_decls, ptr @ggc_free, i64 473}
!175 = !{ptr @recog_memoized, ptr @recog, i64 202651}
!176 = !{ptr @instantiate_expr, ptr @instantiate_decl_rtl, i64 3}
!177 = !{ptr @instantiate_decls_1, ptr @instantiate_decl_rtl, i64 36497}
!178 = !{ptr @instantiate_decls_1, ptr @decl_value_expr_lookup, i64 5}
!179 = !{ptr @instantiate_decls_1, ptr @walk_tree_1, i64 5}
!180 = !{ptr @instantiate_decls_1, ptr @instantiate_decls_1, i64 44756}
!181 = !{ptr @aggregate_value_p, ptr @get_callee_fndecl, i64 162597}
!182 = !{ptr @aggregate_value_p, ptr @fancy_abort, i64 1}
!183 = !{ptr @aggregate_value_p, ptr @first_field, i64 1}
!184 = !{ptr @aggregate_value_p, ptr @hard_function_value, i64 396232}
!185 = !{ptr @aggregate_value_p, ptr @rhs_regno, i64 396231}
!186 = !{ptr @aggregate_value_p, ptr @vector_type_mode, i64 1}
!187 = !{ptr @pass_by_reference, ptr @first_field, i64 1}
!188 = !{ptr @gimplify_parameters, ptr @assign_parms_initialize_all, i64 8964}
!189 = !{ptr @gimplify_parameters, ptr @assign_parms_augmented_arg_list, i64 8964}
!190 = !{ptr @gimplify_parameters, ptr @VEC_tree_base_iterate, i64 27052}
!191 = !{ptr @gimplify_parameters, ptr @assign_parm_find_data_types, i64 18088}
!192 = !{ptr @gimplify_parameters, ptr @function_arg_advance, i64 18086}
!193 = !{ptr @gimplify_parameters, ptr @walk_tree_without_duplicates_1, i64 18086}
!194 = !{ptr @gimplify_parameters, ptr @gimplify_one_sizepos, i64 2}
!195 = !{ptr @gimplify_parameters, ptr @reference_callee_copied, i64 1}
!196 = !{ptr @gimplify_parameters, ptr @gimplify_assign, i64 1}
!197 = !{ptr @gimplify_parameters, ptr @decl_value_expr_insert, i64 1}
!198 = !{ptr @gimplify_parameters, ptr @VEC_tree_heap_free, i64 8964}
!199 = !{ptr @assign_parms_initialize_all, ptr @init_cumulative_args, i64 15616}
!200 = !{ptr @assign_parms_initialize_all, ptr @ix86_reg_parm_stack_space, i64 15616}
!201 = !{ptr @assign_parms_augmented_arg_list, ptr @VEC_tree_heap_safe_push, i64 31816}
!202 = !{ptr @assign_parms_augmented_arg_list, ptr @aggregate_value_p, i64 15616}
!203 = !{ptr @assign_parms_augmented_arg_list, ptr @build_pointer_type, i64 52}
!204 = !{ptr @assign_parms_augmented_arg_list, ptr @build_decl_stat, i64 52}
!205 = !{ptr @assign_parms_augmented_arg_list, ptr @VEC_tree_heap_safe_insert, i64 52}
!206 = !{ptr @assign_parms_augmented_arg_list, ptr @split_complex_args, i64 1}
!207 = !{ptr @assign_parm_find_data_types, ptr @vector_type_mode, i64 2}
!208 = !{ptr @assign_parm_find_data_types, ptr @first_field, i64 1}
!209 = !{ptr @assign_parm_find_data_types, ptr @pass_by_reference, i64 31866}
!210 = !{ptr @assign_parm_find_data_types, ptr @build_pointer_type, i64 1}
!211 = !{ptr @assign_parm_find_data_types, ptr @promote_function_mode, i64 31866}
!212 = !{ptr @VEC_tree_heap_free, ptr @free, i64 14230}
!213 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 31817}
!214 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 31817}
!215 = !{ptr @VEC_tree_heap_safe_insert, ptr @VEC_tree_heap_reserve, i64 53}
!216 = !{ptr @VEC_tree_heap_safe_insert, ptr @VEC_tree_base_quick_insert, i64 53}
!217 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 31870}
!218 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 15035}
!219 = !{ptr @locate_and_pad_parm, ptr @ix86_reg_parm_stack_space, i64 188669}
!220 = !{ptr @locate_and_pad_parm, ptr @fold_convert_loc, i64 2}
!221 = !{ptr @locate_and_pad_parm, ptr @size_int_kind, i64 186285}
!222 = !{ptr @locate_and_pad_parm, ptr @size_binop_loc, i64 3}
!223 = !{ptr @locate_and_pad_parm, ptr @size_in_bytes, i64 186082}
!224 = !{ptr @locate_and_pad_parm, ptr @ix86_function_arg_boundary, i64 186253}
!225 = !{ptr @locate_and_pad_parm, ptr @pad_to_arg_alignment, i64 183838}
!226 = !{ptr @locate_and_pad_parm, ptr @host_integerp, i64 372506}
!227 = !{ptr @locate_and_pad_parm, ptr @tree_low_cst, i64 372504}
!228 = !{ptr @locate_and_pad_parm, ptr @round_up_loc, i64 2}
!229 = !{ptr @pad_to_arg_alignment, ptr @size_int_kind, i64 2}
!230 = !{ptr @pad_to_arg_alignment, ptr @fold_convert_loc, i64 1}
!231 = !{ptr @pad_to_arg_alignment, ptr @size_binop_loc, i64 3}
!232 = !{ptr @pad_to_arg_alignment, ptr @round_up_loc, i64 1}
!233 = !{ptr @clear_block_marks, ptr @clear_block_marks, i64 16574}
!234 = !{ptr @number_blocks, ptr @get_block_vector, i64 9111}
!235 = !{ptr @number_blocks, ptr @free, i64 9111}
!236 = !{ptr @get_block_vector, ptr @all_blocks, i64 18222}
!237 = !{ptr @get_block_vector, ptr @xmalloc, i64 9111}
!238 = !{ptr @all_blocks, ptr @all_blocks, i64 208196}
!239 = !{ptr @invoke_set_current_function_hook, ptr @cl_optimization_restore, i64 1}
!240 = !{ptr @push_cfun, ptr @VEC_function_p_heap_safe_push, i64 734610}
!241 = !{ptr @push_cfun, ptr @set_cfun, i64 734610}
!242 = !{ptr @pop_cfun, ptr @VEC_function_p_base_pop, i64 736423}
!243 = !{ptr @pop_cfun, ptr @set_cfun, i64 736423}
!244 = !{ptr @push_struct_function, ptr @VEC_function_p_heap_safe_push, i64 1813}
!245 = !{ptr @push_struct_function, ptr @allocate_struct_function, i64 1813}
!246 = !{ptr @init_dummy_function_start, ptr @fancy_abort, i64 1}
!247 = !{ptr @init_dummy_function_start, ptr @push_struct_function, i64 2}
!248 = !{ptr @init_dummy_function_start, ptr @prepare_function_start, i64 2}
!249 = !{ptr @prepare_function_start, ptr @fancy_abort, i64 1}
!250 = !{ptr @prepare_function_start, ptr @init_temp_slots, i64 6654}
!251 = !{ptr @prepare_function_start, ptr @init_emit, i64 6654}
!252 = !{ptr @prepare_function_start, ptr @init_varasm_status, i64 6654}
!253 = !{ptr @prepare_function_start, ptr @init_expr, i64 6654}
!254 = !{ptr @prepare_function_start, ptr @default_rtl_profile, i64 6654}
!255 = !{ptr @init_function_start, ptr @set_cfun, i64 6650}
!256 = !{ptr @init_function_start, ptr @allocate_struct_function, i64 2}
!257 = !{ptr @init_function_start, ptr @prepare_function_start, i64 6652}
!258 = !{ptr @init_function_start, ptr @warning, i64 16}
!259 = !{ptr @expand_function_start, ptr @init_recog_no_volatile, i64 6652}
!260 = !{ptr @expand_function_start, ptr @gen_label_rtx, i64 6652}
!261 = !{ptr @expand_function_start, ptr @aggregate_value_p, i64 6652}
!262 = !{ptr @expand_function_start, ptr @gen_reg_rtx, i64 4010}
!263 = !{ptr @expand_function_start, ptr @emit_move_insn, i64 3}
!264 = !{ptr @expand_function_start, ptr @set_decl_rtl, i64 6641}
!265 = !{ptr @expand_function_start, ptr @vector_type_mode, i64 1}
!266 = !{ptr @expand_function_start, ptr @hard_function_value, i64 4008}
!267 = !{ptr @expand_function_start, ptr @gen_group_rtx, i64 1}
!268 = !{ptr @expand_function_start, ptr @assign_parms, i64 6652}
!269 = !{ptr @expand_function_start, ptr @set_decl_incoming_rtl, i64 1}
!270 = !{ptr @expand_function_start, ptr @mark_reg_pointer, i64 1}
!271 = !{ptr @expand_function_start, ptr @expand_decl, i64 1}
!272 = !{ptr @expand_function_start, ptr @build4_stat, i64 1}
!273 = !{ptr @expand_function_start, ptr @expand_expr, i64 1}
!274 = !{ptr @expand_function_start, ptr @convert_memory_address_addr_space, i64 1}
!275 = !{ptr @expand_function_start, ptr @update_nonlocal_goto_save_area, i64 1}
!276 = !{ptr @expand_function_start, ptr @emit_note, i64 6653}
!277 = !{ptr @expand_function_start, ptr @get_last_insn, i64 13304}
!278 = !{ptr @expand_function_start, ptr @fancy_abort, i64 1}
!279 = !{ptr @expand_function_start, ptr @force_next_line_note, i64 6652}
!280 = !{ptr @assign_parms, ptr @assign_parms_initialize_all, i64 6652}
!281 = !{ptr @assign_parms, ptr @assign_parms_augmented_arg_list, i64 6652}
!282 = !{ptr @assign_parms, ptr @VEC_tree_base_iterate, i64 20432}
!283 = !{ptr @assign_parms, ptr @assign_parm_find_data_types, i64 13780}
!284 = !{ptr @assign_parms, ptr @set_decl_rtl, i64 14}
!285 = !{ptr @assign_parms, ptr @ix86_function_arg_boundary, i64 13779}
!286 = !{ptr @assign_parms, ptr @ix86_minimum_alignment, i64 13780}
!287 = !{ptr @assign_parms, ptr @fancy_abort, i64 2}
!288 = !{ptr @assign_parms, ptr @assign_parms_setup_varargs, i64 46}
!289 = !{ptr @assign_parms, ptr @assign_parm_find_entry_rtl, i64 13779}
!290 = !{ptr @assign_parms, ptr @assign_parm_is_stack_parm, i64 13779}
!291 = !{ptr @assign_parms, ptr @assign_parm_find_stack_rtl, i64 11364}
!292 = !{ptr @assign_parms, ptr @assign_parm_adjust_entry_rtl, i64 11364}
!293 = !{ptr @assign_parms, ptr @set_decl_incoming_rtl, i64 13779}
!294 = !{ptr @assign_parms, ptr @function_arg_advance, i64 13779}
!295 = !{ptr @assign_parms, ptr @assign_parm_adjust_stack_rtl, i64 13779}
!296 = !{ptr @assign_parms, ptr @assign_parm_setup_block_p, i64 13779}
!297 = !{ptr @assign_parms, ptr @assign_parm_setup_block, i64 18}
!298 = !{ptr @assign_parms, ptr @use_register_for_decl, i64 13760}
!299 = !{ptr @assign_parms, ptr @assign_parm_setup_reg, i64 13712}
!300 = !{ptr @assign_parms, ptr @assign_parm_setup_stack, i64 49}
!301 = !{ptr @assign_parms, ptr @assign_parms_unsplit_complex, i64 1}
!302 = !{ptr @assign_parms, ptr @VEC_tree_heap_free, i64 6652}
!303 = !{ptr @assign_parms, ptr @emit_insn, i64 6652}
!304 = !{ptr @assign_parms, ptr @vector_type_mode, i64 1}
!305 = !{ptr @assign_parms, ptr @get_mode_alignment, i64 4005}
!306 = !{ptr @assign_parms, ptr @make_decl_rtl, i64 1}
!307 = !{ptr @assign_parms, ptr @convert_memory_address_addr_space, i64 12}
!308 = !{ptr @assign_parms, ptr @gen_rtx_MEM, i64 12}
!309 = !{ptr @assign_parms, ptr @set_mem_attributes, i64 12}
!310 = !{ptr @assign_parms, ptr @ix86_reg_parm_stack_space, i64 8071}
!311 = !{ptr @assign_parms, ptr @gen_rtx_CONST_INT, i64 6651}
!312 = !{ptr @assign_parms, ptr @fold_convert_loc, i64 1}
!313 = !{ptr @assign_parms, ptr @size_int_kind, i64 1}
!314 = !{ptr @assign_parms, ptr @size_binop_loc, i64 1}
!315 = !{ptr @assign_parms, ptr @expand_normal, i64 1}
!316 = !{ptr @assign_parms, ptr @ix86_return_pops_args, i64 6652}
!317 = !{ptr @assign_parms, ptr @rhs_regno, i64 1}
!318 = !{ptr @assign_parm_find_entry_rtl, ptr @function_arg, i64 13781}
!319 = !{ptr @assign_parm_find_entry_rtl, ptr @locate_and_pad_parm, i64 13780}
!320 = !{ptr @assign_parm_is_stack_parm, ptr @host_integerp, i64 1}
!321 = !{ptr @assign_parm_is_stack_parm, ptr @tree_low_cst, i64 1}
!322 = !{ptr @assign_parm_find_stack_rtl, ptr @fold_convert_loc, i64 2}
!323 = !{ptr @assign_parm_find_stack_rtl, ptr @size_int_kind, i64 2}
!324 = !{ptr @assign_parm_find_stack_rtl, ptr @size_binop_loc, i64 2}
!325 = !{ptr @assign_parm_find_stack_rtl, ptr @expand_normal, i64 2}
!326 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_CONST_INT, i64 11419}
!327 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_fmt_ee_stat, i64 6132}
!328 = !{ptr @assign_parm_find_stack_rtl, ptr @gen_rtx_MEM, i64 11366}
!329 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_attributes, i64 11365}
!330 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_size, i64 55}
!331 = !{ptr @assign_parm_find_stack_rtl, ptr @subreg_lowpart_offset, i64 52}
!332 = !{ptr @assign_parm_find_stack_rtl, ptr @plus_constant, i64 1}
!333 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_offset, i64 1}
!334 = !{ptr @assign_parm_find_stack_rtl, ptr @set_mem_align, i64 11366}
!335 = !{ptr @assign_parm_find_stack_rtl, ptr @set_reg_attrs_for_parm, i64 1}
!336 = !{ptr @assign_parm_setup_block, ptr @emit_group_move_into_temps, i64 1}
!337 = !{ptr @assign_parm_setup_block, ptr @int_size_in_bytes, i64 17}
!338 = !{ptr @assign_parm_setup_block, ptr @assign_stack_local, i64 2}
!339 = !{ptr @assign_parm_setup_block, ptr @set_mem_attributes, i64 2}
!340 = !{ptr @assign_parm_setup_block, ptr @validize_mem, i64 3}
!341 = !{ptr @assign_parm_setup_block, ptr @push_to_sequence2, i64 2}
!342 = !{ptr @assign_parm_setup_block, ptr @emit_group_store, i64 1}
!343 = !{ptr @assign_parm_setup_block, ptr @get_insns, i64 2}
!344 = !{ptr @assign_parm_setup_block, ptr @get_last_insn, i64 2}
!345 = !{ptr @assign_parm_setup_block, ptr @end_sequence, i64 2}
!346 = !{ptr @assign_parm_setup_block, ptr @rhs_regno, i64 1}
!347 = !{ptr @assign_parm_setup_block, ptr @move_block_from_reg, i64 1}
!348 = !{ptr @assign_parm_setup_block, ptr @gen_rtx_CONST_INT, i64 1}
!349 = !{ptr @assign_parm_setup_block, ptr @emit_block_move, i64 1}
!350 = !{ptr @assign_parm_setup_block, ptr @set_decl_rtl, i64 17}
!351 = !{ptr @assign_parm_setup_reg, ptr @promote_function_mode, i64 13716}
!352 = !{ptr @assign_parm_setup_reg, ptr @gen_reg_rtx, i64 13790}
!353 = !{ptr @assign_parm_setup_reg, ptr @mark_user_reg, i64 13511}
!354 = !{ptr @assign_parm_setup_reg, ptr @gen_rtx_MEM, i64 1}
!355 = !{ptr @assign_parm_setup_reg, ptr @set_mem_attributes, i64 1}
!356 = !{ptr @assign_parm_setup_reg, ptr @set_decl_rtl, i64 13716}
!357 = !{ptr @assign_parm_setup_reg, ptr @assign_parm_remove_parallels, i64 13716}
!358 = !{ptr @assign_parm_setup_reg, ptr @validize_mem, i64 13716}
!359 = !{ptr @assign_parm_setup_reg, ptr @emit_move_insn, i64 13716}
!360 = !{ptr @assign_parm_setup_reg, ptr @push_to_sequence2, i64 74}
!361 = !{ptr @assign_parm_setup_reg, ptr @convert_to_mode, i64 74}
!362 = !{ptr @assign_parm_setup_reg, ptr @make_tree, i64 74}
!363 = !{ptr @assign_parm_setup_reg, ptr @expand_assignment, i64 74}
!364 = !{ptr @assign_parm_setup_reg, ptr @get_insns, i64 74}
!365 = !{ptr @assign_parm_setup_reg, ptr @get_last_insn, i64 11334}
!366 = !{ptr @assign_parm_setup_reg, ptr @end_sequence, i64 74}
!367 = !{ptr @assign_parm_setup_reg, ptr @reg_mentioned_p, i64 11261}
!368 = !{ptr @assign_parm_setup_reg, ptr @rhs_regno, i64 2}
!369 = !{ptr @assign_parm_setup_reg, ptr @adjust_address_1, i64 2}
!370 = !{ptr @assign_parm_setup_reg, ptr @single_set_2, i64 6}
!371 = !{ptr @assign_parm_setup_reg, ptr @set_unique_reg_note, i64 11262}
!372 = !{ptr @assign_parm_setup_reg, ptr @prev_nonnote_insn, i64 20}
!373 = !{ptr @assign_parm_setup_reg, ptr @mark_reg_pointer, i64 11146}
!374 = !{ptr @assign_parm_setup_stack, ptr @assign_parm_remove_parallels, i64 48}
!375 = !{ptr @assign_parm_setup_stack, ptr @gen_reg_rtx, i64 1}
!376 = !{ptr @assign_parm_setup_stack, ptr @validize_mem, i64 35}
!377 = !{ptr @assign_parm_setup_stack, ptr @emit_move_insn, i64 17}
!378 = !{ptr @assign_parm_setup_stack, ptr @push_to_sequence2, i64 1}
!379 = !{ptr @assign_parm_setup_stack, ptr @convert_to_mode, i64 1}
!380 = !{ptr @assign_parm_setup_stack, ptr @subreg_lowpart_offset, i64 1}
!381 = !{ptr @assign_parm_setup_stack, ptr @adjust_address_1, i64 1}
!382 = !{ptr @assign_parm_setup_stack, ptr @ix86_local_alignment, i64 16}
!383 = !{ptr @assign_parm_setup_stack, ptr @assign_stack_local, i64 16}
!384 = !{ptr @assign_parm_setup_stack, ptr @set_mem_attributes, i64 16}
!385 = !{ptr @assign_parm_setup_stack, ptr @int_size_in_bytes, i64 1}
!386 = !{ptr @assign_parm_setup_stack, ptr @gen_rtx_CONST_INT, i64 1}
!387 = !{ptr @assign_parm_setup_stack, ptr @emit_block_move, i64 1}
!388 = !{ptr @assign_parm_setup_stack, ptr @get_insns, i64 1}
!389 = !{ptr @assign_parm_setup_stack, ptr @get_last_insn, i64 1}
!390 = !{ptr @assign_parm_setup_stack, ptr @end_sequence, i64 1}
!391 = !{ptr @assign_parm_setup_stack, ptr @set_decl_rtl, i64 48}
!392 = !{ptr @expand_dummy_function_end, ptr @fancy_abort, i64 1}
!393 = !{ptr @expand_dummy_function_end, ptr @in_sequence_p, i64 3}
!394 = !{ptr @expand_dummy_function_end, ptr @end_sequence, i64 1}
!395 = !{ptr @expand_dummy_function_end, ptr @free_after_parsing, i64 2}
!396 = !{ptr @expand_dummy_function_end, ptr @free_after_compilation, i64 2}
!397 = !{ptr @expand_dummy_function_end, ptr @pop_cfun, i64 2}
!398 = !{ptr @diddle_return_value, ptr @rhs_regno, i64 5}
!399 = !{ptr @clobber_return_register, ptr @diddle_return_value, i64 7104}
!400 = !{ptr @clobber_return_register, ptr @rhs_regno, i64 4008}
!401 = !{ptr @clobber_return_register, ptr @do_clobber_return_reg, i64 4007}
!402 = !{ptr @do_clobber_return_reg, ptr @emit_clobber, i64 8032}
!403 = !{ptr @expand_function_end, ptr @get_insns, i64 6653}
!404 = !{ptr @expand_function_end, ptr @in_sequence_p, i64 6653}
!405 = !{ptr @expand_function_end, ptr @end_sequence, i64 6653}
!406 = !{ptr @expand_function_end, ptr @clear_pending_stack_adjust, i64 6652}
!407 = !{ptr @expand_function_end, ptr @do_pending_stack_adjust, i64 6652}
!408 = !{ptr @expand_function_end, ptr @force_next_line_note, i64 6652}
!409 = !{ptr @expand_function_end, ptr @set_curr_insn_source_location, i64 6652}
!410 = !{ptr @expand_function_end, ptr @get_last_insn, i64 6652}
!411 = !{ptr @expand_function_end, ptr @emit_label, i64 6653}
!412 = !{ptr @expand_function_end, ptr @gen_blockage, i64 2}
!413 = !{ptr @expand_function_end, ptr @emit_insn, i64 2}
!414 = !{ptr @expand_function_end, ptr @expand_eh_return, i64 6652}
!415 = !{ptr @expand_function_end, ptr @rhs_regno, i64 2}
!416 = !{ptr @expand_function_end, ptr @fancy_abort, i64 1}
!417 = !{ptr @expand_function_end, ptr @vector_type_mode, i64 1}
!418 = !{ptr @expand_function_end, ptr @gen_rtx_REG, i64 1}
!419 = !{ptr @expand_function_end, ptr @emit_move_insn, i64 4031}
!420 = !{ptr @expand_function_end, ptr @shift_return_value, i64 1}
!421 = !{ptr @expand_function_end, ptr @promote_function_mode, i64 1}
!422 = !{ptr @expand_function_end, ptr @convert_move, i64 1}
!423 = !{ptr @expand_function_end, ptr @emit_group_move, i64 1}
!424 = !{ptr @expand_function_end, ptr @int_size_in_bytes, i64 1}
!425 = !{ptr @expand_function_end, ptr @emit_group_load, i64 1}
!426 = !{ptr @expand_function_end, ptr @make_decl_rtl, i64 1}
!427 = !{ptr @expand_function_end, ptr @build_pointer_type, i64 14}
!428 = !{ptr @expand_function_end, ptr @convert_memory_address_addr_space, i64 14}
!429 = !{ptr @expand_function_end, ptr @start_sequence, i64 6652}
!430 = !{ptr @expand_function_end, ptr @clobber_return_register, i64 6652}
!431 = !{ptr @expand_function_end, ptr @emit_insn_after, i64 6652}
!432 = !{ptr @expand_function_end, ptr @stack_protect_epilogue, i64 1}
!433 = !{ptr @expand_function_end, ptr @use_return_register, i64 6652}
!434 = !{ptr @use_return_register, ptr @diddle_return_value, i64 6652}
!435 = !{ptr @do_use_return_reg, ptr @emit_use, i64 4022}
!436 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find, i64 22724}
!437 = !{ptr @maybe_copy_epilogue_insn, ptr @htab_find_slot, i64 11411}
!438 = !{ptr @maybe_copy_epilogue_insn, ptr @fancy_abort, i64 1}
!439 = !{ptr @prologue_epilogue_contains, ptr @contains, i64 23252319}
!440 = !{ptr @contains, ptr @htab_find, i64 9664973}
!441 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @htab_elements, i64 6651}
!442 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @get_insns, i64 6651}
!443 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @contains, i64 117846}
!444 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @reorder_insns, i64 7254}
!445 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_start_1, i64 6628}
!446 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_cond, i64 16888}
!447 = !{ptr @reposition_prologue_and_epilogue_notes, ptr @ei_next, i64 10260}
!448 = !{ptr @ei_cond, ptr @ei_end_p, i64 62042}
!449 = !{ptr @ei_cond, ptr @ei_edge, i64 41740}
!450 = !{ptr @ei_next, ptr @ei_container, i64 74267}
!451 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 37134}
!452 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!453 = !{ptr @ei_end_p, ptr @ei_container, i64 153953}
!454 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 76977}
!455 = !{ptr @ei_edge, ptr @ei_container, i64 100045}
!456 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 50023}
!457 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!458 = !{ptr @used_types_insert, ptr @used_types_insert_helper, i64 1}
!459 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @cleanup_cfg, i64 6651}
!460 = !{ptr @rest_of_handle_thread_prologue_and_epilogue, ptr @thread_prologue_and_epilogue_insns, i64 6652}
!461 = !{ptr @thread_prologue_and_epilogue_insns, ptr @rtl_profile_for_bb, i64 13269}
!462 = !{ptr @thread_prologue_and_epilogue_insns, ptr @start_sequence, i64 15179}
!463 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_prologue, i64 6652}
!464 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_insn, i64 8675}
!465 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_use, i64 1}
!466 = !{ptr @thread_prologue_and_epilogue_insns, ptr @record_insns, i64 15180}
!467 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_note, i64 15179}
!468 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_blockage, i64 1}
!469 = !{ptr @thread_prologue_and_epilogue_insns, ptr @get_insns, i64 15179}
!470 = !{ptr @thread_prologue_and_epilogue_insns, ptr @end_sequence, i64 15179}
!471 = !{ptr @thread_prologue_and_epilogue_insns, ptr @set_insn_locators, i64 15179}
!472 = !{ptr @thread_prologue_and_epilogue_insns, ptr @single_succ_p, i64 6652}
!473 = !{ptr @thread_prologue_and_epilogue_insns, ptr @fancy_abort, i64 1}
!474 = !{ptr @thread_prologue_and_epilogue_insns, ptr @single_succ_edge, i64 6652}
!475 = !{ptr @thread_prologue_and_epilogue_insns, ptr @insert_insn_on_edge, i64 13157}
!476 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_start_1, i64 33191}
!477 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_cond, i64 45204}
!478 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_next, i64 26950}
!479 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ix86_can_use_return_insn_p, i64 6616}
!480 = !{ptr @thread_prologue_and_epilogue_insns, ptr @active_insn_p, i64 5}
!481 = !{ptr @thread_prologue_and_epilogue_insns, ptr @ei_safe_edge, i64 14938}
!482 = !{ptr @thread_prologue_and_epilogue_insns, ptr @eh_returnjump_p, i64 2020}
!483 = !{ptr @thread_prologue_and_epilogue_insns, ptr @try_split, i64 1}
!484 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_note_after, i64 1}
!485 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_epilogue, i64 6505}
!486 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_jump_insn, i64 6505}
!487 = !{ptr @thread_prologue_and_epilogue_insns, ptr @default_rtl_profile, i64 6652}
!488 = !{ptr @thread_prologue_and_epilogue_insns, ptr @commit_edge_insertions, i64 6652}
!489 = !{ptr @thread_prologue_and_epilogue_insns, ptr @returnjump_p, i64 1}
!490 = !{ptr @thread_prologue_and_epilogue_insns, ptr @gen_sibcall_epilogue, i64 2022}
!491 = !{ptr @thread_prologue_and_epilogue_insns, ptr @emit_insn_before, i64 2022}
!492 = !{ptr @thread_prologue_and_epilogue_insns, ptr @reorder_insns, i64 1}
!493 = !{ptr @thread_prologue_and_epilogue_insns, ptr @df_update_entry_exit_and_calls, i64 6652}
!494 = !{ptr @record_insns, ptr @htab_create_alloc, i64 13280}
!495 = !{ptr @record_insns, ptr @htab_find_slot, i64 71583}
!496 = !{ptr @record_insns, ptr @fancy_abort, i64 1}
!497 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 13304}
!498 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 6652}
!499 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!500 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 6652}
!501 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 14935}
!502 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 8283}
!503 = !{ptr @rest_of_match_asm_constraints, ptr @df_set_flags, i64 1}
!504 = !{ptr @rest_of_match_asm_constraints, ptr @match_asm_constraints_1, i64 16}
!505 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!506 = !{!"function_entry_count", i64 0}
!507 = !{!508, !508, i64 0}
!508 = !{!"any pointer", !509, i64 0}
!509 = !{!"omnipotent char", !510, i64 0}
!510 = !{!"Simple C/C++ TBAA"}
!511 = !{!"function_entry_count", i64 10856}
!512 = !{!"branch_weights", i32 3, i32 10855}
!513 = !{!509, !509, i64 0}
!514 = !{!"branch_weights", i32 1, i32 10857}
!515 = !{!516, !508, i64 80}
!516 = !{!"function", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !517, i64 104, !517, i64 108, !517, i64 112, !517, i64 116, !517, i64 120, !517, i64 124, !508, i64 128, !517, i64 136, !517, i64 137, !517, i64 138, !517, i64 138, !517, i64 138, !517, i64 138, !517, i64 138, !517, i64 138, !517, i64 138, !517, i64 139, !517, i64 139, !517, i64 139, !517, i64 139, !517, i64 139, !517, i64 139, !517, i64 139}
!517 = !{!"int", !509, i64 0}
!518 = !{!516, !508, i64 48}
!519 = !{!516, !517, i64 108}
!520 = !{!"branch_weights", i32 10855, i32 1}
!521 = !{i32 0, i32 2}
!522 = !{!"branch_weights", i32 10808, i32 48}
!523 = !{!"branch_weights", i32 1, i32 10855}
!524 = !{!"branch_weights", i32 5, i32 10851}
!525 = !{!"function_entry_count", i64 736423}
!526 = !{!"function.c:VEC_function_p_heap_safe_push"}
!527 = !{!"function_entry_count", i64 1493382}
!528 = !{!"branch_weights", i32 781815, i32 711569}
!529 = !{!"branch_weights", i32 351033, i32 360537}
!530 = !{!"function.c:VEC_function_p_heap_reserve"}
!531 = !{!"branch_weights", i32 2, i32 736423}
!532 = !{!"function.c:VEC_function_p_base_quick_push"}
!533 = !{!534, !517, i64 0}
!534 = !{!"VEC_function_p_base", !517, i64 0, !517, i64 4, !509, i64 8}
!535 = !{!"function.c:VEC_function_p_base_space"}
!536 = !{!534, !517, i64 4}
!537 = !{!517, !517, i64 0}
!538 = !{!"function.c:VEC_function_p_base_pop"}
!539 = !{!"function_entry_count", i64 6654}
!540 = !{!516, !508, i64 88}
!541 = !{!542, !508, i64 88}
!542 = !{!"rtl_data", !543, i64 0, !544, i64 40, !545, i64 96, !546, i64 112, !548, i64 208, !549, i64 248, !517, i64 312, !508, i64 320, !508, i64 328, !508, i64 336, !508, i64 344, !508, i64 352, !508, i64 360, !508, i64 368, !508, i64 376, !508, i64 384, !508, i64 392, !550, i64 400, !508, i64 408, !508, i64 416, !508, i64 424, !517, i64 432, !517, i64 436, !517, i64 440, !517, i64 444, !517, i64 448, !517, i64 452, !508, i64 456, !509, i64 464, !509, i64 465, !509, i64 466, !509, i64 467, !509, i64 468, !509, i64 469, !509, i64 470, !509, i64 471, !509, i64 472, !509, i64 473, !509, i64 474, !509, i64 475, !509, i64 476, !509, i64 477, !509, i64 478, !509, i64 479, !509, i64 480, !509, i64 481, !509, i64 482, !509, i64 483, !509, i64 484, !509, i64 485}
!543 = !{!"expr_status", !517, i64 0, !517, i64 4, !517, i64 8, !508, i64 16, !508, i64 24, !508, i64 32}
!544 = !{!"emit_status", !517, i64 0, !517, i64 4, !508, i64 8, !508, i64 16, !508, i64 24, !517, i64 32, !517, i64 36, !517, i64 40, !517, i64 44, !508, i64 48}
!545 = !{!"varasm_status", !508, i64 0, !517, i64 8}
!546 = !{!"incoming_args", !517, i64 0, !517, i64 4, !517, i64 8, !508, i64 16, !547, i64 24, !508, i64 88}
!547 = !{!"ix86_args", !517, i64 0, !517, i64 4, !517, i64 8, !517, i64 12, !517, i64 16, !517, i64 20, !517, i64 24, !517, i64 28, !517, i64 32, !517, i64 36, !517, i64 40, !517, i64 44, !517, i64 48, !517, i64 52, !517, i64 56, !517, i64 60}
!548 = !{!"function_subsections", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32}
!549 = !{!"rtl_eh", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !509, i64 48}
!550 = !{!"long", !509, i64 0}
!551 = !{!"branch_weights", i32 1, i32 6655}
!552 = !{!"function_entry_count", i64 217703}
!553 = !{!542, !550, i64 400}
!554 = !{!"function_entry_count", i64 23317}
!555 = !{!"branch_weights", i32 1, i32 23318}
!556 = !{!"function_entry_count", i64 21507}
!557 = !{!"branch_weights", i32 1303793554, i32 -1554987885, i32 6778822, i32 188273}
!558 = !{!"branch_weights", i32 99845, i32 2147383803}
!559 = !{!542, !517, i64 452}
!560 = !{!"branch_weights", i32 7, i32 21502}
!561 = !{!542, !509, i64 482}
!562 = !{!"branch_weights", i32 7, i32 1}
!563 = !{!542, !509, i64 483}
!564 = !{!542, !509, i64 479}
!565 = !{!542, !517, i64 436}
!566 = !{!"branch_weights", i32 11, i32 21498}
!567 = !{!542, !517, i64 448}
!568 = !{!"branch_weights", i32 2834, i32 18675}
!569 = !{!542, !508, i64 368}
!570 = !{i8 0, i8 2}
!571 = !{!"branch_weights", i32 21508, i32 1}
!572 = !{!"function_entry_count", i64 14565}
!573 = !{!"function.c:get_stack_local_alignment"}
!574 = !{!"branch_weights", i32 7, i32 14560}
!575 = !{!"branch_weights", i32 14549, i32 18}
!576 = !{!577, !508, i64 448}
!577 = !{!"lang_hooks", !508, i64 0, !550, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !508, i64 120, !508, i64 128, !508, i64 136, !508, i64 144, !508, i64 152, !508, i64 160, !508, i64 168, !508, i64 176, !508, i64 184, !508, i64 192, !508, i64 200, !508, i64 208, !508, i64 216, !508, i64 224, !508, i64 232, !578, i64 240, !579, i64 248, !580, i64 256, !581, i64 272, !582, i64 432, !583, i64 560, !508, i64 584, !508, i64 592, !508, i64 600, !508, i64 608, !508, i64 616, !508, i64 624, !508, i64 632, !508, i64 640, !508, i64 648, !508, i64 656, !508, i64 664, !509, i64 672}
!578 = !{!"lang_hooks_for_tree_inlining", !508, i64 0}
!579 = !{!"lang_hooks_for_callgraph", !508, i64 0}
!580 = !{!"lang_hooks_for_tree_dump", !508, i64 0, !508, i64 8}
!581 = !{!"lang_hooks_for_decls", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !508, i64 120, !508, i64 128, !508, i64 136, !508, i64 144, !508, i64 152}
!582 = !{!"lang_hooks_for_types", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !509, i64 120}
!583 = !{!"lang_hooks_for_lto", !508, i64 0, !508, i64 8, !508, i64 16}
!584 = !{!"function_entry_count", i64 19167}
!585 = !{!"function_entry_count", i64 17}
!586 = !{!"branch_weights", i32 1, i32 18}
!587 = !{!"branch_weights", i32 18, i32 1}
!588 = !{!"branch_weights", i32 85, i32 162}
!589 = !{!590, !517, i64 40}
!590 = !{!"temp_slot", !508, i64 0, !508, i64 8, !508, i64 16, !550, i64 24, !508, i64 32, !517, i64 40, !509, i64 44, !509, i64 45, !517, i64 48, !517, i64 52, !550, i64 56, !550, i64 64}
!591 = !{!"branch_weights", i32 1, i32 9}
!592 = !{!590, !550, i64 24}
!593 = !{!590, !508, i64 16}
!594 = !{!"branch_weights", i32 9, i32 1}
!595 = !{!590, !508, i64 32}
!596 = !{!"branch_weights", i32 6, i32 4}
!597 = !{!"branch_weights", i32 9, i32 0}
!598 = distinct !{!598, !599}
!599 = !{!"llvm.loop.mustprogress"}
!600 = !{!"branch_weights", i32 1159767929, i32 987715719}
!601 = !{!"branch_weights", i32 4, i32 1}
!602 = !{!590, !509, i64 45}
!603 = !{!590, !509, i64 44}
!604 = !{!590, !550, i64 56}
!605 = !{!590, !550, i64 64}
!606 = !{!"branch_weights", i32 28, i32 49}
!607 = !{!542, !517, i64 432}
!608 = !{!590, !517, i64 48}
!609 = !{!590, !517, i64 52}
!610 = !{!"branch_weights", i32 18, i32 152, i32 2592, i32 72, i32 36, i32 18}
!611 = !{!"function_entry_count", i64 35}
!612 = !{!"function.c:cut_slot_from_list"}
!613 = !{!590, !508, i64 0}
!614 = !{!590, !508, i64 8}
!615 = !{!"branch_weights", i32 36, i32 1}
!616 = !{!"function_entry_count", i64 44}
!617 = !{!"function.c:insert_slot_to_list"}
!618 = !{!"branch_weights", i32 45, i32 1}
!619 = !{!"function_entry_count", i64 1502554}
!620 = !{!"function.c:temp_slots_at_level"}
!621 = !{!"branch_weights", i32 1491840, i32 10716}
!622 = !{!"function.c:insert_temp_slot_address"}
!623 = !{!624, !508, i64 8}
!624 = !{!"temp_slot_address_entry", !517, i64 0, !508, i64 8, !508, i64 16}
!625 = !{!624, !508, i64 16}
!626 = !{!624, !517, i64 0}
!627 = !{!"function_entry_count", i64 1537750}
!628 = !{!"function.c:VEC_temp_slot_p_base_length"}
!629 = !{!"branch_weights", i32 19783, i32 1517969}
!630 = !{!631, !517, i64 0}
!631 = !{!"VEC_temp_slot_p_base", !517, i64 0, !517, i64 4, !509, i64 8}
!632 = !{!"function_entry_count", i64 10715}
!633 = !{!"function.c:VEC_temp_slot_p_gc_safe_grow_cleared"}
!634 = !{!"function_entry_count", i64 1513269}
!635 = !{!"function.c:VEC_temp_slot_p_base_address"}
!636 = !{!"branch_weights", i32 1, i32 1513270}
!637 = !{!"function.c:VEC_temp_slot_p_gc_safe_grow"}
!638 = !{!"branch_weights", i32 6595, i32 4122}
!639 = !{}
!640 = !{!"function.c:VEC_temp_slot_p_gc_reserve_exact"}
!641 = !{!"branch_weights", i32 10716, i32 1}
!642 = !{!"function.c:VEC_temp_slot_p_base_space"}
!643 = !{!631, !517, i64 4}
!644 = !{!"function_entry_count", i64 532196}
!645 = !{!"function.c:temp_slot_address_compute_hash"}
!646 = !{!"function_entry_count", i64 3895}
!647 = !{!"branch_weights", i32 1, i32 3896}
!648 = !{!"branch_weights", i32 73917, i32 15089310}
!649 = !{!"branch_weights", i32 324, i32 19, i32 18}
!650 = !{!"branch_weights", i32 1133394156, i32 1014089492}
!651 = !{!"branch_weights", i32 1, i32 3879}
!652 = !{!"function_entry_count", i64 395120}
!653 = !{!"branch_weights", i32 127, i32 1}
!654 = !{!"branch_weights", i32 394630, i32 1}
!655 = !{!"branch_weights", i32 128492, i32 266139}
!656 = !{!"branch_weights", i32 31344, i32 97638896, i32 -365056575}
!657 = !{!"branch_weights", i32 394139, i32 491}
!658 = !{!"branch_weights", i32 119483, i32 5896}
!659 = !{!"branch_weights", i32 62721, i32 127}
!660 = !{!"branch_weights", i32 119483, i32 1}
!661 = !{!"branch_weights", i32 115244, i32 4240}
!662 = !{!"branch_weights", i32 115, i32 115130}
!663 = !{!"function_entry_count", i64 532179}
!664 = !{!"function.c:find_temp_slot_from_address"}
!665 = !{!"branch_weights", i32 532163, i32 18}
!666 = !{!"branch_weights", i32 131673, i32 400491}
!667 = !{!"branch_weights", i32 121773, i32 9901}
!668 = !{!"branch_weights", i32 121773, i32 1}
!669 = !{!"branch_weights", i32 1653, i32 130021}
!670 = !{!"branch_weights", i32 1653, i32 1}
!671 = !{!"branch_weights", i32 13769, i32 117905}
!672 = !{!"branch_weights", i32 13767, i32 3}
!673 = !{!"branch_weights", i32 1, i32 13766}
!674 = !{!"branch_weights", i32 40101, i32 1}
!675 = !{!"branch_weights", i32 1, i32 0}
!676 = distinct !{!676, !599}
!677 = !{!"branch_weights", i32 13766, i32 26336}
!678 = distinct !{!678, !599}
!679 = !{!"function_entry_count", i64 13766}
!680 = !{!"function.c:max_slot_level"}
!681 = !{!"branch_weights", i32 1, i32 13767}
!682 = !{!"function_entry_count", i64 357858}
!683 = !{!"branch_weights", i32 332054, i32 25806}
!684 = !{!"branch_weights", i32 332043, i32 11}
!685 = !{!"branch_weights", i32 1, i32 11}
!686 = !{!"branch_weights", i32 11, i32 0}
!687 = distinct !{!687, !599}
!688 = !{!"branch_weights", i32 152034960, i32 225547257}
!689 = !{!"branch_weights", i32 2147276987, i32 206661}
!690 = !{!"branch_weights", i32 3951, i32 21856}
!691 = !{!"branch_weights", i32 233, i32 3719}
!692 = !{!"branch_weights", i32 22087, i32 1}
!693 = distinct !{!693, !599}
!694 = !{!"branch_weights", i32 -2147483648, i32 0}
!695 = distinct !{!695, !599}
!696 = !{!"branch_weights", i32 3718, i32 1}
!697 = distinct !{!697, !599}
!698 = !{!"function_entry_count", i64 10}
!699 = !{!"function.c:move_slot_to_level"}
!700 = !{!"function_entry_count", i64 700453}
!701 = !{!"branch_weights", i32 700436, i32 18}
!702 = !{!"branch_weights", i32 18, i32 0}
!703 = distinct !{!703, !599}
!704 = !{!"branch_weights", i32 0, i32 -2147483648}
!705 = !{!"function.c:make_slot_available"}
!706 = !{!"function.c:remove_unused_temp_slot_addresses"}
!707 = !{!"function.c:combine_temp_slots"}
!708 = distinct !{!708, !599}
!709 = distinct !{!709, !599}
!710 = !{!"function.c:remove_unused_temp_slot_addresses_1"}
!711 = !{!"function_entry_count", i64 404088}
!712 = !{!"branch_weights", i32 404088, i32 1}
!713 = distinct !{!713, !599}
!714 = !{!"function_entry_count", i64 13306}
!715 = !{!"branch_weights", i32 2, i32 13306}
!716 = !{!"function_entry_count", i64 1}
!717 = !{!"function.c:temp_slot_address_hash"}
!718 = !{!"function_entry_count", i64 22}
!719 = !{!"function.c:temp_slot_address_eq"}
!720 = !{!"function_entry_count", i64 64353}
!721 = !{!"branch_weights", i32 1, i32 127}
!722 = !{!"branch_weights", i32 -1095157708, i32 64355, i32 941692082}
!723 = !{!"branch_weights", i32 127, i32 8237185}
!724 = !{!"branch_weights", i32 834, i32 13800}
!725 = !{!"branch_weights", i32 5254, i32 8547}
!726 = !{!"branch_weights", i32 141209, i32 27342441}
!727 = !{!"function_entry_count", i64 418753}
!728 = !{!"function.c:rhs_regno"}
!729 = !{!"function_entry_count", i64 2941731}
!730 = !{!"function.c:instantiate_virtual_regs_in_rtx"}
!731 = !{!"branch_weights", i32 1326351, i32 1615382}
!732 = !{!"branch_weights", i32 889178, i32 401030, i32 325176}
!733 = !{!"branch_weights", i32 301478, i32 99553}
!734 = !{!550, !550, i64 0}
!735 = !{!"branch_weights", i32 14365, i32 85189}
!736 = !{!"branch_weights", i32 192692, i32 132485}
!737 = !{!"branch_weights", i32 19950, i32 112536}
!738 = !{!"function_entry_count", i64 4275158}
!739 = !{!"function.c:instantiate_new_reg"}
!740 = !{!"branch_weights", i32 34908, i32 4240252}
!741 = !{!"branch_weights", i32 34902, i32 7}
!742 = !{!542, !509, i64 481}
!743 = !{!"branch_weights", i32 24385, i32 4215868}
!744 = !{!"branch_weights", i32 1, i32 4215868}
!745 = !{!"branch_weights", i32 177887, i32 4037982}
!746 = !{!"branch_weights", i32 1, i32 4037982}
!747 = !{!"function_entry_count", i64 6652}
!748 = !{!"function.c:instantiate_virtual_regs"}
!749 = !{!"branch_weights", i32 1, i32 6653}
!750 = !{!542, !517, i64 312}
!751 = !{!542, !517, i64 120}
!752 = !{!"branch_weights", i32 1, i32 6652}
!753 = !{!"branch_weights", i32 -1810147320, i32 1157524070}
!754 = !{!"branch_weights", i32 -1857198024, i32 7950767, i32 15877807, i32 1687780, i32 1976, i32 1976}
!755 = !{!"branch_weights", i32 1, i32 1233488}
!756 = !{!"branch_weights", i32 1233488, i32 1}
!757 = !{!"branch_weights", i32 92864, i32 1140625}
!758 = !{!"branch_weights", i32 6652, i32 1820365}
!759 = distinct !{!759, !599}
!760 = !{!761, !508, i64 1744}
!761 = !{!"gcc_target", !762, i64 0, !764, i64 368, !765, i64 664, !517, i64 744, !508, i64 752, !508, i64 760, !508, i64 768, !508, i64 776, !508, i64 784, !508, i64 792, !508, i64 800, !508, i64 808, !508, i64 816, !508, i64 824, !508, i64 832, !508, i64 840, !508, i64 848, !508, i64 856, !508, i64 864, !508, i64 872, !508, i64 880, !508, i64 888, !508, i64 896, !508, i64 904, !508, i64 912, !508, i64 920, !508, i64 928, !508, i64 936, !508, i64 944, !508, i64 952, !508, i64 960, !508, i64 968, !508, i64 976, !508, i64 984, !508, i64 992, !508, i64 1000, !508, i64 1008, !508, i64 1016, !508, i64 1024, !508, i64 1032, !508, i64 1040, !508, i64 1048, !508, i64 1056, !550, i64 1064, !550, i64 1072, !508, i64 1080, !508, i64 1088, !508, i64 1096, !508, i64 1104, !508, i64 1112, !508, i64 1120, !508, i64 1128, !508, i64 1136, !508, i64 1144, !508, i64 1152, !508, i64 1160, !508, i64 1168, !766, i64 1176, !508, i64 1232, !508, i64 1240, !508, i64 1248, !508, i64 1256, !508, i64 1264, !508, i64 1272, !508, i64 1280, !508, i64 1288, !508, i64 1296, !508, i64 1304, !508, i64 1312, !508, i64 1320, !508, i64 1328, !508, i64 1336, !508, i64 1344, !508, i64 1352, !508, i64 1360, !508, i64 1368, !508, i64 1376, !508, i64 1384, !508, i64 1392, !508, i64 1400, !508, i64 1408, !508, i64 1416, !508, i64 1424, !508, i64 1432, !508, i64 1440, !508, i64 1448, !508, i64 1456, !550, i64 1464, !767, i64 1472, !508, i64 1664, !508, i64 1672, !508, i64 1680, !508, i64 1688, !508, i64 1696, !508, i64 1704, !508, i64 1712, !508, i64 1720, !508, i64 1728, !508, i64 1736, !508, i64 1744, !508, i64 1752, !508, i64 1760, !508, i64 1768, !508, i64 1776, !768, i64 1784, !769, i64 1792, !770, i64 1896, !771, i64 1968, !508, i64 2016, !509, i64 2024, !509, i64 2025, !509, i64 2026, !509, i64 2027, !509, i64 2028, !509, i64 2029, !509, i64 2030, !509, i64 2031, !509, i64 2032, !509, i64 2033, !509, i64 2034, !509, i64 2035}
!762 = !{!"asm_out", !508, i64 0, !508, i64 8, !508, i64 16, !763, i64 24, !763, i64 56, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !508, i64 120, !508, i64 128, !508, i64 136, !508, i64 144, !508, i64 152, !508, i64 160, !508, i64 168, !508, i64 176, !508, i64 184, !508, i64 192, !508, i64 200, !508, i64 208, !508, i64 216, !508, i64 224, !508, i64 232, !508, i64 240, !508, i64 248, !508, i64 256, !508, i64 264, !508, i64 272, !508, i64 280, !508, i64 288, !508, i64 296, !508, i64 304, !508, i64 312, !508, i64 320, !508, i64 328, !508, i64 336, !508, i64 344, !508, i64 352, !508, i64 360}
!763 = !{!"asm_int_op", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24}
!764 = !{!"sched", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !508, i64 120, !508, i64 128, !508, i64 136, !508, i64 144, !508, i64 152, !508, i64 160, !508, i64 168, !508, i64 176, !508, i64 184, !508, i64 192, !508, i64 200, !508, i64 208, !508, i64 216, !508, i64 224, !508, i64 232, !508, i64 240, !508, i64 248, !508, i64 256, !508, i64 264, !508, i64 272, !508, i64 280, !508, i64 288}
!765 = !{!"vectorize", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72}
!766 = !{!"addr_space", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48}
!767 = !{!"calls", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !508, i64 112, !508, i64 120, !508, i64 128, !508, i64 136, !508, i64 144, !508, i64 152, !508, i64 160, !508, i64 168, !508, i64 176, !508, i64 184}
!768 = !{!"c", !508, i64 0}
!769 = !{!"cxx", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96}
!770 = !{!"emutls", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40, !508, i64 48, !508, i64 56, !509, i64 64, !509, i64 65}
!771 = !{!"target_option_hooks", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !508, i64 32, !508, i64 40}
!772 = !{!"function_entry_count", i64 1233487}
!773 = !{!"function.c:instantiate_virtual_regs_in_insn"}
!774 = !{!"branch_weights", i32 -1435843467, i32 2317}
!775 = !{!"branch_weights", i32 1096780, i32 1}
!776 = !{!"branch_weights", i32 1204219, i32 1}
!777 = !{!"branch_weights", i32 1204185, i32 35}
!778 = !{!"branch_weights", i32 35, i32 1}
!779 = !{!"branch_weights", i32 130435808, i32 -1011357481}
!780 = !{!"branch_weights", i32 33782, i32 12230}
!781 = !{!"branch_weights", i32 28768, i32 5015}
!782 = !{!"branch_weights", i32 1, i32 5015}
!783 = !{!784, !509, i64 1086}
!784 = !{!"recog_data", !509, i64 0, !509, i64 240, !509, i64 480, !509, i64 720, !509, i64 840, !509, i64 960, !509, i64 1072, !509, i64 1086, !509, i64 1087, !509, i64 1088, !509, i64 1089, !508, i64 1120}
!785 = !{!"branch_weights", i32 1233487, i32 1}
!786 = !{!"branch_weights", i32 969591, i32 468826, i32 1100026, i32 6713}
!787 = !{!"branch_weights", i32 271103, i32 197724}
!788 = !{!"branch_weights", i32 1, i32 197724}
!789 = !{!"branch_weights", i32 197724, i32 1}
!790 = !{!"branch_weights", i32 1099933, i32 94}
!791 = !{!"branch_weights", i32 94, i32 1}
!792 = !{!"branch_weights", i32 6713, i32 1}
!793 = !{!"branch_weights", i32 1, i32 197817}
!794 = !{!795, !508, i64 24}
!795 = !{!"insn_data", !508, i64 0, !509, i64 8, !508, i64 16, !508, i64 24, !509, i64 32, !509, i64 33, !509, i64 34, !509, i64 35}
!796 = !{!"branch_weights", i32 1311666, i32 1233487}
!797 = distinct !{!797, !599}
!798 = !{!"branch_weights", i32 1030838, i32 202651}
!799 = !{!784, !509, i64 1087}
!800 = !{!"branch_weights", i32 1, i32 202650}
!801 = !{!"branch_weights", i32 0, i32 1}
!802 = distinct !{!802, !599}
!803 = !{!"function.c:instantiate_decls"}
!804 = !{!"branch_weights", i32 1, i32 13770}
!805 = !{!"branch_weights", i32 13770, i32 1}
!806 = !{!"branch_weights", i32 6652, i32 7118}
!807 = distinct !{!807, !599}
!808 = !{!516, !508, i64 72}
!809 = !{!"branch_weights", i32 6180, i32 473}
!810 = !{!"branch_weights", i32 1, i32 473}
!811 = !{!"branch_weights", i32 160, i32 314}
!812 = !{!"branch_weights", i32 473, i32 0}
!813 = distinct !{!813, !599}
!814 = !{!"function_entry_count", i64 405567}
!815 = !{!"function.c:safe_insn_predicate"}
!816 = !{!"branch_weights", i32 1, i32 405568}
!817 = !{!818, !508, i64 0}
!818 = !{!"insn_operand_data", !508, i64 0, !508, i64 8, !517, i64 16, !509, i64 18, !509, i64 19}
!819 = !{!"function.c:recog_memoized"}
!820 = !{!"branch_weights", i32 202651, i32 1030838}
!821 = !{!"function_entry_count", i64 8}
!822 = !{!"function.c:instantiate_expr"}
!823 = !{!"branch_weights", i32 25, i32 35}
!824 = !{!"branch_weights", i32 5, i32 1}
!825 = !{!"branch_weights", i32 1, i32 5}
!826 = !{!"function_entry_count", i64 51408}
!827 = !{!"function.c:instantiate_decls_1"}
!828 = !{!"branch_weights", i32 8555, i32 42854}
!829 = !{!"branch_weights", i32 1, i32 42854}
!830 = !{!"branch_weights", i32 6356, i32 36499}
!831 = !{!"branch_weights", i32 42854, i32 1}
!832 = !{!"branch_weights", i32 42850, i32 5}
!833 = !{!"branch_weights", i32 42854, i32 0}
!834 = distinct !{!834, !599}
!835 = !{!"branch_weights", i32 6652, i32 44757}
!836 = !{!"branch_weights", i32 44757, i32 0}
!837 = distinct !{!837, !599}
!838 = !{!"function_entry_count", i64 475580}
!839 = !{!"branch_weights", i32 156331, i32 319251}
!840 = !{!"branch_weights", i32 4964, i32 470618}
!841 = !{!"branch_weights", i32 1, i32 162599, i32 280621, i32 27315, i32 1, i32 86}
!842 = !{!"branch_weights", i32 3163, i32 159437}
!843 = !{!"branch_weights", i32 -1835276508, i32 486045936, i32 6468263}
!844 = !{!"branch_weights", i32 1042, i32 1}
!845 = !{!"branch_weights", i32 -2124020551, i32 6207, i32 295212306}
!846 = !{!"branch_weights", i32 47557, i32 1}
!847 = !{!"branch_weights", i32 -1144114657, i32 -1816032523}
!848 = !{!"branch_weights", i32 13040, i32 209312}
!849 = !{!"branch_weights", i32 209312, i32 1}
!850 = !{!761, !508, i64 1496}
!851 = !{!"branch_weights", i32 396737, i32 547}
!852 = !{!"branch_weights", i32 396737, i32 1}
!853 = !{!"branch_weights", i32 1, i32 396737}
!854 = !{!"branch_weights", i32 3533753, i32 -1488923711}
!855 = !{!"branch_weights", i32 396242, i32 1}
!856 = !{!"branch_weights", i32 1, i32 396242}
!857 = !{!"branch_weights", i32 1, i32 396241}
!858 = !{!"branch_weights", i32 396241, i32 204}
!859 = distinct !{!859, !599}
!860 = !{!"branch_weights", i32 1, i32 396445}
!861 = !{!"function_entry_count", i64 1305682}
!862 = !{!761, !508, i64 1632}
!863 = !{!"branch_weights", i32 1, i32 1305683}
!864 = !{!"branch_weights", i32 -986723466, i32 21444181}
!865 = !{!"branch_weights", i32 646, i32 1296631}
!866 = !{!"branch_weights", i32 1296631, i32 1}
!867 = !{!"branch_weights", i32 2681, i32 -817625813}
!868 = !{!"function_entry_count", i64 226894}
!869 = !{!"branch_weights", i32 171, i32 226725}
!870 = !{!"branch_weights", i32 226725, i32 1}
!871 = !{!"branch_weights", i32 1, i32 226725}
!872 = !{!"branch_weights", i32 311, i32 226415}
!873 = !{!"branch_weights", i32 311, i32 1}
!874 = !{!761, !508, i64 1512}
!875 = !{!761, !508, i64 1568}
!876 = !{!"function_entry_count", i64 8964}
!877 = !{!"branch_weights", i32 1, i32 8964}
!878 = !{!879, !517, i64 36}
!879 = !{!"assign_parm_data_one", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !517, i64 32, !517, i64 36, !517, i64 40, !880, i64 48, !517, i64 120, !517, i64 124, !517, i64 124, !517, i64 124, !517, i64 124}
!880 = !{!"locate_and_pad_arg_data", !881, i64 0, !881, i64 16, !881, i64 32, !881, i64 48, !517, i64 64, !517, i64 68}
!881 = !{!"args_size", !550, i64 0, !508, i64 8}
!882 = !{!"branch_weights", i32 1, i32 18090}
!883 = !{!879, !517, i64 40}
!884 = !{!879, !508, i64 8}
!885 = !{!"branch_weights", i32 18090, i32 1}
!886 = !{!"branch_weights", i32 8964, i32 9126}
!887 = distinct !{!887, !599}
!888 = !{!"function_entry_count", i64 15616}
!889 = !{!"function.c:assign_parms_initialize_all"}
!890 = !{!891, !517, i64 128}
!891 = !{!"assign_parm_data_all", !547, i64 0, !881, i64 64, !508, i64 80, !508, i64 88, !508, i64 96, !508, i64 104, !550, i64 112, !550, i64 120, !517, i64 128}
!892 = !{!"function.c:assign_parms_augmented_arg_list"}
!893 = !{!"branch_weights", i32 1, i32 15616}
!894 = !{!"branch_weights", i32 15616, i32 16202}
!895 = distinct !{!895, !599}
!896 = !{!891, !508, i64 88}
!897 = !{!"branch_weights", i32 15564, i32 54}
!898 = !{!"branch_weights", i32 54, i32 1}
!899 = !{!761, !508, i64 1488}
!900 = !{!891, !508, i64 80}
!901 = !{!761, !508, i64 1552}
!902 = !{!"branch_weights", i32 15617, i32 1}
!903 = !{!"function_entry_count", i64 47486}
!904 = !{!"function.c:VEC_tree_base_iterate"}
!905 = !{!"branch_weights", i32 1386, i32 46102}
!906 = !{!907, !517, i64 0}
!907 = !{!"VEC_tree_base", !517, i64 0, !517, i64 4, !509, i64 8}
!908 = !{!"branch_weights", i32 31871, i32 14232}
!909 = !{!"function_entry_count", i64 31870}
!910 = !{!"function.c:assign_parm_find_data_types"}
!911 = !{!"branch_weights", i32 31687, i32 185}
!912 = !{!"branch_weights", i32 93, i32 93}
!913 = !{!761, !508, i64 1536}
!914 = !{!"branch_weights", i32 1, i32 93}
!915 = !{!"branch_weights", i32 1, i32 31871}
!916 = !{!"branch_weights", i32 63743, i32 1015760641}
!917 = !{!"branch_weights", i32 3633182, i32 1012159330}
!918 = !{!"branch_weights", i32 113, i32 1}
!919 = !{!"branch_weights", i32 31871, i32 1}
!920 = !{!879, !508, i64 0}
!921 = !{!879, !517, i64 32}
!922 = !{!"function_entry_count", i64 33966}
!923 = !{!"function.c:gimplify_parm_type"}
!924 = !{!"branch_weights", i32 33967, i32 1}
!925 = !{!"branch_weights", i32 327248100, i32 287248898, i32 18090}
!926 = !{!"branch_weights", i32 1105, i32 16986}
!927 = !{!"branch_weights", i32 1, i32 16986}
!928 = !{!"function.c:VEC_tree_heap_free"}
!929 = !{!"branch_weights", i32 1386, i32 14232}
!930 = !{!"function_entry_count", i64 31817}
!931 = !{!"function.c:VEC_tree_heap_safe_push"}
!932 = !{!"function_entry_count", i64 53}
!933 = !{!"function.c:VEC_tree_heap_safe_insert"}
!934 = !{!"function.c:split_complex_args"}
!935 = distinct !{!935, !599}
!936 = !{!"function.c:VEC_tree_heap_reserve"}
!937 = !{!"branch_weights", i32 15036, i32 16836}
!938 = !{!"function.c:VEC_tree_base_quick_push"}
!939 = !{!"function.c:VEC_tree_base_space"}
!940 = !{!"branch_weights", i32 14232, i32 17640}
!941 = !{!907, !517, i64 4}
!942 = !{!"function.c:VEC_tree_base_quick_insert"}
!943 = !{!"function.c:VEC_tree_base_replace"}
!944 = !{!"function_entry_count", i64 186253}
!945 = !{!"branch_weights", i32 22979, i32 -14850376}
!946 = !{!881, !508, i64 8}
!947 = !{!881, !550, i64 0}
!948 = !{!"branch_weights", i32 171, i32 186084}
!949 = !{!880, !517, i64 64}
!950 = !{!"branch_weights", i32 1, i32 186254}
!951 = !{!880, !517, i64 68}
!952 = !{!"branch_weights", i32 5, i32 186250}
!953 = !{!542, !517, i64 440}
!954 = !{!"branch_weights", i32 183839, i32 2416}
!955 = !{!"branch_weights", i32 1, i32 2416}
!956 = !{i64 0, i64 8, !734, i64 8, i64 8, !507}
!957 = !{!"branch_weights", i32 141, i32 186114}
!958 = !{!"branch_weights", i32 186254, i32 1}
!959 = !{!880, !550, i64 0}
!960 = !{!880, !508, i64 8}
!961 = !{!"function_entry_count", i64 183838}
!962 = !{!"function.c:pad_to_arg_alignment"}
!963 = !{!"branch_weights", i32 1, i32 183839}
!964 = !{!"branch_weights", i32 2147471967, i32 11681}
!965 = !{!"branch_weights", i32 183839, i32 1}
!966 = !{!516, !508, i64 8}
!967 = !{!968, !517, i64 24}
!968 = !{!"control_flow_graph", !508, i64 0, !508, i64 8, !508, i64 16, !517, i64 24, !517, i64 28, !517, i64 32, !508, i64 40, !517, i64 48, !509, i64 52, !509, i64 60, !517, i64 68, !517, i64 72}
!969 = !{!970, !508, i64 0}
!970 = !{!"bitmap_head_def", !508, i64 0, !508, i64 8, !517, i64 16, !508, i64 24}
!971 = !{!"function.c:setjmp_vars_warning"}
!972 = distinct !{!972, !599}
!973 = distinct !{!973, !599}
!974 = !{!"function.c:setjmp_args_warning"}
!975 = distinct !{!975, !599}
!976 = !{!"function.c:regno_clobbered_at_setjmp"}
!977 = !{!968, !508, i64 0}
!978 = !{!"function.c:REG_N_SETS"}
!979 = !{!980, !517, i64 0}
!980 = !{!"regstat_n_sets_and_refs_t", !517, i64 0, !517, i64 4}
!981 = !{!"function.c:VEC_tree_heap_alloc"}
!982 = !{!"function_entry_count", i64 25538}
!983 = !{!"branch_weights", i32 8964, i32 16575}
!984 = !{!"branch_weights", i32 16575, i32 0}
!985 = distinct !{!985, !599}
!986 = !{!"function.c:reorder_blocks_1"}
!987 = distinct !{!987, !599}
!988 = !{!"function_entry_count", i64 66015}
!989 = !{!"branch_weights", i32 39015, i32 27001}
!990 = !{!"branch_weights", i32 27001, i32 0}
!991 = distinct !{!991, !599}
!992 = !{!"function.c:VEC_tree_base_pop"}
!993 = !{!"function_entry_count", i64 9111}
!994 = !{!"branch_weights", i32 9111, i32 1}
!995 = !{!"branch_weights", i32 9111, i32 85877}
!996 = distinct !{!996, !599}
!997 = !{!"function.c:get_block_vector"}
!998 = !{!"function_entry_count", i64 226418}
!999 = !{!"function.c:all_blocks"}
!1000 = !{!"branch_weights", i32 18222, i32 208197}
!1001 = !{!"branch_weights", i32 104099, i32 104099}
!1002 = !{!"branch_weights", i32 208197, i32 0}
!1003 = distinct !{!1003, !599}
!1004 = distinct !{!1004, !599}
!1005 = distinct !{!1005, !599}
!1006 = !{!"function_entry_count", i64 722424}
!1007 = !{!"function.c:invoke_set_current_function_hook"}
!1008 = !{!"branch_weights", i32 5, i32 722421}
!1009 = !{!"branch_weights", i32 351031, i32 371391}
!1010 = !{!"branch_weights", i32 371391, i32 351031}
!1011 = !{!"branch_weights", i32 722421, i32 1}
!1012 = !{!761, !508, i64 1096}
!1013 = !{!"function_entry_count", i64 734610}
!1014 = !{!"function_entry_count", i64 10854}
!1015 = !{!"function_entry_count", i64 1813}
!1016 = !{!"function_entry_count", i64 2}
!1017 = !{!"branch_weights", i32 1, i32 3}
!1018 = !{!"function.c:prepare_function_start"}
!1019 = !{!542, !508, i64 56}
!1020 = !{!"branch_weights", i32 6655, i32 1}
!1021 = !{!542, !509, i64 477}
!1022 = !{!"branch_weights", i32 8956885, i32 -578348265}
!1023 = !{!761, !508, i64 1432}
!1024 = !{!542, !508, i64 336}
!1025 = !{!"function.c:expand_normal"}
!1026 = !{!761, !508, i64 1440}
!1027 = !{!"branch_weights", i32 6653, i32 1}
!1028 = !{!542, !509, i64 471}
!1029 = !{!542, !509, i64 470}
!1030 = !{!542, !508, i64 352}
!1031 = !{!"branch_weights", i32 6641, i32 13}
!1032 = !{!"branch_weights", i32 13, i32 1}
!1033 = !{!"branch_weights", i32 2631, i32 4011}
!1034 = !{!"branch_weights", i32 1, i32 4011}
!1035 = !{!761, !508, i64 1504}
!1036 = !{!"branch_weights", i32 4011, i32 1}
!1037 = !{!"branch_weights", i32 1, i32 8022, i32 1}
!1038 = !{!516, !508, i64 56}
!1039 = !{!761, !508, i64 1640}
!1040 = !{!516, !508, i64 64}
!1041 = !{!761, !508, i64 1392}
!1042 = !{!542, !508, i64 408}
!1043 = !{!542, !508, i64 376}
!1044 = !{!"function.c:assign_parms"}
!1045 = !{!761, !508, i64 1608}
!1046 = !{!542, !508, i64 200}
!1047 = !{!"branch_weights", i32 1, i32 13782}
!1048 = !{!"branch_weights", i32 156, i32 13627}
!1049 = !{!"branch_weights", i32 156, i32 1}
!1050 = !{!"branch_weights", i32 13690, i32 93}
!1051 = !{!"branch_weights", i32 47, i32 47}
!1052 = !{!"branch_weights", i32 2416, i32 11367}
!1053 = !{!879, !508, i64 16}
!1054 = !{!"branch_weights", i32 13765, i32 18}
!1055 = !{!"branch_weights", i32 13765, i32 1}
!1056 = !{!"branch_weights", i32 49, i32 13717}
!1057 = !{!"branch_weights", i32 6652, i32 7130}
!1058 = distinct !{!1058, !599}
!1059 = !{!891, !508, i64 96}
!1060 = !{!"branch_weights", i32 26658359, i32 17550817}
!1061 = !{!"branch_weights", i32 5913246, i32 -343601693}
!1062 = !{!"branch_weights", i32 1, i32 13}
!1063 = !{!891, !550, i64 112}
!1064 = !{!891, !550, i64 120}
!1065 = !{!891, !550, i64 64}
!1066 = !{!542, !517, i64 116}
!1067 = !{!"branch_weights", i32 5235, i32 1419}
!1068 = !{!891, !508, i64 72}
!1069 = !{!542, !508, i64 128}
!1070 = !{!542, !517, i64 112}
!1071 = !{i64 0, i64 4, !537, i64 4, i64 4, !537, i64 8, i64 4, !537, i64 12, i64 4, !537, i64 16, i64 4, !537, i64 20, i64 4, !537, i64 24, i64 4, !537, i64 28, i64 4, !537, i64 32, i64 4, !537, i64 36, i64 4, !537, i64 40, i64 4, !537, i64 44, i64 4, !537, i64 48, i64 4, !537, i64 52, i64 4, !537, i64 56, i64 4, !537, i64 60, i64 4, !537}
!1072 = !{!542, !508, i64 320}
!1073 = !{!"branch_weights", i32 2631, i32 4023}
!1074 = !{!"branch_weights", i32 1, i32 4023}
!1075 = !{!761, !508, i64 1592}
!1076 = !{!"function.c:expand_expr"}
!1077 = !{!"function_entry_count", i64 46}
!1078 = !{!"function.c:assign_parms_setup_varargs"}
!1079 = !{!761, !508, i64 1528}
!1080 = !{!"branch_weights", i32 1, i32 47}
!1081 = !{!"function_entry_count", i64 13781}
!1082 = !{!"function.c:assign_parm_find_entry_rtl"}
!1083 = !{!879, !508, i64 24}
!1084 = !{!"branch_weights", i32 27462672, i32 5837056}
!1085 = !{!"branch_weights", i32 1, i32 11367}
!1086 = !{!761, !508, i64 1544}
!1087 = !{!761, !508, i64 1560}
!1088 = !{!"branch_weights", i32 -1315176448, i32 633339903}
!1089 = !{!761, !508, i64 1576}
!1090 = !{!879, !517, i64 120}
!1091 = !{!"branch_weights", i32 2416, i32 1}
!1092 = !{!"branch_weights", i32 11367, i32 2416}
!1093 = !{!542, !517, i64 444}
!1094 = !{!879, !517, i64 116}
!1095 = !{!"branch_weights", i32 5235, i32 6133}
!1096 = !{!879, !550, i64 80}
!1097 = !{!879, !550, i64 64}
!1098 = !{!"function.c:assign_parm_is_stack_parm"}
!1099 = !{!879, !550, i64 48}
!1100 = !{!879, !508, i64 56}
!1101 = !{!"branch_weights", i32 11367, i32 1}
!1102 = !{!"function_entry_count", i64 11366}
!1103 = !{!"function.c:assign_parm_find_stack_rtl"}
!1104 = !{!879, !508, i64 88}
!1105 = !{!879, !508, i64 72}
!1106 = !{!"branch_weights", i32 17, i32 11351}
!1107 = !{!"branch_weights", i32 11297, i32 55}
!1108 = !{!"branch_weights", i32 1, i32 55}
!1109 = !{!1110, !508, i64 0}
!1110 = !{!"mem_attrs", !508, i64 0, !508, i64 8, !508, i64 16, !517, i64 24, !517, i64 28, !509, i64 32}
!1111 = !{!1110, !508, i64 8}
!1112 = !{!"branch_weights", i32 55, i32 1}
!1113 = !{!879, !517, i64 112}
!1114 = !{!"function.c:assign_parm_adjust_entry_rtl"}
!1115 = !{!1116, !517, i64 0}
!1116 = !{!"rtvec_def", !517, i64 0, !509, i64 8}
!1117 = distinct !{!1117, !599}
!1118 = !{!"function.c:assign_parm_adjust_stack_rtl"}
!1119 = !{!1110, !517, i64 28}
!1120 = !{!"branch_weights", i32 13728, i32 1}
!1121 = !{!"function.c:assign_parm_setup_block_p"}
!1122 = !{!"branch_weights", i32 18, i32 13765}
!1123 = !{!"function.c:assign_parm_setup_block"}
!1124 = !{!"branch_weights", i32 2, i32 17}
!1125 = !{!"branch_weights", i32 1, i32 2}
!1126 = !{!"branch_weights", i32 289, i32 36, i32 17}
!1127 = !{!891, !508, i64 104}
!1128 = !{!"branch_weights", i32 1, i32 17}
!1129 = !{!"function_entry_count", i64 13716}
!1130 = !{!"function.c:assign_parm_setup_reg"}
!1131 = !{!"branch_weights", i32 13513, i32 205}
!1132 = !{!"branch_weights", i32 13717, i32 1}
!1133 = !{!"branch_weights", i32 13645, i32 73}
!1134 = !{!"branch_weights", i32 13645, i32 1}
!1135 = !{!"branch_weights", i32 73, i32 1}
!1136 = !{!"branch_weights", i32 1, i32 73}
!1137 = !{!"branch_weights", i32 1009803, i32 186186025}
!1138 = !{!"branch_weights", i32 2380, i32 11266}
!1139 = !{!"branch_weights", i32 11266, i32 1}
!1140 = !{!"branch_weights", i32 1, i32 11266}
!1141 = distinct !{!1141, !599}
!1142 = !{!"branch_weights", i32 90135, i32 1}
!1143 = !{!"branch_weights", i32 1879069318, i32 268414330}
!1144 = !{!"branch_weights", i32 6610041, i32 28670084, i32 2571}
!1145 = !{!"function_entry_count", i64 48}
!1146 = !{!"function.c:assign_parm_setup_stack"}
!1147 = !{!"branch_weights", i32 49, i32 1}
!1148 = !{!"branch_weights", i32 32, i32 18}
!1149 = !{!"branch_weights", i32 2145179481, i32 2304167}
!1150 = !{!"function.c:assign_parms_unsplit_complex"}
!1151 = distinct !{!1151, !599}
!1152 = !{!"function_entry_count", i64 13764}
!1153 = !{!"function.c:assign_parm_remove_parallels"}
!1154 = !{!"branch_weights", i32 1, i32 13765}
!1155 = !{!"function.c:VEC_tree_base_index"}
!1156 = !{!"branch_weights", i32 3, i32 1}
!1157 = !{!"branch_weights", i32 2, i32 1}
!1158 = distinct !{!1158, !599}
!1159 = !{!"function_entry_count", i64 62292}
!1160 = !{!"branch_weights", i32 24452, i32 37842}
!1161 = !{!"branch_weights", i32 1, i32 75684, i32 1}
!1162 = distinct !{!1162, !599}
!1163 = !{!"function_entry_count", i64 7104}
!1164 = !{!"branch_weights", i32 1, i32 7105}
!1165 = !{!"branch_weights", i32 3083, i32 4023}
!1166 = !{!"branch_weights", i32 4011, i32 13}
!1167 = !{!"function_entry_count", i64 8032}
!1168 = !{!"function.c:do_clobber_return_reg"}
!1169 = distinct !{!1169, !599}
!1170 = !{!542, !508, i64 384}
!1171 = !{!542, !509, i64 476}
!1172 = distinct !{!1172, !599}
!1173 = !{!"branch_weights", i32 6652, i32 1}
!1174 = distinct !{!1174, !599}
!1175 = !{!"branch_weights", i32 44102881, i32 92987}
!1176 = !{!542, !508, i64 360}
!1177 = !{!"function.c:use_return_register"}
!1178 = !{!"function_entry_count", i64 4022}
!1179 = !{!"function.c:do_use_return_reg"}
!1180 = !{!"function_entry_count", i64 23521}
!1181 = !{!"branch_weights", i32 797, i32 22726}
!1182 = !{!"branch_weights", i32 11315, i32 11412}
!1183 = !{!"branch_weights", i32 11412, i32 1}
!1184 = !{!"function_entry_count", i64 11689484}
!1185 = !{!"branch_weights", i32 11562837, i32 126649}
!1186 = !{!"function_entry_count", i64 23371144}
!1187 = !{!"function.c:contains"}
!1188 = !{!"branch_weights", i32 13706187, i32 9664959}
!1189 = !{!"branch_weights", i32 7210261, i32 2454699}
!1190 = !{!"branch_weights", i32 1, i32 7210261}
!1191 = distinct !{!1191, !599}
!1192 = !{!"branch_weights", i32 29555, i32 35928}
!1193 = !{!"branch_weights", i32 6644, i32 22912}
!1194 = !{!"branch_weights", i32 4266, i32 31663}
!1195 = !{!"branch_weights", i32 6653, i32 25011}
!1196 = !{!"branch_weights", i32 127, i32 8381569}
!1197 = distinct !{!1197, !599}
!1198 = !{!"branch_weights", i32 2136127646, i32 11356002}
!1199 = !{!"branch_weights", i32 10, i32 6644}
!1200 = !{!"branch_weights", i32 11, i32 2}
!1201 = !{!"branch_weights", i32 10, i32 2}
!1202 = !{!"branch_weights", i32 24, i32 6630}
!1203 = !{!968, !508, i64 8}
!1204 = !{i64 0, i64 4, !537, i64 8, i64 8, !507}
!1205 = !{i64 0, i64 8, !507}
!1206 = !{!"branch_weights", i32 1, i32 6629}
!1207 = !{!1208, !508, i64 0}
!1208 = !{!"edge_def", !508, i64 0, !508, i64 8, !509, i64 16, !508, i64 24, !508, i64 32, !517, i64 40, !517, i64 44, !517, i64 48, !517, i64 52, !550, i64 56}
!1209 = !{!1210, !508, i64 8}
!1210 = !{!"rtl_bb_info", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !517, i64 32}
!1211 = !{!"branch_weights", i32 1, i32 109207}
!1212 = !{!"branch_weights", i32 25028, i32 84180}
!1213 = !{!"branch_weights", i32 10263, i32 14766}
!1214 = !{!"branch_weights", i32 9604, i32 660}
!1215 = !{!"branch_weights", i32 82898, i32 1283}
!1216 = !{!"branch_weights", i32 72636, i32 10263}
!1217 = !{!"branch_weights", i32 660, i32 9604}
!1218 = !{!"branch_weights", i32 127, i32 13978369}
!1219 = distinct !{!1219, !599}
!1220 = !{!"branch_weights", i32 9603, i32 661}
!1221 = !{!"branch_weights", i32 6629, i32 3634}
!1222 = distinct !{!1222, !599}
!1223 = !{!"function_entry_count", i64 39843}
!1224 = !{!"function.c:ei_start_1"}
!1225 = !{!"function_entry_count", i64 62042}
!1226 = !{!"function.c:ei_cond"}
!1227 = !{!"branch_weights", i32 41741, i32 20303}
!1228 = !{!"function_entry_count", i64 37134}
!1229 = !{!"function.c:ei_next"}
!1230 = !{!"branch_weights", i32 1, i32 37135}
!1231 = !{!"branch_weights", i32 37135, i32 1}
!1232 = !{!1233, !517, i64 0}
!1233 = !{!"", !517, i64 0, !508, i64 8}
!1234 = !{!"function_entry_count", i64 76977}
!1235 = !{!"function.c:ei_end_p"}
!1236 = !{!"branch_weights", i32 1, i32 76978}
!1237 = !{!"function_entry_count", i64 50023}
!1238 = !{!"function.c:ei_edge"}
!1239 = !{!"branch_weights", i32 1, i32 50024}
!1240 = !{!"function_entry_count", i64 127415}
!1241 = !{!"function.c:VEC_edge_base_length"}
!1242 = !{!"branch_weights", i32 1, i32 127416}
!1243 = !{!1244, !517, i64 0}
!1244 = !{!"VEC_edge_base", !517, i64 0, !517, i64 4, !509, i64 8}
!1245 = !{!"function_entry_count", i64 328268}
!1246 = !{!"function.c:ei_container"}
!1247 = !{!"branch_weights", i32 1, i32 328269}
!1248 = !{!"function_entry_count", i64 56675}
!1249 = !{!"function.c:VEC_edge_base_index"}
!1250 = !{!577, !508, i64 176}
!1251 = !{!"function_entry_count", i64 153740}
!1252 = !{!"branch_weights", i32 -1171766410, i32 114072028, i32 21772, i32 110226165}
!1253 = !{!"branch_weights", i32 1, i32 5241}
!1254 = distinct !{!1254, !599}
!1255 = !{!"branch_weights", i32 21723137, i32 2125760511}
!1256 = !{!"branch_weights", i32 145508, i32 6784}
!1257 = !{!"branch_weights", i32 153741, i32 1}
!1258 = !{!"function.c:used_types_insert_helper"}
!1259 = !{!516, !508, i64 96}
!1260 = !{!"function.c:hash_types_used_by_vars_entry"}
!1261 = !{!1262, !508, i64 8}
!1262 = !{!"types_used_by_vars_entry", !508, i64 0, !508, i64 8}
!1263 = !{!1262, !508, i64 0}
!1264 = !{!"function.c:rest_of_handle_check_leaf_regs"}
!1265 = !{!"function.c:rest_of_handle_thread_prologue_and_epilogue"}
!1266 = !{!"function.c:thread_prologue_and_epilogue_insns"}
!1267 = !{!"branch_weights", i32 1, i32 191}
!1268 = !{!1208, !517, i64 48}
!1269 = !{!"branch_weights", i32 6630, i32 1}
!1270 = !{!"branch_weights", i32 191, i32 52849}
!1271 = distinct !{!1271, !599}
!1272 = !{!"branch_weights", i32 2147160961, i32 322687}
!1273 = !{!"branch_weights", i32 1, i32 6630}
!1274 = distinct !{!1274, !599}
!1275 = distinct !{!1275, !599}
!1276 = !{!1210, !508, i64 0}
!1277 = distinct !{!1277, !599}
!1278 = !{!"branch_weights", i32 2024, i32 6261}
!1279 = !{!"branch_weights", i32 2024, i32 1}
!1280 = !{!"branch_weights", i32 6629, i32 1655}
!1281 = distinct !{!1281, !599}
!1282 = !{!"branch_weights", i32 1, i32 369}
!1283 = !{!"branch_weights", i32 369, i32 7915}
!1284 = distinct !{!1284, !599}
!1285 = !{!"branch_weights", i32 2147238917, i32 244731}
!1286 = !{!"branch_weights", i32 8284, i32 1}
!1287 = !{!"branch_weights", i32 6652, i32 1632}
!1288 = distinct !{!1288, !599}
!1289 = !{!"branch_weights", i32 4096576, i32 12680549}
!1290 = distinct !{!1290, !599}
!1291 = !{!"branch_weights", i32 393, i32 6261}
!1292 = !{!"branch_weights", i32 15739, i32 49259}
!1293 = !{!"branch_weights", i32 1, i32 15739}
!1294 = !{!"branch_weights", i32 6261, i32 58736}
!1295 = distinct !{!1295, !599}
!1296 = !{!"function_entry_count", i64 14935}
!1297 = !{!"function.c:record_insns"}
!1298 = !{!"branch_weights", i32 13282, i32 1655}
!1299 = !{!"branch_weights", i32 1, i32 14935}
!1300 = !{!"branch_weights", i32 71588, i32 1}
!1301 = !{!"branch_weights", i32 14935, i32 56653}
!1302 = distinct !{!1302, !599}
!1303 = !{!"function.c:set_insn_locators"}
!1304 = !{!"branch_weights", i32 -281213306, i32 500446671}
!1305 = !{!"branch_weights", i32 14935, i32 63305}
!1306 = distinct !{!1306, !599}
!1307 = !{!"function_entry_count", i64 13304}
!1308 = !{!"function.c:single_succ_p"}
!1309 = !{!1310, !508, i64 8}
!1310 = !{!"basic_block_def", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !509, i64 32, !508, i64 48, !508, i64 56, !509, i64 64, !550, i64 72, !517, i64 80, !517, i64 84, !517, i64 88, !517, i64 92, !517, i64 96}
!1311 = !{!"function.c:single_succ_edge"}
!1312 = !{!"function.c:ei_safe_edge"}
!1313 = !{!"branch_weights", i32 8284, i32 6653}
!1314 = !{!"function.c:emit_return_into_block"}
!1315 = !{!"function.c:rest_of_match_asm_constraints"}
!1316 = !{!542, !509, i64 468}
!1317 = !{!1310, !508, i64 56}
!1318 = distinct !{!1318, !599}
!1319 = distinct !{!1319, !599}
!1320 = !{!"function.c:match_asm_constraints_1"}
!1321 = distinct !{!1321, !599}
!1322 = distinct !{!1322, !599}
!1323 = distinct !{!1323, !599}
!1324 = distinct !{!1324, !599}
!1325 = distinct !{!1325, !599}
!1326 = !{!1327, !508, i64 24}
!1327 = !{!"htab", !508, i64 0, !508, i64 8, !508, i64 16, !508, i64 24, !550, i64 32, !550, i64 40, !550, i64 48, !517, i64 56, !517, i64 60, !508, i64 64, !508, i64 72, !508, i64 80, !508, i64 88, !508, i64 96, !517, i64 104}
!1328 = !{!1327, !550, i64 32}
!1329 = distinct !{!1329, !599}
!1330 = distinct !{!1330, !599}
!1331 = distinct !{!1331, !599}
