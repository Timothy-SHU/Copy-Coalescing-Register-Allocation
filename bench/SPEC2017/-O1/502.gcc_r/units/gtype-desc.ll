; ModuleID = 'gtype-desc.c'
source_filename = "gtype-desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, ptr, i32 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_ops = type { %struct.gimple_statement_with_ops_base, [1 x ptr] }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops = type { %struct.gimple_statement_with_memory_ops_base, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_eh_region_base = type { i32, i32, [1 x ptr] }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.constant_descriptor_tree = type { ptr, ptr, i32 }
%struct.cgraph_asm_node = type { ptr, ptr, i32 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.VEC_cgraph_node_set_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.elt_list = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { ptr, %struct.double_int, i8, ptr }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.types_used_by_vars_entry = type { ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x ptr] }
%struct.sequence_stack = type { ptr, ptr, ptr }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.var_ann_d = type { i8, i32, ptr }
%struct.varray_head_tag = type { i64, i64, i32, ptr, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x i64] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.alias_pair = type { ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.machine_function = type { ptr, ptr, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.machine_cfa_state = type { ptr, i64 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.object_block = type { ptr, i32, i64, ptr, ptr }
%struct.named_section = type { %struct.section_common, ptr, ptr }
%struct.section_common = type { i32 }
%struct.unnamed_section = type { %struct.section_common, ptr, ptr, ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.answer = type { ptr, i32, [1 x %struct.cpp_token] }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ht_identifier = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [13 x i8] c"gtype-desc.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_next = dso_local local_unnamed_addr constant [139 x i8] c"\00\00\00\10\10\00\08\18\18\18\18\18\18\18\10\00\00\00\00\00\00\08\08\10\08\08\08\00\00\08\00\00\00\00\00\08\00\00\00\08\08\08\00\08\08\00\00\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\10", align 16
@ipa_edge_args_vector = external global ptr, align 8
@chrec_known = external global ptr, align 8
@chrec_dont_know = external global ptr, align 8
@cfg_layout_function_header = external global ptr, align 8
@cfg_layout_function_footer = external global ptr, align 8
@block_clear_fn = external global ptr, align 8
@reg_equiv_init = external global ptr, align 8
@reg_equiv_memory_loc_vec = external global ptr, align 8
@varpool_nodes = external global ptr, align 8
@varpool_nodes_queue = external global ptr, align 8
@cgraph_asm_nodes = external global ptr, align 8
@cgraph_new_nodes = external global ptr, align 8
@cgraph_nodes_queue = external global ptr, align 8
@cgraph_nodes = external global ptr, align 8
@in_section = external global ptr, align 8
@bss_noswitch_section = external global ptr, align 8
@lcomm_section = external global ptr, align 8
@comm_section = external global ptr, align 8
@tls_comm_section = external global ptr, align 8
@eh_frame_section = external global ptr, align 8
@exception_section = external global ptr, align 8
@sbss_section = external global ptr, align 8
@bss_section = external global ptr, align 8
@dtors_section = external global ptr, align 8
@ctors_section = external global ptr, align 8
@sdata_section = external global ptr, align 8
@readonly_data_section = external global ptr, align 8
@data_section = external global ptr, align 8
@text_section = external global ptr, align 8
@types_used_by_cur_var_decl = external global ptr, align 8
@types_used_by_vars_hash = external global ptr, align 8
@cfun = external global ptr, align 8
@x_rtl = external global %struct.rtl_data, align 8
@regno_reg_rtx = external global ptr, align 8
@libfunc_table = external global [14 x ptr], align 16
@memory_identifier_string = external global ptr, align 8
@current_function_func_begin_label = external global ptr, align 8
@current_function_decl = external global ptr, align 8
@sizetype_tab = external global [4 x ptr], align 16
@integer_types = external global [11 x ptr], align 16
@global_trees = external global [131 x ptr], align 16
@implicit_built_in_decls = external global [721 x ptr], align 16
@built_in_decls = external global [721 x ptr], align 16
@alias_pairs = external global ptr, align 8
@stack_limit_rtx = external global ptr, align 8
@return_address_pointer_rtx = external global ptr, align 8
@pic_offset_table_rtx = external global ptr, align 8
@global_rtl = external global [11 x ptr], align 16
@const_tiny_rtx = external global [3 x [87 x ptr]], align 16
@const_true_rtx = external global ptr, align 8
@const_int_rtx = external global [129 x ptr], align 16
@line_table = external global ptr, align 8
@gt_ggc_r_gtype_desc_c = dso_local local_unnamed_addr constant [87 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ipa_edge_args_vector, i64 1, i64 8, ptr @gt_ggc_mx_VEC_ipa_edge_args_t_gc, ptr @gt_pch_nx_VEC_ipa_edge_args_t_gc }, %struct.ggc_root_tab { ptr @chrec_known, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @chrec_dont_know, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @cfg_layout_function_header, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @cfg_layout_function_footer, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @block_clear_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @reg_equiv_init, i64 1, i64 8, ptr @gt_ggc_ma_reg_equiv_init, ptr @gt_pch_na_reg_equiv_init }, %struct.ggc_root_tab { ptr @reg_equiv_memory_loc_vec, i64 1, i64 8, ptr @gt_ggc_mx_VEC_rtx_gc, ptr @gt_pch_nx_VEC_rtx_gc }, %struct.ggc_root_tab { ptr @varpool_nodes, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @cgraph_asm_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_asm_node, ptr @gt_pch_nx_cgraph_asm_node }, %struct.ggc_root_tab { ptr @cgraph_new_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @cgraph_nodes, i64 1, i64 8, ptr @gt_ggc_mx_cgraph_node, ptr @gt_pch_nx_cgraph_node }, %struct.ggc_root_tab { ptr @in_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @bss_noswitch_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @lcomm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @comm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @tls_comm_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @eh_frame_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @exception_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @sbss_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @bss_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @dtors_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @ctors_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @sdata_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @readonly_data_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @data_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @text_section, i64 1, i64 8, ptr @gt_ggc_mx_section, ptr @gt_pch_nx_section }, %struct.ggc_root_tab { ptr @types_used_by_cur_var_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @types_used_by_vars_hash, i64 1, i64 8, ptr @gt_ggc_m_P24types_used_by_vars_entry4htab, ptr @gt_pch_n_P24types_used_by_vars_entry4htab }, %struct.ggc_root_tab { ptr @cfun, i64 1, i64 8, ptr @gt_ggc_mx_function, ptr @gt_pch_nx_function }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 16), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 24), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 32), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 48), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 56), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 64), i64 1, i64 488, ptr @gt_ggc_mx_sequence_stack, ptr @gt_pch_nx_sequence_stack }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 96), i64 1, i64 488, ptr @gt_ggc_mx_rtx_constant_pool, ptr @gt_pch_nx_rtx_constant_pool }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 128), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 200), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 208), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 216), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 224), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 232), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 240), i64 1, i64 488, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 248), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 256), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 264), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 272), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 280), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 288), i64 1, i64 488, ptr @gt_ggc_mx_VEC_uchar_gc, ptr @gt_pch_nx_VEC_uchar_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 296), i64 1, i64 488, ptr @gt_ggc_mx_VEC_call_site_record_gc, ptr @gt_pch_nx_VEC_call_site_record_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 320), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 328), i64 1, i64 488, ptr @gt_ggc_mx_initial_value_struct, ptr @gt_pch_nx_initial_value_struct }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 336), i64 1, i64 488, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 344), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 352), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 360), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 368), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 376), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 384), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 392), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 408), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 416), i64 1, i64 488, ptr @gt_ggc_mx_VEC_temp_slot_p_gc, ptr @gt_pch_nx_VEC_temp_slot_p_gc }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 424), i64 1, i64 488, ptr @gt_ggc_mx_temp_slot, ptr @gt_pch_nx_temp_slot }, %struct.ggc_root_tab { ptr getelementptr (i8, ptr @x_rtl, i64 456), i64 1, i64 488, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @regno_reg_rtx, i64 1, i64 8, ptr @gt_ggc_ma_regno_reg_rtx, ptr @gt_pch_na_regno_reg_rtx }, %struct.ggc_root_tab { ptr @libfunc_table, i64 14, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @memory_identifier_string, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @current_function_func_begin_label, i64 1, i64 8, ptr @gt_ggc_m_S, ptr @gt_pch_n_S }, %struct.ggc_root_tab { ptr @current_function_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @sizetype_tab, i64 4, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @integer_types, i64 11, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @global_trees, i64 131, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @implicit_built_in_decls, i64 721, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @built_in_decls, i64 721, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @alias_pairs, i64 1, i64 8, ptr @gt_ggc_mx_VEC_alias_pair_gc, ptr @gt_pch_nx_VEC_alias_pair_gc }, %struct.ggc_root_tab { ptr @stack_limit_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @return_address_pointer_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @pic_offset_table_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @global_rtl, i64 11, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_tiny_rtx, i64 261, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_true_rtx, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @const_int_rtx, i64 129, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @line_table, i64 1, i64 8, ptr @gt_ggc_mx_line_maps, ptr @gt_pch_nx_line_maps }, %struct.ggc_root_tab zeroinitializer], align 16
@reg_equiv_init_size = external global i32, align 4
@cgraph_order = external global i32, align 4
@cgraph_max_pid = external global i32, align 4
@cgraph_edge_max_uid = external global i32, align 4
@cgraph_max_uid = external global i32, align 4
@cgraph_n_nodes = external global i32, align 4
@in_cold_section_p = external global i8, align 1
@gt_pch_rs_gtype_desc_c = dso_local local_unnamed_addr constant [9 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @reg_equiv_init_size, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_order, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_max_pid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_edge_max_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_max_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @cgraph_n_nodes, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @in_cold_section_p, i64 1, i64 1, ptr null, ptr null }, %struct.ggc_root_tab { ptr @x_rtl, i64 1, i64 488, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
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
  %5 = tail call ptr @__ctype_tolower_loc() #11
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
  %5 = tail call ptr @__ctype_toupper_loc() #11
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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
define dso_local void @gt_ggc_mx_VEC_ipa_edge_args_t_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %61, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !54
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %6, %58
  %11 = phi i64 [ %59, %58 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %16, %48
  %20 = phi i64 [ %49, %48 ], [ 0, %16 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !60
  switch i32 %23, label %48 [
    i32 1, label %24
    i32 3, label %28
    i32 4, label %32
    i32 2, label %36
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %46

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %46

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %46

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %38) #11
  br label %41

41:                                               ; preds = %36, %40
  %42 = load ptr, ptr %13, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.ipa_jump_func, ptr %42, i64 %20, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %32, %28, %24
  %47 = phi ptr [ %26, %24 ], [ %30, %28 ], [ %34, %32 ], [ %44, %41 ]
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %47) #11
  br label %48

48:                                               ; preds = %46, %24, %28, %32, %41, %19
  %49 = add i64 %20, 1
  %50 = load i32, ptr %12, align 8, !tbaa !59
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %19, !llvm.loop !62

53:                                               ; preds = %48, %16
  %54 = load ptr, ptr %13, align 8, !tbaa !57
  %55 = icmp ult ptr %54, inttoptr (i64 2 to ptr)
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @ggc_set_mark(ptr noundef nonnull %54) #11
  br label %58

58:                                               ; preds = %53, %56, %10
  %59 = add nuw nsw i64 %11, 1
  %60 = icmp eq i64 %59, %8
  br i1 %60, label %61, label %10, !llvm.loop !63

61:                                               ; preds = %58, %6, %1, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %8, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !64
  %9 = icmp ult ptr %8, inttoptr (i64 2 to ptr)
  br i1 %9, label %10, label %3, !llvm.loop !66

10:                                               ; preds = %3, %7, %1
  %11 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %8, %7 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10, %18
  %14 = phi ptr [ %19, %18 ], [ %0, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %14, align 8, !tbaa !64
  %20 = icmp eq ptr %19, %11
  br i1 %20, label %21, label %13, !llvm.loop !67

21:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_gimple_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !68
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !71

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_gimple_statement_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %537, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %537

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !50
  switch i32 %11, label %537 [
    i32 0, label %12
    i32 1, label %22
    i32 2, label %46
    i32 3, label %56
    i32 13, label %80
    i32 5, label %95
    i32 8, label %120
    i32 9, label %140
    i32 10, label %160
    i32 6, label %175
    i32 11, label %204
    i32 7, label %214
    i32 12, label %234
    i32 4, label %249
    i32 14, label %275
    i32 15, label %295
    i32 16, label %362
    i32 17, label %392
    i32 18, label %437
    i32 19, label %462
    i32 20, label %482
    i32 21, label %502
    i32 22, label %522
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %537, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %19) #11
  br label %537

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %24)
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %29) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = zext i32 %34 to i64
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %537, label %37

37:                                               ; preds = %32, %43
  %38 = phi i64 [ %44, %43 ], [ 0, %32 ]
  %39 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %0, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %40) #11
  br label %43

43:                                               ; preds = %37, %42
  %44 = add nuw nsw i64 %38, 1
  %45 = icmp eq i64 %44, %35
  br i1 %45, label %537, label %37, !llvm.loop !72

46:                                               ; preds = %6
  %47 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %48)
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = icmp eq ptr %53, null
  br i1 %54, label %537, label %55

55:                                               ; preds = %51
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %53) #11
  br label %537

56:                                               ; preds = %6
  %57 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %58)
  br label %61

61:                                               ; preds = %56, %60
  %62 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %63) #11
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !46
  %69 = zext i32 %68 to i64
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %537, label %71

71:                                               ; preds = %66, %77
  %72 = phi i64 [ %78, %77 ], [ 0, %66 ]
  %73 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %0, i64 0, i32 1, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %74) #11
  br label %77

77:                                               ; preds = %71, %76
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, %69
  br i1 %79, label %537, label %71, !llvm.loop !73

80:                                               ; preds = %6
  %81 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %82)
  br label %85

85:                                               ; preds = %80, %84
  %86 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %87) #11
  br label %90

90:                                               ; preds = %85, %89
  %91 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %537, label %94

94:                                               ; preds = %90
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %92)
  br label %537

95:                                               ; preds = %6
  %96 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %97)
  br label %100

100:                                              ; preds = %95, %99
  %101 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %102) #11
  br label %105

105:                                              ; preds = %100, %104
  %106 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %107) #11
  br label %110

110:                                              ; preds = %105, %109
  %111 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %112) #11
  br label %115

115:                                              ; preds = %110, %114
  %116 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  br i1 %118, label %537, label %119

119:                                              ; preds = %115
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %117)
  br label %537

120:                                              ; preds = %6
  %121 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %122)
  br label %125

125:                                              ; preds = %120, %124
  %126 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %127) #11
  br label %130

130:                                              ; preds = %125, %129
  %131 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %132) #11
  br label %135

135:                                              ; preds = %130, %134
  %136 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = icmp eq ptr %137, null
  br i1 %138, label %537, label %139

139:                                              ; preds = %135
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %137)
  br label %537

140:                                              ; preds = %6
  %141 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !46
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %142)
  br label %145

145:                                              ; preds = %140, %144
  %146 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %147) #11
  br label %150

150:                                              ; preds = %145, %149
  %151 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %152) #11
  br label %155

155:                                              ; preds = %150, %154
  %156 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  %158 = icmp eq ptr %157, null
  br i1 %158, label %537, label %159

159:                                              ; preds = %155
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %157)
  br label %537

160:                                              ; preds = %6
  %161 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !46
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %162)
  br label %165

165:                                              ; preds = %160, %164
  %166 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %167) #11
  br label %170

170:                                              ; preds = %165, %169
  %171 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  %173 = icmp eq ptr %172, null
  br i1 %173, label %537, label %174

174:                                              ; preds = %170
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %172) #11
  br label %537

175:                                              ; preds = %6
  %176 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !46
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %177)
  br label %180

180:                                              ; preds = %175, %179
  %181 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %182) #11
  br label %185

185:                                              ; preds = %180, %184
  %186 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %187) #11
  br label %190

190:                                              ; preds = %189, %185
  %191 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %192 = load i32, ptr %191, align 4, !tbaa !46
  %193 = zext i32 %192 to i64
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %537, label %195

195:                                              ; preds = %190, %201
  %196 = phi i64 [ %202, %201 ], [ 0, %190 ]
  %197 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %196, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !46
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %198) #11
  br label %201

201:                                              ; preds = %195, %200
  %202 = add nuw nsw i64 %196, 1
  %203 = icmp eq i64 %202, %193
  br i1 %203, label %537, label %195, !llvm.loop !74

204:                                              ; preds = %6
  %205 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %206)
  br label %209

209:                                              ; preds = %204, %208
  %210 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !46
  %212 = icmp eq ptr %211, null
  br i1 %212, label %537, label %213

213:                                              ; preds = %209
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %211) #11
  br label %537

214:                                              ; preds = %6
  %215 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %216)
  br label %219

219:                                              ; preds = %214, %218
  %220 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %219
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %221) #11
  br label %224

224:                                              ; preds = %219, %223
  %225 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !46
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %226)
  br label %229

229:                                              ; preds = %224, %228
  %230 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !46
  %232 = icmp eq ptr %231, null
  br i1 %232, label %537, label %233

233:                                              ; preds = %229
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %231)
  br label %537

234:                                              ; preds = %6
  %235 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %236)
  br label %239

239:                                              ; preds = %234, %238
  %240 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %241) #11
  br label %244

244:                                              ; preds = %239, %243
  %245 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = icmp eq ptr %246, null
  br i1 %247, label %537, label %248

248:                                              ; preds = %244
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %246)
  br label %537

249:                                              ; preds = %6
  %250 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = icmp eq ptr %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %251)
  br label %254

254:                                              ; preds = %249, %253
  %255 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %256) #11
  br label %259

259:                                              ; preds = %258, %254
  %260 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %261) #11
  %262 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %263 = load i32, ptr %262, align 4, !tbaa !46
  %264 = zext i32 %263 to i64
  %265 = icmp eq i32 %263, 0
  br i1 %265, label %537, label %266

266:                                              ; preds = %259, %272
  %267 = phi i64 [ %273, %272 ], [ 0, %259 ]
  %268 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 6, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !46
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %266
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %269) #11
  br label %272

272:                                              ; preds = %266, %271
  %273 = add nuw nsw i64 %267, 1
  %274 = icmp eq i64 %273, %264
  br i1 %274, label %537, label %266, !llvm.loop !75

275:                                              ; preds = %6
  %276 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %277 = load ptr, ptr %276, align 8, !tbaa !46
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %277)
  br label %280

280:                                              ; preds = %275, %279
  %281 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %282 = load ptr, ptr %281, align 8, !tbaa !46
  %283 = icmp eq ptr %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %282) #11
  br label %285

285:                                              ; preds = %280, %284
  %286 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  %288 = icmp eq ptr %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %285
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %287)
  br label %290

290:                                              ; preds = %285, %289
  %291 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !46
  %293 = icmp eq ptr %292, null
  br i1 %293, label %537, label %294

294:                                              ; preds = %290
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %292) #11
  br label %537

295:                                              ; preds = %6
  %296 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %297 = load ptr, ptr %296, align 8, !tbaa !46
  %298 = icmp eq ptr %297, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %297)
  br label %300

300:                                              ; preds = %295, %299
  %301 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %302 = load ptr, ptr %301, align 8, !tbaa !46
  %303 = icmp eq ptr %302, null
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %302) #11
  br label %305

305:                                              ; preds = %300, %304
  %306 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !46
  %308 = icmp eq ptr %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %305
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %307)
  br label %310

310:                                              ; preds = %305, %309
  %311 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = icmp eq ptr %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %310
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %312) #11
  br label %315

315:                                              ; preds = %314, %310
  %316 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !46
  %318 = icmp eq ptr %317, null
  br i1 %318, label %357, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %321 = load i64, ptr %320, align 8, !tbaa !46
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %352, label %323

323:                                              ; preds = %319, %348
  %324 = phi i64 [ %349, %348 ], [ 0, %319 ]
  %325 = load ptr, ptr %316, align 8, !tbaa !46
  %326 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %325, i64 %324, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !76
  %328 = icmp eq ptr %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %323
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %327) #11
  br label %330

330:                                              ; preds = %323, %329
  %331 = load ptr, ptr %316, align 8, !tbaa !46
  %332 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %331, i64 %324, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !78
  %334 = icmp eq ptr %333, null
  br i1 %334, label %336, label %335

335:                                              ; preds = %330
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %333) #11
  br label %336

336:                                              ; preds = %330, %335
  %337 = load ptr, ptr %316, align 8, !tbaa !46
  %338 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %337, i64 %324, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !79
  %340 = icmp eq ptr %339, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %336
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %339) #11
  br label %342

342:                                              ; preds = %336, %341
  %343 = load ptr, ptr %316, align 8, !tbaa !46
  %344 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %343, i64 %324, i32 4
  %345 = load ptr, ptr %344, align 8, !tbaa !80
  %346 = icmp eq ptr %345, null
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %345) #11
  br label %348

348:                                              ; preds = %342, %347
  %349 = add i64 %324, 1
  %350 = load i64, ptr %320, align 8, !tbaa !46
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %323, !llvm.loop !81

352:                                              ; preds = %348, %319
  %353 = load ptr, ptr %316, align 8, !tbaa !46
  %354 = icmp ult ptr %353, inttoptr (i64 2 to ptr)
  br i1 %354, label %357, label %355

355:                                              ; preds = %352
  %356 = tail call i32 @ggc_set_mark(ptr noundef nonnull %353) #11
  br label %357

357:                                              ; preds = %352, %355, %315
  %358 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !46
  %360 = icmp eq ptr %359, null
  br i1 %360, label %537, label %361

361:                                              ; preds = %357
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %359)
  br label %537

362:                                              ; preds = %6
  %363 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  %365 = icmp eq ptr %364, null
  br i1 %365, label %367, label %366

366:                                              ; preds = %362
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %364)
  br label %367

367:                                              ; preds = %362, %366
  %368 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %369 = load ptr, ptr %368, align 8, !tbaa !46
  %370 = icmp eq ptr %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %369) #11
  br label %372

372:                                              ; preds = %367, %371
  %373 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !46
  %375 = icmp eq ptr %374, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %372
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %374)
  br label %377

377:                                              ; preds = %372, %376
  %378 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !46
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %377
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %379) #11
  br label %382

382:                                              ; preds = %377, %381
  %383 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !46
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %384) #11
  br label %387

387:                                              ; preds = %382, %386
  %388 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !46
  %390 = icmp eq ptr %389, null
  br i1 %390, label %537, label %391

391:                                              ; preds = %387
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %389) #11
  br label %537

392:                                              ; preds = %6
  %393 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %394 = load ptr, ptr %393, align 8, !tbaa !46
  %395 = icmp eq ptr %394, null
  br i1 %395, label %397, label %396

396:                                              ; preds = %392
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %394)
  br label %397

397:                                              ; preds = %392, %396
  %398 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %399 = load ptr, ptr %398, align 8, !tbaa !46
  %400 = icmp eq ptr %399, null
  br i1 %400, label %402, label %401

401:                                              ; preds = %397
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %399) #11
  br label %402

402:                                              ; preds = %397, %401
  %403 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !46
  %405 = icmp eq ptr %404, null
  br i1 %405, label %407, label %406

406:                                              ; preds = %402
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %404)
  br label %407

407:                                              ; preds = %402, %406
  %408 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !46
  %410 = icmp eq ptr %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %407
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %409) #11
  br label %412

412:                                              ; preds = %407, %411
  %413 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !46
  %415 = icmp eq ptr %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %414) #11
  br label %417

417:                                              ; preds = %412, %416
  %418 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !46
  %420 = icmp eq ptr %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %417
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %419) #11
  br label %422

422:                                              ; preds = %417, %421
  %423 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !46
  %425 = icmp eq ptr %424, null
  br i1 %425, label %427, label %426

426:                                              ; preds = %422
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %424) #11
  br label %427

427:                                              ; preds = %422, %426
  %428 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !46
  %430 = icmp eq ptr %429, null
  br i1 %430, label %432, label %431

431:                                              ; preds = %427
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %429) #11
  br label %432

432:                                              ; preds = %427, %431
  %433 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !46
  %435 = icmp eq ptr %434, null
  br i1 %435, label %537, label %436

436:                                              ; preds = %432
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %434) #11
  br label %537

437:                                              ; preds = %6
  %438 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %439 = load ptr, ptr %438, align 8, !tbaa !46
  %440 = icmp eq ptr %439, null
  br i1 %440, label %442, label %441

441:                                              ; preds = %437
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %439)
  br label %442

442:                                              ; preds = %437, %441
  %443 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %444 = load ptr, ptr %443, align 8, !tbaa !46
  %445 = icmp eq ptr %444, null
  br i1 %445, label %447, label %446

446:                                              ; preds = %442
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %444) #11
  br label %447

447:                                              ; preds = %442, %446
  %448 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !46
  %450 = icmp eq ptr %449, null
  br i1 %450, label %452, label %451

451:                                              ; preds = %447
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %449)
  br label %452

452:                                              ; preds = %447, %451
  %453 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !46
  %455 = icmp eq ptr %454, null
  br i1 %455, label %457, label %456

456:                                              ; preds = %452
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %454) #11
  br label %457

457:                                              ; preds = %452, %456
  %458 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !46
  %460 = icmp eq ptr %459, null
  br i1 %460, label %537, label %461

461:                                              ; preds = %457
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %459) #11
  br label %537

462:                                              ; preds = %6
  %463 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %464 = load ptr, ptr %463, align 8, !tbaa !46
  %465 = icmp eq ptr %464, null
  br i1 %465, label %467, label %466

466:                                              ; preds = %462
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %464)
  br label %467

467:                                              ; preds = %462, %466
  %468 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !46
  %470 = icmp eq ptr %469, null
  br i1 %470, label %472, label %471

471:                                              ; preds = %467
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %469) #11
  br label %472

472:                                              ; preds = %467, %471
  %473 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !46
  %475 = icmp eq ptr %474, null
  br i1 %475, label %477, label %476

476:                                              ; preds = %472
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %474)
  br label %477

477:                                              ; preds = %472, %476
  %478 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !46
  %480 = icmp eq ptr %479, null
  br i1 %480, label %537, label %481

481:                                              ; preds = %477
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %479) #11
  br label %537

482:                                              ; preds = %6
  %483 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %484 = load ptr, ptr %483, align 8, !tbaa !46
  %485 = icmp eq ptr %484, null
  br i1 %485, label %487, label %486

486:                                              ; preds = %482
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %484)
  br label %487

487:                                              ; preds = %482, %486
  %488 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %489 = load ptr, ptr %488, align 8, !tbaa !46
  %490 = icmp eq ptr %489, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %487
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %489) #11
  br label %492

492:                                              ; preds = %487, %491
  %493 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !46
  %495 = icmp eq ptr %494, null
  br i1 %495, label %497, label %496

496:                                              ; preds = %492
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %494) #11
  br label %497

497:                                              ; preds = %492, %496
  %498 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !46
  %500 = icmp eq ptr %499, null
  br i1 %500, label %537, label %501

501:                                              ; preds = %497
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %499) #11
  br label %537

502:                                              ; preds = %6
  %503 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %504 = load ptr, ptr %503, align 8, !tbaa !46
  %505 = icmp eq ptr %504, null
  br i1 %505, label %507, label %506

506:                                              ; preds = %502
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %504)
  br label %507

507:                                              ; preds = %502, %506
  %508 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %509 = load ptr, ptr %508, align 8, !tbaa !46
  %510 = icmp eq ptr %509, null
  br i1 %510, label %512, label %511

511:                                              ; preds = %507
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %509) #11
  br label %512

512:                                              ; preds = %507, %511
  %513 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !46
  %515 = icmp eq ptr %514, null
  br i1 %515, label %517, label %516

516:                                              ; preds = %512
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %514) #11
  br label %517

517:                                              ; preds = %512, %516
  %518 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !46
  %520 = icmp eq ptr %519, null
  br i1 %520, label %537, label %521

521:                                              ; preds = %517
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %519) #11
  br label %537

522:                                              ; preds = %6
  %523 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !46
  %525 = icmp eq ptr %524, null
  br i1 %525, label %527, label %526

526:                                              ; preds = %522
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %524)
  br label %527

527:                                              ; preds = %522, %526
  %528 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %529 = load ptr, ptr %528, align 8, !tbaa !46
  %530 = icmp eq ptr %529, null
  br i1 %530, label %532, label %531

531:                                              ; preds = %527
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %529) #11
  br label %532

532:                                              ; preds = %527, %531
  %533 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !46
  %535 = icmp eq ptr %534, null
  br i1 %535, label %537, label %536

536:                                              ; preds = %532
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %534) #11
  br label %537

537:                                              ; preds = %272, %201, %77, %43, %259, %190, %66, %32, %1, %21, %17, %55, %51, %94, %90, %119, %115, %139, %135, %159, %155, %174, %170, %213, %209, %233, %229, %248, %244, %294, %290, %361, %357, %391, %387, %436, %432, %461, %457, %481, %477, %501, %497, %521, %517, %536, %532, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_throw_stmt_node(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_eh_landing_pad_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !84
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !87

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_eh_landing_pad_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #11
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_eh_region_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !93
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !96

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_eh_region_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !101
  switch i32 %22, label %48 [
    i32 1, label %23
    i32 2, label %33
    i32 3, label %43
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %30)
  br label %48

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %35) #11
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %40) #11
  br label %48

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %45) #11
  br label %48

48:                                               ; preds = %32, %28, %42, %38, %47, %43, %20
  %49 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_ggc_mx_eh_landing_pad_d(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !103
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %55)
  br label %58

58:                                               ; preds = %53, %57
  %59 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !104
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %60)
  br label %63

63:                                               ; preds = %1, %58, %62, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_eh_catch_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_eh_catch_d(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #11
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #11
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !110
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #11
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_rtx_def(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %21, label %3

3:                                                ; preds = %1, %18
  %4 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds i8, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %7, %14
  %19 = phi ptr [ %17, %14 ], [ null, %7 ]
  %20 = icmp ult ptr %19, inttoptr (i64 2 to ptr)
  br i1 %20, label %21, label %3, !llvm.loop !111

21:                                               ; preds = %3, %18, %1
  %22 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %19, %18 ]
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %48, label %24

24:                                               ; preds = %21, %45
  %25 = phi ptr [ %46, %45 ], [ %0, %21 ]
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 7
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, %25
  %38 = select i1 %37, ptr %32, ptr null
  br label %39

39:                                               ; preds = %34, %24, %30
  %40 = phi ptr [ null, %30 ], [ null, %24 ], [ %38, %34 ]
  %41 = ptrtoint ptr %40 to i64
  switch i64 %41, label %42 [
    i64 0, label %45
    i64 1, label %44
  ]

42:                                               ; preds = %39
  %43 = tail call i32 @ggc_set_mark(ptr noundef nonnull %40) #11
  br label %44

44:                                               ; preds = %39, %42
  br label %45

45:                                               ; preds = %39, %44
  %46 = phi ptr [ %40, %44 ], [ %25, %39 ]
  %47 = phi i1 [ true, %44 ], [ false, %39 ]
  br i1 %47, label %24, label %48

48:                                               ; preds = %45, %21
  %49 = phi ptr [ %0, %21 ], [ %46, %45 ]
  %50 = icmp eq ptr %49, %22
  br i1 %50, label %1271, label %51

51:                                               ; preds = %48, %1268
  %52 = phi ptr [ %1269, %1268 ], [ %49, %48 ]
  %53 = load i32, ptr %52, align 8
  %54 = trunc i32 %53 to i16
  switch i16 %54, label %1257 [
    i16 138, label %55
    i16 137, label %65
    i16 136, label %70
    i16 135, label %75
    i16 134, label %85
    i16 133, label %95
    i16 132, label %105
    i16 131, label %110
    i16 130, label %115
    i16 129, label %120
    i16 128, label %130
    i16 127, label %140
    i16 126, label %150
    i16 125, label %155
    i16 124, label %165
    i16 123, label %175
    i16 122, label %190
    i16 121, label %200
    i16 120, label %205
    i16 119, label %220
    i16 118, label %235
    i16 117, label %240
    i16 116, label %245
    i16 115, label %250
    i16 114, label %255
    i16 113, label %260
    i16 112, label %265
    i16 111, label %270
    i16 110, label %275
    i16 109, label %280
    i16 108, label %285
    i16 107, label %290
    i16 106, label %295
    i16 105, label %300
    i16 104, label %305
    i16 103, label %310
    i16 102, label %315
    i16 101, label %320
    i16 100, label %325
    i16 99, label %330
    i16 98, label %335
    i16 97, label %340
    i16 96, label %350
    i16 95, label %360
    i16 94, label %370
    i16 93, label %380
    i16 92, label %390
    i16 91, label %400
    i16 90, label %410
    i16 89, label %420
    i16 88, label %430
    i16 87, label %440
    i16 86, label %450
    i16 85, label %460
    i16 84, label %470
    i16 83, label %480
    i16 82, label %490
    i16 81, label %500
    i16 80, label %510
    i16 79, label %520
    i16 78, label %530
    i16 77, label %540
    i16 76, label %545
    i16 75, label %550
    i16 74, label %555
    i16 73, label %560
    i16 72, label %570
    i16 71, label %580
    i16 70, label %590
    i16 69, label %600
    i16 68, label %610
    i16 67, label %620
    i16 66, label %630
    i16 65, label %640
    i16 64, label %650
    i16 63, label %655
    i16 62, label %665
    i16 61, label %675
    i16 60, label %685
    i16 59, label %695
    i16 58, label %705
    i16 57, label %715
    i16 56, label %725
    i16 55, label %735
    i16 54, label %745
    i16 53, label %755
    i16 52, label %765
    i16 51, label %775
    i16 50, label %780
    i16 49, label %790
    i16 48, label %800
    i16 47, label %810
    i16 2, label %1252
    i16 45, label %825
    i16 44, label %849
    i16 43, label %854
    i16 42, label %864
    i16 41, label %869
    i16 40, label %879
    i16 39, label %884
    i16 3, label %1242
    i16 37, label %889
    i16 4, label %1232
    i16 35, label %900
    i16 34, label %905
    i16 33, label %908
    i16 5, label %1227
    i16 6, label %1222
    i16 7, label %1197
    i16 29, label %913
    i16 8, label %1172
    i16 9, label %1142
    i16 26, label %923
    i16 25, label %933
    i16 24, label %938
    i16 23, label %943
    i16 22, label %953
    i16 21, label %968
    i16 20, label %988
    i16 19, label %993
    i16 18, label %998
    i16 17, label %1003
    i16 16, label %1023
    i16 15, label %1026
    i16 14, label %1031
    i16 13, label %1041
    i16 12, label %1080
    i16 11, label %1102
    i16 10, label %1112
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %58)
  br label %61

61:                                               ; preds = %55, %60
  %62 = load ptr, ptr %56, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %1257, label %64

64:                                               ; preds = %61
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %62) #11
  br label %1257

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %1257, label %69

69:                                               ; preds = %65
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %67)
  br label %1257

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %1257, label %74

74:                                               ; preds = %70
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %72)
  br label %1257

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %77 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %78)
  br label %81

81:                                               ; preds = %75, %80
  %82 = load ptr, ptr %76, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %1257, label %84

84:                                               ; preds = %81
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %82)
  br label %1257

85:                                               ; preds = %51
  %86 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %87 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %88)
  br label %91

91:                                               ; preds = %85, %90
  %92 = load ptr, ptr %86, align 8, !tbaa !46
  %93 = icmp eq ptr %92, null
  br i1 %93, label %1257, label %94

94:                                               ; preds = %91
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %92)
  br label %1257

95:                                               ; preds = %51
  %96 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %97 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %98)
  br label %101

101:                                              ; preds = %95, %100
  %102 = load ptr, ptr %96, align 8, !tbaa !46
  %103 = icmp eq ptr %102, null
  br i1 %103, label %1257, label %104

104:                                              ; preds = %101
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %102)
  br label %1257

105:                                              ; preds = %51
  %106 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !46
  %108 = icmp eq ptr %107, null
  br i1 %108, label %1257, label %109

109:                                              ; preds = %105
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %107)
  br label %1257

110:                                              ; preds = %51
  %111 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, null
  br i1 %113, label %1257, label %114

114:                                              ; preds = %110
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %112)
  br label %1257

115:                                              ; preds = %51
  %116 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  br i1 %118, label %1257, label %119

119:                                              ; preds = %115
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %117)
  br label %1257

120:                                              ; preds = %51
  %121 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %122 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %123)
  br label %126

126:                                              ; preds = %120, %125
  %127 = load ptr, ptr %121, align 8, !tbaa !46
  %128 = icmp eq ptr %127, null
  br i1 %128, label %1257, label %129

129:                                              ; preds = %126
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %127)
  br label %1257

130:                                              ; preds = %51
  %131 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %132 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %133)
  br label %136

136:                                              ; preds = %130, %135
  %137 = load ptr, ptr %131, align 8, !tbaa !46
  %138 = icmp eq ptr %137, null
  br i1 %138, label %1257, label %139

139:                                              ; preds = %136
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %137)
  br label %1257

140:                                              ; preds = %51
  %141 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %142 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %143)
  br label %146

146:                                              ; preds = %140, %145
  %147 = load ptr, ptr %141, align 8, !tbaa !46
  %148 = icmp eq ptr %147, null
  br i1 %148, label %1257, label %149

149:                                              ; preds = %146
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %147)
  br label %1257

150:                                              ; preds = %51
  %151 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = icmp eq ptr %152, null
  br i1 %153, label %1257, label %154

154:                                              ; preds = %150
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %152)
  br label %1257

155:                                              ; preds = %51
  %156 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %157 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %158)
  br label %161

161:                                              ; preds = %155, %160
  %162 = load ptr, ptr %156, align 8, !tbaa !46
  %163 = icmp eq ptr %162, null
  br i1 %163, label %1257, label %164

164:                                              ; preds = %161
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %162)
  br label %1257

165:                                              ; preds = %51
  %166 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %167 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %168)
  br label %171

171:                                              ; preds = %165, %170
  %172 = load ptr, ptr %166, align 8, !tbaa !46
  %173 = icmp eq ptr %172, null
  br i1 %173, label %1257, label %174

174:                                              ; preds = %171
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %172)
  br label %1257

175:                                              ; preds = %51
  %176 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %177 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %178 = load ptr, ptr %177, align 8, !tbaa !46
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %178)
  br label %181

181:                                              ; preds = %175, %180
  %182 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %183)
  br label %186

186:                                              ; preds = %181, %185
  %187 = load ptr, ptr %176, align 8, !tbaa !46
  %188 = icmp eq ptr %187, null
  br i1 %188, label %1257, label %189

189:                                              ; preds = %186
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %187)
  br label %1257

190:                                              ; preds = %51
  %191 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %192 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %193)
  br label %196

196:                                              ; preds = %190, %195
  %197 = load ptr, ptr %191, align 8, !tbaa !46
  %198 = icmp eq ptr %197, null
  br i1 %198, label %1257, label %199

199:                                              ; preds = %196
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %197)
  br label %1257

200:                                              ; preds = %51
  %201 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = icmp eq ptr %202, null
  br i1 %203, label %1257, label %204

204:                                              ; preds = %200
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %202)
  br label %1257

205:                                              ; preds = %51
  %206 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %207 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %208 = load ptr, ptr %207, align 8, !tbaa !46
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %205
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %208)
  br label %211

211:                                              ; preds = %205, %210
  %212 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !46
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %213)
  br label %216

216:                                              ; preds = %211, %215
  %217 = load ptr, ptr %206, align 8, !tbaa !46
  %218 = icmp eq ptr %217, null
  br i1 %218, label %1257, label %219

219:                                              ; preds = %216
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %217)
  br label %1257

220:                                              ; preds = %51
  %221 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %222 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %223)
  br label %226

226:                                              ; preds = %220, %225
  %227 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !46
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %228)
  br label %231

231:                                              ; preds = %226, %230
  %232 = load ptr, ptr %221, align 8, !tbaa !46
  %233 = icmp eq ptr %232, null
  br i1 %233, label %1257, label %234

234:                                              ; preds = %231
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %232)
  br label %1257

235:                                              ; preds = %51
  %236 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !46
  %238 = icmp eq ptr %237, null
  br i1 %238, label %1257, label %239

239:                                              ; preds = %235
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %237)
  br label %1257

240:                                              ; preds = %51
  %241 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !46
  %243 = icmp eq ptr %242, null
  br i1 %243, label %1257, label %244

244:                                              ; preds = %240
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %242)
  br label %1257

245:                                              ; preds = %51
  %246 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !46
  %248 = icmp eq ptr %247, null
  br i1 %248, label %1257, label %249

249:                                              ; preds = %245
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %247)
  br label %1257

250:                                              ; preds = %51
  %251 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !46
  %253 = icmp eq ptr %252, null
  br i1 %253, label %1257, label %254

254:                                              ; preds = %250
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %252)
  br label %1257

255:                                              ; preds = %51
  %256 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = icmp eq ptr %257, null
  br i1 %258, label %1257, label %259

259:                                              ; preds = %255
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %257)
  br label %1257

260:                                              ; preds = %51
  %261 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = icmp eq ptr %262, null
  br i1 %263, label %1257, label %264

264:                                              ; preds = %260
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %262)
  br label %1257

265:                                              ; preds = %51
  %266 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !46
  %268 = icmp eq ptr %267, null
  br i1 %268, label %1257, label %269

269:                                              ; preds = %265
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %267)
  br label %1257

270:                                              ; preds = %51
  %271 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !46
  %273 = icmp eq ptr %272, null
  br i1 %273, label %1257, label %274

274:                                              ; preds = %270
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %272)
  br label %1257

275:                                              ; preds = %51
  %276 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !46
  %278 = icmp eq ptr %277, null
  br i1 %278, label %1257, label %279

279:                                              ; preds = %275
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %277)
  br label %1257

280:                                              ; preds = %51
  %281 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !46
  %283 = icmp eq ptr %282, null
  br i1 %283, label %1257, label %284

284:                                              ; preds = %280
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %282)
  br label %1257

285:                                              ; preds = %51
  %286 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  %288 = icmp eq ptr %287, null
  br i1 %288, label %1257, label %289

289:                                              ; preds = %285
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %287)
  br label %1257

290:                                              ; preds = %51
  %291 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !46
  %293 = icmp eq ptr %292, null
  br i1 %293, label %1257, label %294

294:                                              ; preds = %290
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %292)
  br label %1257

295:                                              ; preds = %51
  %296 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !46
  %298 = icmp eq ptr %297, null
  br i1 %298, label %1257, label %299

299:                                              ; preds = %295
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %297)
  br label %1257

300:                                              ; preds = %51
  %301 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !46
  %303 = icmp eq ptr %302, null
  br i1 %303, label %1257, label %304

304:                                              ; preds = %300
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %302)
  br label %1257

305:                                              ; preds = %51
  %306 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !46
  %308 = icmp eq ptr %307, null
  br i1 %308, label %1257, label %309

309:                                              ; preds = %305
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %307)
  br label %1257

310:                                              ; preds = %51
  %311 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = icmp eq ptr %312, null
  br i1 %313, label %1257, label %314

314:                                              ; preds = %310
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %312)
  br label %1257

315:                                              ; preds = %51
  %316 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !46
  %318 = icmp eq ptr %317, null
  br i1 %318, label %1257, label %319

319:                                              ; preds = %315
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %317)
  br label %1257

320:                                              ; preds = %51
  %321 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  %323 = icmp eq ptr %322, null
  br i1 %323, label %1257, label %324

324:                                              ; preds = %320
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %322)
  br label %1257

325:                                              ; preds = %51
  %326 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !46
  %328 = icmp eq ptr %327, null
  br i1 %328, label %1257, label %329

329:                                              ; preds = %325
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %327)
  br label %1257

330:                                              ; preds = %51
  %331 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = icmp eq ptr %332, null
  br i1 %333, label %1257, label %334

334:                                              ; preds = %330
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %332)
  br label %1257

335:                                              ; preds = %51
  %336 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !46
  %338 = icmp eq ptr %337, null
  br i1 %338, label %1257, label %339

339:                                              ; preds = %335
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %337)
  br label %1257

340:                                              ; preds = %51
  %341 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %342 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %343 = load ptr, ptr %342, align 8, !tbaa !46
  %344 = icmp eq ptr %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %343)
  br label %346

346:                                              ; preds = %340, %345
  %347 = load ptr, ptr %341, align 8, !tbaa !46
  %348 = icmp eq ptr %347, null
  br i1 %348, label %1257, label %349

349:                                              ; preds = %346
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %347)
  br label %1257

350:                                              ; preds = %51
  %351 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %352 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !46
  %354 = icmp eq ptr %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %350
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %353)
  br label %356

356:                                              ; preds = %350, %355
  %357 = load ptr, ptr %351, align 8, !tbaa !46
  %358 = icmp eq ptr %357, null
  br i1 %358, label %1257, label %359

359:                                              ; preds = %356
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %357)
  br label %1257

360:                                              ; preds = %51
  %361 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %362 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %363 = load ptr, ptr %362, align 8, !tbaa !46
  %364 = icmp eq ptr %363, null
  br i1 %364, label %366, label %365

365:                                              ; preds = %360
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %363)
  br label %366

366:                                              ; preds = %360, %365
  %367 = load ptr, ptr %361, align 8, !tbaa !46
  %368 = icmp eq ptr %367, null
  br i1 %368, label %1257, label %369

369:                                              ; preds = %366
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %367)
  br label %1257

370:                                              ; preds = %51
  %371 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %372 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !46
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %370
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %373)
  br label %376

376:                                              ; preds = %370, %375
  %377 = load ptr, ptr %371, align 8, !tbaa !46
  %378 = icmp eq ptr %377, null
  br i1 %378, label %1257, label %379

379:                                              ; preds = %376
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %377)
  br label %1257

380:                                              ; preds = %51
  %381 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %382 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  %384 = icmp eq ptr %383, null
  br i1 %384, label %386, label %385

385:                                              ; preds = %380
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %383)
  br label %386

386:                                              ; preds = %380, %385
  %387 = load ptr, ptr %381, align 8, !tbaa !46
  %388 = icmp eq ptr %387, null
  br i1 %388, label %1257, label %389

389:                                              ; preds = %386
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %387)
  br label %1257

390:                                              ; preds = %51
  %391 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %392 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %393 = load ptr, ptr %392, align 8, !tbaa !46
  %394 = icmp eq ptr %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %390
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %393)
  br label %396

396:                                              ; preds = %390, %395
  %397 = load ptr, ptr %391, align 8, !tbaa !46
  %398 = icmp eq ptr %397, null
  br i1 %398, label %1257, label %399

399:                                              ; preds = %396
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %397)
  br label %1257

400:                                              ; preds = %51
  %401 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %402 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !46
  %404 = icmp eq ptr %403, null
  br i1 %404, label %406, label %405

405:                                              ; preds = %400
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %403)
  br label %406

406:                                              ; preds = %400, %405
  %407 = load ptr, ptr %401, align 8, !tbaa !46
  %408 = icmp eq ptr %407, null
  br i1 %408, label %1257, label %409

409:                                              ; preds = %406
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %407)
  br label %1257

410:                                              ; preds = %51
  %411 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %412 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  %414 = icmp eq ptr %413, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %410
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %413)
  br label %416

416:                                              ; preds = %410, %415
  %417 = load ptr, ptr %411, align 8, !tbaa !46
  %418 = icmp eq ptr %417, null
  br i1 %418, label %1257, label %419

419:                                              ; preds = %416
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %417)
  br label %1257

420:                                              ; preds = %51
  %421 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %422 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  %424 = icmp eq ptr %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %420
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %423)
  br label %426

426:                                              ; preds = %420, %425
  %427 = load ptr, ptr %421, align 8, !tbaa !46
  %428 = icmp eq ptr %427, null
  br i1 %428, label %1257, label %429

429:                                              ; preds = %426
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %427)
  br label %1257

430:                                              ; preds = %51
  %431 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %432 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %433 = load ptr, ptr %432, align 8, !tbaa !46
  %434 = icmp eq ptr %433, null
  br i1 %434, label %436, label %435

435:                                              ; preds = %430
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %433)
  br label %436

436:                                              ; preds = %430, %435
  %437 = load ptr, ptr %431, align 8, !tbaa !46
  %438 = icmp eq ptr %437, null
  br i1 %438, label %1257, label %439

439:                                              ; preds = %436
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %437)
  br label %1257

440:                                              ; preds = %51
  %441 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %442 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %443 = load ptr, ptr %442, align 8, !tbaa !46
  %444 = icmp eq ptr %443, null
  br i1 %444, label %446, label %445

445:                                              ; preds = %440
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %443)
  br label %446

446:                                              ; preds = %440, %445
  %447 = load ptr, ptr %441, align 8, !tbaa !46
  %448 = icmp eq ptr %447, null
  br i1 %448, label %1257, label %449

449:                                              ; preds = %446
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %447)
  br label %1257

450:                                              ; preds = %51
  %451 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %452 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %453 = load ptr, ptr %452, align 8, !tbaa !46
  %454 = icmp eq ptr %453, null
  br i1 %454, label %456, label %455

455:                                              ; preds = %450
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %453)
  br label %456

456:                                              ; preds = %450, %455
  %457 = load ptr, ptr %451, align 8, !tbaa !46
  %458 = icmp eq ptr %457, null
  br i1 %458, label %1257, label %459

459:                                              ; preds = %456
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %457)
  br label %1257

460:                                              ; preds = %51
  %461 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %462 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %463 = load ptr, ptr %462, align 8, !tbaa !46
  %464 = icmp eq ptr %463, null
  br i1 %464, label %466, label %465

465:                                              ; preds = %460
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %463)
  br label %466

466:                                              ; preds = %460, %465
  %467 = load ptr, ptr %461, align 8, !tbaa !46
  %468 = icmp eq ptr %467, null
  br i1 %468, label %1257, label %469

469:                                              ; preds = %466
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %467)
  br label %1257

470:                                              ; preds = %51
  %471 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %472 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !46
  %474 = icmp eq ptr %473, null
  br i1 %474, label %476, label %475

475:                                              ; preds = %470
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %473)
  br label %476

476:                                              ; preds = %470, %475
  %477 = load ptr, ptr %471, align 8, !tbaa !46
  %478 = icmp eq ptr %477, null
  br i1 %478, label %1257, label %479

479:                                              ; preds = %476
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %477)
  br label %1257

480:                                              ; preds = %51
  %481 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %482 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %483 = load ptr, ptr %482, align 8, !tbaa !46
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485

485:                                              ; preds = %480
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %483)
  br label %486

486:                                              ; preds = %480, %485
  %487 = load ptr, ptr %481, align 8, !tbaa !46
  %488 = icmp eq ptr %487, null
  br i1 %488, label %1257, label %489

489:                                              ; preds = %486
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %487)
  br label %1257

490:                                              ; preds = %51
  %491 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %492 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !46
  %494 = icmp eq ptr %493, null
  br i1 %494, label %496, label %495

495:                                              ; preds = %490
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %493)
  br label %496

496:                                              ; preds = %490, %495
  %497 = load ptr, ptr %491, align 8, !tbaa !46
  %498 = icmp eq ptr %497, null
  br i1 %498, label %1257, label %499

499:                                              ; preds = %496
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %497)
  br label %1257

500:                                              ; preds = %51
  %501 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %502 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %503 = load ptr, ptr %502, align 8, !tbaa !46
  %504 = icmp eq ptr %503, null
  br i1 %504, label %506, label %505

505:                                              ; preds = %500
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %503)
  br label %506

506:                                              ; preds = %500, %505
  %507 = load ptr, ptr %501, align 8, !tbaa !46
  %508 = icmp eq ptr %507, null
  br i1 %508, label %1257, label %509

509:                                              ; preds = %506
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %507)
  br label %1257

510:                                              ; preds = %51
  %511 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %512 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %513 = load ptr, ptr %512, align 8, !tbaa !46
  %514 = icmp eq ptr %513, null
  br i1 %514, label %516, label %515

515:                                              ; preds = %510
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %513)
  br label %516

516:                                              ; preds = %510, %515
  %517 = load ptr, ptr %511, align 8, !tbaa !46
  %518 = icmp eq ptr %517, null
  br i1 %518, label %1257, label %519

519:                                              ; preds = %516
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %517)
  br label %1257

520:                                              ; preds = %51
  %521 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %522 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %523 = load ptr, ptr %522, align 8, !tbaa !46
  %524 = icmp eq ptr %523, null
  br i1 %524, label %526, label %525

525:                                              ; preds = %520
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %523)
  br label %526

526:                                              ; preds = %520, %525
  %527 = load ptr, ptr %521, align 8, !tbaa !46
  %528 = icmp eq ptr %527, null
  br i1 %528, label %1257, label %529

529:                                              ; preds = %526
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %527)
  br label %1257

530:                                              ; preds = %51
  %531 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %532 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %533 = load ptr, ptr %532, align 8, !tbaa !46
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %530
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %533)
  br label %536

536:                                              ; preds = %530, %535
  %537 = load ptr, ptr %531, align 8, !tbaa !46
  %538 = icmp eq ptr %537, null
  br i1 %538, label %1257, label %539

539:                                              ; preds = %536
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %537)
  br label %1257

540:                                              ; preds = %51
  %541 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !46
  %543 = icmp eq ptr %542, null
  br i1 %543, label %1257, label %544

544:                                              ; preds = %540
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %542)
  br label %1257

545:                                              ; preds = %51
  %546 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !46
  %548 = icmp eq ptr %547, null
  br i1 %548, label %1257, label %549

549:                                              ; preds = %545
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %547)
  br label %1257

550:                                              ; preds = %51
  %551 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !46
  %553 = icmp eq ptr %552, null
  br i1 %553, label %1257, label %554

554:                                              ; preds = %550
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %552)
  br label %1257

555:                                              ; preds = %51
  %556 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !46
  %558 = icmp eq ptr %557, null
  br i1 %558, label %1257, label %559

559:                                              ; preds = %555
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %557)
  br label %1257

560:                                              ; preds = %51
  %561 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %562 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %563 = load ptr, ptr %562, align 8, !tbaa !46
  %564 = icmp eq ptr %563, null
  br i1 %564, label %566, label %565

565:                                              ; preds = %560
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %563)
  br label %566

566:                                              ; preds = %560, %565
  %567 = load ptr, ptr %561, align 8, !tbaa !46
  %568 = icmp eq ptr %567, null
  br i1 %568, label %1257, label %569

569:                                              ; preds = %566
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %567)
  br label %1257

570:                                              ; preds = %51
  %571 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %572 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !46
  %574 = icmp eq ptr %573, null
  br i1 %574, label %576, label %575

575:                                              ; preds = %570
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %573)
  br label %576

576:                                              ; preds = %570, %575
  %577 = load ptr, ptr %571, align 8, !tbaa !46
  %578 = icmp eq ptr %577, null
  br i1 %578, label %1257, label %579

579:                                              ; preds = %576
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %577)
  br label %1257

580:                                              ; preds = %51
  %581 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %582 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %583 = load ptr, ptr %582, align 8, !tbaa !46
  %584 = icmp eq ptr %583, null
  br i1 %584, label %586, label %585

585:                                              ; preds = %580
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %583)
  br label %586

586:                                              ; preds = %580, %585
  %587 = load ptr, ptr %581, align 8, !tbaa !46
  %588 = icmp eq ptr %587, null
  br i1 %588, label %1257, label %589

589:                                              ; preds = %586
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %587)
  br label %1257

590:                                              ; preds = %51
  %591 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %592 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %593 = load ptr, ptr %592, align 8, !tbaa !46
  %594 = icmp eq ptr %593, null
  br i1 %594, label %596, label %595

595:                                              ; preds = %590
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %593)
  br label %596

596:                                              ; preds = %590, %595
  %597 = load ptr, ptr %591, align 8, !tbaa !46
  %598 = icmp eq ptr %597, null
  br i1 %598, label %1257, label %599

599:                                              ; preds = %596
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %597)
  br label %1257

600:                                              ; preds = %51
  %601 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %602 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %603 = load ptr, ptr %602, align 8, !tbaa !46
  %604 = icmp eq ptr %603, null
  br i1 %604, label %606, label %605

605:                                              ; preds = %600
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %603)
  br label %606

606:                                              ; preds = %600, %605
  %607 = load ptr, ptr %601, align 8, !tbaa !46
  %608 = icmp eq ptr %607, null
  br i1 %608, label %1257, label %609

609:                                              ; preds = %606
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %607)
  br label %1257

610:                                              ; preds = %51
  %611 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %612 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %613 = load ptr, ptr %612, align 8, !tbaa !46
  %614 = icmp eq ptr %613, null
  br i1 %614, label %616, label %615

615:                                              ; preds = %610
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %613)
  br label %616

616:                                              ; preds = %610, %615
  %617 = load ptr, ptr %611, align 8, !tbaa !46
  %618 = icmp eq ptr %617, null
  br i1 %618, label %1257, label %619

619:                                              ; preds = %616
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %617)
  br label %1257

620:                                              ; preds = %51
  %621 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %622 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %623 = load ptr, ptr %622, align 8, !tbaa !46
  %624 = icmp eq ptr %623, null
  br i1 %624, label %626, label %625

625:                                              ; preds = %620
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %623)
  br label %626

626:                                              ; preds = %620, %625
  %627 = load ptr, ptr %621, align 8, !tbaa !46
  %628 = icmp eq ptr %627, null
  br i1 %628, label %1257, label %629

629:                                              ; preds = %626
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %627)
  br label %1257

630:                                              ; preds = %51
  %631 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %632 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %633 = load ptr, ptr %632, align 8, !tbaa !46
  %634 = icmp eq ptr %633, null
  br i1 %634, label %636, label %635

635:                                              ; preds = %630
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %633)
  br label %636

636:                                              ; preds = %630, %635
  %637 = load ptr, ptr %631, align 8, !tbaa !46
  %638 = icmp eq ptr %637, null
  br i1 %638, label %1257, label %639

639:                                              ; preds = %636
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %637)
  br label %1257

640:                                              ; preds = %51
  %641 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %642 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %643 = load ptr, ptr %642, align 8, !tbaa !46
  %644 = icmp eq ptr %643, null
  br i1 %644, label %646, label %645

645:                                              ; preds = %640
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %643)
  br label %646

646:                                              ; preds = %640, %645
  %647 = load ptr, ptr %641, align 8, !tbaa !46
  %648 = icmp eq ptr %647, null
  br i1 %648, label %1257, label %649

649:                                              ; preds = %646
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %647)
  br label %1257

650:                                              ; preds = %51
  %651 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %652 = load ptr, ptr %651, align 8, !tbaa !46
  %653 = icmp eq ptr %652, null
  br i1 %653, label %1257, label %654

654:                                              ; preds = %650
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %652)
  br label %1257

655:                                              ; preds = %51
  %656 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %657 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !46
  %659 = icmp eq ptr %658, null
  br i1 %659, label %661, label %660

660:                                              ; preds = %655
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %658)
  br label %661

661:                                              ; preds = %655, %660
  %662 = load ptr, ptr %656, align 8, !tbaa !46
  %663 = icmp eq ptr %662, null
  br i1 %663, label %1257, label %664

664:                                              ; preds = %661
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %662)
  br label %1257

665:                                              ; preds = %51
  %666 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %667 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %668 = load ptr, ptr %667, align 8, !tbaa !46
  %669 = icmp eq ptr %668, null
  br i1 %669, label %671, label %670

670:                                              ; preds = %665
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %668)
  br label %671

671:                                              ; preds = %665, %670
  %672 = load ptr, ptr %666, align 8, !tbaa !46
  %673 = icmp eq ptr %672, null
  br i1 %673, label %1257, label %674

674:                                              ; preds = %671
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %672)
  br label %1257

675:                                              ; preds = %51
  %676 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %677 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %678 = load ptr, ptr %677, align 8, !tbaa !46
  %679 = icmp eq ptr %678, null
  br i1 %679, label %681, label %680

680:                                              ; preds = %675
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %678)
  br label %681

681:                                              ; preds = %675, %680
  %682 = load ptr, ptr %676, align 8, !tbaa !46
  %683 = icmp eq ptr %682, null
  br i1 %683, label %1257, label %684

684:                                              ; preds = %681
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %682)
  br label %1257

685:                                              ; preds = %51
  %686 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %687 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %688 = load ptr, ptr %687, align 8, !tbaa !46
  %689 = icmp eq ptr %688, null
  br i1 %689, label %691, label %690

690:                                              ; preds = %685
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %688)
  br label %691

691:                                              ; preds = %685, %690
  %692 = load ptr, ptr %686, align 8, !tbaa !46
  %693 = icmp eq ptr %692, null
  br i1 %693, label %1257, label %694

694:                                              ; preds = %691
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %692)
  br label %1257

695:                                              ; preds = %51
  %696 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %697 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %698 = load ptr, ptr %697, align 8, !tbaa !46
  %699 = icmp eq ptr %698, null
  br i1 %699, label %701, label %700

700:                                              ; preds = %695
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %698)
  br label %701

701:                                              ; preds = %695, %700
  %702 = load ptr, ptr %696, align 8, !tbaa !46
  %703 = icmp eq ptr %702, null
  br i1 %703, label %1257, label %704

704:                                              ; preds = %701
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %702)
  br label %1257

705:                                              ; preds = %51
  %706 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %707 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %708 = load ptr, ptr %707, align 8, !tbaa !46
  %709 = icmp eq ptr %708, null
  br i1 %709, label %711, label %710

710:                                              ; preds = %705
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %708)
  br label %711

711:                                              ; preds = %705, %710
  %712 = load ptr, ptr %706, align 8, !tbaa !46
  %713 = icmp eq ptr %712, null
  br i1 %713, label %1257, label %714

714:                                              ; preds = %711
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %712)
  br label %1257

715:                                              ; preds = %51
  %716 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %717 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %718 = load ptr, ptr %717, align 8, !tbaa !46
  %719 = icmp eq ptr %718, null
  br i1 %719, label %721, label %720

720:                                              ; preds = %715
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %718)
  br label %721

721:                                              ; preds = %715, %720
  %722 = load ptr, ptr %716, align 8, !tbaa !46
  %723 = icmp eq ptr %722, null
  br i1 %723, label %1257, label %724

724:                                              ; preds = %721
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %722)
  br label %1257

725:                                              ; preds = %51
  %726 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %727 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %728 = load ptr, ptr %727, align 8, !tbaa !46
  %729 = icmp eq ptr %728, null
  br i1 %729, label %731, label %730

730:                                              ; preds = %725
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %728)
  br label %731

731:                                              ; preds = %725, %730
  %732 = load ptr, ptr %726, align 8, !tbaa !46
  %733 = icmp eq ptr %732, null
  br i1 %733, label %1257, label %734

734:                                              ; preds = %731
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %732)
  br label %1257

735:                                              ; preds = %51
  %736 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %737 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %738 = load ptr, ptr %737, align 8, !tbaa !46
  %739 = icmp eq ptr %738, null
  br i1 %739, label %741, label %740

740:                                              ; preds = %735
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %738)
  br label %741

741:                                              ; preds = %735, %740
  %742 = load ptr, ptr %736, align 8, !tbaa !46
  %743 = icmp eq ptr %742, null
  br i1 %743, label %1257, label %744

744:                                              ; preds = %741
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %742)
  br label %1257

745:                                              ; preds = %51
  %746 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %747 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %748 = load ptr, ptr %747, align 8, !tbaa !46
  %749 = icmp eq ptr %748, null
  br i1 %749, label %751, label %750

750:                                              ; preds = %745
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %748)
  br label %751

751:                                              ; preds = %745, %750
  %752 = load ptr, ptr %746, align 8, !tbaa !46
  %753 = icmp eq ptr %752, null
  br i1 %753, label %1257, label %754

754:                                              ; preds = %751
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %752)
  br label %1257

755:                                              ; preds = %51
  %756 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %757 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %758 = load ptr, ptr %757, align 8, !tbaa !46
  %759 = icmp eq ptr %758, null
  br i1 %759, label %761, label %760

760:                                              ; preds = %755
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %758)
  br label %761

761:                                              ; preds = %755, %760
  %762 = load ptr, ptr %756, align 8, !tbaa !46
  %763 = icmp eq ptr %762, null
  br i1 %763, label %1257, label %764

764:                                              ; preds = %761
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %762)
  br label %1257

765:                                              ; preds = %51
  %766 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %767 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %768 = load ptr, ptr %767, align 8, !tbaa !46
  %769 = icmp eq ptr %768, null
  br i1 %769, label %771, label %770

770:                                              ; preds = %765
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %768)
  br label %771

771:                                              ; preds = %765, %770
  %772 = load ptr, ptr %766, align 8, !tbaa !46
  %773 = icmp eq ptr %772, null
  br i1 %773, label %1257, label %774

774:                                              ; preds = %771
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %772)
  br label %1257

775:                                              ; preds = %51
  %776 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %777 = load ptr, ptr %776, align 8, !tbaa !46
  %778 = icmp eq ptr %777, null
  br i1 %778, label %1257, label %779

779:                                              ; preds = %775
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %777)
  br label %1257

780:                                              ; preds = %51
  %781 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %782 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %783 = load ptr, ptr %782, align 8, !tbaa !46
  %784 = icmp eq ptr %783, null
  br i1 %784, label %786, label %785

785:                                              ; preds = %780
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %783)
  br label %786

786:                                              ; preds = %780, %785
  %787 = load ptr, ptr %781, align 8, !tbaa !46
  %788 = icmp eq ptr %787, null
  br i1 %788, label %1257, label %789

789:                                              ; preds = %786
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %787)
  br label %1257

790:                                              ; preds = %51
  %791 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %792 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %793 = load ptr, ptr %792, align 8, !tbaa !46
  %794 = icmp eq ptr %793, null
  br i1 %794, label %796, label %795

795:                                              ; preds = %790
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %793)
  br label %796

796:                                              ; preds = %790, %795
  %797 = load ptr, ptr %791, align 8, !tbaa !46
  %798 = icmp eq ptr %797, null
  br i1 %798, label %1257, label %799

799:                                              ; preds = %796
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %797)
  br label %1257

800:                                              ; preds = %51
  %801 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %802 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %803 = load ptr, ptr %802, align 8, !tbaa !46
  %804 = icmp eq ptr %803, null
  br i1 %804, label %806, label %805

805:                                              ; preds = %800
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %803)
  br label %806

806:                                              ; preds = %800, %805
  %807 = load ptr, ptr %801, align 8, !tbaa !46
  %808 = icmp eq ptr %807, null
  br i1 %808, label %1257, label %809

809:                                              ; preds = %806
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %807)
  br label %1257

810:                                              ; preds = %51
  %811 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %812 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %813 = load ptr, ptr %812, align 8, !tbaa !46
  %814 = icmp eq ptr %813, null
  br i1 %814, label %816, label %815

815:                                              ; preds = %810
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %813)
  br label %816

816:                                              ; preds = %810, %815
  %817 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %818 = load ptr, ptr %817, align 8, !tbaa !46
  %819 = icmp eq ptr %818, null
  br i1 %819, label %821, label %820

820:                                              ; preds = %816
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %818)
  br label %821

821:                                              ; preds = %816, %820
  %822 = load ptr, ptr %811, align 8, !tbaa !46
  %823 = icmp eq ptr %822, null
  br i1 %823, label %1257, label %824

824:                                              ; preds = %821
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %822)
  br label %1257

825:                                              ; preds = %51
  %826 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %827 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %828 = load i32, ptr %827, align 8, !tbaa !46
  %829 = and i32 %828, 128
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %836, label %831

831:                                              ; preds = %825
  %832 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %833 = load ptr, ptr %832, align 8, !tbaa !46
  %834 = icmp eq ptr %833, null
  br i1 %834, label %836, label %835

835:                                              ; preds = %831
  tail call void @gt_ggc_mx_object_block(ptr noundef nonnull %833)
  br label %836

836:                                              ; preds = %825, %831, %835
  %837 = load i32, ptr %52, align 8
  %838 = and i32 %837, 67108864
  %839 = icmp eq i32 %838, 0
  %840 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %841 = load ptr, ptr %840, align 8, !tbaa !46
  %842 = icmp eq ptr %841, null
  br i1 %839, label %845, label %843

843:                                              ; preds = %836
  br i1 %842, label %847, label %844

844:                                              ; preds = %843
  tail call void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef nonnull %841) #11
  br label %847

845:                                              ; preds = %836
  br i1 %842, label %847, label %846

846:                                              ; preds = %845
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %841) #11
  br label %847

847:                                              ; preds = %845, %846, %843, %844
  %848 = load ptr, ptr %826, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %848) #11
  br label %1257

849:                                              ; preds = %51
  %850 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !46
  %852 = icmp eq ptr %851, null
  br i1 %852, label %1257, label %853

853:                                              ; preds = %849
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %851)
  br label %1257

854:                                              ; preds = %51
  %855 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %856 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %857 = load ptr, ptr %856, align 8, !tbaa !46
  %858 = icmp eq ptr %857, null
  br i1 %858, label %860, label %859

859:                                              ; preds = %854
  tail call void @gt_ggc_mx_mem_attrs(ptr noundef nonnull %857)
  br label %860

860:                                              ; preds = %854, %859
  %861 = load ptr, ptr %855, align 8, !tbaa !46
  %862 = icmp eq ptr %861, null
  br i1 %862, label %1257, label %863

863:                                              ; preds = %860
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %861)
  br label %1257

864:                                              ; preds = %51
  %865 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %866 = load ptr, ptr %865, align 8, !tbaa !46
  %867 = icmp eq ptr %866, null
  br i1 %867, label %1257, label %868

868:                                              ; preds = %864
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %866)
  br label %1257

869:                                              ; preds = %51
  %870 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %871 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %872 = load ptr, ptr %871, align 8, !tbaa !46
  %873 = icmp eq ptr %872, null
  br i1 %873, label %875, label %874

874:                                              ; preds = %869
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %872)
  br label %875

875:                                              ; preds = %869, %874
  %876 = load ptr, ptr %870, align 8, !tbaa !46
  %877 = icmp eq ptr %876, null
  br i1 %877, label %1257, label %878

878:                                              ; preds = %875
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %876)
  br label %1257

879:                                              ; preds = %51
  %880 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !46
  %882 = icmp eq ptr %881, null
  br i1 %882, label %1257, label %883

883:                                              ; preds = %879
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %881)
  br label %1257

884:                                              ; preds = %51
  %885 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %886 = load ptr, ptr %885, align 8, !tbaa !46
  %887 = icmp eq ptr %886, null
  br i1 %887, label %1257, label %888

888:                                              ; preds = %884
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %886)
  br label %1257

889:                                              ; preds = %51
  %890 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %891 = load ptr, ptr %890, align 8, !tbaa !46
  %892 = icmp ult ptr %891, inttoptr (i64 2 to ptr)
  br i1 %892, label %1257, label %893

893:                                              ; preds = %889
  %894 = tail call i32 @ggc_set_mark(ptr noundef nonnull %891) #11
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %1257

896:                                              ; preds = %893
  %897 = load ptr, ptr %891, align 8, !tbaa !112
  %898 = icmp eq ptr %897, null
  br i1 %898, label %1257, label %899

899:                                              ; preds = %896
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %897) #11
  br label %1257

900:                                              ; preds = %51
  %901 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %902 = load ptr, ptr %901, align 8, !tbaa !46
  %903 = icmp eq ptr %902, null
  br i1 %903, label %1257, label %904

904:                                              ; preds = %900
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %902)
  br label %1257

905:                                              ; preds = %51
  %906 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %907 = load ptr, ptr %906, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %907) #11
  br label %1257

908:                                              ; preds = %51
  %909 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %910 = load ptr, ptr %909, align 8, !tbaa !46
  %911 = icmp eq ptr %910, null
  br i1 %911, label %1257, label %912

912:                                              ; preds = %908
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %910)
  br label %1257

913:                                              ; preds = %51
  %914 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %915 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %916 = load ptr, ptr %915, align 8, !tbaa !46
  %917 = icmp eq ptr %916, null
  br i1 %917, label %919, label %918

918:                                              ; preds = %913
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %916)
  br label %919

919:                                              ; preds = %913, %918
  %920 = load ptr, ptr %914, align 8, !tbaa !46
  %921 = icmp eq ptr %920, null
  br i1 %921, label %1257, label %922

922:                                              ; preds = %919
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %920)
  br label %1257

923:                                              ; preds = %51
  %924 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %925 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %926 = load ptr, ptr %925, align 8, !tbaa !46
  %927 = icmp eq ptr %926, null
  br i1 %927, label %929, label %928

928:                                              ; preds = %923
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %926)
  br label %929

929:                                              ; preds = %923, %928
  %930 = load ptr, ptr %924, align 8, !tbaa !46
  %931 = icmp eq ptr %930, null
  br i1 %931, label %1257, label %932

932:                                              ; preds = %929
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %930)
  br label %1257

933:                                              ; preds = %51
  %934 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %935 = load ptr, ptr %934, align 8, !tbaa !46
  %936 = icmp eq ptr %935, null
  br i1 %936, label %1257, label %937

937:                                              ; preds = %933
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %935)
  br label %1257

938:                                              ; preds = %51
  %939 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !46
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1257, label %942

942:                                              ; preds = %938
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %940)
  br label %1257

943:                                              ; preds = %51
  %944 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %945 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %946 = load ptr, ptr %945, align 8, !tbaa !46
  %947 = icmp eq ptr %946, null
  br i1 %947, label %949, label %948

948:                                              ; preds = %943
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %946)
  br label %949

949:                                              ; preds = %943, %948
  %950 = load ptr, ptr %944, align 8, !tbaa !46
  %951 = icmp eq ptr %950, null
  br i1 %951, label %1257, label %952

952:                                              ; preds = %949
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %950)
  br label %1257

953:                                              ; preds = %51
  %954 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %955 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %956 = load ptr, ptr %955, align 8, !tbaa !46
  %957 = icmp eq ptr %956, null
  br i1 %957, label %959, label %958

958:                                              ; preds = %953
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %956)
  br label %959

959:                                              ; preds = %953, %958
  %960 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %961 = load ptr, ptr %960, align 8, !tbaa !46
  %962 = icmp eq ptr %961, null
  br i1 %962, label %964, label %963

963:                                              ; preds = %959
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %961)
  br label %964

964:                                              ; preds = %959, %963
  %965 = load ptr, ptr %954, align 8, !tbaa !46
  %966 = icmp eq ptr %965, null
  br i1 %966, label %1257, label %967

967:                                              ; preds = %964
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %965)
  br label %1257

968:                                              ; preds = %51
  %969 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %970 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %971 = load ptr, ptr %970, align 8, !tbaa !46
  %972 = icmp eq ptr %971, null
  br i1 %972, label %974, label %973

973:                                              ; preds = %968
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %971)
  br label %974

974:                                              ; preds = %968, %973
  %975 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %976 = load ptr, ptr %975, align 8, !tbaa !46
  %977 = icmp eq ptr %976, null
  br i1 %977, label %979, label %978

978:                                              ; preds = %974
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %976)
  br label %979

979:                                              ; preds = %974, %978
  %980 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %981 = load ptr, ptr %980, align 8, !tbaa !46
  %982 = icmp eq ptr %981, null
  br i1 %982, label %984, label %983

983:                                              ; preds = %979
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %981)
  br label %984

984:                                              ; preds = %979, %983
  %985 = load ptr, ptr %969, align 8, !tbaa !46
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1257, label %987

987:                                              ; preds = %984
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %985)
  br label %1257

988:                                              ; preds = %51
  %989 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !46
  %991 = icmp eq ptr %990, null
  br i1 %991, label %1257, label %992

992:                                              ; preds = %988
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %990)
  br label %1257

993:                                              ; preds = %51
  %994 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %995 = load ptr, ptr %994, align 8, !tbaa !46
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1257, label %997

997:                                              ; preds = %993
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %995)
  br label %1257

998:                                              ; preds = %51
  %999 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !46
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1257, label %1002

1002:                                             ; preds = %998
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1000)
  br label %1257

1003:                                             ; preds = %51
  %1004 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1005 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !46
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1003
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1006)
  br label %1009

1009:                                             ; preds = %1003, %1008
  %1010 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1011 = load ptr, ptr %1010, align 8, !tbaa !46
  %1012 = icmp eq ptr %1011, null
  br i1 %1012, label %1014, label %1013

1013:                                             ; preds = %1009
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1011)
  br label %1014

1014:                                             ; preds = %1009, %1013
  %1015 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !46
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1019, label %1018

1018:                                             ; preds = %1014
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1016)
  br label %1019

1019:                                             ; preds = %1018, %1014
  %1020 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1021 = load ptr, ptr %1020, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1021) #11
  %1022 = load ptr, ptr %1004, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1022) #11
  br label %1257

1023:                                             ; preds = %51
  %1024 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1025 = load ptr, ptr %1024, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1025) #11
  br label %1257

1026:                                             ; preds = %51
  %1027 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1028 = load ptr, ptr %1027, align 8, !tbaa !46
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1257, label %1030

1030:                                             ; preds = %1026
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1028)
  br label %1257

1031:                                             ; preds = %51
  %1032 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1033 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1034 = load ptr, ptr %1033, align 8, !tbaa !46
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1037, label %1036

1036:                                             ; preds = %1031
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1034)
  br label %1037

1037:                                             ; preds = %1031, %1036
  %1038 = load ptr, ptr %1032, align 8, !tbaa !46
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1257, label %1040

1040:                                             ; preds = %1037
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1038)
  br label %1257

1041:                                             ; preds = %51
  %1042 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1043 = load i32, ptr %1042, align 8, !tbaa !46
  switch i32 %1043, label %1044 [
    i32 12, label %1065
    i32 11, label %1065
    i32 10, label %1065
    i32 9, label %1047
    i32 8, label %1065
    i32 7, label %1065
    i32 6, label %1065
    i32 5, label %1065
    i32 4, label %1065
    i32 3, label %1052
    i32 2, label %1057
    i32 1, label %1062
    i32 0, label %1065
  ]

1044:                                             ; preds = %1041
  %1045 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1046 = load ptr, ptr %1045, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1046) #11
  br label %1065

1047:                                             ; preds = %1041
  %1048 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1049 = load ptr, ptr %1048, align 8, !tbaa !46
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1065, label %1051

1051:                                             ; preds = %1047
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1049)
  br label %1065

1052:                                             ; preds = %1041
  %1053 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1054 = load ptr, ptr %1053, align 8, !tbaa !46
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1065, label %1056

1056:                                             ; preds = %1052
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1054) #11
  br label %1065

1057:                                             ; preds = %1041
  %1058 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1059 = load ptr, ptr %1058, align 8, !tbaa !46
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1065, label %1061

1061:                                             ; preds = %1057
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1059) #11
  br label %1065

1062:                                             ; preds = %1041
  %1063 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 2
  %1064 = load ptr, ptr %1063, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1064) #11
  br label %1065

1065:                                             ; preds = %1041, %1041, %1041, %1041, %1041, %1041, %1041, %1041, %1044, %1062, %1041, %1051, %1047, %1056, %1052, %1061, %1057
  %1066 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1067 = load ptr, ptr %1066, align 8, !tbaa !46
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1070, label %1069

1069:                                             ; preds = %1065
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1067)
  br label %1070

1070:                                             ; preds = %1065, %1069
  %1071 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1072 = load ptr, ptr %1071, align 8, !tbaa !46
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1075, label %1074

1074:                                             ; preds = %1070
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1072)
  br label %1075

1075:                                             ; preds = %1070, %1074
  %1076 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1077 = load ptr, ptr %1076, align 8, !tbaa !46
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1257, label %1079

1079:                                             ; preds = %1075
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1077)
  br label %1257

1080:                                             ; preds = %51
  %1081 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 1
  %1082 = load ptr, ptr %1081, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %1082) #11
  %1083 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1084 = load ptr, ptr %1083, align 8, !tbaa !46
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1080
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1084)
  br label %1087

1087:                                             ; preds = %1080, %1086
  %1088 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1089 = load ptr, ptr %1088, align 8, !tbaa !46
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1087
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1089)
  br label %1092

1092:                                             ; preds = %1087, %1091
  %1093 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1094 = load ptr, ptr %1093, align 8, !tbaa !46
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1097, label %1096

1096:                                             ; preds = %1092
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1094)
  br label %1097

1097:                                             ; preds = %1092, %1096
  %1098 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1099 = load ptr, ptr %1098, align 8, !tbaa !46
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1257, label %1101

1101:                                             ; preds = %1097
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1099)
  br label %1257

1102:                                             ; preds = %51
  %1103 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1104 = load ptr, ptr %1103, align 8, !tbaa !46
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1107, label %1106

1106:                                             ; preds = %1102
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1104)
  br label %1107

1107:                                             ; preds = %1102, %1106
  %1108 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1109 = load ptr, ptr %1108, align 8, !tbaa !46
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1257, label %1111

1111:                                             ; preds = %1107
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1109)
  br label %1257

1112:                                             ; preds = %51
  %1113 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 2
  %1114 = load ptr, ptr %1113, align 8, !tbaa !46
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1117, label %1116

1116:                                             ; preds = %1112
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1114)
  br label %1117

1117:                                             ; preds = %1112, %1116
  %1118 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !46
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1122, label %1121

1121:                                             ; preds = %1117
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1119)
  br label %1122

1122:                                             ; preds = %1117, %1121
  %1123 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !46
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1127, label %1126

1126:                                             ; preds = %1122
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1124)
  br label %1127

1127:                                             ; preds = %1122, %1126
  %1128 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1129 = load ptr, ptr %1128, align 8, !tbaa !46
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1132, label %1131

1131:                                             ; preds = %1127
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1129)
  br label %1132

1132:                                             ; preds = %1127, %1131
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1134 = load ptr, ptr %1133, align 8, !tbaa !46
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1137, label %1136

1136:                                             ; preds = %1132
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1134)
  br label %1137

1137:                                             ; preds = %1132, %1136
  %1138 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1139 = load ptr, ptr %1138, align 8, !tbaa !46
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1257, label %1141

1141:                                             ; preds = %1137
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1139)
  br label %1257

1142:                                             ; preds = %51
  %1143 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 2
  %1144 = load ptr, ptr %1143, align 8, !tbaa !46
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1147, label %1146

1146:                                             ; preds = %1142
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1144)
  br label %1147

1147:                                             ; preds = %1142, %1146
  %1148 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 1
  %1149 = load ptr, ptr %1148, align 8, !tbaa !46
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1152, label %1151

1151:                                             ; preds = %1147
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1149)
  br label %1152

1152:                                             ; preds = %1147, %1151
  %1153 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1154 = load ptr, ptr %1153, align 8, !tbaa !46
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1157, label %1156

1156:                                             ; preds = %1152
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1154)
  br label %1157

1157:                                             ; preds = %1152, %1156
  %1158 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1159 = load ptr, ptr %1158, align 8, !tbaa !46
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1162, label %1161

1161:                                             ; preds = %1157
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1159)
  br label %1162

1162:                                             ; preds = %1157, %1161
  %1163 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1164 = load ptr, ptr %1163, align 8, !tbaa !46
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1167, label %1166

1166:                                             ; preds = %1162
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1164)
  br label %1167

1167:                                             ; preds = %1162, %1166
  %1168 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1169 = load ptr, ptr %1168, align 8, !tbaa !46
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1257, label %1171

1171:                                             ; preds = %1167
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1169)
  br label %1257

1172:                                             ; preds = %51
  %1173 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 1
  %1174 = load ptr, ptr %1173, align 8, !tbaa !46
  %1175 = icmp eq ptr %1174, null
  br i1 %1175, label %1177, label %1176

1176:                                             ; preds = %1172
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1174)
  br label %1177

1177:                                             ; preds = %1172, %1176
  %1178 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1179 = load ptr, ptr %1178, align 8, !tbaa !46
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1182, label %1181

1181:                                             ; preds = %1177
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1179)
  br label %1182

1182:                                             ; preds = %1177, %1181
  %1183 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1184 = load ptr, ptr %1183, align 8, !tbaa !46
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1187, label %1186

1186:                                             ; preds = %1182
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1184)
  br label %1187

1187:                                             ; preds = %1182, %1186
  %1188 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1189 = load ptr, ptr %1188, align 8, !tbaa !46
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1192, label %1191

1191:                                             ; preds = %1187
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1189)
  br label %1192

1192:                                             ; preds = %1187, %1191
  %1193 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1194 = load ptr, ptr %1193, align 8, !tbaa !46
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1257, label %1196

1196:                                             ; preds = %1192
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1194)
  br label %1257

1197:                                             ; preds = %51
  %1198 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 1
  %1199 = load ptr, ptr %1198, align 8, !tbaa !46
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1202, label %1201

1201:                                             ; preds = %1197
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1199)
  br label %1202

1202:                                             ; preds = %1197, %1201
  %1203 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !46
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1207, label %1206

1206:                                             ; preds = %1202
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1204)
  br label %1207

1207:                                             ; preds = %1202, %1206
  %1208 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !46
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1212, label %1211

1211:                                             ; preds = %1207
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %1209)
  br label %1212

1212:                                             ; preds = %1207, %1211
  %1213 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %1214 = load ptr, ptr %1213, align 8, !tbaa !46
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1217, label %1216

1216:                                             ; preds = %1212
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1214)
  br label %1217

1217:                                             ; preds = %1212, %1216
  %1218 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1219 = load ptr, ptr %1218, align 8, !tbaa !46
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1257, label %1221

1221:                                             ; preds = %1217
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1219)
  br label %1257

1222:                                             ; preds = %51
  %1223 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !46
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1257, label %1226

1226:                                             ; preds = %1222
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1224)
  br label %1257

1227:                                             ; preds = %51
  %1228 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1229 = load ptr, ptr %1228, align 8, !tbaa !46
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1257, label %1231

1231:                                             ; preds = %1227
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %1229)
  br label %1257

1232:                                             ; preds = %51
  %1233 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !46
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1238, label %1237

1237:                                             ; preds = %1232
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1235)
  br label %1238

1238:                                             ; preds = %1232, %1237
  %1239 = load ptr, ptr %1233, align 8, !tbaa !46
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1257, label %1241

1241:                                             ; preds = %1238
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1239)
  br label %1257

1242:                                             ; preds = %51
  %1243 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1244 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %1245 = load ptr, ptr %1244, align 8, !tbaa !46
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %1248, label %1247

1247:                                             ; preds = %1242
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1245)
  br label %1248

1248:                                             ; preds = %1242, %1247
  %1249 = load ptr, ptr %1243, align 8, !tbaa !46
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1257, label %1251

1251:                                             ; preds = %1248
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %1249)
  br label %1257

1252:                                             ; preds = %51
  %1253 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %1254 = load ptr, ptr %1253, align 8, !tbaa !46
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1257, label %1256

1256:                                             ; preds = %1252
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %1254) #11
  br label %1257

1257:                                             ; preds = %889, %899, %896, %893, %51, %1252, %1256, %1248, %1251, %1238, %1241, %1227, %1231, %1222, %1226, %1217, %1221, %1192, %1196, %1167, %1171, %1137, %1141, %1107, %1111, %1097, %1101, %1075, %1079, %1037, %1040, %1026, %1030, %998, %1002, %993, %997, %988, %992, %984, %987, %964, %967, %949, %952, %938, %942, %933, %937, %929, %932, %919, %922, %908, %912, %900, %904, %884, %888, %879, %883, %875, %878, %864, %868, %860, %863, %849, %853, %821, %824, %806, %809, %796, %799, %786, %789, %775, %779, %771, %774, %761, %764, %751, %754, %741, %744, %731, %734, %721, %724, %711, %714, %701, %704, %691, %694, %681, %684, %671, %674, %661, %664, %650, %654, %646, %649, %636, %639, %626, %629, %616, %619, %606, %609, %596, %599, %586, %589, %576, %579, %566, %569, %555, %559, %550, %554, %545, %549, %540, %544, %536, %539, %526, %529, %516, %519, %506, %509, %496, %499, %486, %489, %476, %479, %466, %469, %456, %459, %446, %449, %436, %439, %426, %429, %416, %419, %406, %409, %396, %399, %386, %389, %376, %379, %366, %369, %356, %359, %346, %349, %335, %339, %330, %334, %325, %329, %320, %324, %315, %319, %310, %314, %305, %309, %300, %304, %295, %299, %290, %294, %285, %289, %280, %284, %275, %279, %270, %274, %265, %269, %260, %264, %255, %259, %250, %254, %245, %249, %240, %244, %235, %239, %231, %234, %216, %219, %200, %204, %196, %199, %186, %189, %171, %174, %161, %164, %150, %154, %146, %149, %136, %139, %126, %129, %115, %119, %110, %114, %105, %109, %101, %104, %91, %94, %81, %84, %70, %74, %65, %69, %61, %64, %1023, %1019, %905, %847
  %1258 = load i32, ptr %52, align 8
  %1259 = and i32 %1258, 65535
  %1260 = zext nneg i32 %1259 to i64
  %1261 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %1260
  %1262 = load i8, ptr %1261, align 1, !tbaa !46
  %1263 = icmp eq i8 %1262, 0
  br i1 %1263, label %1268, label %1264

1264:                                             ; preds = %1257
  %1265 = zext i8 %1262 to i64
  %1266 = getelementptr inbounds i8, ptr %52, i64 %1265
  %1267 = load ptr, ptr %1266, align 8, !tbaa !35
  br label %1268

1268:                                             ; preds = %1257, %1264
  %1269 = phi ptr [ %1267, %1264 ], [ null, %1257 ]
  %1270 = icmp eq ptr %1269, %22
  br i1 %1270, label %1271, label %51, !llvm.loop !114

1271:                                             ; preds = %1268, %48
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_constant_descriptor_tree(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cgraph_asm_node(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_cgraph_asm_node(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.cgraph_asm_node, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_varpool_node(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.varpool_node, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !123

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11, %34
  %15 = phi ptr [ %35, %34 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %16) #11
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !125
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr %20, align 8, !tbaa !121
  %36 = icmp eq ptr %35, %12
  br i1 %36, label %37, label %14, !llvm.loop !127

37:                                               ; preds = %34, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_cgraph_node_set_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !128
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_cgraph_node_set_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_cgraph_node_set_def(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !131

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cgraph_node_set_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !132
  tail call void @gt_ggc_m_P27cgraph_node_set_element_def4htab(ptr noundef %7)
  %8 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_cgraph_node_ptr_gc(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %1, %6, %11, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P27cgraph_node_set_element_def4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10, %27
  %15 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %24)
  br label %27

27:                                               ; preds = %14, %26, %23, %20
  %28 = add i64 %15, 1
  %29 = load i64, ptr %11, align 8, !tbaa !137
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %14, !llvm.loop !140

31:                                               ; preds = %27, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !135
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_cgraph_node_ptr_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !141
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !144

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cgraph_node_set_element_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !138
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cgraph_node(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !153

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %23, %22 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !154
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %14, %19
  br label %22

22:                                               ; preds = %14, %21
  %23 = phi ptr [ %17, %21 ], [ %15, %14 ]
  %24 = phi i1 [ true, %21 ], [ false, %14 ]
  br i1 %24, label %14, label %25

25:                                               ; preds = %22, %11
  %26 = phi ptr [ %0, %11 ], [ %23, %22 ]
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %133, label %28

28:                                               ; preds = %25, %130
  %29 = phi ptr [ %131, %130 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %30) #11
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !156
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %35)
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %40)
  br label %43

43:                                               ; preds = %38, %42
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !145
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !154
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !158
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %55)
  br label %58

58:                                               ; preds = %53, %57
  %59 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %60)
  br label %63

63:                                               ; preds = %58, %62
  %64 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !160
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %65)
  br label %68

68:                                               ; preds = %63, %67
  %69 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !161
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %70)
  br label %73

73:                                               ; preds = %68, %72
  %74 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 9
  %75 = load ptr, ptr %74, align 8, !tbaa !162
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %75)
  br label %78

78:                                               ; preds = %73, %77
  %79 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !163
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %80)
  br label %83

83:                                               ; preds = %78, %82
  %84 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 11
  %85 = load ptr, ptr %84, align 8, !tbaa !164
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %85)
  br label %88

88:                                               ; preds = %83, %87
  %89 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 12
  %90 = load ptr, ptr %89, align 8, !tbaa !165
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %90)
  br label %93

93:                                               ; preds = %88, %92
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 13
  %95 = load ptr, ptr %94, align 8, !tbaa !166
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %95)
  br label %98

98:                                               ; preds = %93, %97
  %99 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 14
  %100 = load ptr, ptr %99, align 8, !tbaa !167
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %100)
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 15
  %105 = load ptr, ptr %104, align 8, !tbaa !168
  tail call void @gt_ggc_m_P11cgraph_edge4htab(ptr noundef %105)
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 19, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !169
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %107)
  br label %110

110:                                              ; preds = %103, %109
  %111 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 21
  %112 = load ptr, ptr %111, align 8, !tbaa !170
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @gt_ggc_mx_VEC_ipa_replace_map_p_gc(ptr noundef nonnull %112)
  br label %115

115:                                              ; preds = %110, %114
  %116 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 21, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !171
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %117)
  br label %120

120:                                              ; preds = %115, %119
  %121 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 21, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !172
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %122)
  br label %125

125:                                              ; preds = %120, %124
  %126 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 22, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !173
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %127) #11
  br label %130

130:                                              ; preds = %129, %125
  %131 = load ptr, ptr %44, align 8, !tbaa !145
  %132 = icmp eq ptr %131, %12
  br i1 %132, label %133, label %28, !llvm.loop !174

133:                                              ; preds = %130, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cgraph_edge(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !177

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %23, %22 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %14, %19
  br label %22

22:                                               ; preds = %14, %21
  %23 = phi ptr [ %17, %21 ], [ %15, %14 ]
  %24 = phi i1 [ true, %21 ], [ false, %14 ]
  br i1 %24, label %14, label %25

25:                                               ; preds = %22, %11
  %26 = phi ptr [ %0, %11 ], [ %23, %22 ]
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %67, label %28

28:                                               ; preds = %25, %64
  %29 = phi ptr [ %65, %64 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !179
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %28, %33
  %35 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !180
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %36)
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !178
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %41)
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !175
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %46)
  br label %49

49:                                               ; preds = %44, %48
  %50 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %51)
  br label %54

54:                                               ; preds = %49, %53
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !182
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %56)
  br label %59

59:                                               ; preds = %54, %58
  %60 = getelementptr inbounds %struct.cgraph_edge, ptr %29, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !183
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %61)
  br label %64

64:                                               ; preds = %63, %59
  %65 = load ptr, ptr %45, align 8, !tbaa !175
  %66 = icmp eq ptr %65, %12
  br i1 %66, label %67, label %28, !llvm.loop !184

67:                                               ; preds = %64, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_ipa_replace_map_p_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !185
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_ipa_replace_map(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !188

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_ipa_replace_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.ipa_replace_map, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !191
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P11cgraph_edge4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_cgraph_edge(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !192

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_bitmap_head_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !193
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !196
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_bitmap_obstack(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !197
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !200

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_basic_block_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !201
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !203

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %23, %22 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !204
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %14, %19
  br label %22

22:                                               ; preds = %14, %21
  %23 = phi ptr [ %17, %21 ], [ %15, %14 ]
  %24 = phi i1 [ true, %21 ], [ false, %14 ]
  br i1 %24, label %14, label %25

25:                                               ; preds = %22, %11
  %26 = phi ptr [ %0, %11 ], [ %23, %22 ]
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %68, label %28

28:                                               ; preds = %25, %65
  %29 = phi ptr [ %66, %65 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !205
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_VEC_edge_gc(ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !206
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_ggc_mx_VEC_edge_gc(ptr noundef nonnull %35)
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !207
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %40)
  br label %43

43:                                               ; preds = %38, %42
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !204
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !201
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !208
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %57, label %61, label %63

61:                                               ; preds = %53
  br i1 %60, label %65, label %62

62:                                               ; preds = %61
  tail call void @gt_ggc_mx_gimple_bb_info(ptr noundef nonnull %59)
  br label %65

63:                                               ; preds = %53
  br i1 %60, label %65, label %64

64:                                               ; preds = %63
  tail call void @gt_ggc_mx_rtl_bb_info(ptr noundef nonnull %59)
  br label %65

65:                                               ; preds = %63, %64, %61, %62
  %66 = load ptr, ptr %49, align 8, !tbaa !201
  %67 = icmp eq ptr %66, %12
  br i1 %67, label %68, label %28, !llvm.loop !209

68:                                               ; preds = %65, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_gimple_bb_info(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !210
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.gimple_bb_info, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !212
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_gimple_seq_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !213
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !215

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %32, label %14

14:                                               ; preds = %11, %29
  %15 = phi ptr [ %30, %29 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !217
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.gimple_seq_d, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !213
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %28, %24
  %30 = load ptr, ptr %25, align 8, !tbaa !213
  %31 = icmp eq ptr %30, %12
  br i1 %31, label %32, label %14, !llvm.loop !218

32:                                               ; preds = %29, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_rtl_bb_info(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !219
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !223
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_edge_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !224
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !227

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_edge_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !228
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !230
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call i32 @current_ir_type() #11
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %17, label %21, label %23

21:                                               ; preds = %15
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %19)
  br label %25

23:                                               ; preds = %15
  br i1 %20, label %25, label %24

24:                                               ; preds = %23
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %19)
  br label %25

25:                                               ; preds = %22, %21, %24, %23
  %26 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !231
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #11
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cselib_val_struct(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi ptr [ %0, %1 ], [ %25, %23 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !234
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_ggc_mx_elt_loc_list(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !235
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !236
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %2

27:                                               ; preds = %2, %23, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_elt_loc_list(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !237
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_elt_loc_list(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !239
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !240
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_elt_list(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !241
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.elt_list, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_cselib_val_struct(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !244
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !247

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_loop(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !248
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !252

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %63, label %14

14:                                               ; preds = %11, %60
  %15 = phi ptr [ %61, %60 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !253
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %14, %19
  %21 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !254
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !255
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !256
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %32)
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !248
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !257
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %42) #11
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !258
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_nb_iter_bound(ptr noundef nonnull %47)
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !259
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !260
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %57) #11
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %36, align 8, !tbaa !248
  %62 = icmp eq ptr %61, %12
  br i1 %62, label %63, label %14, !llvm.loop !261

63:                                               ; preds = %60, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_nb_iter_bound(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nb_iter_bound, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !262
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !264

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %27, label %14

14:                                               ; preds = %11, %24
  %15 = phi ptr [ %25, %24 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !265
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %14, %18
  %20 = getelementptr inbounds %struct.nb_iter_bound, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !262
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_ggc_mx_nb_iter_bound(ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %20, align 8, !tbaa !262
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %27, label %14, !llvm.loop !266

27:                                               ; preds = %24, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_loop_exit(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %22, %1
  %3 = phi ptr [ %0, %1 ], [ %24, %22 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !267
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !269
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !270
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %19)
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !271
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %2

26:                                               ; preds = %2, %22, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_types_used_by_vars_entry(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !272
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !274
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_loops(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !275
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_loop_p_gc(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !277
  tail call void @gt_ggc_m_P9loop_exit4htab(ptr noundef %13)
  %14 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @gt_ggc_mx_loop(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %1, %11, %17, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9loop_exit4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_loop_exit(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !279

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_control_flow_graph(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !280
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !282
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_basic_block_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !283
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !284
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_VEC_basic_block_gc(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %1, %20, %24, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_eh_status(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !285
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_region_d(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !287
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_VEC_eh_region_gc(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !288
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_eh_landing_pad_gc(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !289
  tail call void @gt_ggc_m_P15throw_stmt_node4htab(ptr noundef %22)
  %23 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !290
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %24)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !291
  switch i8 %28, label %40 [
    i8 1, label %29
    i8 0, label %34
  ]

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %31)
  br label %40

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp ult ptr %36, inttoptr (i64 2 to ptr)
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @ggc_set_mark(ptr noundef nonnull %36) #11
  br label %40

40:                                               ; preds = %34, %38, %1, %33, %29, %27, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P15throw_stmt_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10, %27
  %15 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 8, !tbaa !82
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %24)
  br label %27

27:                                               ; preds = %14, %26, %23, %20
  %28 = add i64 %15, 1
  %29 = load i64, ptr %11, align 8, !tbaa !137
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %14, !llvm.loop !303

31:                                               ; preds = %27, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !135
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_tree_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !304
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !307

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_uchar_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_temp_slot_p_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !308
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_temp_slot(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !311

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

declare void @gt_ggc_mx_temp_slot(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_gimple_df(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !312
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %7)
  %8 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !316
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @gt_ggc_mx_VEC_gimple_gc(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !317
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_VEC_tree_gc(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !318
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %17, %21
  %23 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !319
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %24)
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 5, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !320
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %29)
  br label %32

32:                                               ; preds = %27, %31
  %33 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !321
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %34) #11
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !322
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %39)
  %40 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !323
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %41)
  br label %44

44:                                               ; preds = %37, %43
  %45 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !324
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gt_ggc_mx_ssa_operand_memory_d(ptr noundef nonnull %46)
  br label %49

49:                                               ; preds = %1, %44, %48, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9tree_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !325

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_call_site_record_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !326
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_call_site_record_d(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !329

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

declare void @gt_ggc_mx_call_site_record_d(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_sequence_stack(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %19, %17 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !330
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !332
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !333
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %2

21:                                               ; preds = %2, %17, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_tree_priority_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !334
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_tree_int_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !337
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_tree_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !339
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.tree_map, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !341
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_tree_statement_list_node(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_statement_list_node, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !342
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !344

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %22, %21 ], [ %0, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !345
  %17 = ptrtoint ptr %16 to i64
  switch i64 %17, label %18 [
    i64 0, label %21
    i64 1, label %20
  ]

18:                                               ; preds = %14
  %19 = tail call i32 @ggc_set_mark(ptr noundef nonnull %16) #11
  br label %20

20:                                               ; preds = %14, %18
  br label %21

21:                                               ; preds = %14, %20
  %22 = phi ptr [ %16, %20 ], [ %15, %14 ]
  %23 = phi i1 [ true, %20 ], [ false, %14 ]
  br i1 %23, label %14, label %24

24:                                               ; preds = %21, %11
  %25 = phi ptr [ %0, %11 ], [ %22, %21 ]
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %45, label %27

27:                                               ; preds = %24, %42
  %28 = phi ptr [ %43, %42 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !345
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @gt_ggc_mx_tree_statement_list_node(ptr noundef nonnull %29)
  br label %32

32:                                               ; preds = %27, %31
  %33 = getelementptr inbounds %struct.tree_statement_list_node, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !342
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @gt_ggc_mx_tree_statement_list_node(ptr noundef nonnull %34)
  br label %37

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.tree_statement_list_node, ptr %28, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !346
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %39) #11
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr %33, align 8, !tbaa !342
  %44 = icmp eq ptr %43, %12
  br i1 %44, label %45, label %27, !llvm.loop !347

45:                                               ; preds = %42, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_var_ann_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.var_ann_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !348
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %8) #11
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_varray_head_tag(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %107, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %107

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !350
  tail call void @gt_ggc_m_S(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !352
  switch i32 %10, label %107 [
    i32 20, label %93
    i32 19, label %79
    i32 16, label %65
    i32 15, label %51
    i32 14, label %37
    i32 13, label %23
    i32 12, label %12
    i32 10, label %11
  ]

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 795, ptr noundef nonnull @.str.1) #11
  br label %107

12:                                               ; preds = %6
  %13 = load i64, ptr %0, align 8, !tbaa !353
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %107, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %21, %17 ]
  %19 = getelementptr inbounds [1 x ptr], ptr %16, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %20) #11
  %21 = add nuw i64 %18, 1
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %107, label %17, !llvm.loop !354

23:                                               ; preds = %6
  %24 = load i64, ptr %0, align 8, !tbaa !353
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %107, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %28

28:                                               ; preds = %26, %34
  %29 = phi i64 [ 0, %26 ], [ %35, %34 ]
  %30 = getelementptr inbounds [1 x ptr], ptr %27, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %28, %33
  %35 = add nuw i64 %29, 1
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %107, label %28, !llvm.loop !355

37:                                               ; preds = %6
  %38 = load i64, ptr %0, align 8, !tbaa !353
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %107, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %48
  %43 = phi i64 [ 0, %40 ], [ %49, %48 ]
  %44 = getelementptr inbounds [1 x ptr], ptr %41, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @gt_ggc_mx_rtvec_def(ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %42, %47
  %49 = add nuw i64 %43, 1
  %50 = icmp eq i64 %49, %38
  br i1 %50, label %107, label %42, !llvm.loop !356

51:                                               ; preds = %6
  %52 = load i64, ptr %0, align 8, !tbaa !353
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %107, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %56

56:                                               ; preds = %54, %62
  %57 = phi i64 [ 0, %54 ], [ %63, %62 ]
  %58 = getelementptr inbounds [1 x ptr], ptr %55, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %59) #11
  br label %62

62:                                               ; preds = %56, %61
  %63 = add nuw i64 %57, 1
  %64 = icmp eq i64 %63, %52
  br i1 %64, label %107, label %56, !llvm.loop !357

65:                                               ; preds = %6
  %66 = load i64, ptr %0, align 8, !tbaa !353
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %70

70:                                               ; preds = %68, %76
  %71 = phi i64 [ 0, %68 ], [ %77, %76 ]
  %72 = getelementptr inbounds [1 x ptr], ptr %69, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %73)
  br label %76

76:                                               ; preds = %70, %75
  %77 = add nuw i64 %71, 1
  %78 = icmp eq i64 %77, %66
  br i1 %78, label %107, label %70, !llvm.loop !358

79:                                               ; preds = %6
  %80 = load i64, ptr %0, align 8, !tbaa !353
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %84

84:                                               ; preds = %82, %90
  %85 = phi i64 [ 0, %82 ], [ %91, %90 ]
  %86 = getelementptr inbounds [1 x ptr], ptr %83, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void @gt_ggc_mx_elt_list(ptr noundef nonnull %87)
  br label %90

90:                                               ; preds = %84, %89
  %91 = add nuw i64 %85, 1
  %92 = icmp eq i64 %91, %80
  br i1 %92, label %107, label %84, !llvm.loop !359

93:                                               ; preds = %6
  %94 = load i64, ptr %0, align 8, !tbaa !353
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %98

98:                                               ; preds = %96, %104
  %99 = phi i64 [ 0, %96 ], [ %105, %104 ]
  %100 = getelementptr inbounds [1 x ptr], ptr %97, i64 0, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call void @gt_ggc_mx_edge_def(ptr noundef nonnull %101)
  br label %104

104:                                              ; preds = %98, %103
  %105 = add nuw i64 %99, 1
  %106 = icmp eq i64 %105, %94
  br i1 %106, label %107, label %98, !llvm.loop !360

107:                                              ; preds = %17, %34, %48, %62, %76, %90, %104, %12, %23, %37, %51, %65, %79, %93, %1, %11, %6, %3
  ret void
}

declare void @gt_ggc_m_S(ptr noundef) #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_rtvec_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !361
  %8 = sext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !363

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_ptr_info_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !364
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_constructor_elt_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !366
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !369
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !371
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %16, %20
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !372

24:                                               ; preds = %21, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_alias_pair_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !373
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !376
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !378
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #11
  br label %21

21:                                               ; preds = %16, %20
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !379

24:                                               ; preds = %21, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_function(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !380
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_eh_status(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !382
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_control_flow_graph(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !383
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_gimple_seq_d(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !384
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_gimple_df(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !385
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_loops(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !386
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %32) #11
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !387
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %37) #11
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !388
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %42) #11
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !389
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %47) #11
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !390
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_ggc_mx_machine_function(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !391
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_ggc_mx_language_function(ptr noundef nonnull %57) #11
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !392
  tail call void @gt_ggc_m_P9tree_node4htab(ptr noundef %62)
  br label %63

63:                                               ; preds = %1, %60, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_machine_function(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !393
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_stack_local_entry(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !396
  tail call void @gt_ggc_m_S(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !397
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %1, %10, %16, %3
  ret void
}

declare void @gt_ggc_mx_language_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_fixed_value(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_real_value(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_rtx_gc(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !398
  %8 = zext i32 %7 to i64
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %19, label %10, !llvm.loop !401

19:                                               ; preds = %16, %6, %1, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_object_block(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !402
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_section(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !404
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_VEC_rtx_gc(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !405
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_VEC_rtx_gc(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_section(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %18, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %18 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 8, !tbaa !46
  %10 = and i32 %9, 6291456
  switch i32 %10, label %22 [
    i32 2097152, label %11
    i32 0, label %18
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.unnamed_section, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %2

22:                                               ; preds = %2, %17, %11, %18, %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_reg_attrs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %1, %6, %9, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_mem_attrs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !406
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !408
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !409
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %1, %15, %19, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_bitmap_obstack(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !410
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_obstack, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !413
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_bitmap_head_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %1, %10, %14, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_bitmap_element_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi ptr [ %0, %1 ], [ %14, %12 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !414
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @gt_ggc_mx_bitmap_element_def(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !416
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %2

16:                                               ; preds = %2, %12, %5
  ret void
}

declare void @gt_ggc_mx_stack_local_entry(ptr noundef) local_unnamed_addr #3

declare i32 @current_ir_type() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_gimple_seq_node_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = tail call i32 @ggc_set_mark(ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !417
  %10 = icmp ult ptr %9, inttoptr (i64 2 to ptr)
  br i1 %10, label %11, label %3, !llvm.loop !419

11:                                               ; preds = %3, %7, %1
  %12 = phi ptr [ %0, %1 ], [ %4, %3 ], [ %9, %7 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %22
  %15 = phi ptr [ %23, %22 ], [ %0, %11 ]
  %16 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !420
  %18 = ptrtoint ptr %17 to i64
  switch i64 %18, label %19 [
    i64 0, label %22
    i64 1, label %21
  ]

19:                                               ; preds = %14
  %20 = tail call i32 @ggc_set_mark(ptr noundef nonnull %17) #11
  br label %21

21:                                               ; preds = %14, %19
  br label %22

22:                                               ; preds = %14, %21
  %23 = phi ptr [ %17, %21 ], [ %15, %14 ]
  %24 = phi i1 [ true, %21 ], [ false, %14 ]
  br i1 %24, label %14, label %25

25:                                               ; preds = %22, %11
  %26 = phi ptr [ %0, %11 ], [ %23, %22 ]
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %46, label %28

28:                                               ; preds = %25, %43
  %29 = phi ptr [ %44, %43 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !421
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_ggc_mx_gimple_statement_d(ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !420
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %35)
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %29, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !417
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_ggc_mx_gimple_seq_node_d(ptr noundef nonnull %40)
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr %39, align 8, !tbaa !417
  %45 = icmp eq ptr %44, %12
  br i1 %45, label %46, label %28, !llvm.loop !422

46:                                               ; preds = %43, %25
  ret void
}

declare void @gt_ggc_mx_constant_descriptor_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_answer(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !423
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_answer(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !425
  %13 = zext i32 %12 to i64
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %10, %33
  %16 = phi i64 [ %34, %33 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16
  %18 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %17) #11
  switch i32 %18, label %33 [
    i32 0, label %19
    i32 1, label %25
    i32 2, label %30
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %21, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %24) #11
  br label %33

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_cpp_token(ptr noundef nonnull %27)
  br label %33

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %16, i32 3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %32) #11
  br label %33

33:                                               ; preds = %19, %23, %30, %29, %25, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %15, !llvm.loop !426

36:                                               ; preds = %33, %10, %1, %3
  ret void
}

declare i32 @cpp_token_val_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cpp_token(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %16 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %3) #11
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 1, label %16
    i32 2, label %20
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %2

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %2, %10, %14, %20, %16, %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_cpp_macro(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %77, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !427
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !429
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9, %21
  %14 = phi i64 [ %22, %21 ], [ 0, %9 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !427
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %17, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %20) #11
  br label %21

21:                                               ; preds = %19, %13
  %22 = add i64 %14, 1
  %23 = load i16, ptr %10, align 8, !tbaa !429
  %24 = zext i16 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %13, !llvm.loop !430

26:                                               ; preds = %21, %9
  %27 = load ptr, ptr %0, align 8, !tbaa !427
  %28 = icmp ult ptr %27, inttoptr (i64 2 to ptr)
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @ggc_set_mark(ptr noundef nonnull %27) #11
  br label %31

31:                                               ; preds = %26, %29, %6
  %32 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br i1 %35, label %38, label %76

38:                                               ; preds = %31
  %39 = icmp eq ptr %37, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !431
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %40, %66
  %45 = phi i64 [ %67, %66 ], [ 0, %40 ]
  %46 = load ptr, ptr %36, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 %45
  %48 = tail call i32 @cpp_token_val_index(ptr noundef %47) #11
  switch i32 %48, label %66 [
    i32 0, label %49
    i32 1, label %56
    i32 2, label %62
  ]

49:                                               ; preds = %44
  %50 = load ptr, ptr %36, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.cpp_token, ptr %50, i64 %45, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %52, i64 -24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %55) #11
  br label %66

56:                                               ; preds = %44
  %57 = load ptr, ptr %36, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.cpp_token, ptr %57, i64 %45, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  tail call void @gt_ggc_mx_cpp_token(ptr noundef nonnull %59)
  br label %66

62:                                               ; preds = %44
  %63 = load ptr, ptr %36, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.cpp_token, ptr %63, i64 %45, i32 3, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  tail call void @gt_ggc_m_S(ptr noundef %65) #11
  br label %66

66:                                               ; preds = %49, %54, %62, %61, %56, %44
  %67 = add i64 %45, 1
  %68 = load i32, ptr %41, align 4, !tbaa !431
  %69 = zext i32 %68 to i64
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %44, !llvm.loop !432

71:                                               ; preds = %66, %40
  %72 = load ptr, ptr %36, align 8, !tbaa !46
  %73 = icmp ult ptr %72, inttoptr (i64 2 to ptr)
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @ggc_set_mark(ptr noundef nonnull %72) #11
  br label %77

76:                                               ; preds = %31
  tail call void @gt_ggc_m_S(ptr noundef %37) #11
  br label %77

77:                                               ; preds = %71, %1, %74, %76, %38, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_line_maps(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !433
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !435
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %18, %13 ], [ 0, %9 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !433
  %16 = getelementptr inbounds %struct.line_map, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !436
  tail call void @gt_ggc_m_S(ptr noundef %17) #11
  %18 = add i64 %14, 1
  %19 = load i32, ptr %10, align 4, !tbaa !435
  %20 = zext i32 %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %13, !llvm.loop !438

22:                                               ; preds = %13, %9
  %23 = load ptr, ptr %0, align 8, !tbaa !433
  %24 = icmp ult ptr %23, inttoptr (i64 2 to ptr)
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @ggc_set_mark(ptr noundef nonnull %23) #11
  br label %27

27:                                               ; preds = %22, %1, %25, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %8 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !439
  tail call void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %10)
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !441
  br label %2

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %16 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i64, ptr %3, align 8, !tbaa !442
  %10 = inttoptr i64 %9 to ptr
  tail call void @gt_ggc_m_S(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !443
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = inttoptr i64 %12 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %16

16:                                               ; preds = %14, %8
  %17 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !439
  tail call void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %18)
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !441
  br label %2

21:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %19 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load i64, ptr %3, align 8, !tbaa !442
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i64 %9 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #11
  br label %13

13:                                               ; preds = %8, %11
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !443
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = inttoptr i64 %15 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %18) #11
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !439
  tail call void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %21)
  %22 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !441
  br label %2

24:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %14 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !443
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = inttoptr i64 %10 to ptr
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !439
  tail call void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %16)
  %17 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !441
  br label %2

19:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P12tree_int_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10, %27
  %15 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 8, !tbaa !337
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %14, %26, %23, %20
  %28 = add i64 %15, 1
  %29 = load i64, ptr %11, align 8, !tbaa !137
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %14, !llvm.loop !444

31:                                               ; preds = %27, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !135
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_IP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_ggc_m_IP9tree_node17splay_tree_node_s(ptr noundef %7)
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_ggc_m_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %7)
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P12varpool_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_varpool_node(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !447

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P24constant_descriptor_tree4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_constant_descriptor_tree(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !448

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P12object_block4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_object_block(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !449

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P7section4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_section(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !450

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P17tree_priority_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10, %27
  %15 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 8, !tbaa !334
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %14, %26, %23, %20
  %28 = add i64 %15, 1
  %29 = load i64, ptr %11, align 8, !tbaa !137
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %14, !llvm.loop !451

31:                                               ; preds = %27, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !135
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P8tree_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_tree_map(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !452

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9reg_attrs4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10, %27
  %15 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %18, align 8, !tbaa !112
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %14, %26, %23, %20
  %28 = add i64 %15, 1
  %29 = load i64, ptr %11, align 8, !tbaa !137
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %14, !llvm.loop !453

31:                                               ; preds = %27, %10
  %32 = load ptr, ptr %7, align 8, !tbaa !135
  %33 = icmp ult ptr %32, inttoptr (i64 2 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @ggc_set_mark(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %31, %1, %34, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P9mem_attrs4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_mem_attrs(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !454

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P7rtx_def4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !455

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_SP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_ggc_m_SP9tree_node17splay_tree_node_s(ptr noundef %7)
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P11cgraph_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !456

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_II12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_ggc_m_II17splay_tree_node_s(ptr noundef %7)
  br label %8

8:                                                ; preds = %1, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P24types_used_by_vars_entry4htab(ptr noundef %0) #9 !prof !34 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10, %21
  %15 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !135
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @gt_ggc_mx_types_used_by_vars_entry(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %14, %20
  %22 = add i64 %15, 1
  %23 = load i64, ptr %11, align 8, !tbaa !137
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %14, !llvm.loop !457

25:                                               ; preds = %21, %10
  %26 = load ptr, ptr %7, align 8, !tbaa !135
  %27 = icmp ult ptr %26, inttoptr (i64 2 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @ggc_set_mark(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %25, %1, %28, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_ipa_edge_args_t_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_ipa_edge_args_t_gc, i32 noundef 54) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %57, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !54
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %4, %54
  %9 = phi i64 [ %55, %54 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 8, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %14, %46
  %18 = phi i64 [ %47, %46 ], [ 0, %14 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18
  %21 = load i32, ptr %20, align 8, !tbaa !60
  switch i32 %21, label %46 [
    i32 1, label %22
    i32 3, label %26
    i32 4, label %30
    i32 2, label %34
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %44

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %44

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %44

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.ipa_jump_func, ptr %19, i64 %18, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %36) #11
  br label %39

39:                                               ; preds = %34, %38
  %40 = load ptr, ptr %11, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %18, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %30, %26, %22
  %45 = phi ptr [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %42, %39 ]
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %45) #11
  br label %46

46:                                               ; preds = %44, %22, %26, %30, %39, %17
  %47 = add i64 %18, 1
  %48 = load i32, ptr %10, align 8, !tbaa !59
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %17, !llvm.loop !458

51:                                               ; preds = %46, %14
  %52 = load ptr, ptr %11, align 8, !tbaa !57
  %53 = tail call i32 @gt_pch_note_object(ptr noundef %52, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_22VEC_ipa_edge_args_t_gc, i32 noundef 217) #11
  br label %54

54:                                               ; preds = %8, %51
  %55 = add nuw nsw i64 %9, 1
  %56 = icmp eq i64 %55, %6
  br i1 %56, label %57, label %8, !llvm.loop !459

57:                                               ; preds = %54, %4, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_22VEC_ipa_edge_args_t_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !54
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %54
  %11 = phi i64 [ 0, %8 ], [ %55, %54 ]
  %12 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %1, i64 0, i32 2, i64 %11
  %13 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 8, !tbaa !59
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %16, %47
  %20 = phi i64 [ %48, %47 ], [ 0, %16 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !60
  switch i32 %23, label %47 [
    i32 1, label %24
    i32 3, label %28
    i32 4, label %32
    i32 2, label %36
  ]

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %0
  br i1 %25, label %26, label %47

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  br label %45

28:                                               ; preds = %19
  %29 = icmp eq ptr %21, %0
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  br label %45

32:                                               ; preds = %19
  %33 = icmp eq ptr %21, %0
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1, i32 0, i32 1
  br label %45

36:                                               ; preds = %19
  %37 = icmp eq ptr %21, %0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ipa_jump_func, ptr %21, i64 %20, i32 1
  tail call void %2(ptr noundef nonnull %39, ptr noundef %3) #11
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr %13, align 8, !tbaa !57
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ipa_jump_func, ptr %41, i64 %20, i32 1, i32 0, i32 1
  br label %45

45:                                               ; preds = %43, %34, %30, %26
  %46 = phi ptr [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %44, %43 ]
  tail call void %2(ptr noundef nonnull %46, ptr noundef %3) #11
  br label %47

47:                                               ; preds = %45, %24, %28, %32, %40, %19
  %48 = add i64 %20, 1
  %49 = load i32, ptr %12, align 8, !tbaa !59
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %19, !llvm.loop !460

52:                                               ; preds = %47, %16
  br i1 %9, label %53, label %54

53:                                               ; preds = %52
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %54

54:                                               ; preds = %52, %53, %10
  %55 = add nuw nsw i64 %11, 1
  %56 = icmp eq i64 %55, %6
  br i1 %56, label %57, label %10, !llvm.loop !461

57:                                               ; preds = %54, %4
  ret void
}

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_ssa_operand_memory_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_20ssa_operand_memory_d, i32 noundef 56) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %9, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %20, label %12

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = tail call i32 @gt_pch_note_object(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @gt_pch_p_20ssa_operand_memory_d, i32 noundef 56) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %7, !llvm.loop !462

12:                                               ; preds = %4, %17
  %13 = phi ptr [ %18, %17 ], [ %0, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gt_pch_nx_ssa_operand_memory_d(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %13, align 8, !tbaa !64
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %12, !llvm.loop !463

20:                                               ; preds = %17, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_20ssa_operand_memory_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_gimple_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13VEC_gimple_gc, i32 noundef 59) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !68
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !464

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_13VEC_gimple_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !68
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !465

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_gimple_statement_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18gimple_statement_d, i32 noundef 162) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %533, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  switch i32 %9, label %533 [
    i32 0, label %10
    i32 1, label %20
    i32 2, label %44
    i32 3, label %54
    i32 13, label %78
    i32 5, label %93
    i32 8, label %118
    i32 9, label %138
    i32 10, label %158
    i32 6, label %173
    i32 11, label %202
    i32 7, label %212
    i32 12, label %232
    i32 4, label %247
    i32 14, label %273
    i32 15, label %293
    i32 16, label %358
    i32 17, label %388
    i32 18, label %433
    i32 19, label %458
    i32 20, label %478
    i32 21, label %498
    i32 22, label %518
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %533, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %17) #11
  br label %533

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %27) #11
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !46
  %33 = zext i32 %32 to i64
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %533, label %35

35:                                               ; preds = %30, %41
  %36 = phi i64 [ %42, %41 ], [ 0, %30 ]
  %37 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %0, i64 0, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %38) #11
  br label %41

41:                                               ; preds = %35, %40
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %33
  br i1 %43, label %533, label %35, !llvm.loop !466

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %46)
  br label %49

49:                                               ; preds = %44, %48
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %533, label %53

53:                                               ; preds = %49
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %51) #11
  br label %533

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %56)
  br label %59

59:                                               ; preds = %54, %58
  %60 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %61) #11
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !46
  %67 = zext i32 %66 to i64
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %533, label %69

69:                                               ; preds = %64, %75
  %70 = phi i64 [ %76, %75 ], [ 0, %64 ]
  %71 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %0, i64 0, i32 1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %72) #11
  br label %75

75:                                               ; preds = %69, %74
  %76 = add nuw nsw i64 %70, 1
  %77 = icmp eq i64 %76, %67
  br i1 %77, label %533, label %69, !llvm.loop !467

78:                                               ; preds = %4
  %79 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %80)
  br label %83

83:                                               ; preds = %78, %82
  %84 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %85) #11
  br label %88

88:                                               ; preds = %83, %87
  %89 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = icmp eq ptr %90, null
  br i1 %91, label %533, label %92

92:                                               ; preds = %88
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %90)
  br label %533

93:                                               ; preds = %4
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %95)
  br label %98

98:                                               ; preds = %93, %97
  %99 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %100) #11
  br label %103

103:                                              ; preds = %98, %102
  %104 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !46
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %105) #11
  br label %108

108:                                              ; preds = %103, %107
  %109 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %110) #11
  br label %113

113:                                              ; preds = %108, %112
  %114 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = icmp eq ptr %115, null
  br i1 %116, label %533, label %117

117:                                              ; preds = %113
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %115)
  br label %533

118:                                              ; preds = %4
  %119 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %120)
  br label %123

123:                                              ; preds = %118, %122
  %124 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %125) #11
  br label %128

128:                                              ; preds = %123, %127
  %129 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %130) #11
  br label %133

133:                                              ; preds = %128, %132
  %134 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = icmp eq ptr %135, null
  br i1 %136, label %533, label %137

137:                                              ; preds = %133
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %135)
  br label %533

138:                                              ; preds = %4
  %139 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %140)
  br label %143

143:                                              ; preds = %138, %142
  %144 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %145) #11
  br label %148

148:                                              ; preds = %143, %147
  %149 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !46
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %150) #11
  br label %153

153:                                              ; preds = %148, %152
  %154 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = icmp eq ptr %155, null
  br i1 %156, label %533, label %157

157:                                              ; preds = %153
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %155)
  br label %533

158:                                              ; preds = %4
  %159 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !46
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %160)
  br label %163

163:                                              ; preds = %158, %162
  %164 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %165) #11
  br label %168

168:                                              ; preds = %163, %167
  %169 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = icmp eq ptr %170, null
  br i1 %171, label %533, label %172

172:                                              ; preds = %168
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %170) #11
  br label %533

173:                                              ; preds = %4
  %174 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %175 = load ptr, ptr %174, align 8, !tbaa !46
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %175)
  br label %178

178:                                              ; preds = %173, %177
  %179 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !46
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %180) #11
  br label %183

183:                                              ; preds = %178, %182
  %184 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %185) #11
  br label %188

188:                                              ; preds = %187, %183
  %189 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !46
  %191 = zext i32 %190 to i64
  %192 = icmp eq i32 %190, 0
  br i1 %192, label %533, label %193

193:                                              ; preds = %188, %199
  %194 = phi i64 [ %200, %199 ], [ 0, %188 ]
  %195 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %194, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %196) #11
  br label %199

199:                                              ; preds = %193, %198
  %200 = add nuw nsw i64 %194, 1
  %201 = icmp eq i64 %200, %191
  br i1 %201, label %533, label %193, !llvm.loop !468

202:                                              ; preds = %4
  %203 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %204 = load ptr, ptr %203, align 8, !tbaa !46
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %202
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %204)
  br label %207

207:                                              ; preds = %202, %206
  %208 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = icmp eq ptr %209, null
  br i1 %210, label %533, label %211

211:                                              ; preds = %207
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %209) #11
  br label %533

212:                                              ; preds = %4
  %213 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %214)
  br label %217

217:                                              ; preds = %212, %216
  %218 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !46
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %219) #11
  br label %222

222:                                              ; preds = %217, %221
  %223 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !46
  %225 = icmp eq ptr %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %224)
  br label %227

227:                                              ; preds = %222, %226
  %228 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !46
  %230 = icmp eq ptr %229, null
  br i1 %230, label %533, label %231

231:                                              ; preds = %227
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %229)
  br label %533

232:                                              ; preds = %4
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %234)
  br label %237

237:                                              ; preds = %232, %236
  %238 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !46
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %239) #11
  br label %242

242:                                              ; preds = %237, %241
  %243 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = icmp eq ptr %244, null
  br i1 %245, label %533, label %246

246:                                              ; preds = %242
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %244)
  br label %533

247:                                              ; preds = %4
  %248 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !46
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %249)
  br label %252

252:                                              ; preds = %247, %251
  %253 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %252
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %254) #11
  br label %257

257:                                              ; preds = %256, %252
  %258 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %259) #11
  %260 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %261 = load i32, ptr %260, align 4, !tbaa !46
  %262 = zext i32 %261 to i64
  %263 = icmp eq i32 %261, 0
  br i1 %263, label %533, label %264

264:                                              ; preds = %257, %270
  %265 = phi i64 [ %271, %270 ], [ 0, %257 ]
  %266 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 6, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !46
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %267) #11
  br label %270

270:                                              ; preds = %264, %269
  %271 = add nuw nsw i64 %265, 1
  %272 = icmp eq i64 %271, %262
  br i1 %272, label %533, label %264, !llvm.loop !469

273:                                              ; preds = %4
  %274 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %275)
  br label %278

278:                                              ; preds = %273, %277
  %279 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  %281 = icmp eq ptr %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %280) #11
  br label %283

283:                                              ; preds = %278, %282
  %284 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  %286 = icmp eq ptr %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %285)
  br label %288

288:                                              ; preds = %283, %287
  %289 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  %291 = icmp eq ptr %290, null
  br i1 %291, label %533, label %292

292:                                              ; preds = %288
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %290) #11
  br label %533

293:                                              ; preds = %4
  %294 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %295 = load ptr, ptr %294, align 8, !tbaa !46
  %296 = icmp eq ptr %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %293
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %295)
  br label %298

298:                                              ; preds = %293, %297
  %299 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %300 = load ptr, ptr %299, align 8, !tbaa !46
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %300) #11
  br label %303

303:                                              ; preds = %298, %302
  %304 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !46
  %306 = icmp eq ptr %305, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %305)
  br label %308

308:                                              ; preds = %303, %307
  %309 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  %311 = icmp eq ptr %310, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %310) #11
  br label %313

313:                                              ; preds = %312, %308
  %314 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !46
  %316 = icmp eq ptr %315, null
  br i1 %316, label %353, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %319 = load i64, ptr %318, align 8, !tbaa !46
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %350, label %321

321:                                              ; preds = %317, %346
  %322 = phi i64 [ %347, %346 ], [ 0, %317 ]
  %323 = load ptr, ptr %314, align 8, !tbaa !46
  %324 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %323, i64 %322, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !76
  %326 = icmp eq ptr %325, null
  br i1 %326, label %328, label %327

327:                                              ; preds = %321
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %325) #11
  br label %328

328:                                              ; preds = %321, %327
  %329 = load ptr, ptr %314, align 8, !tbaa !46
  %330 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %329, i64 %322, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !78
  %332 = icmp eq ptr %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %328
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %331) #11
  br label %334

334:                                              ; preds = %328, %333
  %335 = load ptr, ptr %314, align 8, !tbaa !46
  %336 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %335, i64 %322, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !79
  %338 = icmp eq ptr %337, null
  br i1 %338, label %340, label %339

339:                                              ; preds = %334
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %337) #11
  br label %340

340:                                              ; preds = %334, %339
  %341 = load ptr, ptr %314, align 8, !tbaa !46
  %342 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %341, i64 %322, i32 4
  %343 = load ptr, ptr %342, align 8, !tbaa !80
  %344 = icmp eq ptr %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %343) #11
  br label %346

346:                                              ; preds = %340, %345
  %347 = add i64 %322, 1
  %348 = load i64, ptr %318, align 8, !tbaa !46
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %321, !llvm.loop !470

350:                                              ; preds = %346, %317
  %351 = load ptr, ptr %314, align 8, !tbaa !46
  %352 = tail call i32 @gt_pch_note_object(ptr noundef %351, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_18gimple_statement_d, i32 noundef 217) #11
  br label %353

353:                                              ; preds = %313, %350
  %354 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %355 = load ptr, ptr %354, align 8, !tbaa !46
  %356 = icmp eq ptr %355, null
  br i1 %356, label %533, label %357

357:                                              ; preds = %353
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %355)
  br label %533

358:                                              ; preds = %4
  %359 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %360 = load ptr, ptr %359, align 8, !tbaa !46
  %361 = icmp eq ptr %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %360)
  br label %363

363:                                              ; preds = %358, %362
  %364 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = icmp eq ptr %365, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %363
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %365) #11
  br label %368

368:                                              ; preds = %363, %367
  %369 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !46
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %370)
  br label %373

373:                                              ; preds = %368, %372
  %374 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !46
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377

377:                                              ; preds = %373
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %375) #11
  br label %378

378:                                              ; preds = %373, %377
  %379 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !46
  %381 = icmp eq ptr %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %380) #11
  br label %383

383:                                              ; preds = %378, %382
  %384 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !46
  %386 = icmp eq ptr %385, null
  br i1 %386, label %533, label %387

387:                                              ; preds = %383
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %385) #11
  br label %533

388:                                              ; preds = %4
  %389 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !46
  %391 = icmp eq ptr %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %390)
  br label %393

393:                                              ; preds = %388, %392
  %394 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %395 = load ptr, ptr %394, align 8, !tbaa !46
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %395) #11
  br label %398

398:                                              ; preds = %393, %397
  %399 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %400 = load ptr, ptr %399, align 8, !tbaa !46
  %401 = icmp eq ptr %400, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %398
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %400)
  br label %403

403:                                              ; preds = %398, %402
  %404 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !46
  %406 = icmp eq ptr %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %405) #11
  br label %408

408:                                              ; preds = %403, %407
  %409 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !46
  %411 = icmp eq ptr %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %410) #11
  br label %413

413:                                              ; preds = %408, %412
  %414 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !46
  %416 = icmp eq ptr %415, null
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %415) #11
  br label %418

418:                                              ; preds = %413, %417
  %419 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !46
  %421 = icmp eq ptr %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %418
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %420) #11
  br label %423

423:                                              ; preds = %418, %422
  %424 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = icmp eq ptr %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %425) #11
  br label %428

428:                                              ; preds = %423, %427
  %429 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !46
  %431 = icmp eq ptr %430, null
  br i1 %431, label %533, label %432

432:                                              ; preds = %428
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %430) #11
  br label %533

433:                                              ; preds = %4
  %434 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %435 = load ptr, ptr %434, align 8, !tbaa !46
  %436 = icmp eq ptr %435, null
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %435)
  br label %438

438:                                              ; preds = %433, %437
  %439 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %440 = load ptr, ptr %439, align 8, !tbaa !46
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %440) #11
  br label %443

443:                                              ; preds = %438, %442
  %444 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !46
  %446 = icmp eq ptr %445, null
  br i1 %446, label %448, label %447

447:                                              ; preds = %443
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %445)
  br label %448

448:                                              ; preds = %443, %447
  %449 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !46
  %451 = icmp eq ptr %450, null
  br i1 %451, label %453, label %452

452:                                              ; preds = %448
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %450) #11
  br label %453

453:                                              ; preds = %448, %452
  %454 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !46
  %456 = icmp eq ptr %455, null
  br i1 %456, label %533, label %457

457:                                              ; preds = %453
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %455) #11
  br label %533

458:                                              ; preds = %4
  %459 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %460 = load ptr, ptr %459, align 8, !tbaa !46
  %461 = icmp eq ptr %460, null
  br i1 %461, label %463, label %462

462:                                              ; preds = %458
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %460)
  br label %463

463:                                              ; preds = %458, %462
  %464 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %465 = load ptr, ptr %464, align 8, !tbaa !46
  %466 = icmp eq ptr %465, null
  br i1 %466, label %468, label %467

467:                                              ; preds = %463
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %465) #11
  br label %468

468:                                              ; preds = %463, %467
  %469 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !46
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %468
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %470)
  br label %473

473:                                              ; preds = %468, %472
  %474 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !46
  %476 = icmp eq ptr %475, null
  br i1 %476, label %533, label %477

477:                                              ; preds = %473
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %475) #11
  br label %533

478:                                              ; preds = %4
  %479 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %480 = load ptr, ptr %479, align 8, !tbaa !46
  %481 = icmp eq ptr %480, null
  br i1 %481, label %483, label %482

482:                                              ; preds = %478
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %480)
  br label %483

483:                                              ; preds = %478, %482
  %484 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %485 = load ptr, ptr %484, align 8, !tbaa !46
  %486 = icmp eq ptr %485, null
  br i1 %486, label %488, label %487

487:                                              ; preds = %483
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %485) #11
  br label %488

488:                                              ; preds = %483, %487
  %489 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !46
  %491 = icmp eq ptr %490, null
  br i1 %491, label %493, label %492

492:                                              ; preds = %488
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %490) #11
  br label %493

493:                                              ; preds = %488, %492
  %494 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %495 = load ptr, ptr %494, align 8, !tbaa !46
  %496 = icmp eq ptr %495, null
  br i1 %496, label %533, label %497

497:                                              ; preds = %493
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %495) #11
  br label %533

498:                                              ; preds = %4
  %499 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %500 = load ptr, ptr %499, align 8, !tbaa !46
  %501 = icmp eq ptr %500, null
  br i1 %501, label %503, label %502

502:                                              ; preds = %498
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %500)
  br label %503

503:                                              ; preds = %498, %502
  %504 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %505 = load ptr, ptr %504, align 8, !tbaa !46
  %506 = icmp eq ptr %505, null
  br i1 %506, label %508, label %507

507:                                              ; preds = %503
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %505) #11
  br label %508

508:                                              ; preds = %503, %507
  %509 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !46
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %510) #11
  br label %513

513:                                              ; preds = %508, %512
  %514 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !46
  %516 = icmp eq ptr %515, null
  br i1 %516, label %533, label %517

517:                                              ; preds = %513
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %515) #11
  br label %533

518:                                              ; preds = %4
  %519 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = icmp eq ptr %520, null
  br i1 %521, label %523, label %522

522:                                              ; preds = %518
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %520)
  br label %523

523:                                              ; preds = %518, %522
  %524 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %525 = load ptr, ptr %524, align 8, !tbaa !46
  %526 = icmp eq ptr %525, null
  br i1 %526, label %528, label %527

527:                                              ; preds = %523
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %525) #11
  br label %528

528:                                              ; preds = %523, %527
  %529 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %528
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %530) #11
  br label %533

533:                                              ; preds = %270, %199, %75, %41, %257, %188, %64, %30, %19, %15, %53, %49, %92, %88, %117, %113, %137, %133, %157, %153, %172, %168, %211, %207, %231, %227, %246, %242, %292, %288, %357, %353, %387, %383, %432, %428, %457, %453, %477, %473, %497, %493, %517, %513, %532, %528, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_throw_stmt_node(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15throw_stmt_node, i32 noundef 64) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15throw_stmt_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_eh_landing_pad_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_21VEC_eh_landing_pad_gc, i32 noundef 65) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !84
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !471

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_21VEC_eh_landing_pad_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !84
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !472

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_eh_landing_pad_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16eh_landing_pad_d, i32 noundef 68) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_eh_region_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16VEC_eh_region_gc, i32 noundef 66) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !93
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !473

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_16VEC_eh_region_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !93
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_eh_region_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !474

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_eh_region_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11eh_region_d, i32 noundef 69) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !101
  switch i32 %20, label %46 [
    i32 1, label %21
    i32 2, label %31
    i32 3, label %41
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %23)
  br label %26

26:                                               ; preds = %21, %25
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %28)
  br label %46

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %33) #11
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %38) #11
  br label %46

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %43) #11
  br label %46

46:                                               ; preds = %30, %26, %40, %36, %45, %41, %18
  %47 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_pch_nx_eh_landing_pad_d(ptr noundef nonnull %48)
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !103
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %53)
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %58)
  br label %61

61:                                               ; preds = %56, %60, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_eh_catch_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10eh_catch_d, i32 noundef 67) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_eh_catch_d(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #11
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.eh_catch_d, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #11
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_10eh_catch_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.eh_catch_d, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_16eh_landing_pad_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_rtx_def(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %17, %16 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = zext i8 %10 to i64
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %4, %12
  %17 = phi ptr [ %15, %12 ], [ null, %4 ]
  %18 = tail call i32 @gt_pch_note_object(ptr noundef %17, ptr noundef %17, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %4, !llvm.loop !475

20:                                               ; preds = %16, %1
  %21 = phi ptr [ %0, %1 ], [ %17, %16 ]
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %45, label %23

23:                                               ; preds = %20, %43
  %24 = phi ptr [ %44, %43 ], [ %0, %20 ]
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 7
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %35, %24
  %37 = select i1 %36, ptr %31, ptr null
  br label %38

38:                                               ; preds = %33, %23, %29
  %39 = phi ptr [ null, %29 ], [ null, %23 ], [ %37, %33 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %39, ptr noundef nonnull %39, ptr noundef nonnull @gt_pch_p_7rtx_def, i32 noundef 164) #11
  br label %43

43:                                               ; preds = %38, %41
  %44 = phi ptr [ %39, %41 ], [ %24, %38 ]
  br i1 %40, label %45, label %23

45:                                               ; preds = %43, %20
  %46 = phi ptr [ %0, %20 ], [ %44, %43 ]
  %47 = icmp eq ptr %46, %21
  br i1 %47, label %1262, label %48

48:                                               ; preds = %45, %1259
  %49 = phi ptr [ %1260, %1259 ], [ %46, %45 ]
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %1248 [
    i16 138, label %52
    i16 137, label %62
    i16 136, label %67
    i16 135, label %72
    i16 134, label %82
    i16 133, label %92
    i16 132, label %102
    i16 131, label %107
    i16 130, label %112
    i16 129, label %117
    i16 128, label %127
    i16 127, label %137
    i16 126, label %147
    i16 125, label %152
    i16 124, label %162
    i16 123, label %172
    i16 122, label %187
    i16 121, label %197
    i16 120, label %202
    i16 119, label %217
    i16 118, label %232
    i16 117, label %237
    i16 116, label %242
    i16 115, label %247
    i16 114, label %252
    i16 113, label %257
    i16 112, label %262
    i16 111, label %267
    i16 110, label %272
    i16 109, label %277
    i16 108, label %282
    i16 107, label %287
    i16 106, label %292
    i16 105, label %297
    i16 104, label %302
    i16 103, label %307
    i16 102, label %312
    i16 101, label %317
    i16 100, label %322
    i16 99, label %327
    i16 98, label %332
    i16 97, label %337
    i16 96, label %347
    i16 95, label %357
    i16 94, label %367
    i16 93, label %377
    i16 92, label %387
    i16 91, label %397
    i16 90, label %407
    i16 89, label %417
    i16 88, label %427
    i16 87, label %437
    i16 86, label %447
    i16 85, label %457
    i16 84, label %467
    i16 83, label %477
    i16 82, label %487
    i16 81, label %497
    i16 80, label %507
    i16 79, label %517
    i16 78, label %527
    i16 77, label %537
    i16 76, label %542
    i16 75, label %547
    i16 74, label %552
    i16 73, label %557
    i16 72, label %567
    i16 71, label %577
    i16 70, label %587
    i16 69, label %597
    i16 68, label %607
    i16 67, label %617
    i16 66, label %627
    i16 65, label %637
    i16 64, label %647
    i16 63, label %652
    i16 62, label %662
    i16 61, label %672
    i16 60, label %682
    i16 59, label %692
    i16 58, label %702
    i16 57, label %712
    i16 56, label %722
    i16 55, label %732
    i16 54, label %742
    i16 53, label %752
    i16 52, label %762
    i16 51, label %772
    i16 50, label %777
    i16 49, label %787
    i16 48, label %797
    i16 47, label %807
    i16 2, label %1243
    i16 45, label %822
    i16 44, label %846
    i16 43, label %851
    i16 42, label %861
    i16 41, label %866
    i16 40, label %876
    i16 39, label %881
    i16 3, label %1233
    i16 37, label %886
    i16 4, label %1223
    i16 35, label %891
    i16 34, label %896
    i16 33, label %899
    i16 5, label %1218
    i16 6, label %1213
    i16 7, label %1188
    i16 29, label %904
    i16 8, label %1163
    i16 9, label %1133
    i16 26, label %914
    i16 25, label %924
    i16 24, label %929
    i16 23, label %934
    i16 22, label %944
    i16 21, label %959
    i16 20, label %979
    i16 19, label %984
    i16 18, label %989
    i16 17, label %994
    i16 16, label %1014
    i16 15, label %1017
    i16 14, label %1022
    i16 13, label %1032
    i16 12, label %1071
    i16 11, label %1093
    i16 10, label %1103
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %55)
  br label %58

58:                                               ; preds = %52, %57
  %59 = load ptr, ptr %53, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %1248, label %61

61:                                               ; preds = %58
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %59) #11
  br label %1248

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = icmp eq ptr %64, null
  br i1 %65, label %1248, label %66

66:                                               ; preds = %62
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %64)
  br label %1248

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %1248, label %71

71:                                               ; preds = %67
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %69)
  br label %1248

72:                                               ; preds = %48
  %73 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %74 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %75)
  br label %78

78:                                               ; preds = %72, %77
  %79 = load ptr, ptr %73, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %1248, label %81

81:                                               ; preds = %78
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %79)
  br label %1248

82:                                               ; preds = %48
  %83 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %84 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %85)
  br label %88

88:                                               ; preds = %82, %87
  %89 = load ptr, ptr %83, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %1248, label %91

91:                                               ; preds = %88
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %89)
  br label %1248

92:                                               ; preds = %48
  %93 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %94 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %95)
  br label %98

98:                                               ; preds = %92, %97
  %99 = load ptr, ptr %93, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %1248, label %101

101:                                              ; preds = %98
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %99)
  br label %1248

102:                                              ; preds = %48
  %103 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %1248, label %106

106:                                              ; preds = %102
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %104)
  br label %1248

107:                                              ; preds = %48
  %108 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = icmp eq ptr %109, null
  br i1 %110, label %1248, label %111

111:                                              ; preds = %107
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %109)
  br label %1248

112:                                              ; preds = %48
  %113 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %1248, label %116

116:                                              ; preds = %112
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %114)
  br label %1248

117:                                              ; preds = %48
  %118 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %119 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %120)
  br label %123

123:                                              ; preds = %117, %122
  %124 = load ptr, ptr %118, align 8, !tbaa !46
  %125 = icmp eq ptr %124, null
  br i1 %125, label %1248, label %126

126:                                              ; preds = %123
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %124)
  br label %1248

127:                                              ; preds = %48
  %128 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %129 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %130)
  br label %133

133:                                              ; preds = %127, %132
  %134 = load ptr, ptr %128, align 8, !tbaa !46
  %135 = icmp eq ptr %134, null
  br i1 %135, label %1248, label %136

136:                                              ; preds = %133
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %134)
  br label %1248

137:                                              ; preds = %48
  %138 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %139 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %140)
  br label %143

143:                                              ; preds = %137, %142
  %144 = load ptr, ptr %138, align 8, !tbaa !46
  %145 = icmp eq ptr %144, null
  br i1 %145, label %1248, label %146

146:                                              ; preds = %143
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %144)
  br label %1248

147:                                              ; preds = %48
  %148 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = icmp eq ptr %149, null
  br i1 %150, label %1248, label %151

151:                                              ; preds = %147
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %149)
  br label %1248

152:                                              ; preds = %48
  %153 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %154 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %155)
  br label %158

158:                                              ; preds = %152, %157
  %159 = load ptr, ptr %153, align 8, !tbaa !46
  %160 = icmp eq ptr %159, null
  br i1 %160, label %1248, label %161

161:                                              ; preds = %158
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %159)
  br label %1248

162:                                              ; preds = %48
  %163 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %164 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !46
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %165)
  br label %168

168:                                              ; preds = %162, %167
  %169 = load ptr, ptr %163, align 8, !tbaa !46
  %170 = icmp eq ptr %169, null
  br i1 %170, label %1248, label %171

171:                                              ; preds = %168
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %169)
  br label %1248

172:                                              ; preds = %48
  %173 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %174 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %175 = load ptr, ptr %174, align 8, !tbaa !46
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %175)
  br label %178

178:                                              ; preds = %172, %177
  %179 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !46
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %180)
  br label %183

183:                                              ; preds = %178, %182
  %184 = load ptr, ptr %173, align 8, !tbaa !46
  %185 = icmp eq ptr %184, null
  br i1 %185, label %1248, label %186

186:                                              ; preds = %183
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %184)
  br label %1248

187:                                              ; preds = %48
  %188 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %189 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %190)
  br label %193

193:                                              ; preds = %187, %192
  %194 = load ptr, ptr %188, align 8, !tbaa !46
  %195 = icmp eq ptr %194, null
  br i1 %195, label %1248, label %196

196:                                              ; preds = %193
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %194)
  br label %1248

197:                                              ; preds = %48
  %198 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !46
  %200 = icmp eq ptr %199, null
  br i1 %200, label %1248, label %201

201:                                              ; preds = %197
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %199)
  br label %1248

202:                                              ; preds = %48
  %203 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %204 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %205)
  br label %208

208:                                              ; preds = %202, %207
  %209 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %210)
  br label %213

213:                                              ; preds = %208, %212
  %214 = load ptr, ptr %203, align 8, !tbaa !46
  %215 = icmp eq ptr %214, null
  br i1 %215, label %1248, label %216

216:                                              ; preds = %213
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %214)
  br label %1248

217:                                              ; preds = %48
  %218 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %219 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %220 = load ptr, ptr %219, align 8, !tbaa !46
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %220)
  br label %223

223:                                              ; preds = %217, %222
  %224 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = icmp eq ptr %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %225)
  br label %228

228:                                              ; preds = %223, %227
  %229 = load ptr, ptr %218, align 8, !tbaa !46
  %230 = icmp eq ptr %229, null
  br i1 %230, label %1248, label %231

231:                                              ; preds = %228
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %229)
  br label %1248

232:                                              ; preds = %48
  %233 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  %235 = icmp eq ptr %234, null
  br i1 %235, label %1248, label %236

236:                                              ; preds = %232
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %234)
  br label %1248

237:                                              ; preds = %48
  %238 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !46
  %240 = icmp eq ptr %239, null
  br i1 %240, label %1248, label %241

241:                                              ; preds = %237
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %239)
  br label %1248

242:                                              ; preds = %48
  %243 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !46
  %245 = icmp eq ptr %244, null
  br i1 %245, label %1248, label %246

246:                                              ; preds = %242
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %244)
  br label %1248

247:                                              ; preds = %48
  %248 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !46
  %250 = icmp eq ptr %249, null
  br i1 %250, label %1248, label %251

251:                                              ; preds = %247
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %249)
  br label %1248

252:                                              ; preds = %48
  %253 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !46
  %255 = icmp eq ptr %254, null
  br i1 %255, label %1248, label %256

256:                                              ; preds = %252
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %254)
  br label %1248

257:                                              ; preds = %48
  %258 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  %260 = icmp eq ptr %259, null
  br i1 %260, label %1248, label %261

261:                                              ; preds = %257
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %259)
  br label %1248

262:                                              ; preds = %48
  %263 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !46
  %265 = icmp eq ptr %264, null
  br i1 %265, label %1248, label %266

266:                                              ; preds = %262
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %264)
  br label %1248

267:                                              ; preds = %48
  %268 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !46
  %270 = icmp eq ptr %269, null
  br i1 %270, label %1248, label %271

271:                                              ; preds = %267
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %269)
  br label %1248

272:                                              ; preds = %48
  %273 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !46
  %275 = icmp eq ptr %274, null
  br i1 %275, label %1248, label %276

276:                                              ; preds = %272
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %274)
  br label %1248

277:                                              ; preds = %48
  %278 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !46
  %280 = icmp eq ptr %279, null
  br i1 %280, label %1248, label %281

281:                                              ; preds = %277
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %279)
  br label %1248

282:                                              ; preds = %48
  %283 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !46
  %285 = icmp eq ptr %284, null
  br i1 %285, label %1248, label %286

286:                                              ; preds = %282
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %284)
  br label %1248

287:                                              ; preds = %48
  %288 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  %290 = icmp eq ptr %289, null
  br i1 %290, label %1248, label %291

291:                                              ; preds = %287
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %289)
  br label %1248

292:                                              ; preds = %48
  %293 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !46
  %295 = icmp eq ptr %294, null
  br i1 %295, label %1248, label %296

296:                                              ; preds = %292
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %294)
  br label %1248

297:                                              ; preds = %48
  %298 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !46
  %300 = icmp eq ptr %299, null
  br i1 %300, label %1248, label %301

301:                                              ; preds = %297
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %299)
  br label %1248

302:                                              ; preds = %48
  %303 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !46
  %305 = icmp eq ptr %304, null
  br i1 %305, label %1248, label %306

306:                                              ; preds = %302
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %304)
  br label %1248

307:                                              ; preds = %48
  %308 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !46
  %310 = icmp eq ptr %309, null
  br i1 %310, label %1248, label %311

311:                                              ; preds = %307
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %309)
  br label %1248

312:                                              ; preds = %48
  %313 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !46
  %315 = icmp eq ptr %314, null
  br i1 %315, label %1248, label %316

316:                                              ; preds = %312
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %314)
  br label %1248

317:                                              ; preds = %48
  %318 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !46
  %320 = icmp eq ptr %319, null
  br i1 %320, label %1248, label %321

321:                                              ; preds = %317
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %319)
  br label %1248

322:                                              ; preds = %48
  %323 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !46
  %325 = icmp eq ptr %324, null
  br i1 %325, label %1248, label %326

326:                                              ; preds = %322
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %324)
  br label %1248

327:                                              ; preds = %48
  %328 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !46
  %330 = icmp eq ptr %329, null
  br i1 %330, label %1248, label %331

331:                                              ; preds = %327
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %329)
  br label %1248

332:                                              ; preds = %48
  %333 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !46
  %335 = icmp eq ptr %334, null
  br i1 %335, label %1248, label %336

336:                                              ; preds = %332
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %334)
  br label %1248

337:                                              ; preds = %48
  %338 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %339 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !46
  %341 = icmp eq ptr %340, null
  br i1 %341, label %343, label %342

342:                                              ; preds = %337
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %340)
  br label %343

343:                                              ; preds = %337, %342
  %344 = load ptr, ptr %338, align 8, !tbaa !46
  %345 = icmp eq ptr %344, null
  br i1 %345, label %1248, label %346

346:                                              ; preds = %343
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %344)
  br label %1248

347:                                              ; preds = %48
  %348 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %349 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  %351 = icmp eq ptr %350, null
  br i1 %351, label %353, label %352

352:                                              ; preds = %347
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %350)
  br label %353

353:                                              ; preds = %347, %352
  %354 = load ptr, ptr %348, align 8, !tbaa !46
  %355 = icmp eq ptr %354, null
  br i1 %355, label %1248, label %356

356:                                              ; preds = %353
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %354)
  br label %1248

357:                                              ; preds = %48
  %358 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %359 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !46
  %361 = icmp eq ptr %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %357
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %360)
  br label %363

363:                                              ; preds = %357, %362
  %364 = load ptr, ptr %358, align 8, !tbaa !46
  %365 = icmp eq ptr %364, null
  br i1 %365, label %1248, label %366

366:                                              ; preds = %363
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %364)
  br label %1248

367:                                              ; preds = %48
  %368 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %369 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %370 = load ptr, ptr %369, align 8, !tbaa !46
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %367
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %370)
  br label %373

373:                                              ; preds = %367, %372
  %374 = load ptr, ptr %368, align 8, !tbaa !46
  %375 = icmp eq ptr %374, null
  br i1 %375, label %1248, label %376

376:                                              ; preds = %373
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %374)
  br label %1248

377:                                              ; preds = %48
  %378 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %379 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !46
  %381 = icmp eq ptr %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %377
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %380)
  br label %383

383:                                              ; preds = %377, %382
  %384 = load ptr, ptr %378, align 8, !tbaa !46
  %385 = icmp eq ptr %384, null
  br i1 %385, label %1248, label %386

386:                                              ; preds = %383
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %384)
  br label %1248

387:                                              ; preds = %48
  %388 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %389 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !46
  %391 = icmp eq ptr %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %387
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %390)
  br label %393

393:                                              ; preds = %387, %392
  %394 = load ptr, ptr %388, align 8, !tbaa !46
  %395 = icmp eq ptr %394, null
  br i1 %395, label %1248, label %396

396:                                              ; preds = %393
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %394)
  br label %1248

397:                                              ; preds = %48
  %398 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %399 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %400 = load ptr, ptr %399, align 8, !tbaa !46
  %401 = icmp eq ptr %400, null
  br i1 %401, label %403, label %402

402:                                              ; preds = %397
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %400)
  br label %403

403:                                              ; preds = %397, %402
  %404 = load ptr, ptr %398, align 8, !tbaa !46
  %405 = icmp eq ptr %404, null
  br i1 %405, label %1248, label %406

406:                                              ; preds = %403
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %404)
  br label %1248

407:                                              ; preds = %48
  %408 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %409 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !46
  %411 = icmp eq ptr %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %407
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %410)
  br label %413

413:                                              ; preds = %407, %412
  %414 = load ptr, ptr %408, align 8, !tbaa !46
  %415 = icmp eq ptr %414, null
  br i1 %415, label %1248, label %416

416:                                              ; preds = %413
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %414)
  br label %1248

417:                                              ; preds = %48
  %418 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %419 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !46
  %421 = icmp eq ptr %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %420)
  br label %423

423:                                              ; preds = %417, %422
  %424 = load ptr, ptr %418, align 8, !tbaa !46
  %425 = icmp eq ptr %424, null
  br i1 %425, label %1248, label %426

426:                                              ; preds = %423
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %424)
  br label %1248

427:                                              ; preds = %48
  %428 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %429 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !46
  %431 = icmp eq ptr %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %427
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %430)
  br label %433

433:                                              ; preds = %427, %432
  %434 = load ptr, ptr %428, align 8, !tbaa !46
  %435 = icmp eq ptr %434, null
  br i1 %435, label %1248, label %436

436:                                              ; preds = %433
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %434)
  br label %1248

437:                                              ; preds = %48
  %438 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %439 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !46
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %437
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %440)
  br label %443

443:                                              ; preds = %437, %442
  %444 = load ptr, ptr %438, align 8, !tbaa !46
  %445 = icmp eq ptr %444, null
  br i1 %445, label %1248, label %446

446:                                              ; preds = %443
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %444)
  br label %1248

447:                                              ; preds = %48
  %448 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %449 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !46
  %451 = icmp eq ptr %450, null
  br i1 %451, label %453, label %452

452:                                              ; preds = %447
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %450)
  br label %453

453:                                              ; preds = %447, %452
  %454 = load ptr, ptr %448, align 8, !tbaa !46
  %455 = icmp eq ptr %454, null
  br i1 %455, label %1248, label %456

456:                                              ; preds = %453
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %454)
  br label %1248

457:                                              ; preds = %48
  %458 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %459 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %460 = load ptr, ptr %459, align 8, !tbaa !46
  %461 = icmp eq ptr %460, null
  br i1 %461, label %463, label %462

462:                                              ; preds = %457
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %460)
  br label %463

463:                                              ; preds = %457, %462
  %464 = load ptr, ptr %458, align 8, !tbaa !46
  %465 = icmp eq ptr %464, null
  br i1 %465, label %1248, label %466

466:                                              ; preds = %463
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %464)
  br label %1248

467:                                              ; preds = %48
  %468 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %469 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %470 = load ptr, ptr %469, align 8, !tbaa !46
  %471 = icmp eq ptr %470, null
  br i1 %471, label %473, label %472

472:                                              ; preds = %467
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %470)
  br label %473

473:                                              ; preds = %467, %472
  %474 = load ptr, ptr %468, align 8, !tbaa !46
  %475 = icmp eq ptr %474, null
  br i1 %475, label %1248, label %476

476:                                              ; preds = %473
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %474)
  br label %1248

477:                                              ; preds = %48
  %478 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %479 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %480 = load ptr, ptr %479, align 8, !tbaa !46
  %481 = icmp eq ptr %480, null
  br i1 %481, label %483, label %482

482:                                              ; preds = %477
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %480)
  br label %483

483:                                              ; preds = %477, %482
  %484 = load ptr, ptr %478, align 8, !tbaa !46
  %485 = icmp eq ptr %484, null
  br i1 %485, label %1248, label %486

486:                                              ; preds = %483
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %484)
  br label %1248

487:                                              ; preds = %48
  %488 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %489 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %490 = load ptr, ptr %489, align 8, !tbaa !46
  %491 = icmp eq ptr %490, null
  br i1 %491, label %493, label %492

492:                                              ; preds = %487
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %490)
  br label %493

493:                                              ; preds = %487, %492
  %494 = load ptr, ptr %488, align 8, !tbaa !46
  %495 = icmp eq ptr %494, null
  br i1 %495, label %1248, label %496

496:                                              ; preds = %493
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %494)
  br label %1248

497:                                              ; preds = %48
  %498 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %499 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !46
  %501 = icmp eq ptr %500, null
  br i1 %501, label %503, label %502

502:                                              ; preds = %497
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %500)
  br label %503

503:                                              ; preds = %497, %502
  %504 = load ptr, ptr %498, align 8, !tbaa !46
  %505 = icmp eq ptr %504, null
  br i1 %505, label %1248, label %506

506:                                              ; preds = %503
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %504)
  br label %1248

507:                                              ; preds = %48
  %508 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %509 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !46
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %507
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %510)
  br label %513

513:                                              ; preds = %507, %512
  %514 = load ptr, ptr %508, align 8, !tbaa !46
  %515 = icmp eq ptr %514, null
  br i1 %515, label %1248, label %516

516:                                              ; preds = %513
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %514)
  br label %1248

517:                                              ; preds = %48
  %518 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %519 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = icmp eq ptr %520, null
  br i1 %521, label %523, label %522

522:                                              ; preds = %517
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %520)
  br label %523

523:                                              ; preds = %517, %522
  %524 = load ptr, ptr %518, align 8, !tbaa !46
  %525 = icmp eq ptr %524, null
  br i1 %525, label %1248, label %526

526:                                              ; preds = %523
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %524)
  br label %1248

527:                                              ; preds = %48
  %528 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %529 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !46
  %531 = icmp eq ptr %530, null
  br i1 %531, label %533, label %532

532:                                              ; preds = %527
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %530)
  br label %533

533:                                              ; preds = %527, %532
  %534 = load ptr, ptr %528, align 8, !tbaa !46
  %535 = icmp eq ptr %534, null
  br i1 %535, label %1248, label %536

536:                                              ; preds = %533
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %534)
  br label %1248

537:                                              ; preds = %48
  %538 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !46
  %540 = icmp eq ptr %539, null
  br i1 %540, label %1248, label %541

541:                                              ; preds = %537
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %539)
  br label %1248

542:                                              ; preds = %48
  %543 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !46
  %545 = icmp eq ptr %544, null
  br i1 %545, label %1248, label %546

546:                                              ; preds = %542
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %544)
  br label %1248

547:                                              ; preds = %48
  %548 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %549 = load ptr, ptr %548, align 8, !tbaa !46
  %550 = icmp eq ptr %549, null
  br i1 %550, label %1248, label %551

551:                                              ; preds = %547
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %549)
  br label %1248

552:                                              ; preds = %48
  %553 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !46
  %555 = icmp eq ptr %554, null
  br i1 %555, label %1248, label %556

556:                                              ; preds = %552
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %554)
  br label %1248

557:                                              ; preds = %48
  %558 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %559 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %560 = load ptr, ptr %559, align 8, !tbaa !46
  %561 = icmp eq ptr %560, null
  br i1 %561, label %563, label %562

562:                                              ; preds = %557
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %560)
  br label %563

563:                                              ; preds = %557, %562
  %564 = load ptr, ptr %558, align 8, !tbaa !46
  %565 = icmp eq ptr %564, null
  br i1 %565, label %1248, label %566

566:                                              ; preds = %563
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %564)
  br label %1248

567:                                              ; preds = %48
  %568 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %569 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %570 = load ptr, ptr %569, align 8, !tbaa !46
  %571 = icmp eq ptr %570, null
  br i1 %571, label %573, label %572

572:                                              ; preds = %567
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %570)
  br label %573

573:                                              ; preds = %567, %572
  %574 = load ptr, ptr %568, align 8, !tbaa !46
  %575 = icmp eq ptr %574, null
  br i1 %575, label %1248, label %576

576:                                              ; preds = %573
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %574)
  br label %1248

577:                                              ; preds = %48
  %578 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %579 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %580 = load ptr, ptr %579, align 8, !tbaa !46
  %581 = icmp eq ptr %580, null
  br i1 %581, label %583, label %582

582:                                              ; preds = %577
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %580)
  br label %583

583:                                              ; preds = %577, %582
  %584 = load ptr, ptr %578, align 8, !tbaa !46
  %585 = icmp eq ptr %584, null
  br i1 %585, label %1248, label %586

586:                                              ; preds = %583
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %584)
  br label %1248

587:                                              ; preds = %48
  %588 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %589 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %590 = load ptr, ptr %589, align 8, !tbaa !46
  %591 = icmp eq ptr %590, null
  br i1 %591, label %593, label %592

592:                                              ; preds = %587
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %590)
  br label %593

593:                                              ; preds = %587, %592
  %594 = load ptr, ptr %588, align 8, !tbaa !46
  %595 = icmp eq ptr %594, null
  br i1 %595, label %1248, label %596

596:                                              ; preds = %593
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %594)
  br label %1248

597:                                              ; preds = %48
  %598 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %599 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %600 = load ptr, ptr %599, align 8, !tbaa !46
  %601 = icmp eq ptr %600, null
  br i1 %601, label %603, label %602

602:                                              ; preds = %597
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %600)
  br label %603

603:                                              ; preds = %597, %602
  %604 = load ptr, ptr %598, align 8, !tbaa !46
  %605 = icmp eq ptr %604, null
  br i1 %605, label %1248, label %606

606:                                              ; preds = %603
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %604)
  br label %1248

607:                                              ; preds = %48
  %608 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %609 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %610 = load ptr, ptr %609, align 8, !tbaa !46
  %611 = icmp eq ptr %610, null
  br i1 %611, label %613, label %612

612:                                              ; preds = %607
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %610)
  br label %613

613:                                              ; preds = %607, %612
  %614 = load ptr, ptr %608, align 8, !tbaa !46
  %615 = icmp eq ptr %614, null
  br i1 %615, label %1248, label %616

616:                                              ; preds = %613
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %614)
  br label %1248

617:                                              ; preds = %48
  %618 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %619 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %620 = load ptr, ptr %619, align 8, !tbaa !46
  %621 = icmp eq ptr %620, null
  br i1 %621, label %623, label %622

622:                                              ; preds = %617
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %620)
  br label %623

623:                                              ; preds = %617, %622
  %624 = load ptr, ptr %618, align 8, !tbaa !46
  %625 = icmp eq ptr %624, null
  br i1 %625, label %1248, label %626

626:                                              ; preds = %623
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %624)
  br label %1248

627:                                              ; preds = %48
  %628 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %629 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %630 = load ptr, ptr %629, align 8, !tbaa !46
  %631 = icmp eq ptr %630, null
  br i1 %631, label %633, label %632

632:                                              ; preds = %627
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %630)
  br label %633

633:                                              ; preds = %627, %632
  %634 = load ptr, ptr %628, align 8, !tbaa !46
  %635 = icmp eq ptr %634, null
  br i1 %635, label %1248, label %636

636:                                              ; preds = %633
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %634)
  br label %1248

637:                                              ; preds = %48
  %638 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %639 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %640 = load ptr, ptr %639, align 8, !tbaa !46
  %641 = icmp eq ptr %640, null
  br i1 %641, label %643, label %642

642:                                              ; preds = %637
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %640)
  br label %643

643:                                              ; preds = %637, %642
  %644 = load ptr, ptr %638, align 8, !tbaa !46
  %645 = icmp eq ptr %644, null
  br i1 %645, label %1248, label %646

646:                                              ; preds = %643
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %644)
  br label %1248

647:                                              ; preds = %48
  %648 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !46
  %650 = icmp eq ptr %649, null
  br i1 %650, label %1248, label %651

651:                                              ; preds = %647
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %649)
  br label %1248

652:                                              ; preds = %48
  %653 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %654 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %655 = load ptr, ptr %654, align 8, !tbaa !46
  %656 = icmp eq ptr %655, null
  br i1 %656, label %658, label %657

657:                                              ; preds = %652
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %655)
  br label %658

658:                                              ; preds = %652, %657
  %659 = load ptr, ptr %653, align 8, !tbaa !46
  %660 = icmp eq ptr %659, null
  br i1 %660, label %1248, label %661

661:                                              ; preds = %658
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %659)
  br label %1248

662:                                              ; preds = %48
  %663 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %664 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %665 = load ptr, ptr %664, align 8, !tbaa !46
  %666 = icmp eq ptr %665, null
  br i1 %666, label %668, label %667

667:                                              ; preds = %662
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %665)
  br label %668

668:                                              ; preds = %662, %667
  %669 = load ptr, ptr %663, align 8, !tbaa !46
  %670 = icmp eq ptr %669, null
  br i1 %670, label %1248, label %671

671:                                              ; preds = %668
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %669)
  br label %1248

672:                                              ; preds = %48
  %673 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %674 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %675 = load ptr, ptr %674, align 8, !tbaa !46
  %676 = icmp eq ptr %675, null
  br i1 %676, label %678, label %677

677:                                              ; preds = %672
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %675)
  br label %678

678:                                              ; preds = %672, %677
  %679 = load ptr, ptr %673, align 8, !tbaa !46
  %680 = icmp eq ptr %679, null
  br i1 %680, label %1248, label %681

681:                                              ; preds = %678
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %679)
  br label %1248

682:                                              ; preds = %48
  %683 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %684 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %685 = load ptr, ptr %684, align 8, !tbaa !46
  %686 = icmp eq ptr %685, null
  br i1 %686, label %688, label %687

687:                                              ; preds = %682
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %685)
  br label %688

688:                                              ; preds = %682, %687
  %689 = load ptr, ptr %683, align 8, !tbaa !46
  %690 = icmp eq ptr %689, null
  br i1 %690, label %1248, label %691

691:                                              ; preds = %688
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %689)
  br label %1248

692:                                              ; preds = %48
  %693 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %694 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %695 = load ptr, ptr %694, align 8, !tbaa !46
  %696 = icmp eq ptr %695, null
  br i1 %696, label %698, label %697

697:                                              ; preds = %692
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %695)
  br label %698

698:                                              ; preds = %692, %697
  %699 = load ptr, ptr %693, align 8, !tbaa !46
  %700 = icmp eq ptr %699, null
  br i1 %700, label %1248, label %701

701:                                              ; preds = %698
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %699)
  br label %1248

702:                                              ; preds = %48
  %703 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %704 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %705 = load ptr, ptr %704, align 8, !tbaa !46
  %706 = icmp eq ptr %705, null
  br i1 %706, label %708, label %707

707:                                              ; preds = %702
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %705)
  br label %708

708:                                              ; preds = %702, %707
  %709 = load ptr, ptr %703, align 8, !tbaa !46
  %710 = icmp eq ptr %709, null
  br i1 %710, label %1248, label %711

711:                                              ; preds = %708
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %709)
  br label %1248

712:                                              ; preds = %48
  %713 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %714 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %715 = load ptr, ptr %714, align 8, !tbaa !46
  %716 = icmp eq ptr %715, null
  br i1 %716, label %718, label %717

717:                                              ; preds = %712
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %715)
  br label %718

718:                                              ; preds = %712, %717
  %719 = load ptr, ptr %713, align 8, !tbaa !46
  %720 = icmp eq ptr %719, null
  br i1 %720, label %1248, label %721

721:                                              ; preds = %718
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %719)
  br label %1248

722:                                              ; preds = %48
  %723 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %724 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %725 = load ptr, ptr %724, align 8, !tbaa !46
  %726 = icmp eq ptr %725, null
  br i1 %726, label %728, label %727

727:                                              ; preds = %722
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %725)
  br label %728

728:                                              ; preds = %722, %727
  %729 = load ptr, ptr %723, align 8, !tbaa !46
  %730 = icmp eq ptr %729, null
  br i1 %730, label %1248, label %731

731:                                              ; preds = %728
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %729)
  br label %1248

732:                                              ; preds = %48
  %733 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %734 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %735 = load ptr, ptr %734, align 8, !tbaa !46
  %736 = icmp eq ptr %735, null
  br i1 %736, label %738, label %737

737:                                              ; preds = %732
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %735)
  br label %738

738:                                              ; preds = %732, %737
  %739 = load ptr, ptr %733, align 8, !tbaa !46
  %740 = icmp eq ptr %739, null
  br i1 %740, label %1248, label %741

741:                                              ; preds = %738
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %739)
  br label %1248

742:                                              ; preds = %48
  %743 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %744 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %745 = load ptr, ptr %744, align 8, !tbaa !46
  %746 = icmp eq ptr %745, null
  br i1 %746, label %748, label %747

747:                                              ; preds = %742
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %745)
  br label %748

748:                                              ; preds = %742, %747
  %749 = load ptr, ptr %743, align 8, !tbaa !46
  %750 = icmp eq ptr %749, null
  br i1 %750, label %1248, label %751

751:                                              ; preds = %748
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %749)
  br label %1248

752:                                              ; preds = %48
  %753 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %754 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %755 = load ptr, ptr %754, align 8, !tbaa !46
  %756 = icmp eq ptr %755, null
  br i1 %756, label %758, label %757

757:                                              ; preds = %752
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %755)
  br label %758

758:                                              ; preds = %752, %757
  %759 = load ptr, ptr %753, align 8, !tbaa !46
  %760 = icmp eq ptr %759, null
  br i1 %760, label %1248, label %761

761:                                              ; preds = %758
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %759)
  br label %1248

762:                                              ; preds = %48
  %763 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %764 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %765 = load ptr, ptr %764, align 8, !tbaa !46
  %766 = icmp eq ptr %765, null
  br i1 %766, label %768, label %767

767:                                              ; preds = %762
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %765)
  br label %768

768:                                              ; preds = %762, %767
  %769 = load ptr, ptr %763, align 8, !tbaa !46
  %770 = icmp eq ptr %769, null
  br i1 %770, label %1248, label %771

771:                                              ; preds = %768
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %769)
  br label %1248

772:                                              ; preds = %48
  %773 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %774 = load ptr, ptr %773, align 8, !tbaa !46
  %775 = icmp eq ptr %774, null
  br i1 %775, label %1248, label %776

776:                                              ; preds = %772
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %774)
  br label %1248

777:                                              ; preds = %48
  %778 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %779 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %780 = load ptr, ptr %779, align 8, !tbaa !46
  %781 = icmp eq ptr %780, null
  br i1 %781, label %783, label %782

782:                                              ; preds = %777
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %780)
  br label %783

783:                                              ; preds = %777, %782
  %784 = load ptr, ptr %778, align 8, !tbaa !46
  %785 = icmp eq ptr %784, null
  br i1 %785, label %1248, label %786

786:                                              ; preds = %783
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %784)
  br label %1248

787:                                              ; preds = %48
  %788 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %789 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %790 = load ptr, ptr %789, align 8, !tbaa !46
  %791 = icmp eq ptr %790, null
  br i1 %791, label %793, label %792

792:                                              ; preds = %787
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %790)
  br label %793

793:                                              ; preds = %787, %792
  %794 = load ptr, ptr %788, align 8, !tbaa !46
  %795 = icmp eq ptr %794, null
  br i1 %795, label %1248, label %796

796:                                              ; preds = %793
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %794)
  br label %1248

797:                                              ; preds = %48
  %798 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %799 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %800 = load ptr, ptr %799, align 8, !tbaa !46
  %801 = icmp eq ptr %800, null
  br i1 %801, label %803, label %802

802:                                              ; preds = %797
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %800)
  br label %803

803:                                              ; preds = %797, %802
  %804 = load ptr, ptr %798, align 8, !tbaa !46
  %805 = icmp eq ptr %804, null
  br i1 %805, label %1248, label %806

806:                                              ; preds = %803
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %804)
  br label %1248

807:                                              ; preds = %48
  %808 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %809 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %810 = load ptr, ptr %809, align 8, !tbaa !46
  %811 = icmp eq ptr %810, null
  br i1 %811, label %813, label %812

812:                                              ; preds = %807
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %810)
  br label %813

813:                                              ; preds = %807, %812
  %814 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %815 = load ptr, ptr %814, align 8, !tbaa !46
  %816 = icmp eq ptr %815, null
  br i1 %816, label %818, label %817

817:                                              ; preds = %813
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %815)
  br label %818

818:                                              ; preds = %813, %817
  %819 = load ptr, ptr %808, align 8, !tbaa !46
  %820 = icmp eq ptr %819, null
  br i1 %820, label %1248, label %821

821:                                              ; preds = %818
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %819)
  br label %1248

822:                                              ; preds = %48
  %823 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %824 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %825 = load i32, ptr %824, align 8, !tbaa !46
  %826 = and i32 %825, 128
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %833, label %828

828:                                              ; preds = %822
  %829 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %830 = load ptr, ptr %829, align 8, !tbaa !46
  %831 = icmp eq ptr %830, null
  br i1 %831, label %833, label %832

832:                                              ; preds = %828
  tail call void @gt_pch_nx_object_block(ptr noundef nonnull %830)
  br label %833

833:                                              ; preds = %822, %828, %832
  %834 = load i32, ptr %49, align 8
  %835 = and i32 %834, 67108864
  %836 = icmp eq i32 %835, 0
  %837 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %838 = load ptr, ptr %837, align 8, !tbaa !46
  %839 = icmp eq ptr %838, null
  br i1 %836, label %842, label %840

840:                                              ; preds = %833
  br i1 %839, label %844, label %841

841:                                              ; preds = %840
  tail call void @gt_pch_nx_constant_descriptor_rtx(ptr noundef nonnull %838) #11
  br label %844

842:                                              ; preds = %833
  br i1 %839, label %844, label %843

843:                                              ; preds = %842
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %838) #11
  br label %844

844:                                              ; preds = %842, %843, %840, %841
  %845 = load ptr, ptr %823, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %845) #11
  br label %1248

846:                                              ; preds = %48
  %847 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %848 = load ptr, ptr %847, align 8, !tbaa !46
  %849 = icmp eq ptr %848, null
  br i1 %849, label %1248, label %850

850:                                              ; preds = %846
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %848)
  br label %1248

851:                                              ; preds = %48
  %852 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %853 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %854 = load ptr, ptr %853, align 8, !tbaa !46
  %855 = icmp eq ptr %854, null
  br i1 %855, label %857, label %856

856:                                              ; preds = %851
  tail call void @gt_pch_nx_mem_attrs(ptr noundef nonnull %854)
  br label %857

857:                                              ; preds = %851, %856
  %858 = load ptr, ptr %852, align 8, !tbaa !46
  %859 = icmp eq ptr %858, null
  br i1 %859, label %1248, label %860

860:                                              ; preds = %857
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %858)
  br label %1248

861:                                              ; preds = %48
  %862 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !46
  %864 = icmp eq ptr %863, null
  br i1 %864, label %1248, label %865

865:                                              ; preds = %861
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %863)
  br label %1248

866:                                              ; preds = %48
  %867 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %868 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %869 = load ptr, ptr %868, align 8, !tbaa !46
  %870 = icmp eq ptr %869, null
  br i1 %870, label %872, label %871

871:                                              ; preds = %866
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %869)
  br label %872

872:                                              ; preds = %866, %871
  %873 = load ptr, ptr %867, align 8, !tbaa !46
  %874 = icmp eq ptr %873, null
  br i1 %874, label %1248, label %875

875:                                              ; preds = %872
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %873)
  br label %1248

876:                                              ; preds = %48
  %877 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %878 = load ptr, ptr %877, align 8, !tbaa !46
  %879 = icmp eq ptr %878, null
  br i1 %879, label %1248, label %880

880:                                              ; preds = %876
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %878)
  br label %1248

881:                                              ; preds = %48
  %882 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %883 = load ptr, ptr %882, align 8, !tbaa !46
  %884 = icmp eq ptr %883, null
  br i1 %884, label %1248, label %885

885:                                              ; preds = %881
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %883)
  br label %1248

886:                                              ; preds = %48
  %887 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %888 = load ptr, ptr %887, align 8, !tbaa !46
  %889 = icmp eq ptr %888, null
  br i1 %889, label %1248, label %890

890:                                              ; preds = %886
  tail call void @gt_pch_nx_reg_attrs(ptr noundef nonnull %888)
  br label %1248

891:                                              ; preds = %48
  %892 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %893 = load ptr, ptr %892, align 8, !tbaa !46
  %894 = icmp eq ptr %893, null
  br i1 %894, label %1248, label %895

895:                                              ; preds = %891
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %893)
  br label %1248

896:                                              ; preds = %48
  %897 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %898 = load ptr, ptr %897, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %898) #11
  br label %1248

899:                                              ; preds = %48
  %900 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %901 = load ptr, ptr %900, align 8, !tbaa !46
  %902 = icmp eq ptr %901, null
  br i1 %902, label %1248, label %903

903:                                              ; preds = %899
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %901)
  br label %1248

904:                                              ; preds = %48
  %905 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %906 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %907 = load ptr, ptr %906, align 8, !tbaa !46
  %908 = icmp eq ptr %907, null
  br i1 %908, label %910, label %909

909:                                              ; preds = %904
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %907)
  br label %910

910:                                              ; preds = %904, %909
  %911 = load ptr, ptr %905, align 8, !tbaa !46
  %912 = icmp eq ptr %911, null
  br i1 %912, label %1248, label %913

913:                                              ; preds = %910
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %911)
  br label %1248

914:                                              ; preds = %48
  %915 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %916 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %917 = load ptr, ptr %916, align 8, !tbaa !46
  %918 = icmp eq ptr %917, null
  br i1 %918, label %920, label %919

919:                                              ; preds = %914
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %917)
  br label %920

920:                                              ; preds = %914, %919
  %921 = load ptr, ptr %915, align 8, !tbaa !46
  %922 = icmp eq ptr %921, null
  br i1 %922, label %1248, label %923

923:                                              ; preds = %920
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %921)
  br label %1248

924:                                              ; preds = %48
  %925 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %926 = load ptr, ptr %925, align 8, !tbaa !46
  %927 = icmp eq ptr %926, null
  br i1 %927, label %1248, label %928

928:                                              ; preds = %924
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %926)
  br label %1248

929:                                              ; preds = %48
  %930 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %931 = load ptr, ptr %930, align 8, !tbaa !46
  %932 = icmp eq ptr %931, null
  br i1 %932, label %1248, label %933

933:                                              ; preds = %929
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %931)
  br label %1248

934:                                              ; preds = %48
  %935 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %936 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %937 = load ptr, ptr %936, align 8, !tbaa !46
  %938 = icmp eq ptr %937, null
  br i1 %938, label %940, label %939

939:                                              ; preds = %934
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %937)
  br label %940

940:                                              ; preds = %934, %939
  %941 = load ptr, ptr %935, align 8, !tbaa !46
  %942 = icmp eq ptr %941, null
  br i1 %942, label %1248, label %943

943:                                              ; preds = %940
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %941)
  br label %1248

944:                                              ; preds = %48
  %945 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %946 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %947 = load ptr, ptr %946, align 8, !tbaa !46
  %948 = icmp eq ptr %947, null
  br i1 %948, label %950, label %949

949:                                              ; preds = %944
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %947)
  br label %950

950:                                              ; preds = %944, %949
  %951 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %952 = load ptr, ptr %951, align 8, !tbaa !46
  %953 = icmp eq ptr %952, null
  br i1 %953, label %955, label %954

954:                                              ; preds = %950
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %952)
  br label %955

955:                                              ; preds = %950, %954
  %956 = load ptr, ptr %945, align 8, !tbaa !46
  %957 = icmp eq ptr %956, null
  br i1 %957, label %1248, label %958

958:                                              ; preds = %955
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %956)
  br label %1248

959:                                              ; preds = %48
  %960 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %961 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %962 = load ptr, ptr %961, align 8, !tbaa !46
  %963 = icmp eq ptr %962, null
  br i1 %963, label %965, label %964

964:                                              ; preds = %959
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %962)
  br label %965

965:                                              ; preds = %959, %964
  %966 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %967 = load ptr, ptr %966, align 8, !tbaa !46
  %968 = icmp eq ptr %967, null
  br i1 %968, label %970, label %969

969:                                              ; preds = %965
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %967)
  br label %970

970:                                              ; preds = %965, %969
  %971 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %972 = load ptr, ptr %971, align 8, !tbaa !46
  %973 = icmp eq ptr %972, null
  br i1 %973, label %975, label %974

974:                                              ; preds = %970
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %972)
  br label %975

975:                                              ; preds = %970, %974
  %976 = load ptr, ptr %960, align 8, !tbaa !46
  %977 = icmp eq ptr %976, null
  br i1 %977, label %1248, label %978

978:                                              ; preds = %975
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %976)
  br label %1248

979:                                              ; preds = %48
  %980 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %981 = load ptr, ptr %980, align 8, !tbaa !46
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1248, label %983

983:                                              ; preds = %979
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %981)
  br label %1248

984:                                              ; preds = %48
  %985 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %986 = load ptr, ptr %985, align 8, !tbaa !46
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1248, label %988

988:                                              ; preds = %984
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %986)
  br label %1248

989:                                              ; preds = %48
  %990 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %991 = load ptr, ptr %990, align 8, !tbaa !46
  %992 = icmp eq ptr %991, null
  br i1 %992, label %1248, label %993

993:                                              ; preds = %989
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %991)
  br label %1248

994:                                              ; preds = %48
  %995 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %996 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %997 = load ptr, ptr %996, align 8, !tbaa !46
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1000, label %999

999:                                              ; preds = %994
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %997)
  br label %1000

1000:                                             ; preds = %994, %999
  %1001 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1002 = load ptr, ptr %1001, align 8, !tbaa !46
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %1000
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1002)
  br label %1005

1005:                                             ; preds = %1000, %1004
  %1006 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1007 = load ptr, ptr %1006, align 8, !tbaa !46
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1010, label %1009

1009:                                             ; preds = %1005
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1007)
  br label %1010

1010:                                             ; preds = %1009, %1005
  %1011 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1012 = load ptr, ptr %1011, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1012) #11
  %1013 = load ptr, ptr %995, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1013) #11
  br label %1248

1014:                                             ; preds = %48
  %1015 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1016) #11
  br label %1248

1017:                                             ; preds = %48
  %1018 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1019 = load ptr, ptr %1018, align 8, !tbaa !46
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1248, label %1021

1021:                                             ; preds = %1017
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1019)
  br label %1248

1022:                                             ; preds = %48
  %1023 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1024 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1025 = load ptr, ptr %1024, align 8, !tbaa !46
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1028, label %1027

1027:                                             ; preds = %1022
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1025)
  br label %1028

1028:                                             ; preds = %1022, %1027
  %1029 = load ptr, ptr %1023, align 8, !tbaa !46
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1248, label %1031

1031:                                             ; preds = %1028
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1029)
  br label %1248

1032:                                             ; preds = %48
  %1033 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1034 = load i32, ptr %1033, align 8, !tbaa !46
  switch i32 %1034, label %1035 [
    i32 12, label %1056
    i32 11, label %1056
    i32 10, label %1056
    i32 9, label %1038
    i32 8, label %1056
    i32 7, label %1056
    i32 6, label %1056
    i32 5, label %1056
    i32 4, label %1056
    i32 3, label %1043
    i32 2, label %1048
    i32 1, label %1053
    i32 0, label %1056
  ]

1035:                                             ; preds = %1032
  %1036 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1037 = load ptr, ptr %1036, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1037) #11
  br label %1056

1038:                                             ; preds = %1032
  %1039 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1040 = load ptr, ptr %1039, align 8, !tbaa !46
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1056, label %1042

1042:                                             ; preds = %1038
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1040)
  br label %1056

1043:                                             ; preds = %1032
  %1044 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1045 = load ptr, ptr %1044, align 8, !tbaa !46
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1056, label %1047

1047:                                             ; preds = %1043
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1045) #11
  br label %1056

1048:                                             ; preds = %1032
  %1049 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1050 = load ptr, ptr %1049, align 8, !tbaa !46
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1056, label %1052

1052:                                             ; preds = %1048
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1050) #11
  br label %1056

1053:                                             ; preds = %1032
  %1054 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 2
  %1055 = load ptr, ptr %1054, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1055) #11
  br label %1056

1056:                                             ; preds = %1032, %1032, %1032, %1032, %1032, %1032, %1032, %1032, %1035, %1053, %1032, %1042, %1038, %1047, %1043, %1052, %1048
  %1057 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1058 = load ptr, ptr %1057, align 8, !tbaa !46
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1061, label %1060

1060:                                             ; preds = %1056
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1058)
  br label %1061

1061:                                             ; preds = %1056, %1060
  %1062 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !46
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1066, label %1065

1065:                                             ; preds = %1061
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1063)
  br label %1066

1066:                                             ; preds = %1061, %1065
  %1067 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1068 = load ptr, ptr %1067, align 8, !tbaa !46
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1248, label %1070

1070:                                             ; preds = %1066
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1068)
  br label %1248

1071:                                             ; preds = %48
  %1072 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %1073 = load ptr, ptr %1072, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %1073) #11
  %1074 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !46
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1078, label %1077

1077:                                             ; preds = %1071
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1075)
  br label %1078

1078:                                             ; preds = %1071, %1077
  %1079 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !46
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1083, label %1082

1082:                                             ; preds = %1078
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1080)
  br label %1083

1083:                                             ; preds = %1078, %1082
  %1084 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1085 = load ptr, ptr %1084, align 8, !tbaa !46
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %1088, label %1087

1087:                                             ; preds = %1083
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1085)
  br label %1088

1088:                                             ; preds = %1083, %1087
  %1089 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1090 = load ptr, ptr %1089, align 8, !tbaa !46
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1248, label %1092

1092:                                             ; preds = %1088
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1090)
  br label %1248

1093:                                             ; preds = %48
  %1094 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1095 = load ptr, ptr %1094, align 8, !tbaa !46
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1098, label %1097

1097:                                             ; preds = %1093
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1095)
  br label %1098

1098:                                             ; preds = %1093, %1097
  %1099 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1100 = load ptr, ptr %1099, align 8, !tbaa !46
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1248, label %1102

1102:                                             ; preds = %1098
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1100)
  br label %1248

1103:                                             ; preds = %48
  %1104 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 2
  %1105 = load ptr, ptr %1104, align 8, !tbaa !46
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1108, label %1107

1107:                                             ; preds = %1103
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1105)
  br label %1108

1108:                                             ; preds = %1103, %1107
  %1109 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %1110 = load ptr, ptr %1109, align 8, !tbaa !46
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1113, label %1112

1112:                                             ; preds = %1108
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1110)
  br label %1113

1113:                                             ; preds = %1108, %1112
  %1114 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1115 = load ptr, ptr %1114, align 8, !tbaa !46
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1118, label %1117

1117:                                             ; preds = %1113
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1115)
  br label %1118

1118:                                             ; preds = %1113, %1117
  %1119 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1120 = load ptr, ptr %1119, align 8, !tbaa !46
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1123, label %1122

1122:                                             ; preds = %1118
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1120)
  br label %1123

1123:                                             ; preds = %1118, %1122
  %1124 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1125 = load ptr, ptr %1124, align 8, !tbaa !46
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1128, label %1127

1127:                                             ; preds = %1123
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1125)
  br label %1128

1128:                                             ; preds = %1123, %1127
  %1129 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1130 = load ptr, ptr %1129, align 8, !tbaa !46
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1248, label %1132

1132:                                             ; preds = %1128
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1130)
  br label %1248

1133:                                             ; preds = %48
  %1134 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 2
  %1135 = load ptr, ptr %1134, align 8, !tbaa !46
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1138, label %1137

1137:                                             ; preds = %1133
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1135)
  br label %1138

1138:                                             ; preds = %1133, %1137
  %1139 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !46
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1143, label %1142

1142:                                             ; preds = %1138
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1140)
  br label %1143

1143:                                             ; preds = %1138, %1142
  %1144 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !46
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1148, label %1147

1147:                                             ; preds = %1143
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1145)
  br label %1148

1148:                                             ; preds = %1143, %1147
  %1149 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1150 = load ptr, ptr %1149, align 8, !tbaa !46
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1153, label %1152

1152:                                             ; preds = %1148
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1150)
  br label %1153

1153:                                             ; preds = %1148, %1152
  %1154 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1155 = load ptr, ptr %1154, align 8, !tbaa !46
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1158, label %1157

1157:                                             ; preds = %1153
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1155)
  br label %1158

1158:                                             ; preds = %1153, %1157
  %1159 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1160 = load ptr, ptr %1159, align 8, !tbaa !46
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1248, label %1162

1162:                                             ; preds = %1158
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1160)
  br label %1248

1163:                                             ; preds = %48
  %1164 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %1165 = load ptr, ptr %1164, align 8, !tbaa !46
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1168, label %1167

1167:                                             ; preds = %1163
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1165)
  br label %1168

1168:                                             ; preds = %1163, %1167
  %1169 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !46
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1173, label %1172

1172:                                             ; preds = %1168
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1170)
  br label %1173

1173:                                             ; preds = %1168, %1172
  %1174 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1175 = load ptr, ptr %1174, align 8, !tbaa !46
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1178, label %1177

1177:                                             ; preds = %1173
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1175)
  br label %1178

1178:                                             ; preds = %1173, %1177
  %1179 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1180 = load ptr, ptr %1179, align 8, !tbaa !46
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1183, label %1182

1182:                                             ; preds = %1178
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1180)
  br label %1183

1183:                                             ; preds = %1178, %1182
  %1184 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !46
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1248, label %1187

1187:                                             ; preds = %1183
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1185)
  br label %1248

1188:                                             ; preds = %48
  %1189 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %1190 = load ptr, ptr %1189, align 8, !tbaa !46
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1193, label %1192

1192:                                             ; preds = %1188
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1190)
  br label %1193

1193:                                             ; preds = %1188, %1192
  %1194 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %1195 = load ptr, ptr %1194, align 8, !tbaa !46
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1198, label %1197

1197:                                             ; preds = %1193
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1195)
  br label %1198

1198:                                             ; preds = %1193, %1197
  %1199 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %1200 = load ptr, ptr %1199, align 8, !tbaa !46
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %1203, label %1202

1202:                                             ; preds = %1198
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %1200)
  br label %1203

1203:                                             ; preds = %1198, %1202
  %1204 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %1205 = load ptr, ptr %1204, align 8, !tbaa !46
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1208, label %1207

1207:                                             ; preds = %1203
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1205)
  br label %1208

1208:                                             ; preds = %1203, %1207
  %1209 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1210 = load ptr, ptr %1209, align 8, !tbaa !46
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1248, label %1212

1212:                                             ; preds = %1208
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1210)
  br label %1248

1213:                                             ; preds = %48
  %1214 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1215 = load ptr, ptr %1214, align 8, !tbaa !46
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1248, label %1217

1217:                                             ; preds = %1213
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1215)
  br label %1248

1218:                                             ; preds = %48
  %1219 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1220 = load ptr, ptr %1219, align 8, !tbaa !46
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1248, label %1222

1222:                                             ; preds = %1218
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %1220)
  br label %1248

1223:                                             ; preds = %48
  %1224 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1225 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1226 = load ptr, ptr %1225, align 8, !tbaa !46
  %1227 = icmp eq ptr %1226, null
  br i1 %1227, label %1229, label %1228

1228:                                             ; preds = %1223
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1226)
  br label %1229

1229:                                             ; preds = %1223, %1228
  %1230 = load ptr, ptr %1224, align 8, !tbaa !46
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1248, label %1232

1232:                                             ; preds = %1229
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1230)
  br label %1248

1233:                                             ; preds = %48
  %1234 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1235 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %1236 = load ptr, ptr %1235, align 8, !tbaa !46
  %1237 = icmp eq ptr %1236, null
  br i1 %1237, label %1239, label %1238

1238:                                             ; preds = %1233
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1236)
  br label %1239

1239:                                             ; preds = %1233, %1238
  %1240 = load ptr, ptr %1234, align 8, !tbaa !46
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %1248, label %1242

1242:                                             ; preds = %1239
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %1240)
  br label %1248

1243:                                             ; preds = %48
  %1244 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %1245 = load ptr, ptr %1244, align 8, !tbaa !46
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %1248, label %1247

1247:                                             ; preds = %1243
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %1245) #11
  br label %1248

1248:                                             ; preds = %48, %1243, %1247, %1239, %1242, %1229, %1232, %1218, %1222, %1213, %1217, %1208, %1212, %1183, %1187, %1158, %1162, %1128, %1132, %1098, %1102, %1088, %1092, %1066, %1070, %1028, %1031, %1017, %1021, %989, %993, %984, %988, %979, %983, %975, %978, %955, %958, %940, %943, %929, %933, %924, %928, %920, %923, %910, %913, %899, %903, %891, %895, %886, %890, %881, %885, %876, %880, %872, %875, %861, %865, %857, %860, %846, %850, %818, %821, %803, %806, %793, %796, %783, %786, %772, %776, %768, %771, %758, %761, %748, %751, %738, %741, %728, %731, %718, %721, %708, %711, %698, %701, %688, %691, %678, %681, %668, %671, %658, %661, %647, %651, %643, %646, %633, %636, %623, %626, %613, %616, %603, %606, %593, %596, %583, %586, %573, %576, %563, %566, %552, %556, %547, %551, %542, %546, %537, %541, %533, %536, %523, %526, %513, %516, %503, %506, %493, %496, %483, %486, %473, %476, %463, %466, %453, %456, %443, %446, %433, %436, %423, %426, %413, %416, %403, %406, %393, %396, %383, %386, %373, %376, %363, %366, %353, %356, %343, %346, %332, %336, %327, %331, %322, %326, %317, %321, %312, %316, %307, %311, %302, %306, %297, %301, %292, %296, %287, %291, %282, %286, %277, %281, %272, %276, %267, %271, %262, %266, %257, %261, %252, %256, %247, %251, %242, %246, %237, %241, %232, %236, %228, %231, %213, %216, %197, %201, %193, %196, %183, %186, %168, %171, %158, %161, %147, %151, %143, %146, %133, %136, %123, %126, %112, %116, %107, %111, %102, %106, %98, %101, %88, %91, %78, %81, %67, %71, %62, %66, %58, %61, %1014, %1010, %896, %844
  %1249 = load i32, ptr %49, align 8
  %1250 = and i32 %1249, 65535
  %1251 = zext nneg i32 %1250 to i64
  %1252 = getelementptr inbounds [139 x i8], ptr @rtx_next, i64 0, i64 %1251
  %1253 = load i8, ptr %1252, align 1, !tbaa !46
  %1254 = icmp eq i8 %1253, 0
  br i1 %1254, label %1259, label %1255

1255:                                             ; preds = %1248
  %1256 = zext i8 %1253 to i64
  %1257 = getelementptr inbounds i8, ptr %49, i64 %1256
  %1258 = load ptr, ptr %1257, align 8, !tbaa !35
  br label %1259

1259:                                             ; preds = %1248, %1255
  %1260 = phi ptr [ %1258, %1255 ], [ null, %1248 ]
  %1261 = icmp eq ptr %1260, %21
  br i1 %1261, label %1262, label %48, !llvm.loop !476

1262:                                             ; preds = %1259, %45
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11eh_region_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  %10 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !101
  switch i32 %11, label %25 [
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
  ]

12:                                               ; preds = %9
  br i1 %5, label %13, label %30

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  %15 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  br label %23

16:                                               ; preds = %9
  br i1 %5, label %17, label %30

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %18, ptr noundef %3) #11
  %19 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5, i32 0, i32 1
  br label %23

20:                                               ; preds = %9
  br i1 %5, label %21, label %30

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 5
  br label %23

23:                                               ; preds = %13, %17, %21
  %24 = phi ptr [ %22, %21 ], [ %19, %17 ], [ %15, %13 ]
  tail call void %2(ptr noundef nonnull %24, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %23, %9
  br i1 %5, label %26, label %30

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %27, ptr noundef %3) #11
  %28 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #11
  %29 = getelementptr inbounds %struct.eh_region_d, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %29, ptr noundef %3) #11
  br label %30

30:                                               ; preds = %16, %12, %20, %25, %26
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_constant_descriptor_tree(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24constant_descriptor_tree, i32 noundef 95) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !115
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_24constant_descriptor_tree(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.constant_descriptor_tree, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cgraph_asm_node(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15cgraph_asm_node, i32 noundef 96) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_cgraph_asm_node(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.cgraph_asm_node, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15cgraph_asm_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.cgraph_asm_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_varpool_node(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12varpool_node, i32 noundef 97) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %10, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %36, label %13

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = tail call i32 @gt_pch_note_object(ptr noundef %10, ptr noundef %10, ptr noundef nonnull @gt_pch_p_12varpool_node, i32 noundef 97) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %7, !llvm.loop !477

13:                                               ; preds = %4, %33
  %14 = phi ptr [ %34, %33 ], [ %0, %4 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #11
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !125
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %32, %28
  %34 = load ptr, ptr %19, align 8, !tbaa !121
  %35 = icmp eq ptr %34, %5
  br i1 %35, label %36, label %13, !llvm.loop !478

36:                                               ; preds = %33, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12varpool_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_cgraph_node_set_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_cgraph_node_set_gc, i32 noundef 98) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !128
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_cgraph_node_set_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_cgraph_node_set_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !479

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_22VEC_cgraph_node_set_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !128
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_cgraph_node_set_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !480

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cgraph_node_set_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_19cgraph_node_set_def, i32 noundef 99) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !132
  tail call void @gt_pch_n_P27cgraph_node_set_element_def4htab(ptr noundef %5)
  %6 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_cgraph_node_ptr_gc(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %4, %9, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_19cgraph_node_set_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P27cgraph_node_set_element_def4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P27cgraph_node_set_element_def4htab, i32 noundef 212) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_node_set_element_def(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !481

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P27cgraph_node_set_element_def4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_cgraph_node_ptr_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_cgraph_node_ptr_gc, i32 noundef 101) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !141
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !482

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cgraph_node_set_element_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_27cgraph_node_set_element_def, i32 noundef 100) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !138
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_27cgraph_node_set_element_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cgraph_node(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !483

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %21, %20 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull @gt_pch_p_11cgraph_node, i32 noundef 105) #11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %16, %18 ], [ %14, %13 ]
  br i1 %17, label %22, label %13

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %0, %10 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %130, label %25

25:                                               ; preds = %22, %127
  %26 = phi ptr [ %128, %127 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %27) #11
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !156
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %32)
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !157
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !145
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %42)
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !154
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %47)
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !158
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %52)
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !159
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %57)
  br label %60

60:                                               ; preds = %55, %59
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !160
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %62)
  br label %65

65:                                               ; preds = %60, %64
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 8
  %67 = load ptr, ptr %66, align 8, !tbaa !161
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %67)
  br label %70

70:                                               ; preds = %65, %69
  %71 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !162
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %72)
  br label %75

75:                                               ; preds = %70, %74
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !163
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %77)
  br label %80

80:                                               ; preds = %75, %79
  %81 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !164
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %82)
  br label %85

85:                                               ; preds = %80, %84
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 12
  %87 = load ptr, ptr %86, align 8, !tbaa !165
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %87)
  br label %90

90:                                               ; preds = %85, %89
  %91 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !166
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %92)
  br label %95

95:                                               ; preds = %90, %94
  %96 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 14
  %97 = load ptr, ptr %96, align 8, !tbaa !167
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %97)
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !168
  tail call void @gt_pch_n_P11cgraph_edge4htab(ptr noundef %102)
  %103 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 19, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !169
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %104)
  br label %107

107:                                              ; preds = %100, %106
  %108 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21
  %109 = load ptr, ptr %108, align 8, !tbaa !170
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @gt_pch_nx_VEC_ipa_replace_map_p_gc(ptr noundef nonnull %109)
  br label %112

112:                                              ; preds = %107, %111
  %113 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !171
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %114)
  br label %117

117:                                              ; preds = %112, %116
  %118 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 21, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !172
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %119)
  br label %122

122:                                              ; preds = %117, %121
  %123 = getelementptr inbounds %struct.cgraph_node, ptr %26, i64 0, i32 22, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !173
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %124) #11
  br label %127

127:                                              ; preds = %126, %122
  %128 = load ptr, ptr %41, align 8, !tbaa !145
  %129 = icmp eq ptr %128, %11
  br i1 %129, label %130, label %25, !llvm.loop !484

130:                                              ; preds = %127, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_22VEC_cgraph_node_ptr_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !141
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !485

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cgraph_edge(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !486

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %21, %20 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull @gt_pch_p_11cgraph_edge, i32 noundef 102) #11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %16, %18 ], [ %14, %13 ]
  br i1 %17, label %22, label %13

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %0, %10 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %64, label %25

25:                                               ; preds = %22, %61
  %26 = phi ptr [ %62, %61 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !179
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %28)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !180
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %33)
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !178
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %38)
  br label %41

41:                                               ; preds = %36, %40
  %42 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !175
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %43)
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %48)
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !182
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %53)
  br label %56

56:                                               ; preds = %51, %55
  %57 = getelementptr inbounds %struct.cgraph_edge, ptr %26, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !183
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %58)
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %42, align 8, !tbaa !175
  %63 = icmp eq ptr %62, %11
  br i1 %63, label %64, label %25, !llvm.loop !487

64:                                               ; preds = %61, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11cgraph_edge(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  %12 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_ipa_replace_map_p_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24VEC_ipa_replace_map_p_gc, i32 noundef 103) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !185
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_ipa_replace_map(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !488

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_24VEC_ipa_replace_map_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !185
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !489

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_ipa_replace_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15ipa_replace_map, i32 noundef 104) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.ipa_replace_map, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !191
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15ipa_replace_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.ipa_replace_map, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11cgraph_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #11
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 10
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #11
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #11
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 12
  tail call void %2(ptr noundef nonnull %18, ptr noundef %3) #11
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 13
  tail call void %2(ptr noundef nonnull %19, ptr noundef %3) #11
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 14
  tail call void %2(ptr noundef nonnull %20, ptr noundef %3) #11
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 15
  tail call void %2(ptr noundef nonnull %21, ptr noundef %3) #11
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 19, i32 2
  tail call void %2(ptr noundef nonnull %22, ptr noundef %3) #11
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21
  tail call void %2(ptr noundef nonnull %23, ptr noundef %3) #11
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21, i32 1
  tail call void %2(ptr noundef nonnull %24, ptr noundef %3) #11
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 21, i32 2
  tail call void %2(ptr noundef nonnull %25, ptr noundef %3) #11
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 22, i32 2
  tail call void %2(ptr noundef nonnull %26, ptr noundef %3) #11
  br label %27

27:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P11cgraph_edge4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_edge4htab, i32 noundef 213) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_edge(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !490

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_edge4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_bitmap_head_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15bitmap_head_def, i32 noundef 165) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !193
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_bitmap_obstack(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_basic_block_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18VEC_basic_block_gc, i32 noundef 106) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !197
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !491

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18VEC_basic_block_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !197
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !492

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_basic_block_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !201
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !493

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %21, %20 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull @gt_pch_p_15basic_block_def, i32 noundef 157) #11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %16, %18 ], [ %14, %13 ]
  br i1 %17, label %22, label %13

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %0, %10 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %65, label %25

25:                                               ; preds = %22, %62
  %26 = phi ptr [ %63, %62 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !205
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_VEC_edge_gc(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !206
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_VEC_edge_gc(ptr noundef nonnull %32)
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !207
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !204
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %42)
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !201
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %47)
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 13
  %52 = load i32, ptr %51, align 8, !tbaa !208
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %54, label %58, label %60

58:                                               ; preds = %50
  br i1 %57, label %62, label %59

59:                                               ; preds = %58
  tail call void @gt_pch_nx_gimple_bb_info(ptr noundef nonnull %56)
  br label %62

60:                                               ; preds = %50
  br i1 %57, label %62, label %61

61:                                               ; preds = %60
  tail call void @gt_pch_nx_rtl_bb_info(ptr noundef nonnull %56)
  br label %62

62:                                               ; preds = %60, %61, %58, %59
  %63 = load ptr, ptr %46, align 8, !tbaa !201
  %64 = icmp eq ptr %63, %11
  br i1 %64, label %65, label %25, !llvm.loop !494

65:                                               ; preds = %62, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_gimple_bb_info(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_14gimple_bb_info, i32 noundef 107) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !210
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.gimple_bb_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_14gimple_bb_info(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.gimple_bb_info, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_gimple_seq_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12gimple_seq_d, i32 noundef 160) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %10, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %31, label %13

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.gimple_seq_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !213
  %11 = tail call i32 @gt_pch_note_object(ptr noundef %10, ptr noundef %10, ptr noundef nonnull @gt_pch_p_12gimple_seq_d, i32 noundef 160) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %7, !llvm.loop !495

13:                                               ; preds = %4, %28
  %14 = phi ptr [ %29, %28 ], [ %0, %4 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.gimple_seq_d, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !217
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.gimple_seq_d, ptr %14, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !213
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr %24, align 8, !tbaa !213
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %31, label %13, !llvm.loop !496

31:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_rtl_bb_info(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11rtl_bb_info, i32 noundef 108) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !221
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !223
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11rtl_bb_info(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_edge_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11VEC_edge_gc, i32 noundef 109) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !224
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !497

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11VEC_edge_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !224
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_edge_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !498

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_edge_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8edge_def, i32 noundef 158) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !228
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !230
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %12, %8
  %14 = tail call i32 @current_ir_type() #11
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %15, label %19, label %21

19:                                               ; preds = %13
  br i1 %18, label %23, label %20

20:                                               ; preds = %19
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %17)
  br label %23

21:                                               ; preds = %13
  br i1 %18, label %23, label %22

22:                                               ; preds = %21
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %17)
  br label %23

23:                                               ; preds = %20, %19, %22, %21
  %24 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !231
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #11
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cselib_val_struct(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_17cselib_val_struct, i32 noundef 110) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !232
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !234
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @gt_pch_nx_elt_loc_list(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !235
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %18)
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !236
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %2

25:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17cselib_val_struct(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.cselib_val_struct, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_elt_loc_list(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12elt_loc_list, i32 noundef 111) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !237
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_elt_loc_list(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !239
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.elt_loc_list, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_elt_list(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8elt_list, i32 noundef 129) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !241
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.elt_list, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_cselib_val_struct(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12elt_loc_list(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.elt_loc_list, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.elt_loc_list, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_loop_p_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13VEC_loop_p_gc, i32 noundef 112) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !244
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !499

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_13VEC_loop_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !244
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !500

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_loop(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_4loop, i32 noundef 113) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %10, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %62, label %13

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.loop, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  %11 = tail call i32 @gt_pch_note_object(ptr noundef %10, ptr noundef %10, ptr noundef nonnull @gt_pch_p_4loop, i32 noundef 113) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %7, !llvm.loop !501

13:                                               ; preds = %4, %59
  %14 = phi ptr [ %60, %59 ], [ %0, %4 ]
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !253
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %13, %18
  %20 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %19, %23
  %25 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !255
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_pch_nx_VEC_loop_p_gc(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !256
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !248
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %36)
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !257
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %41) #11
  br label %44

44:                                               ; preds = %39, %43
  %45 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !258
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gt_pch_nx_nb_iter_bound(ptr noundef nonnull %46)
  br label %49

49:                                               ; preds = %44, %48
  %50 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !259
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %51)
  br label %54

54:                                               ; preds = %49, %53
  %55 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !260
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %56) #11
  br label %59

59:                                               ; preds = %58, %54
  %60 = load ptr, ptr %35, align 8, !tbaa !248
  %61 = icmp eq ptr %60, %5
  br i1 %61, label %62, label %13, !llvm.loop !502

62:                                               ; preds = %59, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_4loop(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 17
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 18
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  %15 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 20
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #11
  br label %16

16:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_nb_iter_bound(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13nb_iter_bound, i32 noundef 115) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %0, %1 ], [ %10, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %26, label %13

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.nb_iter_bound, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !262
  %11 = tail call i32 @gt_pch_note_object(ptr noundef %10, ptr noundef %10, ptr noundef nonnull @gt_pch_p_13nb_iter_bound, i32 noundef 115) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %7, !llvm.loop !503

13:                                               ; preds = %4, %23
  %14 = phi ptr [ %24, %23 ], [ %0, %4 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !265
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.nb_iter_bound, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !262
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_nb_iter_bound(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %19, align 8, !tbaa !262
  %25 = icmp eq ptr %24, %5
  br i1 %25, label %26, label %13, !llvm.loop !504

26:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_loop_exit(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi ptr [ %0, %1 ], [ %22, %20 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_9loop_exit, i32 noundef 114) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !267
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !269
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !270
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %17)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.loop_exit, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !271
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %2

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9loop_exit(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.loop_exit, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_13nb_iter_bound(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.nb_iter_bound, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_types_used_by_vars_entry(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24types_used_by_vars_entry, i32 noundef 116) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !272
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !274
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_24types_used_by_vars_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.types_used_by_vars_entry, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_loops(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_5loops, i32 noundef 118) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_loop_p_gc(ptr noundef nonnull %6)
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !277
  tail call void @gt_pch_n_P9loop_exit4htab(ptr noundef %11)
  %12 = getelementptr inbounds %struct.loops, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @gt_pch_nx_loop(ptr noundef nonnull %13)
  br label %16

16:                                               ; preds = %9, %15, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_5loops(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.loops, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9loop_exit4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9loop_exit4htab, i32 noundef 214) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_loop_exit(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !505

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9loop_exit4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_control_flow_graph(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18control_flow_graph, i32 noundef 119) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !280
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !282
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_basic_block_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !283
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_basic_block_gc(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !284
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_VEC_basic_block_gc(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18control_flow_graph(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_eh_status(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9eh_status, i32 noundef 120) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !285
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_region_d(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !287
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_VEC_eh_region_gc(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !288
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_eh_landing_pad_gc(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !289
  tail call void @gt_pch_n_P15throw_stmt_node4htab(ptr noundef %20)
  %21 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !290
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !291
  switch i8 %26, label %38 [
    i8 1, label %27
    i8 0, label %32
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %29)
  br label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.eh_status, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %34, ptr noundef nonnull %34, ptr noundef nonnull @gt_pch_p_12VEC_uchar_gc, i32 noundef 144) #11
  br label %38

38:                                               ; preds = %31, %27, %36, %32, %25, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9eh_status(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  br label %11

11:                                               ; preds = %4, %6
  %12 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !291
  switch i8 %12, label %17 [
    i8 1, label %13
    i8 0, label %14
  ]

13:                                               ; preds = %11
  br i1 %5, label %15, label %17

14:                                               ; preds = %11
  br i1 %5, label %15, label %17

15:                                               ; preds = %14, %13
  %16 = getelementptr inbounds %struct.eh_status, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #11
  br label %17

17:                                               ; preds = %15, %11, %14, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P15throw_stmt_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P15throw_stmt_node4htab, i32 noundef 200) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_throw_stmt_node(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !506

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P15throw_stmt_node4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_tree_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11VEC_tree_gc, i32 noundef 143) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !304
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !507

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_uchar_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12VEC_uchar_gc, i32 noundef 144) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_temp_slot_p_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_18VEC_temp_slot_p_gc, i32 noundef 123) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !308
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_temp_slot(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !508

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18VEC_temp_slot_p_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !308
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_temp_slot_p_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !509

17:                                               ; preds = %14, %4
  ret void
}

declare void @gt_pch_nx_temp_slot(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_gimple_df(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9gimple_df, i32 noundef 125) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !312
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %5)
  %6 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !316
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @gt_pch_nx_VEC_gimple_gc(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !317
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_VEC_tree_gc(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !318
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %17) #11
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 4, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !319
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 5, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !320
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !321
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %32) #11
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !322
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %37)
  %38 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !323
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %39)
  br label %42

42:                                               ; preds = %35, %41
  %43 = getelementptr inbounds %struct.gimple_df, ptr %0, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !324
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @gt_pch_nx_ssa_operand_memory_d(ptr noundef nonnull %44)
  br label %47

47:                                               ; preds = %42, %46, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9gimple_df(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 4, i32 1
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 5, i32 1
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  %12 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  %15 = getelementptr inbounds %struct.gimple_df, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #11
  br label %16

16:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9tree_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_node4htab, i32 noundef 216) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #11
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !510

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_node4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_call_site_record_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_23VEC_call_site_record_gc, i32 noundef 126) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !326
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_call_site_record_d(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !511

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_23VEC_call_site_record_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !326
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_call_site_record_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !512

17:                                               ; preds = %14, %4
  ret void
}

declare void @gt_pch_nx_call_site_record_d(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_sequence_stack(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_14sequence_stack, i32 noundef 128) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !330
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !332
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %2

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_14sequence_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_8elt_list(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.elt_list, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_tree_priority_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17tree_priority_map, i32 noundef 130) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !334
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17tree_priority_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_tree_int_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12tree_int_map, i32 noundef 131) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !337
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12tree_int_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_tree_map(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8tree_map, i32 noundef 132) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !339
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.tree_map, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !341
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_8tree_map(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.tree_map, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_tree_statement_list_node(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_statement_list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !342
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !513

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10, %19
  %14 = phi ptr [ %20, %19 ], [ %0, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !345
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %15, ptr noundef nonnull %15, ptr noundef nonnull @gt_pch_p_24tree_statement_list_node, i32 noundef 134) #11
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %15, %17 ], [ %14, %13 ]
  br i1 %16, label %21, label %13

21:                                               ; preds = %19, %10
  %22 = phi ptr [ %0, %10 ], [ %20, %19 ]
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %42, label %24

24:                                               ; preds = %21, %39
  %25 = phi ptr [ %40, %39 ], [ %22, %21 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !345
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @gt_pch_nx_tree_statement_list_node(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %24, %28
  %30 = getelementptr inbounds %struct.tree_statement_list_node, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !342
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @gt_pch_nx_tree_statement_list_node(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.tree_statement_list_node, ptr %25, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !346
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %36) #11
  br label %39

39:                                               ; preds = %38, %34
  %40 = load ptr, ptr %30, align 8, !tbaa !342
  %41 = icmp eq ptr %40, %11
  br i1 %41, label %42, label %24, !llvm.loop !514

42:                                               ; preds = %39, %21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_24tree_statement_list_node(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_var_ann_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9var_ann_d, i32 noundef 135) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.var_ann_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %6) #11
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9var_ann_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.var_ann_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_varray_head_tag(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_15varray_head_tag, i32 noundef 139) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %105, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !350
  tail call void @gt_pch_n_S(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !352
  switch i32 %8, label %105 [
    i32 20, label %91
    i32 19, label %77
    i32 16, label %63
    i32 15, label %49
    i32 14, label %35
    i32 13, label %21
    i32 12, label %10
    i32 10, label %9
  ]

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3228, ptr noundef nonnull @.str.1) #11
  br label %105

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 8, !tbaa !353
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %105, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = getelementptr inbounds [1 x ptr], ptr %14, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %18) #11
  %19 = add nuw i64 %16, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %105, label %15, !llvm.loop !515

21:                                               ; preds = %4
  %22 = load i64, ptr %0, align 8, !tbaa !353
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %105, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %26

26:                                               ; preds = %24, %32
  %27 = phi i64 [ 0, %24 ], [ %33, %32 ]
  %28 = getelementptr inbounds [1 x ptr], ptr %25, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %29)
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw i64 %27, 1
  %34 = icmp eq i64 %33, %22
  br i1 %34, label %105, label %26, !llvm.loop !516

35:                                               ; preds = %4
  %36 = load i64, ptr %0, align 8, !tbaa !353
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %105, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %40

40:                                               ; preds = %38, %46
  %41 = phi i64 [ 0, %38 ], [ %47, %46 ]
  %42 = getelementptr inbounds [1 x ptr], ptr %39, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void @gt_pch_nx_rtvec_def(ptr noundef nonnull %43)
  br label %46

46:                                               ; preds = %40, %45
  %47 = add nuw i64 %41, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %105, label %40, !llvm.loop !517

49:                                               ; preds = %4
  %50 = load i64, ptr %0, align 8, !tbaa !353
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %105, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %54

54:                                               ; preds = %52, %60
  %55 = phi i64 [ 0, %52 ], [ %61, %60 ]
  %56 = getelementptr inbounds [1 x ptr], ptr %53, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %57) #11
  br label %60

60:                                               ; preds = %54, %59
  %61 = add nuw i64 %55, 1
  %62 = icmp eq i64 %61, %50
  br i1 %62, label %105, label %54, !llvm.loop !518

63:                                               ; preds = %4
  %64 = load i64, ptr %0, align 8, !tbaa !353
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %68

68:                                               ; preds = %66, %74
  %69 = phi i64 [ 0, %66 ], [ %75, %74 ]
  %70 = getelementptr inbounds [1 x ptr], ptr %67, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %71)
  br label %74

74:                                               ; preds = %68, %73
  %75 = add nuw i64 %69, 1
  %76 = icmp eq i64 %75, %64
  br i1 %76, label %105, label %68, !llvm.loop !519

77:                                               ; preds = %4
  %78 = load i64, ptr %0, align 8, !tbaa !353
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %82

82:                                               ; preds = %80, %88
  %83 = phi i64 [ 0, %80 ], [ %89, %88 ]
  %84 = getelementptr inbounds [1 x ptr], ptr %81, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @gt_pch_nx_elt_list(ptr noundef nonnull %85)
  br label %88

88:                                               ; preds = %82, %87
  %89 = add nuw i64 %83, 1
  %90 = icmp eq i64 %89, %78
  br i1 %90, label %105, label %82, !llvm.loop !520

91:                                               ; preds = %4
  %92 = load i64, ptr %0, align 8, !tbaa !353
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.varray_head_tag, ptr %0, i64 0, i32 4
  br label %96

96:                                               ; preds = %94, %102
  %97 = phi i64 [ 0, %94 ], [ %103, %102 ]
  %98 = getelementptr inbounds [1 x ptr], ptr %95, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @gt_pch_nx_edge_def(ptr noundef nonnull %99)
  br label %102

102:                                              ; preds = %96, %101
  %103 = add nuw i64 %97, 1
  %104 = icmp eq i64 %103, %92
  br i1 %104, label %105, label %96, !llvm.loop !521

105:                                              ; preds = %15, %32, %46, %60, %74, %88, %102, %10, %21, %35, %49, %63, %77, %91, %9, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15varray_head_tag(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !352
  switch i32 %10, label %96 [
    i32 20, label %84
    i32 19, label %72
    i32 16, label %60
    i32 15, label %48
    i32 14, label %36
    i32 13, label %24
    i32 12, label %12
    i32 10, label %11
  ]

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5758, ptr noundef nonnull @.str.1) #11
  br label %96

12:                                               ; preds = %8
  %13 = load i64, ptr %1, align 8, !tbaa !353
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %96, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi i64 [ 0, %15 ], [ %22, %21 ]
  br i1 %5, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1 x ptr], ptr %16, i64 0, i64 %18
  tail call void %2(ptr noundef nonnull %20, ptr noundef %3) #11
  br label %21

21:                                               ; preds = %17, %19
  %22 = add nuw i64 %18, 1
  %23 = icmp eq i64 %22, %13
  br i1 %23, label %96, label %17, !llvm.loop !522

24:                                               ; preds = %8
  %25 = load i64, ptr %1, align 8, !tbaa !353
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %96, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %29

29:                                               ; preds = %27, %33
  %30 = phi i64 [ 0, %27 ], [ %34, %33 ]
  br i1 %5, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds [1 x ptr], ptr %28, i64 0, i64 %30
  tail call void %2(ptr noundef nonnull %32, ptr noundef %3) #11
  br label %33

33:                                               ; preds = %29, %31
  %34 = add nuw i64 %30, 1
  %35 = icmp eq i64 %34, %25
  br i1 %35, label %96, label %29, !llvm.loop !523

36:                                               ; preds = %8
  %37 = load i64, ptr %1, align 8, !tbaa !353
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %41

41:                                               ; preds = %39, %45
  %42 = phi i64 [ 0, %39 ], [ %46, %45 ]
  br i1 %5, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds [1 x ptr], ptr %40, i64 0, i64 %42
  tail call void %2(ptr noundef nonnull %44, ptr noundef %3) #11
  br label %45

45:                                               ; preds = %41, %43
  %46 = add nuw i64 %42, 1
  %47 = icmp eq i64 %46, %37
  br i1 %47, label %96, label %41, !llvm.loop !524

48:                                               ; preds = %8
  %49 = load i64, ptr %1, align 8, !tbaa !353
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %53

53:                                               ; preds = %51, %57
  %54 = phi i64 [ 0, %51 ], [ %58, %57 ]
  br i1 %5, label %55, label %57

55:                                               ; preds = %53
  %56 = getelementptr inbounds [1 x ptr], ptr %52, i64 0, i64 %54
  tail call void %2(ptr noundef nonnull %56, ptr noundef %3) #11
  br label %57

57:                                               ; preds = %53, %55
  %58 = add nuw i64 %54, 1
  %59 = icmp eq i64 %58, %49
  br i1 %59, label %96, label %53, !llvm.loop !525

60:                                               ; preds = %8
  %61 = load i64, ptr %1, align 8, !tbaa !353
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %96, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %65

65:                                               ; preds = %63, %69
  %66 = phi i64 [ 0, %63 ], [ %70, %69 ]
  br i1 %5, label %67, label %69

67:                                               ; preds = %65
  %68 = getelementptr inbounds [1 x ptr], ptr %64, i64 0, i64 %66
  tail call void %2(ptr noundef nonnull %68, ptr noundef %3) #11
  br label %69

69:                                               ; preds = %65, %67
  %70 = add nuw i64 %66, 1
  %71 = icmp eq i64 %70, %61
  br i1 %71, label %96, label %65, !llvm.loop !526

72:                                               ; preds = %8
  %73 = load i64, ptr %1, align 8, !tbaa !353
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %77

77:                                               ; preds = %75, %81
  %78 = phi i64 [ 0, %75 ], [ %82, %81 ]
  br i1 %5, label %79, label %81

79:                                               ; preds = %77
  %80 = getelementptr inbounds [1 x ptr], ptr %76, i64 0, i64 %78
  tail call void %2(ptr noundef nonnull %80, ptr noundef %3) #11
  br label %81

81:                                               ; preds = %77, %79
  %82 = add nuw i64 %78, 1
  %83 = icmp eq i64 %82, %73
  br i1 %83, label %96, label %77, !llvm.loop !527

84:                                               ; preds = %8
  %85 = load i64, ptr %1, align 8, !tbaa !353
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.varray_head_tag, ptr %1, i64 0, i32 4
  br label %89

89:                                               ; preds = %87, %93
  %90 = phi i64 [ 0, %87 ], [ %94, %93 ]
  br i1 %5, label %91, label %93

91:                                               ; preds = %89
  %92 = getelementptr inbounds [1 x ptr], ptr %88, i64 0, i64 %90
  tail call void %2(ptr noundef nonnull %92, ptr noundef %3) #11
  br label %93

93:                                               ; preds = %89, %91
  %94 = add nuw i64 %90, 1
  %95 = icmp eq i64 %94, %85
  br i1 %95, label %96, label %89, !llvm.loop !528

96:                                               ; preds = %21, %33, %45, %57, %69, %81, %93, %12, %24, %36, %48, %60, %72, %84, %8, %11
  ret void
}

declare void @gt_pch_n_S(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_rtvec_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9rtvec_def, i32 noundef 163) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !361
  %6 = sext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !529

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_ptr_info_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12ptr_info_def, i32 noundef 140) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !364
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %6)
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12ptr_info_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_constructor_elt_gc(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_22VEC_constructor_elt_gc, i32 noundef 141) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !366
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !369
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !371
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #11
  br label %19

19:                                               ; preds = %14, %18
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %8, !llvm.loop !530

22:                                               ; preds = %19, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_22VEC_constructor_elt_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !366
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi i64 [ 0, %8 ], [ %16, %15 ]
  br i1 %9, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  br label %15

15:                                               ; preds = %10, %12
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %10, !llvm.loop !531

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_alias_pair_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17VEC_alias_pair_gc, i32 noundef 142) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !373
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %4, %19
  %9 = phi i64 [ %20, %19 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !376
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #11
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !378
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #11
  br label %19

19:                                               ; preds = %14, %18
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %8, !llvm.loop !532

22:                                               ; preds = %19, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17VEC_alias_pair_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !373
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %15
  %11 = phi i64 [ 0, %8 ], [ %16, %15 ]
  br i1 %9, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %1, i64 0, i32 2, i64 %11, i32 1
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  br label %15

15:                                               ; preds = %10, %12
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %10, !llvm.loop !533

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11VEC_tree_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !304
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !534

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_p_12VEC_uchar_gc(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #10 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_function(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8function, i32 noundef 145) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !380
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_eh_status(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_control_flow_graph(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !383
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_gimple_seq_d(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !384
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_gimple_df(ptr noundef nonnull %20)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !385
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_loops(ptr noundef nonnull %25)
  br label %28

28:                                               ; preds = %23, %27
  %29 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !386
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %30) #11
  br label %33

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !387
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %35) #11
  br label %38

38:                                               ; preds = %33, %37
  %39 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !388
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %40) #11
  br label %43

43:                                               ; preds = %38, %42
  %44 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !389
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %45) #11
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !390
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @gt_pch_nx_machine_function(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %48, %52
  %54 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !391
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @gt_pch_nx_language_function(ptr noundef nonnull %55) #11
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !392
  tail call void @gt_pch_n_P9tree_node4htab(ptr noundef %60)
  br label %61

61:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_8function(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  %12 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %12, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 8
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 9
  tail call void %2(ptr noundef nonnull %14, ptr noundef %3) #11
  %15 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 10
  tail call void %2(ptr noundef nonnull %15, ptr noundef %3) #11
  %16 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 11
  tail call void %2(ptr noundef nonnull %16, ptr noundef %3) #11
  %17 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 12
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_machine_function(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_16machine_function, i32 noundef 155) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !393
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_stack_local_entry(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !396
  tail call void @gt_pch_n_S(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.machine_function, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !397
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %8, %14, %1
  ret void
}

declare void @gt_pch_nx_language_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_fixed_value(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_11fixed_value, i32 noundef 147) #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_p_11fixed_value(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #10 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_real_value(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10real_value, i32 noundef 148) #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @gt_pch_p_10real_value(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #10 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_VEC_rtx_gc(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_10VEC_rtx_gc, i32 noundef 149) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8, !tbaa !398
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %14
  %9 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %8, !llvm.loop !535

17:                                               ; preds = %14, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_10VEC_rtx_gc(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !398
  %6 = zext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.VEC_rtx_base, ptr %1, i64 0, i32 2, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !536

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_object_block(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_12object_block, i32 noundef 150) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !402
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_section(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !404
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_VEC_rtx_gc(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.object_block, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_VEC_rtx_gc(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12object_block(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.object_block, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.object_block, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_section(ptr noundef %0) #9 !prof !34 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %16 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_7section, i32 noundef 161) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8, !tbaa !46
  %8 = and i32 %7, 6291456
  switch i32 %8, label %20 [
    i32 2097152, label %9
    i32 0, label %16
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.named_section, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.unnamed_section, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %2

20:                                               ; preds = %15, %9, %16, %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_reg_attrs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9reg_attrs, i32 noundef 151) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !112
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9reg_attrs(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_mem_attrs(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9mem_attrs, i32 noundef 152) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !406
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !408
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !409
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9mem_attrs(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_bitmap_obstack(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_14bitmap_obstack, i32 noundef 153) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !410
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.bitmap_obstack, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !413
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_bitmap_head_def(ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %8, %12, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_14bitmap_obstack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.bitmap_obstack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_bitmap_element_def(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %10 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_18bitmap_element_def, i32 noundef 154) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !414
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_pch_nx_bitmap_element_def(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !416
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %2

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18bitmap_element_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_16machine_function(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.machine_function, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.machine_function, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_stack_local_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15basic_block_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  tail call void %2(ptr noundef nonnull %11, ptr noundef %3) #11
  br label %12

12:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_8edge_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = tail call i32 @current_ir_type() #11
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @current_ir_type() #11
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_gimple_seq_node_d(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !417
  %8 = tail call i32 @gt_pch_note_object(ptr noundef %7, ptr noundef %7, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !537

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %21, %20 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !420
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @gt_pch_note_object(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull @gt_pch_p_17gimple_seq_node_d, i32 noundef 159) #11
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %16, %18 ], [ %14, %13 ]
  br i1 %17, label %22, label %13

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %0, %10 ], [ %21, %20 ]
  %24 = icmp eq ptr %23, %11
  br i1 %24, label %43, label %25

25:                                               ; preds = %22, %40
  %26 = phi ptr [ %41, %40 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !421
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_pch_nx_gimple_statement_d(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !420
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %32)
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !417
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @gt_pch_nx_gimple_seq_node_d(ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %39, %35
  %41 = load ptr, ptr %36, align 8, !tbaa !417
  %42 = icmp eq ptr %41, %11
  br i1 %42, label %43, label %25, !llvm.loop !538

43:                                               ; preds = %40, %22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_17gimple_seq_node_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_12gimple_seq_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.gimple_seq_d, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_7section(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !46
  %6 = and i32 %5, 6291456
  switch i32 %6, label %18 [
    i32 2097152, label %7
    i32 0, label %12
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, %0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.named_section, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.named_section, ptr %1, i64 0, i32 2
  br label %16

12:                                               ; preds = %4
  %13 = icmp eq ptr %1, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.unnamed_section, ptr %1, i64 0, i32 3
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi ptr [ %15, %14 ], [ %11, %9 ]
  tail call void %2(ptr noundef nonnull %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %16, %7, %4, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_18gimple_statement_d(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  switch i32 %9, label %252 [
    i32 0, label %10
    i32 1, label %15
    i32 2, label %32
    i32 3, label %37
    i32 13, label %54
    i32 5, label %60
    i32 8, label %68
    i32 9, label %75
    i32 10, label %82
    i32 6, label %88
    i32 11, label %106
    i32 7, label %111
    i32 12, label %118
    i32 4, label %124
    i32 14, label %142
    i32 15, label %149
    i32 16, label %194
    i32 17, label %203
    i32 18, label %215
    i32 19, label %223
    i32 20, label %230
    i32 21, label %237
    i32 22, label %244
  ]

10:                                               ; preds = %4
  %11 = icmp eq ptr %1, %0
  br i1 %11, label %12, label %252

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %250

15:                                               ; preds = %4
  %16 = icmp eq ptr %1, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %18, ptr noundef %3) #11
  %19 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %19, ptr noundef %3) #11
  br label %20

20:                                               ; preds = %15, %17
  %21 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = zext i32 %22 to i64
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %252, label %25

25:                                               ; preds = %20, %29
  %26 = phi i64 [ %30, %29 ], [ 0, %20 ]
  br i1 %16, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.gimple_statement_with_ops, ptr %1, i64 0, i32 1, i64 %26
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #11
  br label %29

29:                                               ; preds = %25, %27
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, %23
  br i1 %31, label %252, label %25, !llvm.loop !539

32:                                               ; preds = %4
  %33 = icmp eq ptr %1, %0
  br i1 %33, label %34, label %252

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %35, ptr noundef %3) #11
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %250

37:                                               ; preds = %4
  %38 = icmp eq ptr %1, %0
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %40, ptr noundef %3) #11
  %41 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %41, ptr noundef %3) #11
  br label %42

42:                                               ; preds = %37, %39
  %43 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !46
  %45 = zext i32 %44 to i64
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %252, label %47

47:                                               ; preds = %42, %51
  %48 = phi i64 [ %52, %51 ], [ 0, %42 ]
  br i1 %38, label %49, label %51

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.gimple_statement_with_memory_ops, ptr %1, i64 0, i32 1, i64 %48
  tail call void %2(ptr noundef nonnull %50, ptr noundef %3) #11
  br label %51

51:                                               ; preds = %47, %49
  %52 = add nuw nsw i64 %48, 1
  %53 = icmp eq i64 %52, %45
  br i1 %53, label %252, label %47, !llvm.loop !540

54:                                               ; preds = %4
  %55 = icmp eq ptr %1, %0
  br i1 %55, label %56, label %252

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %57, ptr noundef %3) #11
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %58, ptr noundef %3) #11
  %59 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  br label %250

60:                                               ; preds = %4
  %61 = icmp eq ptr %1, %0
  br i1 %61, label %62, label %252

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %63, ptr noundef %3) #11
  %64 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %64, ptr noundef %3) #11
  %65 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %65, ptr noundef %3) #11
  %66 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %66, ptr noundef %3) #11
  %67 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 3
  br label %250

68:                                               ; preds = %4
  %69 = icmp eq ptr %1, %0
  br i1 %69, label %70, label %252

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %71, ptr noundef %3) #11
  %72 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %72, ptr noundef %3) #11
  %73 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %73, ptr noundef %3) #11
  %74 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 2
  br label %250

75:                                               ; preds = %4
  %76 = icmp eq ptr %1, %0
  br i1 %76, label %77, label %252

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %78, ptr noundef %3) #11
  %79 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %79, ptr noundef %3) #11
  %80 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %80, ptr noundef %3) #11
  %81 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 2
  br label %250

82:                                               ; preds = %4
  %83 = icmp eq ptr %1, %0
  br i1 %83, label %84, label %252

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %85, ptr noundef %3) #11
  %86 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %86, ptr noundef %3) #11
  %87 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %1, i64 0, i32 1
  br label %250

88:                                               ; preds = %4
  %89 = icmp eq ptr %1, %0
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %91, ptr noundef %3) #11
  %92 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %92, ptr noundef %3) #11
  %93 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %93, ptr noundef %3) #11
  br label %94

94:                                               ; preds = %88, %90
  %95 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !46
  %97 = zext i32 %96 to i64
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %252, label %99

99:                                               ; preds = %94, %103
  %100 = phi i64 [ %104, %103 ], [ 0, %94 ]
  br i1 %89, label %101, label %103

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %100, i32 1
  tail call void %2(ptr noundef nonnull %102, ptr noundef %3) #11
  br label %103

103:                                              ; preds = %99, %101
  %104 = add nuw nsw i64 %100, 1
  %105 = icmp eq i64 %104, %97
  br i1 %105, label %252, label %99, !llvm.loop !541

106:                                              ; preds = %4
  %107 = icmp eq ptr %1, %0
  br i1 %107, label %108, label %252

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %109, ptr noundef %3) #11
  %110 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  br label %250

111:                                              ; preds = %4
  %112 = icmp eq ptr %1, %0
  br i1 %112, label %113, label %252

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %114, ptr noundef %3) #11
  %115 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %115, ptr noundef %3) #11
  %116 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %116, ptr noundef %3) #11
  %117 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 2
  br label %250

118:                                              ; preds = %4
  %119 = icmp eq ptr %1, %0
  br i1 %119, label %120, label %252

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %121, ptr noundef %3) #11
  %122 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %122, ptr noundef %3) #11
  %123 = getelementptr inbounds %struct.gimple_statement_wce, ptr %1, i64 0, i32 1
  br label %250

124:                                              ; preds = %4
  %125 = icmp eq ptr %1, %0
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %127, ptr noundef %3) #11
  %128 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %128, ptr noundef %3) #11
  %129 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %129, ptr noundef %3) #11
  br label %130

130:                                              ; preds = %124, %126
  %131 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !46
  %133 = zext i32 %132 to i64
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %252, label %135

135:                                              ; preds = %130, %139
  %136 = phi i64 [ %140, %139 ], [ 0, %130 ]
  br i1 %125, label %137, label %139

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 6, i64 %136
  tail call void %2(ptr noundef nonnull %138, ptr noundef %3) #11
  br label %139

139:                                              ; preds = %135, %137
  %140 = add nuw nsw i64 %136, 1
  %141 = icmp eq i64 %140, %133
  br i1 %141, label %252, label %135, !llvm.loop !542

142:                                              ; preds = %4
  %143 = icmp eq ptr %1, %0
  br i1 %143, label %144, label %252

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %145, ptr noundef %3) #11
  %146 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %146, ptr noundef %3) #11
  %147 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %147, ptr noundef %3) #11
  %148 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %1, i64 0, i32 1
  br label %250

149:                                              ; preds = %4
  %150 = icmp eq ptr %1, %0
  br i1 %150, label %151, label %156

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %152, ptr noundef %3) #11
  %153 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %153, ptr noundef %3) #11
  %154 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %154, ptr noundef %3) #11
  %155 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %155, ptr noundef %3) #11
  br label %156

156:                                              ; preds = %149, %151
  %157 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = icmp eq ptr %158, null
  br i1 %159, label %191, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 2
  %162 = load i64, ptr %161, align 8, !tbaa !46
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %160, %185
  %165 = phi i64 [ %186, %185 ], [ 0, %160 ]
  %166 = load ptr, ptr %157, align 8, !tbaa !46
  %167 = icmp eq ptr %166, %0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %166, i64 %165, i32 1
  tail call void %2(ptr noundef nonnull %169, ptr noundef %3) #11
  br label %170

170:                                              ; preds = %168, %164
  %171 = load ptr, ptr %157, align 8, !tbaa !46
  %172 = icmp eq ptr %171, %0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %171, i64 %165, i32 2
  tail call void %2(ptr noundef nonnull %174, ptr noundef %3) #11
  br label %175

175:                                              ; preds = %173, %170
  %176 = load ptr, ptr %157, align 8, !tbaa !46
  %177 = icmp eq ptr %176, %0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %176, i64 %165, i32 3
  tail call void %2(ptr noundef nonnull %179, ptr noundef %3) #11
  br label %180

180:                                              ; preds = %178, %175
  %181 = load ptr, ptr %157, align 8, !tbaa !46
  %182 = icmp eq ptr %181, %0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %181, i64 %165, i32 4
  tail call void %2(ptr noundef nonnull %184, ptr noundef %3) #11
  br label %185

185:                                              ; preds = %180, %183
  %186 = add i64 %165, 1
  %187 = load i64, ptr %161, align 8, !tbaa !46
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %164, !llvm.loop !543

189:                                              ; preds = %185, %160
  br i1 %150, label %190, label %252

190:                                              ; preds = %189
  tail call void %2(ptr noundef nonnull %157, ptr noundef %3) #11
  br label %191

191:                                              ; preds = %190, %156
  br i1 %150, label %192, label %252

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 4
  br label %250

194:                                              ; preds = %4
  %195 = icmp eq ptr %1, %0
  br i1 %195, label %196, label %252

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %197, ptr noundef %3) #11
  %198 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %198, ptr noundef %3) #11
  %199 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %199, ptr noundef %3) #11
  %200 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %200, ptr noundef %3) #11
  %201 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %201, ptr noundef %3) #11
  %202 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  br label %250

203:                                              ; preds = %4
  %204 = icmp eq ptr %1, %0
  br i1 %204, label %205, label %252

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %206, ptr noundef %3) #11
  %207 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %207, ptr noundef %3) #11
  %208 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %208, ptr noundef %3) #11
  %209 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %209, ptr noundef %3) #11
  %210 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %210, ptr noundef %3) #11
  %211 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %211, ptr noundef %3) #11
  %212 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %212, ptr noundef %3) #11
  %213 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %213, ptr noundef %3) #11
  %214 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 3
  br label %250

215:                                              ; preds = %4
  %216 = icmp eq ptr %1, %0
  br i1 %216, label %217, label %252

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %218, ptr noundef %3) #11
  %219 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %219, ptr noundef %3) #11
  %220 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %220, ptr noundef %3) #11
  %221 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %221, ptr noundef %3) #11
  %222 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 2
  br label %250

223:                                              ; preds = %4
  %224 = icmp eq ptr %1, %0
  br i1 %224, label %225, label %252

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %226, ptr noundef %3) #11
  %227 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %227, ptr noundef %3) #11
  %228 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %228, ptr noundef %3) #11
  %229 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1, i64 0, i32 1
  br label %250

230:                                              ; preds = %4
  %231 = icmp eq ptr %1, %0
  br i1 %231, label %232, label %252

232:                                              ; preds = %230
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %233, ptr noundef %3) #11
  %234 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %234, ptr noundef %3) #11
  %235 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %235, ptr noundef %3) #11
  %236 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 2
  br label %250

237:                                              ; preds = %4
  %238 = icmp eq ptr %1, %0
  br i1 %238, label %239, label %252

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %240, ptr noundef %3) #11
  %241 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %241, ptr noundef %3) #11
  %242 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %242, ptr noundef %3) #11
  %243 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 2
  br label %250

244:                                              ; preds = %4
  %245 = icmp eq ptr %1, %0
  br i1 %245, label %246, label %252

246:                                              ; preds = %244
  %247 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %247, ptr noundef %3) #11
  %248 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  tail call void %2(ptr noundef nonnull %248, ptr noundef %3) #11
  %249 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %1, i64 0, i32 1
  br label %250

250:                                              ; preds = %12, %34, %56, %62, %70, %77, %84, %108, %113, %120, %144, %192, %196, %205, %217, %225, %232, %239, %246
  %251 = phi ptr [ %249, %246 ], [ %243, %239 ], [ %236, %232 ], [ %229, %225 ], [ %222, %217 ], [ %214, %205 ], [ %202, %196 ], [ %193, %192 ], [ %148, %144 ], [ %123, %120 ], [ %117, %113 ], [ %110, %108 ], [ %87, %84 ], [ %81, %77 ], [ %74, %70 ], [ %67, %62 ], [ %59, %56 ], [ %36, %34 ], [ %14, %12 ]
  tail call void %2(ptr noundef nonnull %251, ptr noundef %3) #11
  br label %252

252:                                              ; preds = %139, %103, %51, %29, %250, %130, %94, %42, %20, %244, %237, %230, %223, %215, %203, %194, %189, %142, %118, %111, %106, %82, %75, %68, %60, %54, %32, %10, %4, %191
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9rtvec_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8, !tbaa !361
  %6 = sext i32 %5 to i64
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, %0
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi i64 [ 0, %8 ], [ %15, %14 ]
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %11
  tail call void %2(ptr noundef nonnull %13, ptr noundef %3) #11
  br label %14

14:                                               ; preds = %10, %12
  %15 = add i64 %11, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %10, !llvm.loop !544

17:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_7rtx_def(ptr noundef readnone %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %653 [
    i16 138, label %7
    i16 137, label %12
    i16 136, label %16
    i16 135, label %20
    i16 134, label %25
    i16 133, label %30
    i16 132, label %35
    i16 131, label %39
    i16 130, label %43
    i16 129, label %47
    i16 128, label %52
    i16 127, label %57
    i16 126, label %62
    i16 125, label %66
    i16 124, label %71
    i16 123, label %76
    i16 122, label %82
    i16 121, label %87
    i16 120, label %91
    i16 119, label %97
    i16 118, label %103
    i16 117, label %107
    i16 116, label %111
    i16 115, label %115
    i16 114, label %119
    i16 113, label %123
    i16 112, label %127
    i16 111, label %131
    i16 110, label %135
    i16 109, label %139
    i16 108, label %143
    i16 107, label %147
    i16 106, label %151
    i16 105, label %155
    i16 104, label %159
    i16 103, label %163
    i16 102, label %167
    i16 101, label %171
    i16 100, label %175
    i16 99, label %179
    i16 98, label %183
    i16 97, label %187
    i16 96, label %192
    i16 95, label %197
    i16 94, label %202
    i16 93, label %207
    i16 92, label %212
    i16 91, label %217
    i16 90, label %222
    i16 89, label %227
    i16 88, label %232
    i16 87, label %237
    i16 86, label %242
    i16 85, label %247
    i16 84, label %252
    i16 83, label %257
    i16 82, label %262
    i16 81, label %267
    i16 80, label %272
    i16 79, label %277
    i16 78, label %282
    i16 77, label %287
    i16 76, label %291
    i16 75, label %295
    i16 74, label %299
    i16 73, label %303
    i16 72, label %308
    i16 71, label %313
    i16 70, label %318
    i16 69, label %323
    i16 68, label %328
    i16 67, label %333
    i16 66, label %338
    i16 65, label %343
    i16 64, label %348
    i16 63, label %352
    i16 62, label %357
    i16 61, label %362
    i16 60, label %367
    i16 59, label %372
    i16 58, label %377
    i16 57, label %382
    i16 56, label %387
    i16 55, label %392
    i16 54, label %397
    i16 53, label %402
    i16 52, label %407
    i16 51, label %412
    i16 50, label %416
    i16 49, label %421
    i16 48, label %426
    i16 47, label %431
    i16 2, label %647
    i16 45, label %437
    i16 44, label %450
    i16 43, label %454
    i16 42, label %459
    i16 41, label %463
    i16 40, label %468
    i16 39, label %472
    i16 3, label %642
    i16 37, label %476
    i16 4, label %637
    i16 35, label %480
    i16 34, label %484
    i16 33, label %488
    i16 5, label %633
    i16 6, label %629
    i16 7, label %621
    i16 29, label %492
    i16 8, label %613
    i16 9, label %604
    i16 26, label %497
    i16 25, label %502
    i16 24, label %506
    i16 23, label %510
    i16 22, label %515
    i16 21, label %521
    i16 20, label %528
    i16 19, label %532
    i16 18, label %536
    i16 17, label %540
    i16 16, label %548
    i16 15, label %552
    i16 14, label %556
    i16 13, label %561
    i16 12, label %582
    i16 11, label %590
    i16 10, label %595
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, %0
  br i1 %8, label %9, label %653

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #11
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

12:                                               ; preds = %4
  %13 = icmp eq ptr %1, %0
  br i1 %13, label %14, label %653

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

16:                                               ; preds = %4
  %17 = icmp eq ptr %1, %0
  br i1 %17, label %18, label %653

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

20:                                               ; preds = %4
  %21 = icmp eq ptr %1, %0
  br i1 %21, label %22, label %653

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %23, ptr noundef %3) #11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

25:                                               ; preds = %4
  %26 = icmp eq ptr %1, %0
  br i1 %26, label %27, label %653

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %28, ptr noundef %3) #11
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

30:                                               ; preds = %4
  %31 = icmp eq ptr %1, %0
  br i1 %31, label %32, label %653

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %33, ptr noundef %3) #11
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

35:                                               ; preds = %4
  %36 = icmp eq ptr %1, %0
  br i1 %36, label %37, label %653

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

39:                                               ; preds = %4
  %40 = icmp eq ptr %1, %0
  br i1 %40, label %41, label %653

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

43:                                               ; preds = %4
  %44 = icmp eq ptr %1, %0
  br i1 %44, label %45, label %653

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

47:                                               ; preds = %4
  %48 = icmp eq ptr %1, %0
  br i1 %48, label %49, label %653

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %50, ptr noundef %3) #11
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

52:                                               ; preds = %4
  %53 = icmp eq ptr %1, %0
  br i1 %53, label %54, label %653

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %55, ptr noundef %3) #11
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

57:                                               ; preds = %4
  %58 = icmp eq ptr %1, %0
  br i1 %58, label %59, label %653

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %60, ptr noundef %3) #11
  %61 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

62:                                               ; preds = %4
  %63 = icmp eq ptr %1, %0
  br i1 %63, label %64, label %653

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

66:                                               ; preds = %4
  %67 = icmp eq ptr %1, %0
  br i1 %67, label %68, label %653

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %69, ptr noundef %3) #11
  %70 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

71:                                               ; preds = %4
  %72 = icmp eq ptr %1, %0
  br i1 %72, label %73, label %653

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %74, ptr noundef %3) #11
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

76:                                               ; preds = %4
  %77 = icmp eq ptr %1, %0
  br i1 %77, label %78, label %653

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %79, ptr noundef %3) #11
  %80 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %80, ptr noundef %3) #11
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

82:                                               ; preds = %4
  %83 = icmp eq ptr %1, %0
  br i1 %83, label %84, label %653

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %85, ptr noundef %3) #11
  %86 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

87:                                               ; preds = %4
  %88 = icmp eq ptr %1, %0
  br i1 %88, label %89, label %653

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

91:                                               ; preds = %4
  %92 = icmp eq ptr %1, %0
  br i1 %92, label %93, label %653

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %94, ptr noundef %3) #11
  %95 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %95, ptr noundef %3) #11
  %96 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

97:                                               ; preds = %4
  %98 = icmp eq ptr %1, %0
  br i1 %98, label %99, label %653

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %100, ptr noundef %3) #11
  %101 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %101, ptr noundef %3) #11
  %102 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

103:                                              ; preds = %4
  %104 = icmp eq ptr %1, %0
  br i1 %104, label %105, label %653

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

107:                                              ; preds = %4
  %108 = icmp eq ptr %1, %0
  br i1 %108, label %109, label %653

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

111:                                              ; preds = %4
  %112 = icmp eq ptr %1, %0
  br i1 %112, label %113, label %653

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

115:                                              ; preds = %4
  %116 = icmp eq ptr %1, %0
  br i1 %116, label %117, label %653

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

119:                                              ; preds = %4
  %120 = icmp eq ptr %1, %0
  br i1 %120, label %121, label %653

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

123:                                              ; preds = %4
  %124 = icmp eq ptr %1, %0
  br i1 %124, label %125, label %653

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

127:                                              ; preds = %4
  %128 = icmp eq ptr %1, %0
  br i1 %128, label %129, label %653

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

131:                                              ; preds = %4
  %132 = icmp eq ptr %1, %0
  br i1 %132, label %133, label %653

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

135:                                              ; preds = %4
  %136 = icmp eq ptr %1, %0
  br i1 %136, label %137, label %653

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

139:                                              ; preds = %4
  %140 = icmp eq ptr %1, %0
  br i1 %140, label %141, label %653

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

143:                                              ; preds = %4
  %144 = icmp eq ptr %1, %0
  br i1 %144, label %145, label %653

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

147:                                              ; preds = %4
  %148 = icmp eq ptr %1, %0
  br i1 %148, label %149, label %653

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

151:                                              ; preds = %4
  %152 = icmp eq ptr %1, %0
  br i1 %152, label %153, label %653

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

155:                                              ; preds = %4
  %156 = icmp eq ptr %1, %0
  br i1 %156, label %157, label %653

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

159:                                              ; preds = %4
  %160 = icmp eq ptr %1, %0
  br i1 %160, label %161, label %653

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

163:                                              ; preds = %4
  %164 = icmp eq ptr %1, %0
  br i1 %164, label %165, label %653

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

167:                                              ; preds = %4
  %168 = icmp eq ptr %1, %0
  br i1 %168, label %169, label %653

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

171:                                              ; preds = %4
  %172 = icmp eq ptr %1, %0
  br i1 %172, label %173, label %653

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

175:                                              ; preds = %4
  %176 = icmp eq ptr %1, %0
  br i1 %176, label %177, label %653

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

179:                                              ; preds = %4
  %180 = icmp eq ptr %1, %0
  br i1 %180, label %181, label %653

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

183:                                              ; preds = %4
  %184 = icmp eq ptr %1, %0
  br i1 %184, label %185, label %653

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

187:                                              ; preds = %4
  %188 = icmp eq ptr %1, %0
  br i1 %188, label %189, label %653

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %190, ptr noundef %3) #11
  %191 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

192:                                              ; preds = %4
  %193 = icmp eq ptr %1, %0
  br i1 %193, label %194, label %653

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %195, ptr noundef %3) #11
  %196 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

197:                                              ; preds = %4
  %198 = icmp eq ptr %1, %0
  br i1 %198, label %199, label %653

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %200, ptr noundef %3) #11
  %201 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

202:                                              ; preds = %4
  %203 = icmp eq ptr %1, %0
  br i1 %203, label %204, label %653

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %205, ptr noundef %3) #11
  %206 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

207:                                              ; preds = %4
  %208 = icmp eq ptr %1, %0
  br i1 %208, label %209, label %653

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %210, ptr noundef %3) #11
  %211 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

212:                                              ; preds = %4
  %213 = icmp eq ptr %1, %0
  br i1 %213, label %214, label %653

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %215, ptr noundef %3) #11
  %216 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

217:                                              ; preds = %4
  %218 = icmp eq ptr %1, %0
  br i1 %218, label %219, label %653

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %220, ptr noundef %3) #11
  %221 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

222:                                              ; preds = %4
  %223 = icmp eq ptr %1, %0
  br i1 %223, label %224, label %653

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %225, ptr noundef %3) #11
  %226 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

227:                                              ; preds = %4
  %228 = icmp eq ptr %1, %0
  br i1 %228, label %229, label %653

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %230, ptr noundef %3) #11
  %231 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

232:                                              ; preds = %4
  %233 = icmp eq ptr %1, %0
  br i1 %233, label %234, label %653

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %235, ptr noundef %3) #11
  %236 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

237:                                              ; preds = %4
  %238 = icmp eq ptr %1, %0
  br i1 %238, label %239, label %653

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %240, ptr noundef %3) #11
  %241 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

242:                                              ; preds = %4
  %243 = icmp eq ptr %1, %0
  br i1 %243, label %244, label %653

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %245, ptr noundef %3) #11
  %246 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

247:                                              ; preds = %4
  %248 = icmp eq ptr %1, %0
  br i1 %248, label %249, label %653

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %250, ptr noundef %3) #11
  %251 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

252:                                              ; preds = %4
  %253 = icmp eq ptr %1, %0
  br i1 %253, label %254, label %653

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %255, ptr noundef %3) #11
  %256 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

257:                                              ; preds = %4
  %258 = icmp eq ptr %1, %0
  br i1 %258, label %259, label %653

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %260, ptr noundef %3) #11
  %261 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

262:                                              ; preds = %4
  %263 = icmp eq ptr %1, %0
  br i1 %263, label %264, label %653

264:                                              ; preds = %262
  %265 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %265, ptr noundef %3) #11
  %266 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

267:                                              ; preds = %4
  %268 = icmp eq ptr %1, %0
  br i1 %268, label %269, label %653

269:                                              ; preds = %267
  %270 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %270, ptr noundef %3) #11
  %271 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

272:                                              ; preds = %4
  %273 = icmp eq ptr %1, %0
  br i1 %273, label %274, label %653

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %275, ptr noundef %3) #11
  %276 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

277:                                              ; preds = %4
  %278 = icmp eq ptr %1, %0
  br i1 %278, label %279, label %653

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %280, ptr noundef %3) #11
  %281 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

282:                                              ; preds = %4
  %283 = icmp eq ptr %1, %0
  br i1 %283, label %284, label %653

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %285, ptr noundef %3) #11
  %286 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

287:                                              ; preds = %4
  %288 = icmp eq ptr %1, %0
  br i1 %288, label %289, label %653

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

291:                                              ; preds = %4
  %292 = icmp eq ptr %1, %0
  br i1 %292, label %293, label %653

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

295:                                              ; preds = %4
  %296 = icmp eq ptr %1, %0
  br i1 %296, label %297, label %653

297:                                              ; preds = %295
  %298 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

299:                                              ; preds = %4
  %300 = icmp eq ptr %1, %0
  br i1 %300, label %301, label %653

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

303:                                              ; preds = %4
  %304 = icmp eq ptr %1, %0
  br i1 %304, label %305, label %653

305:                                              ; preds = %303
  %306 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %306, ptr noundef %3) #11
  %307 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

308:                                              ; preds = %4
  %309 = icmp eq ptr %1, %0
  br i1 %309, label %310, label %653

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %311, ptr noundef %3) #11
  %312 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

313:                                              ; preds = %4
  %314 = icmp eq ptr %1, %0
  br i1 %314, label %315, label %653

315:                                              ; preds = %313
  %316 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %316, ptr noundef %3) #11
  %317 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

318:                                              ; preds = %4
  %319 = icmp eq ptr %1, %0
  br i1 %319, label %320, label %653

320:                                              ; preds = %318
  %321 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %321, ptr noundef %3) #11
  %322 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

323:                                              ; preds = %4
  %324 = icmp eq ptr %1, %0
  br i1 %324, label %325, label %653

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %326, ptr noundef %3) #11
  %327 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

328:                                              ; preds = %4
  %329 = icmp eq ptr %1, %0
  br i1 %329, label %330, label %653

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %331, ptr noundef %3) #11
  %332 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

333:                                              ; preds = %4
  %334 = icmp eq ptr %1, %0
  br i1 %334, label %335, label %653

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %336, ptr noundef %3) #11
  %337 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

338:                                              ; preds = %4
  %339 = icmp eq ptr %1, %0
  br i1 %339, label %340, label %653

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %341, ptr noundef %3) #11
  %342 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

343:                                              ; preds = %4
  %344 = icmp eq ptr %1, %0
  br i1 %344, label %345, label %653

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %346, ptr noundef %3) #11
  %347 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

348:                                              ; preds = %4
  %349 = icmp eq ptr %1, %0
  br i1 %349, label %350, label %653

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

352:                                              ; preds = %4
  %353 = icmp eq ptr %1, %0
  br i1 %353, label %354, label %653

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %355, ptr noundef %3) #11
  %356 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

357:                                              ; preds = %4
  %358 = icmp eq ptr %1, %0
  br i1 %358, label %359, label %653

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %360, ptr noundef %3) #11
  %361 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

362:                                              ; preds = %4
  %363 = icmp eq ptr %1, %0
  br i1 %363, label %364, label %653

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %365, ptr noundef %3) #11
  %366 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

367:                                              ; preds = %4
  %368 = icmp eq ptr %1, %0
  br i1 %368, label %369, label %653

369:                                              ; preds = %367
  %370 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %370, ptr noundef %3) #11
  %371 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

372:                                              ; preds = %4
  %373 = icmp eq ptr %1, %0
  br i1 %373, label %374, label %653

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %375, ptr noundef %3) #11
  %376 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

377:                                              ; preds = %4
  %378 = icmp eq ptr %1, %0
  br i1 %378, label %379, label %653

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %380, ptr noundef %3) #11
  %381 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

382:                                              ; preds = %4
  %383 = icmp eq ptr %1, %0
  br i1 %383, label %384, label %653

384:                                              ; preds = %382
  %385 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %385, ptr noundef %3) #11
  %386 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

387:                                              ; preds = %4
  %388 = icmp eq ptr %1, %0
  br i1 %388, label %389, label %653

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %390, ptr noundef %3) #11
  %391 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

392:                                              ; preds = %4
  %393 = icmp eq ptr %1, %0
  br i1 %393, label %394, label %653

394:                                              ; preds = %392
  %395 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %395, ptr noundef %3) #11
  %396 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

397:                                              ; preds = %4
  %398 = icmp eq ptr %1, %0
  br i1 %398, label %399, label %653

399:                                              ; preds = %397
  %400 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %400, ptr noundef %3) #11
  %401 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

402:                                              ; preds = %4
  %403 = icmp eq ptr %1, %0
  br i1 %403, label %404, label %653

404:                                              ; preds = %402
  %405 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %405, ptr noundef %3) #11
  %406 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

407:                                              ; preds = %4
  %408 = icmp eq ptr %1, %0
  br i1 %408, label %409, label %653

409:                                              ; preds = %407
  %410 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %410, ptr noundef %3) #11
  %411 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

412:                                              ; preds = %4
  %413 = icmp eq ptr %1, %0
  br i1 %413, label %414, label %653

414:                                              ; preds = %412
  %415 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

416:                                              ; preds = %4
  %417 = icmp eq ptr %1, %0
  br i1 %417, label %418, label %653

418:                                              ; preds = %416
  %419 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %419, ptr noundef %3) #11
  %420 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

421:                                              ; preds = %4
  %422 = icmp eq ptr %1, %0
  br i1 %422, label %423, label %653

423:                                              ; preds = %421
  %424 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %424, ptr noundef %3) #11
  %425 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

426:                                              ; preds = %4
  %427 = icmp eq ptr %1, %0
  br i1 %427, label %428, label %653

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %429, ptr noundef %3) #11
  %430 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

431:                                              ; preds = %4
  %432 = icmp eq ptr %1, %0
  br i1 %432, label %433, label %653

433:                                              ; preds = %431
  %434 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %434, ptr noundef %3) #11
  %435 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %435, ptr noundef %3) #11
  %436 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

437:                                              ; preds = %4
  %438 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %439 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %440 = load i32, ptr %439, align 8, !tbaa !46
  %441 = and i32 %440, 128
  %442 = icmp ne i32 %441, 0
  %443 = icmp eq ptr %1, %0
  %444 = and i1 %443, %442
  br i1 %444, label %445, label %447

445:                                              ; preds = %437
  %446 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %446, ptr noundef %3) #11
  br label %447

447:                                              ; preds = %437, %445
  br i1 %443, label %448, label %653

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %449, ptr noundef %3) #11
  br label %651

450:                                              ; preds = %4
  %451 = icmp eq ptr %1, %0
  br i1 %451, label %452, label %653

452:                                              ; preds = %450
  %453 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

454:                                              ; preds = %4
  %455 = icmp eq ptr %1, %0
  br i1 %455, label %456, label %653

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %457, ptr noundef %3) #11
  %458 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

459:                                              ; preds = %4
  %460 = icmp eq ptr %1, %0
  br i1 %460, label %461, label %653

461:                                              ; preds = %459
  %462 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

463:                                              ; preds = %4
  %464 = icmp eq ptr %1, %0
  br i1 %464, label %465, label %653

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %466, ptr noundef %3) #11
  %467 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

468:                                              ; preds = %4
  %469 = icmp eq ptr %1, %0
  br i1 %469, label %470, label %653

470:                                              ; preds = %468
  %471 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

472:                                              ; preds = %4
  %473 = icmp eq ptr %1, %0
  br i1 %473, label %474, label %653

474:                                              ; preds = %472
  %475 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

476:                                              ; preds = %4
  %477 = icmp eq ptr %1, %0
  br i1 %477, label %478, label %653

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %651

480:                                              ; preds = %4
  %481 = icmp eq ptr %1, %0
  br i1 %481, label %482, label %653

482:                                              ; preds = %480
  %483 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

484:                                              ; preds = %4
  %485 = icmp eq ptr %1, %0
  br i1 %485, label %486, label %653

486:                                              ; preds = %484
  %487 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

488:                                              ; preds = %4
  %489 = icmp eq ptr %1, %0
  br i1 %489, label %490, label %653

490:                                              ; preds = %488
  %491 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

492:                                              ; preds = %4
  %493 = icmp eq ptr %1, %0
  br i1 %493, label %494, label %653

494:                                              ; preds = %492
  %495 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %495, ptr noundef %3) #11
  %496 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

497:                                              ; preds = %4
  %498 = icmp eq ptr %1, %0
  br i1 %498, label %499, label %653

499:                                              ; preds = %497
  %500 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %500, ptr noundef %3) #11
  %501 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

502:                                              ; preds = %4
  %503 = icmp eq ptr %1, %0
  br i1 %503, label %504, label %653

504:                                              ; preds = %502
  %505 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

506:                                              ; preds = %4
  %507 = icmp eq ptr %1, %0
  br i1 %507, label %508, label %653

508:                                              ; preds = %506
  %509 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

510:                                              ; preds = %4
  %511 = icmp eq ptr %1, %0
  br i1 %511, label %512, label %653

512:                                              ; preds = %510
  %513 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %513, ptr noundef %3) #11
  %514 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

515:                                              ; preds = %4
  %516 = icmp eq ptr %1, %0
  br i1 %516, label %517, label %653

517:                                              ; preds = %515
  %518 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %518, ptr noundef %3) #11
  %519 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %519, ptr noundef %3) #11
  %520 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

521:                                              ; preds = %4
  %522 = icmp eq ptr %1, %0
  br i1 %522, label %523, label %653

523:                                              ; preds = %521
  %524 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %524, ptr noundef %3) #11
  %525 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %525, ptr noundef %3) #11
  %526 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %526, ptr noundef %3) #11
  %527 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

528:                                              ; preds = %4
  %529 = icmp eq ptr %1, %0
  br i1 %529, label %530, label %653

530:                                              ; preds = %528
  %531 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

532:                                              ; preds = %4
  %533 = icmp eq ptr %1, %0
  br i1 %533, label %534, label %653

534:                                              ; preds = %532
  %535 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

536:                                              ; preds = %4
  %537 = icmp eq ptr %1, %0
  br i1 %537, label %538, label %653

538:                                              ; preds = %536
  %539 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

540:                                              ; preds = %4
  %541 = icmp eq ptr %1, %0
  br i1 %541, label %542, label %653

542:                                              ; preds = %540
  %543 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %543, ptr noundef %3) #11
  %544 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  tail call void %2(ptr noundef nonnull %544, ptr noundef %3) #11
  %545 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %545, ptr noundef %3) #11
  %546 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %546, ptr noundef %3) #11
  %547 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

548:                                              ; preds = %4
  %549 = icmp eq ptr %1, %0
  br i1 %549, label %550, label %653

550:                                              ; preds = %548
  %551 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

552:                                              ; preds = %4
  %553 = icmp eq ptr %1, %0
  br i1 %553, label %554, label %653

554:                                              ; preds = %552
  %555 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

556:                                              ; preds = %4
  %557 = icmp eq ptr %1, %0
  br i1 %557, label %558, label %653

558:                                              ; preds = %556
  %559 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %559, ptr noundef %3) #11
  %560 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

561:                                              ; preds = %4
  %562 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %563 = load i32, ptr %562, align 8, !tbaa !46
  switch i32 %563, label %564 [
    i32 12, label %576
    i32 11, label %576
    i32 10, label %576
    i32 9, label %566
    i32 8, label %576
    i32 7, label %576
    i32 6, label %576
    i32 5, label %576
    i32 4, label %576
    i32 3, label %568
    i32 2, label %570
    i32 1, label %572
    i32 0, label %576
  ]

564:                                              ; preds = %561
  %565 = icmp eq ptr %1, %0
  br i1 %565, label %574, label %576

566:                                              ; preds = %561
  %567 = icmp eq ptr %1, %0
  br i1 %567, label %574, label %576

568:                                              ; preds = %561
  %569 = icmp eq ptr %1, %0
  br i1 %569, label %574, label %576

570:                                              ; preds = %561
  %571 = icmp eq ptr %1, %0
  br i1 %571, label %574, label %576

572:                                              ; preds = %561
  %573 = icmp eq ptr %1, %0
  br i1 %573, label %574, label %576

574:                                              ; preds = %572, %570, %568, %566, %564
  %575 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  tail call void %2(ptr noundef nonnull %575, ptr noundef %3) #11
  br label %576

576:                                              ; preds = %574, %561, %561, %561, %561, %561, %561, %561, %561, %572, %570, %568, %566, %564, %561
  %577 = icmp eq ptr %1, %0
  br i1 %577, label %578, label %653

578:                                              ; preds = %576
  %579 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %579, ptr noundef %3) #11
  %580 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %580, ptr noundef %3) #11
  %581 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

582:                                              ; preds = %4
  %583 = icmp eq ptr %1, %0
  br i1 %583, label %584, label %653

584:                                              ; preds = %582
  %585 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %585, ptr noundef %3) #11
  %586 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %586, ptr noundef %3) #11
  %587 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %587, ptr noundef %3) #11
  %588 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %588, ptr noundef %3) #11
  %589 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

590:                                              ; preds = %4
  %591 = icmp eq ptr %1, %0
  br i1 %591, label %592, label %653

592:                                              ; preds = %590
  %593 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %593, ptr noundef %3) #11
  %594 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

595:                                              ; preds = %4
  %596 = icmp eq ptr %1, %0
  br i1 %596, label %597, label %653

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %598, ptr noundef %3) #11
  %599 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %599, ptr noundef %3) #11
  %600 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %600, ptr noundef %3) #11
  %601 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %601, ptr noundef %3) #11
  %602 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %602, ptr noundef %3) #11
  %603 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

604:                                              ; preds = %4
  %605 = icmp eq ptr %1, %0
  br i1 %605, label %606, label %653

606:                                              ; preds = %604
  %607 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %607, ptr noundef %3) #11
  %608 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %608, ptr noundef %3) #11
  %609 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %609, ptr noundef %3) #11
  %610 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %610, ptr noundef %3) #11
  %611 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %611, ptr noundef %3) #11
  %612 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

613:                                              ; preds = %4
  %614 = icmp eq ptr %1, %0
  br i1 %614, label %615, label %653

615:                                              ; preds = %613
  %616 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %616, ptr noundef %3) #11
  %617 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %617, ptr noundef %3) #11
  %618 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %618, ptr noundef %3) #11
  %619 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %619, ptr noundef %3) #11
  %620 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

621:                                              ; preds = %4
  %622 = icmp eq ptr %1, %0
  br i1 %622, label %623, label %653

623:                                              ; preds = %621
  %624 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %624, ptr noundef %3) #11
  %625 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  tail call void %2(ptr noundef nonnull %625, ptr noundef %3) #11
  %626 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %626, ptr noundef %3) #11
  %627 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call void %2(ptr noundef nonnull %627, ptr noundef %3) #11
  %628 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %651

629:                                              ; preds = %4
  %630 = icmp eq ptr %1, %0
  br i1 %630, label %631, label %653

631:                                              ; preds = %629
  %632 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

633:                                              ; preds = %4
  %634 = icmp eq ptr %1, %0
  br i1 %634, label %635, label %653

635:                                              ; preds = %633
  %636 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

637:                                              ; preds = %4
  %638 = icmp eq ptr %1, %0
  br i1 %638, label %639, label %653

639:                                              ; preds = %637
  %640 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %640, ptr noundef %3) #11
  %641 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

642:                                              ; preds = %4
  %643 = icmp eq ptr %1, %0
  br i1 %643, label %644, label %653

644:                                              ; preds = %642
  %645 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void %2(ptr noundef nonnull %645, ptr noundef %3) #11
  %646 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

647:                                              ; preds = %4
  %648 = icmp eq ptr %1, %0
  br i1 %648, label %649, label %653

649:                                              ; preds = %647
  %650 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %651

651:                                              ; preds = %9, %14, %18, %22, %27, %32, %37, %41, %45, %49, %54, %59, %64, %68, %73, %78, %84, %89, %93, %99, %105, %109, %113, %117, %121, %125, %129, %133, %137, %141, %145, %149, %153, %157, %161, %165, %169, %173, %177, %181, %185, %189, %194, %199, %204, %209, %214, %219, %224, %229, %234, %239, %244, %249, %254, %259, %264, %269, %274, %279, %284, %289, %293, %297, %301, %305, %310, %315, %320, %325, %330, %335, %340, %345, %350, %354, %359, %364, %369, %374, %379, %384, %389, %394, %399, %404, %409, %414, %418, %423, %428, %433, %448, %452, %456, %461, %465, %470, %474, %478, %482, %486, %490, %494, %499, %504, %508, %512, %517, %523, %530, %534, %538, %542, %550, %554, %558, %578, %584, %592, %597, %606, %615, %623, %631, %635, %639, %644, %649
  %652 = phi ptr [ %650, %649 ], [ %646, %644 ], [ %641, %639 ], [ %636, %635 ], [ %632, %631 ], [ %628, %623 ], [ %620, %615 ], [ %612, %606 ], [ %603, %597 ], [ %594, %592 ], [ %589, %584 ], [ %581, %578 ], [ %560, %558 ], [ %555, %554 ], [ %551, %550 ], [ %547, %542 ], [ %539, %538 ], [ %535, %534 ], [ %531, %530 ], [ %527, %523 ], [ %520, %517 ], [ %514, %512 ], [ %509, %508 ], [ %505, %504 ], [ %501, %499 ], [ %496, %494 ], [ %491, %490 ], [ %487, %486 ], [ %483, %482 ], [ %479, %478 ], [ %475, %474 ], [ %471, %470 ], [ %467, %465 ], [ %462, %461 ], [ %458, %456 ], [ %453, %452 ], [ %438, %448 ], [ %436, %433 ], [ %430, %428 ], [ %425, %423 ], [ %420, %418 ], [ %415, %414 ], [ %411, %409 ], [ %406, %404 ], [ %401, %399 ], [ %396, %394 ], [ %391, %389 ], [ %386, %384 ], [ %381, %379 ], [ %376, %374 ], [ %371, %369 ], [ %366, %364 ], [ %361, %359 ], [ %356, %354 ], [ %351, %350 ], [ %347, %345 ], [ %342, %340 ], [ %337, %335 ], [ %332, %330 ], [ %327, %325 ], [ %322, %320 ], [ %317, %315 ], [ %312, %310 ], [ %307, %305 ], [ %302, %301 ], [ %298, %297 ], [ %294, %293 ], [ %290, %289 ], [ %286, %284 ], [ %281, %279 ], [ %276, %274 ], [ %271, %269 ], [ %266, %264 ], [ %261, %259 ], [ %256, %254 ], [ %251, %249 ], [ %246, %244 ], [ %241, %239 ], [ %236, %234 ], [ %231, %229 ], [ %226, %224 ], [ %221, %219 ], [ %216, %214 ], [ %211, %209 ], [ %206, %204 ], [ %201, %199 ], [ %196, %194 ], [ %191, %189 ], [ %186, %185 ], [ %182, %181 ], [ %178, %177 ], [ %174, %173 ], [ %170, %169 ], [ %166, %165 ], [ %162, %161 ], [ %158, %157 ], [ %154, %153 ], [ %150, %149 ], [ %146, %145 ], [ %142, %141 ], [ %138, %137 ], [ %134, %133 ], [ %130, %129 ], [ %126, %125 ], [ %122, %121 ], [ %118, %117 ], [ %114, %113 ], [ %110, %109 ], [ %106, %105 ], [ %102, %99 ], [ %96, %93 ], [ %90, %89 ], [ %86, %84 ], [ %81, %78 ], [ %75, %73 ], [ %70, %68 ], [ %65, %64 ], [ %61, %59 ], [ %56, %54 ], [ %51, %49 ], [ %46, %45 ], [ %42, %41 ], [ %38, %37 ], [ %34, %32 ], [ %29, %27 ], [ %24, %22 ], [ %19, %18 ], [ %15, %14 ], [ %11, %9 ]
  tail call void %2(ptr noundef nonnull %652, ptr noundef %3) #11
  br label %653

653:                                              ; preds = %447, %651, %642, %637, %621, %613, %604, %595, %590, %582, %576, %556, %540, %521, %515, %510, %497, %492, %463, %454, %431, %426, %421, %416, %407, %402, %397, %392, %387, %382, %377, %372, %367, %362, %357, %352, %343, %338, %333, %328, %323, %318, %313, %308, %303, %282, %277, %272, %267, %262, %257, %252, %247, %242, %237, %232, %227, %222, %217, %212, %207, %202, %197, %192, %187, %97, %91, %82, %76, %71, %66, %57, %52, %47, %30, %25, %20, %7, %4, %647, %633, %629, %552, %548, %536, %532, %528, %506, %502, %488, %484, %480, %476, %472, %468, %459, %450, %412, %348, %299, %295, %291, %287, %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %123, %119, %115, %111, %107, %103, %87, %62, %43, %39, %35, %16, %12
  ret void
}

declare void @gt_pch_nx_constant_descriptor_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_15bitmap_head_def(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.bitmap_head_def, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_answer(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_6answer, i32 noundef 167) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_answer(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !425
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %8, %31
  %14 = phi i64 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14
  %16 = tail call i32 @cpp_token_val_index(ptr noundef nonnull %15) #11
  switch i32 %16, label %31 [
    i32 0, label %17
    i32 1, label %23
    i32 2, label %28
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %19, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %22) #11
  br label %31

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_cpp_token(ptr noundef nonnull %25)
  br label %31

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.answer, ptr %0, i64 0, i32 2, i64 %14, i32 3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %30) #11
  br label %31

31:                                               ; preds = %17, %21, %28, %27, %23, %13
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %34, label %13, !llvm.loop !545

34:                                               ; preds = %31, %8, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_6answer(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !425
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %8, %35
  %14 = phi i64 [ %36, %35 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14
  %16 = call i32 @cpp_token_val_index(ptr noundef nonnull %15) #11
  switch i32 %16, label %35 [
    i32 0, label %17
    i32 1, label %29
    i32 2, label %32
  ]

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %18 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds i8, ptr %19, i64 -24
  %22 = select i1 %20, ptr null, ptr %21
  store ptr %22, ptr %5, align 8, !tbaa !35
  br i1 %6, label %23, label %24

23:                                               ; preds = %17
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %24

24:                                               ; preds = %23, %17
  %25 = load ptr, ptr %5, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.tree_identifier, ptr %25, i64 0, i32 1
  %28 = select i1 %26, ptr null, ptr %27
  store ptr %28, ptr %18, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %35

29:                                               ; preds = %13
  br i1 %6, label %30, label %35

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3
  call void %2(ptr noundef nonnull %31, ptr noundef %3) #11
  br label %35

32:                                               ; preds = %13
  br i1 %6, label %33, label %35

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.answer, ptr %1, i64 0, i32 2, i64 %14, i32 3, i32 0, i32 1
  call void %2(ptr noundef nonnull %34, ptr noundef %3) #11
  br label %35

35:                                               ; preds = %24, %30, %29, %33, %32, %13
  %36 = add nuw nsw i64 %14, 1
  %37 = icmp eq i64 %36, %11
  br i1 %37, label %38, label %13, !llvm.loop !546

38:                                               ; preds = %35, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cpp_token(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %16, %14 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_9cpp_token, i32 noundef 169) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @cpp_token_val_index(ptr noundef %3) #11
  switch i32 %7, label %21 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %18
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %10, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %2

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cpp_token, ptr %3, i64 0, i32 3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %8, %12, %18, %14, %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_cpp_macro(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 168) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %71, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !427
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !429
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %19
  %12 = phi i64 [ %20, %19 ], [ 0, %7 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !427
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %15, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %18) #11
  br label %19

19:                                               ; preds = %17, %11
  %20 = add i64 %12, 1
  %21 = load i16, ptr %8, align 8, !tbaa !429
  %22 = zext i16 %21 to i64
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %11, !llvm.loop !547

24:                                               ; preds = %19, %7
  %25 = load ptr, ptr %0, align 8, !tbaa !427
  %26 = tail call i32 @gt_pch_note_object(ptr noundef %25, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 217) #11
  br label %27

27:                                               ; preds = %24, %4
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  br i1 %31, label %34, label %70

34:                                               ; preds = %27
  %35 = icmp eq ptr %33, null
  br i1 %35, label %71, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !431
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %36, %62
  %41 = phi i64 [ %63, %62 ], [ 0, %36 ]
  %42 = load ptr, ptr %32, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.cpp_token, ptr %42, i64 %41
  %44 = tail call i32 @cpp_token_val_index(ptr noundef %43) #11
  switch i32 %44, label %62 [
    i32 0, label %45
    i32 1, label %52
    i32 2, label %58
  ]

45:                                               ; preds = %40
  %46 = load ptr, ptr %32, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.cpp_token, ptr %46, i64 %41, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %48, i64 -24
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %51) #11
  br label %62

52:                                               ; preds = %40
  %53 = load ptr, ptr %32, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.cpp_token, ptr %53, i64 %41, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  tail call void @gt_pch_nx_cpp_token(ptr noundef nonnull %55)
  br label %62

58:                                               ; preds = %40
  %59 = load ptr, ptr %32, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.cpp_token, ptr %59, i64 %41, i32 3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  tail call void @gt_pch_n_S(ptr noundef %61) #11
  br label %62

62:                                               ; preds = %45, %50, %58, %57, %52, %40
  %63 = add i64 %41, 1
  %64 = load i32, ptr %37, align 4, !tbaa !431
  %65 = zext i32 %64 to i64
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %40, !llvm.loop !548

67:                                               ; preds = %62, %36
  %68 = load ptr, ptr %32, align 8, !tbaa !46
  %69 = tail call i32 @gt_pch_note_object(ptr noundef %68, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9cpp_macro, i32 noundef 217) #11
  br label %71

70:                                               ; preds = %27
  tail call void @gt_pch_n_S(ptr noundef %33) #11
  br label %71

71:                                               ; preds = %70, %67, %34, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9cpp_macro(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !427
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !429
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %9, %23
  %14 = phi i64 [ %30, %23 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %15 = load ptr, ptr %1, align 8, !tbaa !427
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds i8, ptr %17, i64 -24
  %20 = select i1 %18, ptr null, ptr %19
  store ptr %20, ptr %5, align 8, !tbaa !35
  %21 = icmp eq ptr %15, %0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %23

23:                                               ; preds = %22, %13
  %24 = load ptr, ptr %5, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %27 = select i1 %25, ptr null, ptr %26
  %28 = load ptr, ptr %1, align 8, !tbaa !427
  %29 = getelementptr inbounds ptr, ptr %28, i64 %14
  store ptr %27, ptr %29, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %30 = add i64 %14, 1
  %31 = load i16, ptr %10, align 8, !tbaa !429
  %32 = zext i16 %31 to i64
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %13, !llvm.loop !549

34:                                               ; preds = %23, %9
  %35 = icmp eq ptr %1, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call void %2(ptr noundef nonnull %1, ptr noundef %3) #11
  br label %37

37:                                               ; preds = %34, %36, %4
  %38 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %94, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !431
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %46, %81
  %51 = phi i64 [ %82, %81 ], [ 0, %46 ]
  %52 = load ptr, ptr %43, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.cpp_token, ptr %52, i64 %51
  %54 = call i32 @cpp_token_val_index(ptr noundef %53) #11
  switch i32 %54, label %81 [
    i32 0, label %55
    i32 1, label %71
    i32 2, label %76
  ]

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %56 = load ptr, ptr %43, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.cpp_token, ptr %56, i64 %51, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  %60 = getelementptr inbounds i8, ptr %58, i64 -24
  %61 = select i1 %59, ptr null, ptr %60
  store ptr %61, ptr %6, align 8, !tbaa !35
  %62 = icmp eq ptr %56, %0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  call void %2(ptr noundef nonnull %6, ptr noundef %3) #11
  br label %64

64:                                               ; preds = %63, %55
  %65 = load ptr, ptr %6, align 8
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.tree_identifier, ptr %65, i64 0, i32 1
  %68 = select i1 %66, ptr null, ptr %67
  %69 = load ptr, ptr %43, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.cpp_token, ptr %69, i64 %51, i32 3
  store ptr %68, ptr %70, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %81

71:                                               ; preds = %50
  %72 = load ptr, ptr %43, align 8, !tbaa !46
  %73 = icmp eq ptr %72, %0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.cpp_token, ptr %72, i64 %51, i32 3
  call void %2(ptr noundef nonnull %75, ptr noundef %3) #11
  br label %81

76:                                               ; preds = %50
  %77 = load ptr, ptr %43, align 8, !tbaa !46
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.cpp_token, ptr %77, i64 %51, i32 3, i32 0, i32 1
  call void %2(ptr noundef nonnull %80, ptr noundef %3) #11
  br label %81

81:                                               ; preds = %64, %74, %71, %79, %76, %50
  %82 = add i64 %51, 1
  %83 = load i32, ptr %47, align 4, !tbaa !431
  %84 = zext i32 %83 to i64
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %50, !llvm.loop !550

86:                                               ; preds = %81, %46
  %87 = icmp eq ptr %1, %0
  br i1 %87, label %92, label %94

88:                                               ; preds = %37
  %89 = icmp eq ptr %1, %0
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  br label %92

92:                                               ; preds = %86, %90
  %93 = phi ptr [ %91, %90 ], [ %43, %86 ]
  call void %2(ptr noundef nonnull %93, ptr noundef %3) #11
  br label %94

94:                                               ; preds = %92, %86, %88, %42
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9cpp_token(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = tail call i32 @cpp_token_val_index(ptr noundef %1) #11
  switch i32 %6, label %28 [
    i32 0, label %7
    i32 1, label %20
    i32 2, label %24
  ]

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %8 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds i8, ptr %9, i64 -24
  %12 = select i1 %10, ptr null, ptr %11
  store ptr %12, ptr %5, align 8, !tbaa !35
  %13 = icmp eq ptr %1, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %15

15:                                               ; preds = %14, %7
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.tree_identifier, ptr %16, i64 0, i32 1
  %19 = select i1 %17, ptr null, ptr %18
  store ptr %19, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %28

20:                                               ; preds = %4
  %21 = icmp eq ptr %1, %0
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %23, ptr noundef %3) #11
  br label %28

24:                                               ; preds = %4
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.cpp_token, ptr %1, i64 0, i32 3, i32 0, i32 1
  tail call void %2(ptr noundef nonnull %27, ptr noundef %3) #11
  br label %28

28:                                               ; preds = %4, %24, %26, %20, %22, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_line_maps(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9line_maps, i32 noundef 170) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !433
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.line_maps, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !435
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %16, %11 ], [ 0, %7 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !433
  %14 = getelementptr inbounds %struct.line_map, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !436
  tail call void @gt_pch_n_S(ptr noundef %15) #11
  %16 = add i64 %12, 1
  %17 = load i32, ptr %8, align 4, !tbaa !435
  %18 = zext i32 %17 to i64
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %11, !llvm.loop !551

20:                                               ; preds = %11, %7
  %21 = load ptr, ptr %0, align 8, !tbaa !433
  %22 = tail call i32 @gt_pch_note_object(ptr noundef %21, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_9line_maps, i32 noundef 217) #11
  br label %23

23:                                               ; preds = %4, %20, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9line_maps(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load ptr, ptr %1, align 8, !tbaa !433
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.line_maps, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !435
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %17
  %12 = phi i64 [ %18, %17 ], [ 0, %7 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !433
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.line_map, ptr %13, i64 %12
  tail call void %2(ptr noundef %16, ptr noundef %3) #11
  br label %17

17:                                               ; preds = %11, %15
  %18 = add i64 %12, 1
  %19 = load i32, ptr %8, align 4, !tbaa !435
  %20 = zext i32 %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %11, !llvm.loop !552

22:                                               ; preds = %17, %7
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %1, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_II17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %6 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_II17splay_tree_node_s, i32 noundef 217) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !439
  tail call void @gt_pch_n_II17splay_tree_node_s(ptr noundef %8)
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !441
  br label %2

11:                                               ; preds = %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_II17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %14 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_SP9tree_node17splay_tree_node_s, i32 noundef 217) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !442
  %8 = inttoptr i64 %7 to ptr
  tail call void @gt_pch_n_S(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !443
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = inttoptr i64 %10 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %13) #11
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !439
  tail call void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %16)
  %17 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !441
  br label %2

19:                                               ; preds = %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_SP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi ptr [ %0, %1 ], [ %21, %17 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s, i32 noundef 217) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !442
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = inttoptr i64 %7 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #11
  br label %11

11:                                               ; preds = %6, %9
  %12 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !443
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = inttoptr i64 %13 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %16) #11
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !439
  tail call void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %19)
  %20 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !441
  br label %2

22:                                               ; preds = %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi ptr [ %0, %1 ], [ %16, %12 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_IP9tree_node17splay_tree_node_s, i32 noundef 217) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !443
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = inttoptr i64 %8 to ptr
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %11) #11
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !439
  tail call void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %14)
  %15 = getelementptr inbounds %struct.splay_tree_node_s, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !441
  br label %2

17:                                               ; preds = %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_IP9tree_node17splay_tree_node_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #11
  %8 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #11
  %9 = getelementptr inbounds %struct.splay_tree_node_s, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P12tree_int_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12tree_int_map4htab, i32 noundef 185) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_int_map(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !553

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12tree_int_map4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P12tree_int_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !554

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_IP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_IP9tree_node12splay_tree_s, i32 noundef 217) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_pch_n_IP9tree_node17splay_tree_node_s(ptr noundef %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_IP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9tree_nodeP9tree_node12splay_tree_s, i32 noundef 217) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_pch_n_P9tree_nodeP9tree_node17splay_tree_node_s(ptr noundef %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9tree_nodeP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P12varpool_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12varpool_node4htab, i32 noundef 189) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_varpool_node(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !555

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12varpool_node4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P12varpool_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !556

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P24constant_descriptor_tree4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24constant_descriptor_tree4htab, i32 noundef 192) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_constant_descriptor_tree(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !557

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24constant_descriptor_tree4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P24constant_descriptor_tree4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !558

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P12object_block4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12object_block4htab, i32 noundef 193) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_object_block(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !559

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P12object_block4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P12object_block4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !560

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P7section4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7section4htab, i32 noundef 194) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_section(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !561

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7section4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P7section4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !562

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P17tree_priority_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P17tree_priority_map4htab, i32 noundef 195) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_priority_map(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !563

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P17tree_priority_map4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P17tree_priority_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !564

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P8tree_map4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P8tree_map4htab, i32 noundef 196) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_tree_map(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !565

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P8tree_map4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P8tree_map4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !566

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P15throw_stmt_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !567

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9reg_attrs4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9reg_attrs4htab, i32 noundef 201) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_reg_attrs(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !568

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9reg_attrs4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9reg_attrs4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !569

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P9mem_attrs4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9mem_attrs4htab, i32 noundef 202) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_mem_attrs(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !570

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9mem_attrs4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9mem_attrs4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !571

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P7rtx_def4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7rtx_def4htab, i32 noundef 203) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !572

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P7rtx_def4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P7rtx_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !573

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_SP9tree_node12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_SP9tree_node12splay_tree_s, i32 noundef 217) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_pch_n_SP9tree_node17splay_tree_node_s(ptr noundef %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_SP9tree_node12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P11cgraph_node4htab(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_node4htab, i32 noundef 210) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !574

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P11cgraph_node4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P11cgraph_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !575

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_II12splay_tree_s(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_II12splay_tree_s, i32 noundef 217) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !445
  tail call void @gt_pch_n_II17splay_tree_node_s(ptr noundef %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_II12splay_tree_s(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P27cgraph_node_set_element_def4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !576

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P11cgraph_edge4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !577

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9loop_exit4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !578

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P24types_used_by_vars_entry4htab(ptr noundef %0) #9 !prof !34 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24types_used_by_vars_entry4htab, i32 noundef 215) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_types_used_by_vars_entry(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !137
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !579

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !135
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P24types_used_by_vars_entry4htab, i32 noundef 217) #11
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P24types_used_by_vars_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !580

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P9tree_node4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !135
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #11
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !137
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !581

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #11
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_reg_equiv_init(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !582

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %21 = icmp ult ptr %20, inttoptr (i64 2 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @ggc_set_mark(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %19, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_reg_equiv_init(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !583

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %21 = tail call i32 @gt_pch_note_object(ptr noundef %20, ptr noundef nonnull @reg_equiv_init, ptr noundef nonnull @gt_pch_pa_reg_equiv_init, i32 noundef 217) #11
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare void @gt_ggc_mx_rtx_constant_pool(ptr noundef) #3

declare void @gt_pch_nx_rtx_constant_pool(ptr noundef) #3

declare void @gt_ggc_mx_initial_value_struct(ptr noundef) #3

declare void @gt_pch_nx_initial_value_struct(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_regno_reg_rtx(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !593

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %21 = icmp ult ptr %20, inttoptr (i64 2 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @ggc_set_mark(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %19, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_regno_reg_rtx(ptr nocapture readnone %0) #9 !prof !34 {
  %2 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !594

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %21 = tail call i32 @gt_pch_note_object(ptr noundef %20, ptr noundef nonnull @regno_reg_rtx, ptr noundef nonnull @gt_pch_pa_regno_reg_rtx, i32 noundef 217) #11
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_reg_equiv_init(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %12 = load ptr, ptr @reg_equiv_init, align 8, !tbaa !35
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 %11
  tail call void %2(ptr noundef %15, ptr noundef %3) #11
  br label %16

16:                                               ; preds = %10, %14
  %17 = add i64 %11, 1
  %18 = load i32, ptr @reg_equiv_init_size, align 4, !tbaa !50
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %10, !llvm.loop !595

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %0, @reg_equiv_init
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull @reg_equiv_init, ptr noundef %3) #11
  br label %24

24:                                               ; preds = %21, %23, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_regno_reg_rtx(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !34 {
  %5 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 %11
  tail call void %2(ptr noundef %15, ptr noundef %3) #11
  br label %16

16:                                               ; preds = %10, %14
  %17 = add i64 %11, 1
  %18 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !584
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %10, !llvm.loop !596

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %0, @regno_reg_rtx
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull @regno_reg_rtx, ptr noundef %3) #11
  br label %24

24:                                               ; preds = %21, %23, %4
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
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!54 = !{!55, !41, i64 0}
!55 = !{!"VEC_ipa_edge_args_t_gc", !56, i64 0}
!56 = !{!"VEC_ipa_edge_args_t_base", !41, i64 0, !41, i64 4, !37, i64 8}
!57 = !{!58, !36, i64 8}
!58 = !{!"ipa_edge_args", !41, i64 0, !36, i64 8}
!59 = !{!58, !41, i64 0}
!60 = !{!61, !41, i64 0}
!61 = !{!"ipa_jump_func", !41, i64 0, !37, i64 8}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!65, !36, i64 0}
!65 = !{!"ssa_operand_memory_d", !36, i64 0, !37, i64 8}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = !{!69, !41, i64 0}
!69 = !{!"VEC_gimple_gc", !70, i64 0}
!70 = !{!"VEC_gimple_base", !41, i64 0, !41, i64 4, !37, i64 8}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = !{!77, !36, i64 8}
!77 = !{!"gimple_omp_for_iter", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!78 = !{!77, !36, i64 16}
!79 = !{!77, !36, i64 24}
!80 = !{!77, !36, i64 32}
!81 = distinct !{!81, !52, !53}
!82 = !{!83, !36, i64 0}
!83 = !{!"throw_stmt_node", !36, i64 0, !41, i64 8}
!84 = !{!85, !41, i64 0}
!85 = !{!"VEC_eh_landing_pad_gc", !86, i64 0}
!86 = !{!"VEC_eh_landing_pad_base", !41, i64 0, !41, i64 4, !37, i64 8}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 0}
!89 = !{!"eh_landing_pad_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!90 = !{!89, !36, i64 8}
!91 = !{!89, !36, i64 16}
!92 = !{!89, !36, i64 24}
!93 = !{!94, !41, i64 0}
!94 = !{!"VEC_eh_region_gc", !95, i64 0}
!95 = !{!"VEC_eh_region_base", !41, i64 0, !41, i64 4, !37, i64 8}
!96 = distinct !{!96, !52, !53}
!97 = !{!98, !36, i64 0}
!98 = !{!"eh_region_d", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 56, !36, i64 64, !36, i64 72, !37, i64 80}
!99 = !{!98, !36, i64 8}
!100 = !{!98, !36, i64 16}
!101 = !{!98, !41, i64 28}
!102 = !{!98, !36, i64 56}
!103 = !{!98, !36, i64 64}
!104 = !{!98, !36, i64 72}
!105 = !{!106, !36, i64 0}
!106 = !{!"eh_catch_d", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!107 = !{!106, !36, i64 8}
!108 = !{!106, !36, i64 16}
!109 = !{!106, !36, i64 24}
!110 = !{!106, !36, i64 32}
!111 = distinct !{!111, !52, !53}
!112 = !{!113, !36, i64 0}
!113 = !{!"reg_attrs", !36, i64 0, !42, i64 8}
!114 = distinct !{!114, !52, !53}
!115 = !{!116, !36, i64 0}
!116 = !{!"constant_descriptor_tree", !36, i64 0, !36, i64 8, !41, i64 16}
!117 = !{!116, !36, i64 8}
!118 = !{!119, !36, i64 0}
!119 = !{!"cgraph_asm_node", !36, i64 0, !36, i64 8, !41, i64 16}
!120 = !{!119, !36, i64 8}
!121 = !{!122, !36, i64 8}
!122 = !{!"varpool_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36, !41, i64 36}
!123 = distinct !{!123, !52, !53}
!124 = !{!122, !36, i64 0}
!125 = !{!122, !36, i64 16}
!126 = !{!122, !36, i64 24}
!127 = distinct !{!127, !52, !53}
!128 = !{!129, !41, i64 0}
!129 = !{!"VEC_cgraph_node_set_gc", !130, i64 0}
!130 = !{!"VEC_cgraph_node_set_base", !41, i64 0, !41, i64 4, !37, i64 8}
!131 = distinct !{!131, !52, !53}
!132 = !{!133, !36, i64 0}
!133 = !{!"cgraph_node_set_def", !36, i64 0, !36, i64 8, !36, i64 16}
!134 = !{!133, !36, i64 8}
!135 = !{!136, !36, i64 24}
!136 = !{!"htab", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104}
!137 = !{!136, !42, i64 32}
!138 = !{!139, !36, i64 0}
!139 = !{!"cgraph_node_set_element_def", !36, i64 0, !42, i64 8}
!140 = distinct !{!140, !52, !53}
!141 = !{!142, !41, i64 0}
!142 = !{!"VEC_cgraph_node_ptr_gc", !143, i64 0}
!143 = !{!"VEC_cgraph_node_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!144 = distinct !{!144, !52, !53}
!145 = !{!146, !36, i64 24}
!146 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !147, i64 144, !149, i64 184, !150, i64 224, !151, i64 232, !152, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!147 = !{!"cgraph_local_info", !36, i64 0, !148, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!148 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!149 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!150 = !{!"cgraph_rtl_info", !41, i64 0}
!151 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!152 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!153 = distinct !{!153, !52, !53}
!154 = !{!146, !36, i64 32}
!155 = !{!146, !36, i64 0}
!156 = !{!146, !36, i64 8}
!157 = !{!146, !36, i64 16}
!158 = !{!146, !36, i64 40}
!159 = !{!146, !36, i64 48}
!160 = !{!146, !36, i64 56}
!161 = !{!146, !36, i64 64}
!162 = !{!146, !36, i64 72}
!163 = !{!146, !36, i64 80}
!164 = !{!146, !36, i64 88}
!165 = !{!146, !36, i64 96}
!166 = !{!146, !36, i64 104}
!167 = !{!146, !36, i64 112}
!168 = !{!146, !36, i64 120}
!169 = !{!146, !36, i64 200}
!170 = !{!146, !36, i64 232}
!171 = !{!146, !36, i64 240}
!172 = !{!146, !36, i64 248}
!173 = !{!146, !36, i64 272}
!174 = distinct !{!174, !52, !53}
!175 = !{!176, !36, i64 32}
!176 = !{!"cgraph_edge", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !43, i64 88, !41, i64 90, !41, i64 90, !41, i64 90}
!177 = distinct !{!177, !52, !53}
!178 = !{!176, !36, i64 24}
!179 = !{!176, !36, i64 8}
!180 = !{!176, !36, i64 16}
!181 = !{!176, !36, i64 40}
!182 = !{!176, !36, i64 48}
!183 = !{!176, !36, i64 56}
!184 = distinct !{!184, !52, !53}
!185 = !{!186, !41, i64 0}
!186 = !{!"VEC_ipa_replace_map_p_gc", !187, i64 0}
!187 = !{!"VEC_ipa_replace_map_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!188 = distinct !{!188, !52, !53}
!189 = !{!190, !36, i64 0}
!190 = !{!"ipa_replace_map", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17}
!191 = !{!190, !36, i64 8}
!192 = distinct !{!192, !52, !53}
!193 = !{!194, !36, i64 0}
!194 = !{!"bitmap_head_def", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!195 = !{!194, !36, i64 8}
!196 = !{!194, !36, i64 24}
!197 = !{!198, !41, i64 0}
!198 = !{!"VEC_basic_block_gc", !199, i64 0}
!199 = !{!"VEC_basic_block_base", !41, i64 0, !41, i64 4, !37, i64 8}
!200 = distinct !{!200, !52, !53}
!201 = !{!202, !36, i64 56}
!202 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!203 = distinct !{!203, !52, !53}
!204 = !{!202, !36, i64 48}
!205 = !{!202, !36, i64 0}
!206 = !{!202, !36, i64 8}
!207 = !{!202, !36, i64 24}
!208 = !{!202, !41, i64 96}
!209 = distinct !{!209, !52, !53}
!210 = !{!211, !36, i64 0}
!211 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!212 = !{!211, !36, i64 8}
!213 = !{!214, !36, i64 16}
!214 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!215 = distinct !{!215, !52, !53}
!216 = !{!214, !36, i64 0}
!217 = !{!214, !36, i64 8}
!218 = distinct !{!218, !52, !53}
!219 = !{!220, !36, i64 0}
!220 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!221 = !{!220, !36, i64 8}
!222 = !{!220, !36, i64 16}
!223 = !{!220, !36, i64 24}
!224 = !{!225, !41, i64 0}
!225 = !{!"VEC_edge_gc", !226, i64 0}
!226 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!227 = distinct !{!227, !52, !53}
!228 = !{!229, !36, i64 0}
!229 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!230 = !{!229, !36, i64 8}
!231 = !{!229, !36, i64 32}
!232 = !{!233, !36, i64 8}
!233 = !{!"cselib_val_struct", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!234 = !{!233, !36, i64 16}
!235 = !{!233, !36, i64 24}
!236 = !{!233, !36, i64 32}
!237 = !{!238, !36, i64 0}
!238 = !{!"elt_loc_list", !36, i64 0, !36, i64 8, !36, i64 16}
!239 = !{!238, !36, i64 8}
!240 = !{!238, !36, i64 16}
!241 = !{!242, !36, i64 0}
!242 = !{!"elt_list", !36, i64 0, !36, i64 8}
!243 = !{!242, !36, i64 8}
!244 = !{!245, !41, i64 0}
!245 = !{!"VEC_loop_p_gc", !246, i64 0}
!246 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!247 = distinct !{!247, !52, !53}
!248 = !{!249, !36, i64 56}
!249 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !250, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !251, i64 80, !251, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!250 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!251 = !{!"", !42, i64 0, !42, i64 8}
!252 = distinct !{!252, !52, !53}
!253 = !{!249, !36, i64 8}
!254 = !{!249, !36, i64 16}
!255 = !{!249, !36, i64 40}
!256 = !{!249, !36, i64 48}
!257 = !{!249, !36, i64 72}
!258 = !{!249, !36, i64 120}
!259 = !{!249, !36, i64 128}
!260 = !{!249, !36, i64 144}
!261 = distinct !{!261, !52, !53}
!262 = !{!263, !36, i64 32}
!263 = !{!"nb_iter_bound", !36, i64 0, !251, i64 8, !37, i64 24, !36, i64 32}
!264 = distinct !{!264, !52, !53}
!265 = !{!263, !36, i64 0}
!266 = distinct !{!266, !52, !53}
!267 = !{!268, !36, i64 0}
!268 = !{!"loop_exit", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!269 = !{!268, !36, i64 8}
!270 = !{!268, !36, i64 16}
!271 = !{!268, !36, i64 24}
!272 = !{!273, !36, i64 0}
!273 = !{!"types_used_by_vars_entry", !36, i64 0, !36, i64 8}
!274 = !{!273, !36, i64 8}
!275 = !{!276, !36, i64 8}
!276 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!277 = !{!276, !36, i64 16}
!278 = !{!276, !36, i64 24}
!279 = distinct !{!279, !52, !53}
!280 = !{!281, !36, i64 0}
!281 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!282 = !{!281, !36, i64 8}
!283 = !{!281, !36, i64 16}
!284 = !{!281, !36, i64 40}
!285 = !{!286, !36, i64 0}
!286 = !{!"eh_status", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40}
!287 = !{!286, !36, i64 8}
!288 = !{!286, !36, i64 16}
!289 = !{!286, !36, i64 24}
!290 = !{!286, !36, i64 32}
!291 = !{!292, !37, i64 2035}
!292 = !{!"gcc_target", !293, i64 0, !295, i64 368, !296, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !297, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !298, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !299, i64 1784, !300, i64 1792, !301, i64 1896, !302, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!293 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !294, i64 24, !294, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!294 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!295 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!296 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!297 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!298 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!299 = !{!"c", !36, i64 0}
!300 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!301 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!302 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!303 = distinct !{!303, !52, !53}
!304 = !{!305, !41, i64 0}
!305 = !{!"VEC_tree_gc", !306, i64 0}
!306 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!307 = distinct !{!307, !52, !53}
!308 = !{!309, !41, i64 0}
!309 = !{!"VEC_temp_slot_p_gc", !310, i64 0}
!310 = !{!"VEC_temp_slot_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!311 = distinct !{!311, !52, !53}
!312 = !{!313, !36, i64 0}
!313 = !{!"gimple_df", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !314, i64 32, !314, i64 48, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !315, i64 104}
!314 = !{!"pt_solution", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !36, i64 8}
!315 = !{!"ssa_operands", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !36, i64 24, !36, i64 32}
!316 = !{!313, !36, i64 8}
!317 = !{!313, !36, i64 16}
!318 = !{!313, !36, i64 24}
!319 = !{!313, !36, i64 40}
!320 = !{!313, !36, i64 56}
!321 = !{!313, !36, i64 72}
!322 = !{!313, !36, i64 80}
!323 = !{!313, !36, i64 88}
!324 = !{!313, !36, i64 104}
!325 = distinct !{!325, !52, !53}
!326 = !{!327, !41, i64 0}
!327 = !{!"VEC_call_site_record_gc", !328, i64 0}
!328 = !{!"VEC_call_site_record_base", !41, i64 0, !41, i64 4, !37, i64 8}
!329 = distinct !{!329, !52, !53}
!330 = !{!331, !36, i64 0}
!331 = !{!"sequence_stack", !36, i64 0, !36, i64 8, !36, i64 16}
!332 = !{!331, !36, i64 8}
!333 = !{!331, !36, i64 16}
!334 = !{!335, !36, i64 0}
!335 = !{!"tree_priority_map", !336, i64 0, !43, i64 8, !43, i64 10}
!336 = !{!"tree_map_base", !36, i64 0}
!337 = !{!338, !36, i64 0}
!338 = !{!"tree_int_map", !336, i64 0, !41, i64 8}
!339 = !{!340, !36, i64 0}
!340 = !{!"tree_map", !336, i64 0, !41, i64 8, !36, i64 16}
!341 = !{!340, !36, i64 16}
!342 = !{!343, !36, i64 8}
!343 = !{!"tree_statement_list_node", !36, i64 0, !36, i64 8, !36, i64 16}
!344 = distinct !{!344, !52, !53}
!345 = !{!343, !36, i64 0}
!346 = !{!343, !36, i64 16}
!347 = distinct !{!347, !52, !53}
!348 = !{!349, !36, i64 8}
!349 = !{!"var_ann_d", !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 0, !41, i64 4, !36, i64 8}
!350 = !{!351, !36, i64 24}
!351 = !{!"varray_head_tag", !42, i64 0, !42, i64 8, !41, i64 16, !36, i64 24, !37, i64 32}
!352 = !{!351, !41, i64 16}
!353 = !{!351, !42, i64 0}
!354 = distinct !{!354, !52, !53}
!355 = distinct !{!355, !52, !53}
!356 = distinct !{!356, !52, !53}
!357 = distinct !{!357, !52, !53}
!358 = distinct !{!358, !52, !53}
!359 = distinct !{!359, !52, !53}
!360 = distinct !{!360, !52, !53}
!361 = !{!362, !41, i64 0}
!362 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!363 = distinct !{!363, !52, !53}
!364 = !{!365, !36, i64 8}
!365 = !{!"ptr_info_def", !314, i64 0}
!366 = !{!367, !41, i64 0}
!367 = !{!"VEC_constructor_elt_gc", !368, i64 0}
!368 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!369 = !{!370, !36, i64 0}
!370 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!371 = !{!370, !36, i64 8}
!372 = distinct !{!372, !52, !53}
!373 = !{!374, !41, i64 0}
!374 = !{!"VEC_alias_pair_gc", !375, i64 0}
!375 = !{!"VEC_alias_pair_base", !41, i64 0, !41, i64 4, !37, i64 8}
!376 = !{!377, !36, i64 0}
!377 = !{!"alias_pair", !36, i64 0, !36, i64 8}
!378 = !{!377, !36, i64 8}
!379 = distinct !{!379, !52, !53}
!380 = !{!381, !36, i64 0}
!381 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!382 = !{!381, !36, i64 8}
!383 = !{!381, !36, i64 16}
!384 = !{!381, !36, i64 24}
!385 = !{!381, !36, i64 32}
!386 = !{!381, !36, i64 48}
!387 = !{!381, !36, i64 56}
!388 = !{!381, !36, i64 64}
!389 = !{!381, !36, i64 72}
!390 = !{!381, !36, i64 80}
!391 = !{!381, !36, i64 88}
!392 = !{!381, !36, i64 96}
!393 = !{!394, !36, i64 0}
!394 = !{!"machine_function", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 40, !395, i64 48, !41, i64 64, !41, i64 68, !41, i64 68, !41, i64 68, !41, i64 68, !41, i64 68}
!395 = !{!"machine_cfa_state", !36, i64 0, !42, i64 8}
!396 = !{!394, !36, i64 8}
!397 = !{!394, !36, i64 48}
!398 = !{!399, !41, i64 0}
!399 = !{!"VEC_rtx_gc", !400, i64 0}
!400 = !{!"VEC_rtx_base", !41, i64 0, !41, i64 4, !37, i64 8}
!401 = distinct !{!401, !52, !53}
!402 = !{!403, !36, i64 0}
!403 = !{!"object_block", !36, i64 0, !41, i64 8, !42, i64 16, !36, i64 24, !36, i64 32}
!404 = !{!403, !36, i64 24}
!405 = !{!403, !36, i64 32}
!406 = !{!407, !36, i64 0}
!407 = !{!"mem_attrs", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
!408 = !{!407, !36, i64 8}
!409 = !{!407, !36, i64 16}
!410 = !{!411, !36, i64 0}
!411 = !{!"bitmap_obstack", !36, i64 0, !36, i64 8, !412, i64 16}
!412 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!413 = !{!411, !36, i64 8}
!414 = !{!415, !36, i64 0}
!415 = !{!"bitmap_element_def", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 24}
!416 = !{!415, !36, i64 8}
!417 = !{!418, !36, i64 16}
!418 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!419 = distinct !{!419, !52, !53}
!420 = !{!418, !36, i64 8}
!421 = !{!418, !36, i64 0}
!422 = distinct !{!422, !52, !53}
!423 = !{!424, !36, i64 0}
!424 = !{!"answer", !36, i64 0, !41, i64 8, !37, i64 16}
!425 = !{!424, !41, i64 8}
!426 = distinct !{!426, !52, !53}
!427 = !{!428, !36, i64 0}
!428 = !{!"cpp_macro", !36, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !43, i64 24, !41, i64 26, !41, i64 26, !41, i64 26, !41, i64 26, !41, i64 26, !41, i64 26}
!429 = !{!428, !43, i64 24}
!430 = distinct !{!430, !52, !53}
!431 = !{!428, !41, i64 20}
!432 = distinct !{!432, !52, !53}
!433 = !{!434, !36, i64 0}
!434 = !{!"line_maps", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48}
!435 = !{!434, !41, i64 12}
!436 = !{!437, !36, i64 0}
!437 = !{!"line_map", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 21, !41, i64 22}
!438 = distinct !{!438, !52, !53}
!439 = !{!440, !36, i64 16}
!440 = !{!"splay_tree_node_s", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!441 = !{!440, !36, i64 24}
!442 = !{!440, !42, i64 0}
!443 = !{!440, !42, i64 8}
!444 = distinct !{!444, !52, !53}
!445 = !{!446, !36, i64 0}
!446 = !{!"splay_tree_s", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!447 = distinct !{!447, !52, !53}
!448 = distinct !{!448, !52, !53}
!449 = distinct !{!449, !52, !53}
!450 = distinct !{!450, !52, !53}
!451 = distinct !{!451, !52, !53}
!452 = distinct !{!452, !52, !53}
!453 = distinct !{!453, !52, !53}
!454 = distinct !{!454, !52, !53}
!455 = distinct !{!455, !52, !53}
!456 = distinct !{!456, !52, !53}
!457 = distinct !{!457, !52, !53}
!458 = distinct !{!458, !52, !53}
!459 = distinct !{!459, !52, !53}
!460 = distinct !{!460, !52, !53}
!461 = distinct !{!461, !52, !53}
!462 = distinct !{!462, !52, !53}
!463 = distinct !{!463, !52, !53}
!464 = distinct !{!464, !52, !53}
!465 = distinct !{!465, !52, !53}
!466 = distinct !{!466, !52, !53}
!467 = distinct !{!467, !52, !53}
!468 = distinct !{!468, !52, !53}
!469 = distinct !{!469, !52, !53}
!470 = distinct !{!470, !52, !53}
!471 = distinct !{!471, !52, !53}
!472 = distinct !{!472, !52, !53}
!473 = distinct !{!473, !52, !53}
!474 = distinct !{!474, !52, !53}
!475 = distinct !{!475, !52, !53}
!476 = distinct !{!476, !52, !53}
!477 = distinct !{!477, !52, !53}
!478 = distinct !{!478, !52, !53}
!479 = distinct !{!479, !52, !53}
!480 = distinct !{!480, !52, !53}
!481 = distinct !{!481, !52, !53}
!482 = distinct !{!482, !52, !53}
!483 = distinct !{!483, !52, !53}
!484 = distinct !{!484, !52, !53}
!485 = distinct !{!485, !52, !53}
!486 = distinct !{!486, !52, !53}
!487 = distinct !{!487, !52, !53}
!488 = distinct !{!488, !52, !53}
!489 = distinct !{!489, !52, !53}
!490 = distinct !{!490, !52, !53}
!491 = distinct !{!491, !52, !53}
!492 = distinct !{!492, !52, !53}
!493 = distinct !{!493, !52, !53}
!494 = distinct !{!494, !52, !53}
!495 = distinct !{!495, !52, !53}
!496 = distinct !{!496, !52, !53}
!497 = distinct !{!497, !52, !53}
!498 = distinct !{!498, !52, !53}
!499 = distinct !{!499, !52, !53}
!500 = distinct !{!500, !52, !53}
!501 = distinct !{!501, !52, !53}
!502 = distinct !{!502, !52, !53}
!503 = distinct !{!503, !52, !53}
!504 = distinct !{!504, !52, !53}
!505 = distinct !{!505, !52, !53}
!506 = distinct !{!506, !52, !53}
!507 = distinct !{!507, !52, !53}
!508 = distinct !{!508, !52, !53}
!509 = distinct !{!509, !52, !53}
!510 = distinct !{!510, !52, !53}
!511 = distinct !{!511, !52, !53}
!512 = distinct !{!512, !52, !53}
!513 = distinct !{!513, !52, !53}
!514 = distinct !{!514, !52, !53}
!515 = distinct !{!515, !52, !53}
!516 = distinct !{!516, !52, !53}
!517 = distinct !{!517, !52, !53}
!518 = distinct !{!518, !52, !53}
!519 = distinct !{!519, !52, !53}
!520 = distinct !{!520, !52, !53}
!521 = distinct !{!521, !52, !53}
!522 = distinct !{!522, !52, !53}
!523 = distinct !{!523, !52, !53}
!524 = distinct !{!524, !52, !53}
!525 = distinct !{!525, !52, !53}
!526 = distinct !{!526, !52, !53}
!527 = distinct !{!527, !52, !53}
!528 = distinct !{!528, !52, !53}
!529 = distinct !{!529, !52, !53}
!530 = distinct !{!530, !52, !53}
!531 = distinct !{!531, !52, !53}
!532 = distinct !{!532, !52, !53}
!533 = distinct !{!533, !52, !53}
!534 = distinct !{!534, !52, !53}
!535 = distinct !{!535, !52, !53}
!536 = distinct !{!536, !52, !53}
!537 = distinct !{!537, !52, !53}
!538 = distinct !{!538, !52, !53}
!539 = distinct !{!539, !52, !53}
!540 = distinct !{!540, !52, !53}
!541 = distinct !{!541, !52, !53}
!542 = distinct !{!542, !52, !53}
!543 = distinct !{!543, !52, !53}
!544 = distinct !{!544, !52, !53}
!545 = distinct !{!545, !52, !53}
!546 = distinct !{!546, !52, !53}
!547 = distinct !{!547, !52, !53}
!548 = distinct !{!548, !52, !53}
!549 = distinct !{!549, !52, !53}
!550 = distinct !{!550, !52, !53}
!551 = distinct !{!551, !52, !53}
!552 = distinct !{!552, !52, !53}
!553 = distinct !{!553, !52, !53}
!554 = distinct !{!554, !52, !53}
!555 = distinct !{!555, !52, !53}
!556 = distinct !{!556, !52, !53}
!557 = distinct !{!557, !52, !53}
!558 = distinct !{!558, !52, !53}
!559 = distinct !{!559, !52, !53}
!560 = distinct !{!560, !52, !53}
!561 = distinct !{!561, !52, !53}
!562 = distinct !{!562, !52, !53}
!563 = distinct !{!563, !52, !53}
!564 = distinct !{!564, !52, !53}
!565 = distinct !{!565, !52, !53}
!566 = distinct !{!566, !52, !53}
!567 = distinct !{!567, !52, !53}
!568 = distinct !{!568, !52, !53}
!569 = distinct !{!569, !52, !53}
!570 = distinct !{!570, !52, !53}
!571 = distinct !{!571, !52, !53}
!572 = distinct !{!572, !52, !53}
!573 = distinct !{!573, !52, !53}
!574 = distinct !{!574, !52, !53}
!575 = distinct !{!575, !52, !53}
!576 = distinct !{!576, !52, !53}
!577 = distinct !{!577, !52, !53}
!578 = distinct !{!578, !52, !53}
!579 = distinct !{!579, !52, !53}
!580 = distinct !{!580, !52, !53}
!581 = distinct !{!581, !52, !53}
!582 = distinct !{!582, !52, !53}
!583 = distinct !{!583, !52, !53}
!584 = !{!585, !41, i64 40}
!585 = !{!"rtl_data", !586, i64 0, !587, i64 40, !588, i64 96, !589, i64 112, !591, i64 208, !592, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!586 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!587 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!588 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!589 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !590, i64 24, !36, i64 88}
!590 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!591 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!592 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!593 = distinct !{!593, !52, !53}
!594 = distinct !{!594, !52, !53}
!595 = distinct !{!595, !52, !53}
!596 = distinct !{!596, !52, !53}
